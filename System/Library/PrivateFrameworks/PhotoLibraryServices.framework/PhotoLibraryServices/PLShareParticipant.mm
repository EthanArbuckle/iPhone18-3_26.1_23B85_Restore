@interface PLShareParticipant
+ (BOOL)isCurrentUserInScopeChange:(id)change;
+ (PLShareParticipant)participantWithCPLShareParticipant:(id)participant inShare:(id)share;
+ (PLShareParticipant)participantWithHashedPersonID:(id)d inCollectionShare:(id)share;
+ (PLShareParticipant)participantWithHashedPersonID:(id)d inScope:(id)scope inManagedObjectContext:(id)context;
+ (PLShareParticipant)participantWithPLShareParticipant:(id)participant;
+ (id)_shareParticipantsWithPredicate:(id)predicate fetchLimit:(unint64_t)limit inManagedObjectContext:(id)context;
+ (id)insertInManagedObjectContext:(id)context;
+ (id)insertRemovedSharedStreamParticipantWithCloudOwnerHashedPersonID:(id)d collectionShare:(id)share personInfoManager:(id)manager moc:(id)moc;
+ (id)participantsWithParticipantIDs:(id)ds inPhotoLibrary:(id)library;
+ (id)participantsWithScope:(id)scope inPhotoLibrary:(id)library;
+ (id)participantsWithUUIDs:(id)ds inPhotoLibrary:(id)library;
+ (id)participantsWithUserIdentifiers:(id)identifiers inScope:(id)scope inPhotoLibrary:(id)library;
- (BOOL)_relationshipInInvalidState;
- (BOOL)_validateRelationshipConstraintForInsert:(BOOL)insert error:(id *)error;
- (BOOL)validateForInsert:(id *)insert;
- (BOOL)validateForUpdate:(id *)update;
- (id)detailedDescription;
- (id)fullName;
- (id)shortName;
- (int64_t)acceptanceStatus;
- (int64_t)permission;
- (int64_t)role;
- (void)prepareForDeletion;
- (void)reconcileAssetRelationshipsWithSharedStreamCollectionShare:(id)share;
- (void)reconcileCommentRelationshipsWithSharedStreamCollectionShare:(id)share;
- (void)setAcceptanceStatus:(int64_t)status;
- (void)setPermission:(int64_t)permission;
- (void)setRole:(int64_t)role;
- (void)updateWithCPLShareParticipant:(id)participant inShare:(id)share;
- (void)updateWithMSASRelationship:(id)relationship withCollectionShare:(id)share;
- (void)willSave;
@end

@implementation PLShareParticipant

- (id)detailedDescription
{
  v17 = MEMORY[0x1E696AEC0];
  emailAddress = [(PLShareParticipant *)self emailAddress];
  phoneNumber = [(PLShareParticipant *)self phoneNumber];
  nameComponents = [(PLShareParticipant *)self nameComponents];
  userIdentifier = [(PLShareParticipant *)self userIdentifier];
  participantID = [(PLShareParticipant *)self participantID];
  hashedPersonID = [(PLShareParticipant *)self hashedPersonID];
  participantKind = [(PLShareParticipant *)self participantKind];
  v9 = @"SharedStream";
  if (!participantKind)
  {
    v9 = @"CPL";
  }

  v10 = MEMORY[0x1E6994BC8];
  v11 = v9;
  v12 = [v10 descriptionForRole:{-[PLShareParticipant role](self, "role")}];
  v13 = [MEMORY[0x1E6994BC8] descriptionForAcceptanceStatus:{-[PLShareParticipant acceptanceStatus](self, "acceptanceStatus")}];
  v14 = [MEMORY[0x1E6994BC8] descriptionForPermission:{-[PLShareParticipant permission](self, "permission")}];
  v18 = [v17 stringWithFormat:@"%@|%@|%@|%@|%@|%@|%@ [%@|%@|%@]", emailAddress, phoneNumber, nameComponents, userIdentifier, participantID, hashedPersonID, v11, v12, v13, v14];

  return v18;
}

- (id)fullName
{
  nameComponents = [(PLShareParticipant *)self nameComponents];

  if (nameComponents)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696ADF8]);
    nameComponents2 = [(PLShareParticipant *)self nameComponents];
    v6 = [v4 stringFromPersonNameComponents:nameComponents2];
  }

  else
  {
    v6 = &stru_1F0F06D80;
  }

  return v6;
}

- (id)shortName
{
  nameComponents = [(PLShareParticipant *)self nameComponents];

  if (nameComponents)
  {
    v4 = MEMORY[0x1E696ADF8];
    nameComponents2 = [(PLShareParticipant *)self nameComponents];
    nameComponents = [v4 localizedStringFromPersonNameComponents:nameComponents2 style:1 options:0];
  }

  if (![nameComponents length])
  {
    emailAddress = [(PLShareParticipant *)self emailAddress];
    v7 = [emailAddress length];

    if (v7)
    {
      emailAddress2 = [(PLShareParticipant *)self emailAddress];
    }

    else
    {
      phoneNumber = [(PLShareParticipant *)self phoneNumber];
      v10 = [phoneNumber length];

      if (!v10)
      {
        goto LABEL_9;
      }

      emailAddress2 = [(PLShareParticipant *)self phoneNumber];
    }

    v11 = emailAddress2;

    nameComponents = v11;
  }

LABEL_9:
  if ([nameComponents length])
  {
    v12 = nameComponents;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  return v12;
}

- (int64_t)acceptanceStatus
{
  [(PLShareParticipant *)self willAccessValueForKey:@"acceptanceStatus"];
  v3 = [(PLShareParticipant *)self primitiveValueForKey:@"acceptanceStatus"];
  integerValue = [v3 integerValue];

  [(PLShareParticipant *)self didAccessValueForKey:@"acceptanceStatus"];
  return integerValue;
}

- (void)setAcceptanceStatus:(int64_t)status
{
  [(PLShareParticipant *)self willChangeValueForKey:@"acceptanceStatus"];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:status];
  [(PLShareParticipant *)self setPrimitiveValue:v5 forKey:@"acceptanceStatus"];

  [(PLShareParticipant *)self didChangeValueForKey:@"acceptanceStatus"];
}

- (int64_t)role
{
  [(PLShareParticipant *)self willAccessValueForKey:@"role"];
  v3 = [(PLShareParticipant *)self primitiveValueForKey:@"role"];
  integerValue = [v3 integerValue];

  [(PLShareParticipant *)self didAccessValueForKey:@"role"];
  return integerValue;
}

- (void)setRole:(int64_t)role
{
  [(PLShareParticipant *)self willChangeValueForKey:@"role"];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:role];
  [(PLShareParticipant *)self setPrimitiveValue:v5 forKey:@"role"];

  [(PLShareParticipant *)self didChangeValueForKey:@"role"];
}

- (int64_t)permission
{
  [(PLShareParticipant *)self willAccessValueForKey:@"permission"];
  v3 = [(PLShareParticipant *)self primitiveValueForKey:@"permission"];
  integerValue = [v3 integerValue];

  [(PLShareParticipant *)self didAccessValueForKey:@"permission"];
  return integerValue;
}

- (void)setPermission:(int64_t)permission
{
  [(PLShareParticipant *)self willChangeValueForKey:@"permission"];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:permission];
  [(PLShareParticipant *)self setPrimitiveValue:v5 forKey:@"permission"];

  [(PLShareParticipant *)self didChangeValueForKey:@"permission"];
}

- (BOOL)validateForUpdate:(id *)update
{
  v7.receiver = self;
  v7.super_class = PLShareParticipant;
  v5 = [(PLShareParticipant *)&v7 validateForUpdate:?];
  if (v5)
  {
    LOBYTE(v5) = [(PLShareParticipant *)self _validateRelationshipConstraintForInsert:0 error:update];
  }

  return v5;
}

- (BOOL)validateForInsert:(id *)insert
{
  v7.receiver = self;
  v7.super_class = PLShareParticipant;
  v5 = [(PLShareParticipant *)&v7 validateForInsert:?];
  if (v5)
  {
    LOBYTE(v5) = [(PLShareParticipant *)self _validateRelationshipConstraintForInsert:1 error:insert];
  }

  return v5;
}

- (BOOL)_validateRelationshipConstraintForInsert:(BOOL)insert error:(id *)error
{
  insertCopy = insert;
  v25 = *MEMORY[0x1E69E9840];
  _relationshipInInvalidState = [(PLShareParticipant *)self _relationshipInInvalidState];
  if (_relationshipInInvalidState)
  {
    v8 = PLBackendGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      if (insertCopy)
      {
        v9 = @"insert";
      }

      else
      {
        v9 = @"update";
      }

      v10 = [(PLShareParticipant *)self description];
      *buf = 138412546;
      v22 = v9;
      v23 = 2112;
      v24 = v10;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_FAULT, "Attempting to %@ an orphaned ShareParticipant. An ShareParticipant object should always have a Share relationship set: %@", buf, 0x16u);
    }

    if (error)
    {
      v11 = MEMORY[0x1E696AEC0];
      if (insertCopy)
      {
        v12 = @"insert";
      }

      else
      {
        v12 = @"update";
      }

      v13 = [(PLShareParticipant *)self description];
      v14 = [v11 stringWithFormat:@"Attempting to %@ an orphaned ShareParticipant. A ShareParticipant object should always have a Share relationship set: %@", v12, v13];

      v15 = MEMORY[0x1E696ABC0];
      v16 = *MEMORY[0x1E69BFF48];
      v19 = *MEMORY[0x1E696A578];
      v20 = v14;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      *error = [v15 errorWithDomain:v16 code:71001 userInfo:v17];

      [PLDiagnostics fileRadarUserNotificationWithHeader:@"Unexpected Photo Library state" message:@"Please file a Radar against Photos" radarTitle:@"TTR: Orphaned ShareParticipant" radarDescription:v14];
    }
  }

  return !_relationshipInInvalidState;
}

- (BOOL)_relationshipInInvalidState
{
  share = [(PLShareParticipant *)self share];
  v3 = share == 0;

  return v3;
}

- (void)reconcileCommentRelationshipsWithSharedStreamCollectionShare:(id)share
{
  v42[3] = *MEMORY[0x1E69E9840];
  shareCopy = share;
  context = objc_autoreleasePoolPush();
  v5 = MEMORY[0x1E695D5E0];
  v6 = +[PLCloudSharedComment entityName];
  v7 = [v5 fetchRequestWithEntityName:v6];

  v33 = shareCopy;
  shareCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"SUBQUERY(likedAsset, $p, $p.collectionShare == %@).@count == 1 OR SUBQUERY(commentedAsset, $p, $p.collectionShare == %@).@count == 1", shareCopy, shareCopy];
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == nil", @"shareParticipant"];
  v10 = MEMORY[0x1E696AE18];
  hashedPersonID = [(PLShareParticipant *)self hashedPersonID];
  v12 = [v10 predicateWithFormat:@"%K == %@", @"commenterHashedPersonID", hashedPersonID];

  v13 = MEMORY[0x1E696AB28];
  v30 = shareCopy;
  v42[0] = shareCopy;
  v42[1] = v9;
  v29 = v12;
  v42[2] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:3];
  v15 = [v13 andPredicateWithSubpredicates:v14];

  v28 = v15;
  [v7 setPredicate:v15];
  [v7 setFetchLimit:0];
  managedObjectContext = [(PLShareParticipant *)self managedObjectContext];
  v38 = 0;
  v31 = v7;
  v17 = [managedObjectContext executeFetchRequest:v7 error:&v38];
  v27 = v38;

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v34 objects:v41 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v35;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v35 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v34 + 1) + 8 * i);
        v24 = objc_autoreleasePoolPush();
        v25 = PLBackendGetLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          cloudGUID = [v23 cloudGUID];
          *buf = 138543362;
          v40 = cloudGUID;
          _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_DEFAULT, "Could not find participant for Comment, attempting to set one now. Comment cloudGUID: %{public}@", buf, 0xCu);
        }

        [v23 setShareParticipant:self];
        objc_autoreleasePoolPop(v24);
      }

      v20 = [v18 countByEnumeratingWithState:&v34 objects:v41 count:16];
    }

    while (v20);
  }

  objc_autoreleasePoolPop(context);
}

- (void)reconcileAssetRelationshipsWithSharedStreamCollectionShare:(id)share
{
  v42[3] = *MEMORY[0x1E69E9840];
  shareCopy = share;
  context = objc_autoreleasePoolPush();
  shareCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"collectionShare", shareCopy];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == nil", @"collectionShareAssetContributor"];
  v7 = MEMORY[0x1E696AE18];
  hashedPersonID = [(PLShareParticipant *)self hashedPersonID];
  v9 = [v7 predicateWithFormat:@"%K == %@", @"cloudOwnerHashedPersonID", hashedPersonID];

  v10 = MEMORY[0x1E696AB28];
  v31 = v6;
  v32 = shareCopy;
  v42[0] = shareCopy;
  v42[1] = v6;
  v30 = v9;
  v42[2] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:3];
  v12 = [v10 andPredicateWithSubpredicates:v11];

  v13 = MEMORY[0x1E695D5E0];
  v14 = +[PLManagedAsset entityName];
  v15 = [v13 fetchRequestWithEntityName:v14];

  v29 = v12;
  [v15 setPredicate:v12];
  [v15 setFetchLimit:0];
  managedObjectContext = [(PLShareParticipant *)self managedObjectContext];
  v38 = 0;
  v28 = v15;
  v17 = [managedObjectContext executeFetchRequest:v15 error:&v38];
  v27 = v38;

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v34 objects:v41 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v35;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v35 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v34 + 1) + 8 * i);
        v24 = objc_autoreleasePoolPush();
        v25 = PLBackendGetLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          uuid = [v23 uuid];
          *buf = 138543362;
          v40 = uuid;
          _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_DEFAULT, "Could not find participant for Asset, attempting to set one now. Asset uuid: %{public}@", buf, 0xCu);
        }

        [v23 setCollectionShare:shareCopy withContributor:self];
        objc_autoreleasePoolPop(v24);
      }

      v20 = [v18 countByEnumeratingWithState:&v34 objects:v41 count:16];
    }

    while (v20);
  }

  objc_autoreleasePoolPop(context);
}

- (void)updateWithMSASRelationship:(id)relationship withCollectionShare:(id)share
{
  relationshipCopy = relationship;
  shareCopy = share;
  gUID = [relationshipCopy GUID];
  v8 = gUID;
  if (gUID && [gUID length])
  {
    [(PLShareParticipant *)self setParticipantID:v8];
  }

  emails = [relationshipCopy emails];
  firstObject = [emails firstObject];
  [(PLShareParticipant *)self setEmailAddress:firstObject];

  phones = [relationshipCopy phones];
  firstObject2 = [phones firstObject];
  [(PLShareParticipant *)self setPhoneNumber:firstObject2];

  v13 = objc_alloc_init(MEMORY[0x1E696ADF0]);
  firstName = [relationshipCopy firstName];
  if (firstName)
  {
    [v13 setGivenName:firstName];
  }

  lastName = [relationshipCopy lastName];
  if (lastName)
  {
    [v13 setFamilyName:lastName];
  }

  [(PLShareParticipant *)self setNameComponents:v13];
  personID = [relationshipCopy personID];
  [(PLShareParticipant *)self setHashedPersonID:personID];

  subscriptionDate = [relationshipCopy subscriptionDate];
  [(PLShareParticipant *)self setSubscriptionDate:subscriptionDate];

  -[PLShareParticipant setIsCurrentUser:](self, "setIsCurrentUser:", [relationshipCopy isMine]);
  state = [relationshipCopy state];
  publicPermission = [shareCopy publicPermission];
  if (state <= 2)
  {
    v29 = 1;
    v30 = 2;
    v31 = 2;
    if (state != 2)
    {
      v31 = 0;
    }

    if (state != 1)
    {
      v30 = v31;
      v29 = v31;
    }

    if (state)
    {
      v27 = v30;
    }

    else
    {
      v27 = 1;
    }

    if (state)
    {
      v28 = v29;
    }

    else
    {
      publicPermission = 3;
      v28 = 2;
    }
  }

  else
  {
    v20 = 3;
    v21 = 2;
    v22 = 2;
    if (state != 6)
    {
      v22 = 0;
    }

    if (state != 5)
    {
      v21 = v22;
      v20 = 0;
    }

    v23 = 4;
    v24 = 2;
    v25 = 5;
    v26 = 2;
    if (state != 4)
    {
      v26 = 0;
      v25 = 0;
    }

    if (state != 3)
    {
      v24 = v26;
      v23 = v25;
    }

    if (state <= 4)
    {
      v27 = v24;
    }

    else
    {
      v27 = v21;
    }

    if (state <= 4)
    {
      v28 = v23;
    }

    else
    {
      v28 = v20;
    }
  }

  [(PLShareParticipant *)self setRole:v27];
  [(PLShareParticipant *)self setPermission:publicPermission];
  [(PLShareParticipant *)self setAcceptanceStatus:v28];
  share = [(PLShareParticipant *)self share];

  if (shareCopy && !share)
  {
    [(PLShareParticipant *)self setShare:shareCopy];
  }
}

- (void)updateWithCPLShareParticipant:(id)participant inShare:(id)share
{
  participantCopy = participant;
  email = [participantCopy email];
  phoneNumber = [participantCopy phoneNumber];
  nameComponents = [participantCopy nameComponents];
  userIdentifier = [participantCopy userIdentifier];
  participantID = [participantCopy participantID];
  emailAddress = [(PLShareParticipant *)self emailAddress];
  v11 = [emailAddress isEqualToString:email];

  if ((v11 & 1) == 0)
  {
    [(PLShareParticipant *)self setEmailAddress:email];
  }

  nameComponents2 = [(PLShareParticipant *)self nameComponents];
  v13 = [nameComponents2 isEqual:nameComponents];

  if ((v13 & 1) == 0)
  {
    [(PLShareParticipant *)self setNameComponents:nameComponents];
  }

  phoneNumber2 = [(PLShareParticipant *)self phoneNumber];
  v15 = [phoneNumber2 isEqualToString:phoneNumber];

  if ((v15 & 1) == 0)
  {
    [(PLShareParticipant *)self setPhoneNumber:phoneNumber];
  }

  userIdentifier2 = [(PLShareParticipant *)self userIdentifier];
  v17 = [userIdentifier2 isEqualToString:userIdentifier];

  if ((v17 & 1) == 0)
  {
    [(PLShareParticipant *)self setUserIdentifier:userIdentifier];
  }

  participantID2 = [(PLShareParticipant *)self participantID];
  IsEqual = PLObjectIsEqual();

  if ((IsEqual & 1) == 0)
  {
    [(PLShareParticipant *)self setParticipantID:participantID];
  }

  -[PLShareParticipant setRole:](self, "setRole:", [participantCopy role]);
  -[PLShareParticipant setAcceptanceStatus:](self, "setAcceptanceStatus:", [participantCopy acceptanceStatus]);
  -[PLShareParticipant setPermission:](self, "setPermission:", [participantCopy permission]);
  -[PLShareParticipant setIsCurrentUser:](self, "setIsCurrentUser:", [participantCopy isCurrentUser]);
}

- (void)prepareForDeletion
{
  v5.receiver = self;
  v5.super_class = PLShareParticipant;
  [(PLShareParticipant *)&v5 prepareForDeletion];
  managedObjectContext = [(PLShareParticipant *)self managedObjectContext];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([managedObjectContext mergingChanges] & 1) == 0)
  {
    delayedSaveActions = [managedObjectContext delayedSaveActions];
    [delayedSaveActions recordShareParticipantForCloudFeedUpdate:self];
  }
}

- (void)willSave
{
  v10.receiver = self;
  v10.super_class = PLShareParticipant;
  [(PLManagedObject *)&v10 willSave];
  managedObjectContext = [(PLShareParticipant *)self managedObjectContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    changedValues = [(PLShareParticipant *)self changedValues];
    share = [(PLShareParticipant *)self share];
    if (share)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [changedValues objectForKey:@"acceptanceStatus"];

        if (v6)
        {
          delayedSaveActions = [managedObjectContext delayedSaveActions];
          [delayedSaveActions recordLibraryScopeParticipantsUpdateForLibraryScope:share];
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        delayedSaveActions2 = [managedObjectContext delayedSaveActions];
        [delayedSaveActions2 recordShareParticipantForCloudFeedUpdate:self];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([(PLShareParticipant *)self isCurrentUser])
        {
          v9 = [changedValues objectForKey:@"permission"];

          if (v9)
          {
            [share updateCollectionShareCurrentUserContributionStateIfNeeded];
          }
        }
      }
    }
  }
}

+ (BOOL)isCurrentUserInScopeChange:(id)change
{
  v15 = *MEMORY[0x1E69E9840];
  share = [change share];
  participants = [share participants];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = participants;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v10 + 1) + 8 * i) isCurrentUser])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

+ (id)_shareParticipantsWithPredicate:(id)predicate fetchLimit:(unint64_t)limit inManagedObjectContext:(id)context
{
  v21 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  contextCopy = context;
  v9 = MEMORY[0x1E695D5E0];
  v10 = +[PLShareParticipant entityName];
  v11 = [v9 fetchRequestWithEntityName:v10];

  [v11 setPredicate:predicateCopy];
  if (limit)
  {
    [v11 setFetchLimit:limit];
  }

  v16 = 0;
  v12 = [contextCopy executeFetchRequest:v11 error:&v16];
  v13 = v16;
  if (!v12)
  {
    v14 = PLBackendGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v18 = predicateCopy;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Failed to fetch share participant with predicate %@: %@", buf, 0x16u);
    }
  }

  return v12;
}

+ (id)participantsWithScope:(id)scope inPhotoLibrary:(id)library
{
  v6 = MEMORY[0x1E696AE18];
  libraryCopy = library;
  scope = [v6 predicateWithFormat:@"%K == %@", @"share", scope];
  managedObjectContext = [libraryCopy managedObjectContext];

  v10 = [self _shareParticipantsWithPredicate:scope fetchLimit:0 inManagedObjectContext:managedObjectContext];

  return v10;
}

+ (PLShareParticipant)participantWithHashedPersonID:(id)d inScope:(id)scope inManagedObjectContext:(id)context
{
  v18[2] = *MEMORY[0x1E69E9840];
  scopeCopy = scope;
  contextCopy = context;
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"hashedPersonID", d];
  if (scopeCopy)
  {
    scopeCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"share", scopeCopy];
    v12 = MEMORY[0x1E696AB28];
    v18[0] = v10;
    v18[1] = scopeCopy;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
    v14 = [v12 andPredicateWithSubpredicates:v13];

    v10 = v14;
  }

  v15 = [self _shareParticipantsWithPredicate:v10 fetchLimit:1 inManagedObjectContext:contextCopy];
  firstObject = [v15 firstObject];

  return firstObject;
}

+ (id)participantsWithUserIdentifiers:(id)identifiers inScope:(id)scope inPhotoLibrary:(id)library
{
  v18[2] = *MEMORY[0x1E69E9840];
  scopeCopy = scope;
  libraryCopy = library;
  identifiers = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K in %@", @"userIdentifier", identifiers];
  if (scopeCopy)
  {
    scopeCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"share", scopeCopy];
    v12 = MEMORY[0x1E696AB28];
    v18[0] = identifiers;
    v18[1] = scopeCopy;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
    v14 = [v12 andPredicateWithSubpredicates:v13];

    identifiers = v14;
  }

  managedObjectContext = [libraryCopy managedObjectContext];
  v16 = [self _shareParticipantsWithPredicate:identifiers fetchLimit:0 inManagedObjectContext:managedObjectContext];

  return v16;
}

+ (id)participantsWithParticipantIDs:(id)ds inPhotoLibrary:(id)library
{
  v6 = MEMORY[0x1E696AE18];
  libraryCopy = library;
  v8 = [v6 predicateWithFormat:@"%K in %@", @"participantID", ds];
  managedObjectContext = [libraryCopy managedObjectContext];

  v10 = [self _shareParticipantsWithPredicate:v8 fetchLimit:0 inManagedObjectContext:managedObjectContext];

  return v10;
}

+ (id)participantsWithUUIDs:(id)ds inPhotoLibrary:(id)library
{
  v6 = MEMORY[0x1E696AE18];
  libraryCopy = library;
  v8 = [v6 predicateWithFormat:@"%K in %@", @"uuid", ds];
  managedObjectContext = [libraryCopy managedObjectContext];

  v10 = [self _shareParticipantsWithPredicate:v8 fetchLimit:0 inManagedObjectContext:managedObjectContext];

  return v10;
}

+ (PLShareParticipant)participantWithHashedPersonID:(id)d inCollectionShare:(id)share
{
  v17[2] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AE18];
  shareCopy = share;
  v8 = [v6 predicateWithFormat:@"%K == %@", @"hashedPersonID", d];
  shareCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"share", shareCopy];
  v10 = MEMORY[0x1E696AB28];
  v17[0] = v8;
  v17[1] = shareCopy;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v12 = [v10 andPredicateWithSubpredicates:v11];

  managedObjectContext = [shareCopy managedObjectContext];

  v14 = [self _shareParticipantsWithPredicate:v12 fetchLimit:0 inManagedObjectContext:managedObjectContext];

  [v14 count];
  firstObject = [v14 firstObject];

  return firstObject;
}

+ (PLShareParticipant)participantWithPLShareParticipant:(id)participant
{
  v3 = MEMORY[0x1E6994BC8];
  participantCopy = participant;
  v5 = [v3 alloc];
  userIdentifier = [participantCopy userIdentifier];
  participantID = [participantCopy participantID];
  phoneNumber = [participantCopy phoneNumber];
  emailAddress = [participantCopy emailAddress];

  v10 = [v5 initWithUserIdentifier:userIdentifier participantID:participantID phoneNumber:phoneNumber email:emailAddress];

  return v10;
}

+ (PLShareParticipant)participantWithCPLShareParticipant:(id)participant inShare:(id)share
{
  v23[2] = *MEMORY[0x1E69E9840];
  shareCopy = share;
  participantCopy = participant;
  email = [participantCopy email];
  phoneNumber = [participantCopy phoneNumber];
  userIdentifier = [participantCopy userIdentifier];
  participantID = [participantCopy participantID];

  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(emailAddress != nil AND emailAddress = %@) OR (phoneNumber != nil AND phoneNumber = %@) OR (userIdentifier != nil AND userIdentifier = %@) OR (participantID != nil AND participantID = %@)", email, phoneNumber, userIdentifier, participantID];
  v13 = MEMORY[0x1E696AE18];
  objectID = [shareCopy objectID];
  v15 = [v13 predicateWithFormat:@"share = %@", objectID];

  v16 = MEMORY[0x1E696AB28];
  v23[0] = v12;
  v23[1] = v15;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v18 = [v16 andPredicateWithSubpredicates:v17];

  managedObjectContext = [shareCopy managedObjectContext];

  v20 = [self _shareParticipantsWithPredicate:v18 fetchLimit:1 inManagedObjectContext:managedObjectContext];
  firstObject = [v20 firstObject];

  return firstObject;
}

+ (id)insertRemovedSharedStreamParticipantWithCloudOwnerHashedPersonID:(id)d collectionShare:(id)share personInfoManager:(id)manager moc:(id)moc
{
  dCopy = d;
  shareCopy = share;
  managerCopy = manager;
  if (dCopy)
  {
    v13 = [self insertInManagedObjectContext:moc];
    v14 = v13;
    if (v13)
    {
      [v13 setParticipantKind:1];
      uUIDString = [MEMORY[0x1E69BF320] UUIDString];
      [v14 setParticipantID:uUIDString];

      publicPermission = [shareCopy publicPermission];
      [v14 setRole:2];
      [v14 setPermission:publicPermission];
      [v14 setAcceptanceStatus:3];
      v17 = [managerCopy emailForPersonID:dCopy];
      [v14 setEmailAddress:v17];

      v18 = objc_alloc_init(MEMORY[0x1E696ADF0]);
      v19 = [managerCopy firstNameForPersonID:dCopy];
      if (v19)
      {
        [v18 setGivenName:v19];
      }

      v20 = [managerCopy lastNameForPersonID:dCopy];
      if (v20)
      {
        [v18 setFamilyName:v20];
      }

      [v14 setNameComponents:v18];
      [v14 setHashedPersonID:dCopy];
      [v14 setIsCurrentUser:0];
      [v14 setShare:shareCopy];
      v21 = v14;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)insertInManagedObjectContext:(id)context
{
  contextCopy = context;
  entityName = [self entityName];
  v6 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(entityName, contextCopy, 0);

  uUIDString = [MEMORY[0x1E69BF320] UUIDString];
  [v6 setUuid:uUIDString];

  return v6;
}

@end