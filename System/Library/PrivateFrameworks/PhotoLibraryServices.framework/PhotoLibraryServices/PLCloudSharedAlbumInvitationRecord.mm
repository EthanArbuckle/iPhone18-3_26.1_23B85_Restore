@interface PLCloudSharedAlbumInvitationRecord
+ (id)cloudSharedAlbumInvitationRecordsWithAlbumGUID:(id)d inLibrary:(id)library;
+ (id)cloudSharedAlbumInvitationRecordsWithGUIDs:(id)ds inLibrary:(id)library;
+ (id)insertNewInvitationRecordIntoAlbum:(id)album withFirstName:(id)name lastName:(id)lastName fullName:(id)fullName emails:(id)emails phones:(id)phones inLibrary:(id)library;
- (NSArray)inviteeEmails;
- (NSArray)inviteePhones;
- (PLCloudSharedAlbumInvitationRecord)init;
- (id)invitationStateDescription;
- (id)inviteeDisplayNameIncludingEmail:(BOOL)email;
- (void)awakeFromInsert;
- (void)delete;
- (void)prepareForDeletion;
- (void)setInviteeEmails:(id)emails phones:(id)phones;
- (void)willSave;
@end

@implementation PLCloudSharedAlbumInvitationRecord

- (id)invitationStateDescription
{
  invitationState = [(PLCloudSharedAlbumInvitationRecord *)self invitationState];
  integerValue = [invitationState integerValue];

  v5 = 0;
  if (integerValue <= 1)
  {
    if (!integerValue)
    {
      goto LABEL_8;
    }

    if (integerValue == 1)
    {
      invitationStateLocal = [(PLCloudSharedAlbumInvitationRecord *)self invitationStateLocal];
      [invitationStateLocal integerValue];
    }
  }

  else if (integerValue == 2)
  {
    goto LABEL_8;
  }

  v5 = PLLocalizedFrameworkString();
LABEL_8:

  return v5;
}

- (void)setInviteeEmails:(id)emails phones:(id)phones
{
  phonesCopy = phones;
  emailsCopy = emails;
  photoLibrary = [(PLManagedObject *)self photoLibrary];
  personInfoManager = [photoLibrary personInfoManager];
  cloudGUID = [(PLCloudSharedAlbumInvitationRecord *)self cloudGUID];
  [personInfoManager setEmails:emailsCopy phones:phonesCopy forInvitationRecordGUID:cloudGUID];
}

- (NSArray)inviteePhones
{
  photoLibrary = [(PLManagedObject *)self photoLibrary];
  personInfoManager = [photoLibrary personInfoManager];
  cloudGUID = [(PLCloudSharedAlbumInvitationRecord *)self cloudGUID];
  v6 = [personInfoManager phonesForInvitationRecordGUID:cloudGUID];

  return v6;
}

- (NSArray)inviteeEmails
{
  photoLibrary = [(PLManagedObject *)self photoLibrary];
  personInfoManager = [photoLibrary personInfoManager];
  cloudGUID = [(PLCloudSharedAlbumInvitationRecord *)self cloudGUID];
  v6 = [personInfoManager emailsForInvitationRecordGUID:cloudGUID];

  return v6;
}

- (id)inviteeDisplayNameIncludingEmail:(BOOL)email
{
  emailCopy = email;
  v29 = *MEMORY[0x1E69E9840];
  inviteeFirstName = [(PLCloudSharedAlbumInvitationRecord *)self inviteeFirstName];
  inviteeLastName = [(PLCloudSharedAlbumInvitationRecord *)self inviteeLastName];
  inviteeFullName = [(PLCloudSharedAlbumInvitationRecord *)self inviteeFullName];
  inviteeEmails = [(PLCloudSharedAlbumInvitationRecord *)self inviteeEmails];
  firstObject = [inviteeEmails firstObject];

  inviteePhones = [(PLCloudSharedAlbumInvitationRecord *)self inviteePhones];
  if ([inviteeFullName length])
  {
    v11 = inviteeFullName;
    goto LABEL_3;
  }

  if ([inviteeFirstName length] && objc_msgSend(inviteeLastName, "length"))
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", inviteeFirstName, inviteeLastName];
    goto LABEL_3;
  }

  if ([inviteeFirstName length])
  {
    v11 = inviteeFirstName;
    goto LABEL_3;
  }

  if ([inviteeLastName length])
  {
    v11 = inviteeLastName;
LABEL_3:
    v12 = v11;
    if (!emailCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  if ([firstObject length])
  {
    v12 = firstObject;
    goto LABEL_6;
  }

  if (inviteePhones && [inviteePhones count])
  {
    v21 = emailCopy;
    v22 = inviteePhones;
    v23 = inviteeLastName;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v15 = inviteePhones;
    v16 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v16)
    {
      v17 = v16;
      v12 = 0;
      v18 = *v25;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v25 != v18)
          {
            objc_enumerationMutation(v15);
          }

          if (v12)
          {
            v20 = [(__CFString *)v12 stringByAppendingFormat:@" / %@", *(*(&v24 + 1) + 8 * i)];

            v12 = v20;
          }

          else
          {
            v12 = *(*(&v24 + 1) + 8 * i);
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v17);
    }

    else
    {
      v12 = 0;
    }

    inviteePhones = v22;
    inviteeLastName = v23;
    if (!v21)
    {
LABEL_6:
      if (v12)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

LABEL_4:
    if ([firstObject length])
    {
      v13 = [(__CFString *)v12 stringByAppendingFormat:@" (%@)", firstObject];

      v12 = v13;
    }

    goto LABEL_6;
  }

  if (emailCopy)
  {
    v12 = 0;
    goto LABEL_4;
  }

LABEL_7:
  v12 = &stru_1F0F06D80;
LABEL_8:

  return v12;
}

- (void)delete
{
  photoLibrary = [(PLManagedObject *)self photoLibrary];
  personInfoManager = [photoLibrary personInfoManager];
  cloudGUID = [(PLCloudSharedAlbumInvitationRecord *)self cloudGUID];
  [personInfoManager deleteEmailsAndPhonesForInvitationRecordGUID:cloudGUID];

  managedObjectContext = [(PLCloudSharedAlbumInvitationRecord *)self managedObjectContext];
  [managedObjectContext deleteObject:self];
}

- (void)prepareForDeletion
{
  v5.receiver = self;
  v5.super_class = PLCloudSharedAlbumInvitationRecord;
  [(PLCloudSharedAlbumInvitationRecord *)&v5 prepareForDeletion];
  managedObjectContext = [(PLCloudSharedAlbumInvitationRecord *)self managedObjectContext];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([managedObjectContext mergingChanges] & 1) == 0)
  {
    delayedSaveActions = [managedObjectContext delayedSaveActions];
    [delayedSaveActions recordInvitationRecordForCloudFeedUpdate:self];
  }
}

- (void)willSave
{
  v5.receiver = self;
  v5.super_class = PLCloudSharedAlbumInvitationRecord;
  [(PLManagedObject *)&v5 willSave];
  managedObjectContext = [(PLCloudSharedAlbumInvitationRecord *)self managedObjectContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    delayedSaveActions = [managedObjectContext delayedSaveActions];
    [delayedSaveActions recordInvitationRecordForCloudFeedUpdate:self];
  }
}

- (void)awakeFromInsert
{
  v6.receiver = self;
  v6.super_class = PLCloudSharedAlbumInvitationRecord;
  [(PLCloudSharedAlbumInvitationRecord *)&v6 awakeFromInsert];
  uUIDString = [MEMORY[0x1E69BF320] UUIDString];
  [(PLCloudSharedAlbumInvitationRecord *)self setUuid:uUIDString];

  uUIDString2 = [MEMORY[0x1E69BF320] UUIDString];
  [(PLCloudSharedAlbumInvitationRecord *)self setCloudGUID:uUIDString2];

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:1];
  [(PLCloudSharedAlbumInvitationRecord *)self setInvitationState:v5];
}

- (PLCloudSharedAlbumInvitationRecord)init
{
  v3.receiver = self;
  v3.super_class = PLCloudSharedAlbumInvitationRecord;
  return [(PLCloudSharedAlbumInvitationRecord *)&v3 init];
}

+ (id)cloudSharedAlbumInvitationRecordsWithAlbumGUID:(id)d inLibrary:(id)library
{
  dCopy = d;
  libraryCopy = library;
  v8 = objc_autoreleasePoolPush();
  managedObjectContext = [libraryCopy managedObjectContext];
  dCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"albumGUID == %@", dCopy];
  v11 = objc_alloc_init(MEMORY[0x1E695D5E0]);
  v12 = [self entityInManagedObjectContext:managedObjectContext];
  [v11 setEntity:v12];

  [v11 setPredicate:dCopy];
  v15 = 0;
  v13 = [managedObjectContext executeFetchRequest:v11 error:&v15];

  objc_autoreleasePoolPop(v8);

  return v13;
}

+ (id)cloudSharedAlbumInvitationRecordsWithGUIDs:(id)ds inLibrary:(id)library
{
  dsCopy = ds;
  libraryCopy = library;
  v8 = objc_autoreleasePoolPush();
  managedObjectContext = [libraryCopy managedObjectContext];
  dsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"cloudGUID in %@", dsCopy];
  v11 = objc_alloc_init(MEMORY[0x1E695D5E0]);
  v12 = [self entityInManagedObjectContext:managedObjectContext];
  [v11 setEntity:v12];

  [v11 setPredicate:dsCopy];
  v15 = 0;
  v13 = [managedObjectContext executeFetchRequest:v11 error:&v15];

  objc_autoreleasePoolPop(v8);

  return v13;
}

+ (id)insertNewInvitationRecordIntoAlbum:(id)album withFirstName:(id)name lastName:(id)lastName fullName:(id)fullName emails:(id)emails phones:(id)phones inLibrary:(id)library
{
  v48 = *MEMORY[0x1E69E9840];
  albumCopy = album;
  nameCopy = name;
  lastNameCopy = lastName;
  fullNameCopy = fullName;
  emailsCopy = emails;
  phonesCopy = phones;
  libraryCopy = library;
  cloudAlbumSubscriberRecords = [albumCopy cloudAlbumSubscriberRecords];
  array = [cloudAlbumSubscriberRecords array];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v19 = array;
  v20 = [v19 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v44;
    while (2)
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v44 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v43 + 1) + 8 * i);
        inviteeEmails = [v24 inviteeEmails];
        IsEqual = PLObjectIsEqual();

        inviteePhones = [v24 inviteePhones];
        v28 = PLObjectIsEqual();

        if (IsEqual && (v28 & 1) != 0)
        {
          v32 = 0;
          cloudGUID = v19;
          v34 = lastNameCopy;
          v33 = nameCopy;
          v30 = libraryCopy;
          v35 = fullNameCopy;
          goto LABEL_13;
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v43 objects:v47 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }
  }

  entityName = [self entityName];
  v30 = libraryCopy;
  managedObjectContext = [libraryCopy managedObjectContext];
  v32 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(entityName, managedObjectContext, 0);

  [v32 setInviteeEmails:emailsCopy phones:phonesCopy];
  v33 = nameCopy;
  [v32 setInviteeFirstName:nameCopy];
  v34 = lastNameCopy;
  [v32 setInviteeLastName:lastNameCopy];
  v35 = fullNameCopy;
  [v32 setInviteeFullName:fullNameCopy];
  if (albumCopy)
  {
    [v32 setAlbum:albumCopy];
    cloudGUID = [albumCopy cloudGUID];
    [v32 setAlbumGUID:cloudGUID];
LABEL_13:
  }

  return v32;
}

@end