@interface PLCloudSharedAlbumInvitationRecord
+ (id)cloudSharedAlbumInvitationRecordsWithAlbumGUID:(id)a3 inLibrary:(id)a4;
+ (id)cloudSharedAlbumInvitationRecordsWithGUIDs:(id)a3 inLibrary:(id)a4;
+ (id)insertNewInvitationRecordIntoAlbum:(id)a3 withFirstName:(id)a4 lastName:(id)a5 fullName:(id)a6 emails:(id)a7 phones:(id)a8 inLibrary:(id)a9;
- (NSArray)inviteeEmails;
- (NSArray)inviteePhones;
- (PLCloudSharedAlbumInvitationRecord)init;
- (id)invitationStateDescription;
- (id)inviteeDisplayNameIncludingEmail:(BOOL)a3;
- (void)awakeFromInsert;
- (void)delete;
- (void)prepareForDeletion;
- (void)setInviteeEmails:(id)a3 phones:(id)a4;
- (void)willSave;
@end

@implementation PLCloudSharedAlbumInvitationRecord

- (id)invitationStateDescription
{
  v3 = [(PLCloudSharedAlbumInvitationRecord *)self invitationState];
  v4 = [v3 integerValue];

  v5 = 0;
  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_8;
    }

    if (v4 == 1)
    {
      v6 = [(PLCloudSharedAlbumInvitationRecord *)self invitationStateLocal];
      [v6 integerValue];
    }
  }

  else if (v4 == 2)
  {
    goto LABEL_8;
  }

  v5 = PLLocalizedFrameworkString();
LABEL_8:

  return v5;
}

- (void)setInviteeEmails:(id)a3 phones:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [(PLManagedObject *)self photoLibrary];
  v8 = [v10 personInfoManager];
  v9 = [(PLCloudSharedAlbumInvitationRecord *)self cloudGUID];
  [v8 setEmails:v7 phones:v6 forInvitationRecordGUID:v9];
}

- (NSArray)inviteePhones
{
  v3 = [(PLManagedObject *)self photoLibrary];
  v4 = [v3 personInfoManager];
  v5 = [(PLCloudSharedAlbumInvitationRecord *)self cloudGUID];
  v6 = [v4 phonesForInvitationRecordGUID:v5];

  return v6;
}

- (NSArray)inviteeEmails
{
  v3 = [(PLManagedObject *)self photoLibrary];
  v4 = [v3 personInfoManager];
  v5 = [(PLCloudSharedAlbumInvitationRecord *)self cloudGUID];
  v6 = [v4 emailsForInvitationRecordGUID:v5];

  return v6;
}

- (id)inviteeDisplayNameIncludingEmail:(BOOL)a3
{
  v3 = a3;
  v29 = *MEMORY[0x1E69E9840];
  v5 = [(PLCloudSharedAlbumInvitationRecord *)self inviteeFirstName];
  v6 = [(PLCloudSharedAlbumInvitationRecord *)self inviteeLastName];
  v7 = [(PLCloudSharedAlbumInvitationRecord *)self inviteeFullName];
  v8 = [(PLCloudSharedAlbumInvitationRecord *)self inviteeEmails];
  v9 = [v8 firstObject];

  v10 = [(PLCloudSharedAlbumInvitationRecord *)self inviteePhones];
  if ([v7 length])
  {
    v11 = v7;
    goto LABEL_3;
  }

  if ([v5 length] && objc_msgSend(v6, "length"))
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v5, v6];
    goto LABEL_3;
  }

  if ([v5 length])
  {
    v11 = v5;
    goto LABEL_3;
  }

  if ([v6 length])
  {
    v11 = v6;
LABEL_3:
    v12 = v11;
    if (!v3)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  if ([v9 length])
  {
    v12 = v9;
    goto LABEL_6;
  }

  if (v10 && [v10 count])
  {
    v21 = v3;
    v22 = v10;
    v23 = v6;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v15 = v10;
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

    v10 = v22;
    v6 = v23;
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
    if ([v9 length])
    {
      v13 = [(__CFString *)v12 stringByAppendingFormat:@" (%@)", v9];

      v12 = v13;
    }

    goto LABEL_6;
  }

  if (v3)
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
  v3 = [(PLManagedObject *)self photoLibrary];
  v4 = [v3 personInfoManager];
  v5 = [(PLCloudSharedAlbumInvitationRecord *)self cloudGUID];
  [v4 deleteEmailsAndPhonesForInvitationRecordGUID:v5];

  v6 = [(PLCloudSharedAlbumInvitationRecord *)self managedObjectContext];
  [v6 deleteObject:self];
}

- (void)prepareForDeletion
{
  v5.receiver = self;
  v5.super_class = PLCloudSharedAlbumInvitationRecord;
  [(PLCloudSharedAlbumInvitationRecord *)&v5 prepareForDeletion];
  v3 = [(PLCloudSharedAlbumInvitationRecord *)self managedObjectContext];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v3 mergingChanges] & 1) == 0)
  {
    v4 = [v3 delayedSaveActions];
    [v4 recordInvitationRecordForCloudFeedUpdate:self];
  }
}

- (void)willSave
{
  v5.receiver = self;
  v5.super_class = PLCloudSharedAlbumInvitationRecord;
  [(PLManagedObject *)&v5 willSave];
  v3 = [(PLCloudSharedAlbumInvitationRecord *)self managedObjectContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 delayedSaveActions];
    [v4 recordInvitationRecordForCloudFeedUpdate:self];
  }
}

- (void)awakeFromInsert
{
  v6.receiver = self;
  v6.super_class = PLCloudSharedAlbumInvitationRecord;
  [(PLCloudSharedAlbumInvitationRecord *)&v6 awakeFromInsert];
  v3 = [MEMORY[0x1E69BF320] UUIDString];
  [(PLCloudSharedAlbumInvitationRecord *)self setUuid:v3];

  v4 = [MEMORY[0x1E69BF320] UUIDString];
  [(PLCloudSharedAlbumInvitationRecord *)self setCloudGUID:v4];

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:1];
  [(PLCloudSharedAlbumInvitationRecord *)self setInvitationState:v5];
}

- (PLCloudSharedAlbumInvitationRecord)init
{
  v3.receiver = self;
  v3.super_class = PLCloudSharedAlbumInvitationRecord;
  return [(PLCloudSharedAlbumInvitationRecord *)&v3 init];
}

+ (id)cloudSharedAlbumInvitationRecordsWithAlbumGUID:(id)a3 inLibrary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = [v7 managedObjectContext];
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"albumGUID == %@", v6];
  v11 = objc_alloc_init(MEMORY[0x1E695D5E0]);
  v12 = [a1 entityInManagedObjectContext:v9];
  [v11 setEntity:v12];

  [v11 setPredicate:v10];
  v15 = 0;
  v13 = [v9 executeFetchRequest:v11 error:&v15];

  objc_autoreleasePoolPop(v8);

  return v13;
}

+ (id)cloudSharedAlbumInvitationRecordsWithGUIDs:(id)a3 inLibrary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = [v7 managedObjectContext];
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"cloudGUID in %@", v6];
  v11 = objc_alloc_init(MEMORY[0x1E695D5E0]);
  v12 = [a1 entityInManagedObjectContext:v9];
  [v11 setEntity:v12];

  [v11 setPredicate:v10];
  v15 = 0;
  v13 = [v9 executeFetchRequest:v11 error:&v15];

  objc_autoreleasePoolPop(v8);

  return v13;
}

+ (id)insertNewInvitationRecordIntoAlbum:(id)a3 withFirstName:(id)a4 lastName:(id)a5 fullName:(id)a6 emails:(id)a7 phones:(id)a8 inLibrary:(id)a9
{
  v48 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v42 = a4;
  v41 = a5;
  v40 = a6;
  v15 = a7;
  v16 = a8;
  v39 = a9;
  v17 = [v14 cloudAlbumSubscriberRecords];
  v18 = [v17 array];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v19 = v18;
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
        v25 = [v24 inviteeEmails];
        IsEqual = PLObjectIsEqual();

        v27 = [v24 inviteePhones];
        v28 = PLObjectIsEqual();

        if (IsEqual && (v28 & 1) != 0)
        {
          v32 = 0;
          v36 = v19;
          v34 = v41;
          v33 = v42;
          v30 = v39;
          v35 = v40;
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

  v29 = [a1 entityName];
  v30 = v39;
  v31 = [v39 managedObjectContext];
  v32 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(v29, v31, 0);

  [v32 setInviteeEmails:v15 phones:v16];
  v33 = v42;
  [v32 setInviteeFirstName:v42];
  v34 = v41;
  [v32 setInviteeLastName:v41];
  v35 = v40;
  [v32 setInviteeFullName:v40];
  if (v14)
  {
    [v32 setAlbum:v14];
    v36 = [v14 cloudGUID];
    [v32 setAlbumGUID:v36];
LABEL_13:
  }

  return v32;
}

@end