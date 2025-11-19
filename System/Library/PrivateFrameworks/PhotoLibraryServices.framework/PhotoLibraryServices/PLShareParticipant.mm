@interface PLShareParticipant
+ (BOOL)isCurrentUserInScopeChange:(id)a3;
+ (PLShareParticipant)participantWithCPLShareParticipant:(id)a3 inShare:(id)a4;
+ (PLShareParticipant)participantWithHashedPersonID:(id)a3 inCollectionShare:(id)a4;
+ (PLShareParticipant)participantWithHashedPersonID:(id)a3 inScope:(id)a4 inManagedObjectContext:(id)a5;
+ (PLShareParticipant)participantWithPLShareParticipant:(id)a3;
+ (id)_shareParticipantsWithPredicate:(id)a3 fetchLimit:(unint64_t)a4 inManagedObjectContext:(id)a5;
+ (id)insertInManagedObjectContext:(id)a3;
+ (id)insertRemovedSharedStreamParticipantWithCloudOwnerHashedPersonID:(id)a3 collectionShare:(id)a4 personInfoManager:(id)a5 moc:(id)a6;
+ (id)participantsWithParticipantIDs:(id)a3 inPhotoLibrary:(id)a4;
+ (id)participantsWithScope:(id)a3 inPhotoLibrary:(id)a4;
+ (id)participantsWithUUIDs:(id)a3 inPhotoLibrary:(id)a4;
+ (id)participantsWithUserIdentifiers:(id)a3 inScope:(id)a4 inPhotoLibrary:(id)a5;
- (BOOL)_relationshipInInvalidState;
- (BOOL)_validateRelationshipConstraintForInsert:(BOOL)a3 error:(id *)a4;
- (BOOL)validateForInsert:(id *)a3;
- (BOOL)validateForUpdate:(id *)a3;
- (id)detailedDescription;
- (id)fullName;
- (id)shortName;
- (int64_t)acceptanceStatus;
- (int64_t)permission;
- (int64_t)role;
- (void)prepareForDeletion;
- (void)reconcileAssetRelationshipsWithSharedStreamCollectionShare:(id)a3;
- (void)reconcileCommentRelationshipsWithSharedStreamCollectionShare:(id)a3;
- (void)setAcceptanceStatus:(int64_t)a3;
- (void)setPermission:(int64_t)a3;
- (void)setRole:(int64_t)a3;
- (void)updateWithCPLShareParticipant:(id)a3 inShare:(id)a4;
- (void)updateWithMSASRelationship:(id)a3 withCollectionShare:(id)a4;
- (void)willSave;
@end

@implementation PLShareParticipant

- (id)detailedDescription
{
  v17 = MEMORY[0x1E696AEC0];
  v16 = [(PLShareParticipant *)self emailAddress];
  v3 = [(PLShareParticipant *)self phoneNumber];
  v4 = [(PLShareParticipant *)self nameComponents];
  v5 = [(PLShareParticipant *)self userIdentifier];
  v6 = [(PLShareParticipant *)self participantID];
  v7 = [(PLShareParticipant *)self hashedPersonID];
  v8 = [(PLShareParticipant *)self participantKind];
  v9 = @"SharedStream";
  if (!v8)
  {
    v9 = @"CPL";
  }

  v10 = MEMORY[0x1E6994BC8];
  v11 = v9;
  v12 = [v10 descriptionForRole:{-[PLShareParticipant role](self, "role")}];
  v13 = [MEMORY[0x1E6994BC8] descriptionForAcceptanceStatus:{-[PLShareParticipant acceptanceStatus](self, "acceptanceStatus")}];
  v14 = [MEMORY[0x1E6994BC8] descriptionForPermission:{-[PLShareParticipant permission](self, "permission")}];
  v18 = [v17 stringWithFormat:@"%@|%@|%@|%@|%@|%@|%@ [%@|%@|%@]", v16, v3, v4, v5, v6, v7, v11, v12, v13, v14];

  return v18;
}

- (id)fullName
{
  v3 = [(PLShareParticipant *)self nameComponents];

  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696ADF8]);
    v5 = [(PLShareParticipant *)self nameComponents];
    v6 = [v4 stringFromPersonNameComponents:v5];
  }

  else
  {
    v6 = &stru_1F0F06D80;
  }

  return v6;
}

- (id)shortName
{
  v3 = [(PLShareParticipant *)self nameComponents];

  if (v3)
  {
    v4 = MEMORY[0x1E696ADF8];
    v5 = [(PLShareParticipant *)self nameComponents];
    v3 = [v4 localizedStringFromPersonNameComponents:v5 style:1 options:0];
  }

  if (![v3 length])
  {
    v6 = [(PLShareParticipant *)self emailAddress];
    v7 = [v6 length];

    if (v7)
    {
      v8 = [(PLShareParticipant *)self emailAddress];
    }

    else
    {
      v9 = [(PLShareParticipant *)self phoneNumber];
      v10 = [v9 length];

      if (!v10)
      {
        goto LABEL_9;
      }

      v8 = [(PLShareParticipant *)self phoneNumber];
    }

    v11 = v8;

    v3 = v11;
  }

LABEL_9:
  if ([v3 length])
  {
    v12 = v3;
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
  v4 = [v3 integerValue];

  [(PLShareParticipant *)self didAccessValueForKey:@"acceptanceStatus"];
  return v4;
}

- (void)setAcceptanceStatus:(int64_t)a3
{
  [(PLShareParticipant *)self willChangeValueForKey:@"acceptanceStatus"];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(PLShareParticipant *)self setPrimitiveValue:v5 forKey:@"acceptanceStatus"];

  [(PLShareParticipant *)self didChangeValueForKey:@"acceptanceStatus"];
}

- (int64_t)role
{
  [(PLShareParticipant *)self willAccessValueForKey:@"role"];
  v3 = [(PLShareParticipant *)self primitiveValueForKey:@"role"];
  v4 = [v3 integerValue];

  [(PLShareParticipant *)self didAccessValueForKey:@"role"];
  return v4;
}

- (void)setRole:(int64_t)a3
{
  [(PLShareParticipant *)self willChangeValueForKey:@"role"];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(PLShareParticipant *)self setPrimitiveValue:v5 forKey:@"role"];

  [(PLShareParticipant *)self didChangeValueForKey:@"role"];
}

- (int64_t)permission
{
  [(PLShareParticipant *)self willAccessValueForKey:@"permission"];
  v3 = [(PLShareParticipant *)self primitiveValueForKey:@"permission"];
  v4 = [v3 integerValue];

  [(PLShareParticipant *)self didAccessValueForKey:@"permission"];
  return v4;
}

- (void)setPermission:(int64_t)a3
{
  [(PLShareParticipant *)self willChangeValueForKey:@"permission"];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(PLShareParticipant *)self setPrimitiveValue:v5 forKey:@"permission"];

  [(PLShareParticipant *)self didChangeValueForKey:@"permission"];
}

- (BOOL)validateForUpdate:(id *)a3
{
  v7.receiver = self;
  v7.super_class = PLShareParticipant;
  v5 = [(PLShareParticipant *)&v7 validateForUpdate:?];
  if (v5)
  {
    LOBYTE(v5) = [(PLShareParticipant *)self _validateRelationshipConstraintForInsert:0 error:a3];
  }

  return v5;
}

- (BOOL)validateForInsert:(id *)a3
{
  v7.receiver = self;
  v7.super_class = PLShareParticipant;
  v5 = [(PLShareParticipant *)&v7 validateForInsert:?];
  if (v5)
  {
    LOBYTE(v5) = [(PLShareParticipant *)self _validateRelationshipConstraintForInsert:1 error:a3];
  }

  return v5;
}

- (BOOL)_validateRelationshipConstraintForInsert:(BOOL)a3 error:(id *)a4
{
  v5 = a3;
  v25 = *MEMORY[0x1E69E9840];
  v7 = [(PLShareParticipant *)self _relationshipInInvalidState];
  if (v7)
  {
    v8 = PLBackendGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      if (v5)
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

    if (a4)
    {
      v11 = MEMORY[0x1E696AEC0];
      if (v5)
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
      *a4 = [v15 errorWithDomain:v16 code:71001 userInfo:v17];

      [PLDiagnostics fileRadarUserNotificationWithHeader:@"Unexpected Photo Library state" message:@"Please file a Radar against Photos" radarTitle:@"TTR: Orphaned ShareParticipant" radarDescription:v14];
    }
  }

  return !v7;
}

- (BOOL)_relationshipInInvalidState
{
  v2 = [(PLShareParticipant *)self share];
  v3 = v2 == 0;

  return v3;
}

- (void)reconcileCommentRelationshipsWithSharedStreamCollectionShare:(id)a3
{
  v42[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  context = objc_autoreleasePoolPush();
  v5 = MEMORY[0x1E695D5E0];
  v6 = +[PLCloudSharedComment entityName];
  v7 = [v5 fetchRequestWithEntityName:v6];

  v33 = v4;
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SUBQUERY(likedAsset, $p, $p.collectionShare == %@).@count == 1 OR SUBQUERY(commentedAsset, $p, $p.collectionShare == %@).@count == 1", v4, v4];
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == nil", @"shareParticipant"];
  v10 = MEMORY[0x1E696AE18];
  v11 = [(PLShareParticipant *)self hashedPersonID];
  v12 = [v10 predicateWithFormat:@"%K == %@", @"commenterHashedPersonID", v11];

  v13 = MEMORY[0x1E696AB28];
  v30 = v8;
  v42[0] = v8;
  v42[1] = v9;
  v29 = v12;
  v42[2] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:3];
  v15 = [v13 andPredicateWithSubpredicates:v14];

  v28 = v15;
  [v7 setPredicate:v15];
  [v7 setFetchLimit:0];
  v16 = [(PLShareParticipant *)self managedObjectContext];
  v38 = 0;
  v31 = v7;
  v17 = [v16 executeFetchRequest:v7 error:&v38];
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
          v26 = [v23 cloudGUID];
          *buf = 138543362;
          v40 = v26;
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

- (void)reconcileAssetRelationshipsWithSharedStreamCollectionShare:(id)a3
{
  v42[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  context = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"collectionShare", v4];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == nil", @"collectionShareAssetContributor"];
  v7 = MEMORY[0x1E696AE18];
  v8 = [(PLShareParticipant *)self hashedPersonID];
  v9 = [v7 predicateWithFormat:@"%K == %@", @"cloudOwnerHashedPersonID", v8];

  v10 = MEMORY[0x1E696AB28];
  v31 = v6;
  v32 = v5;
  v42[0] = v5;
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
  v16 = [(PLShareParticipant *)self managedObjectContext];
  v38 = 0;
  v28 = v15;
  v17 = [v16 executeFetchRequest:v15 error:&v38];
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
          v26 = [v23 uuid];
          *buf = 138543362;
          v40 = v26;
          _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_DEFAULT, "Could not find participant for Asset, attempting to set one now. Asset uuid: %{public}@", buf, 0xCu);
        }

        [v23 setCollectionShare:v4 withContributor:self];
        objc_autoreleasePoolPop(v24);
      }

      v20 = [v18 countByEnumeratingWithState:&v34 objects:v41 count:16];
    }

    while (v20);
  }

  objc_autoreleasePoolPop(context);
}

- (void)updateWithMSASRelationship:(id)a3 withCollectionShare:(id)a4
{
  v33 = a3;
  v6 = a4;
  v7 = [v33 GUID];
  v8 = v7;
  if (v7 && [v7 length])
  {
    [(PLShareParticipant *)self setParticipantID:v8];
  }

  v9 = [v33 emails];
  v10 = [v9 firstObject];
  [(PLShareParticipant *)self setEmailAddress:v10];

  v11 = [v33 phones];
  v12 = [v11 firstObject];
  [(PLShareParticipant *)self setPhoneNumber:v12];

  v13 = objc_alloc_init(MEMORY[0x1E696ADF0]);
  v14 = [v33 firstName];
  if (v14)
  {
    [v13 setGivenName:v14];
  }

  v15 = [v33 lastName];
  if (v15)
  {
    [v13 setFamilyName:v15];
  }

  [(PLShareParticipant *)self setNameComponents:v13];
  v16 = [v33 personID];
  [(PLShareParticipant *)self setHashedPersonID:v16];

  v17 = [v33 subscriptionDate];
  [(PLShareParticipant *)self setSubscriptionDate:v17];

  -[PLShareParticipant setIsCurrentUser:](self, "setIsCurrentUser:", [v33 isMine]);
  v18 = [v33 state];
  v19 = [v6 publicPermission];
  if (v18 <= 2)
  {
    v29 = 1;
    v30 = 2;
    v31 = 2;
    if (v18 != 2)
    {
      v31 = 0;
    }

    if (v18 != 1)
    {
      v30 = v31;
      v29 = v31;
    }

    if (v18)
    {
      v27 = v30;
    }

    else
    {
      v27 = 1;
    }

    if (v18)
    {
      v28 = v29;
    }

    else
    {
      v19 = 3;
      v28 = 2;
    }
  }

  else
  {
    v20 = 3;
    v21 = 2;
    v22 = 2;
    if (v18 != 6)
    {
      v22 = 0;
    }

    if (v18 != 5)
    {
      v21 = v22;
      v20 = 0;
    }

    v23 = 4;
    v24 = 2;
    v25 = 5;
    v26 = 2;
    if (v18 != 4)
    {
      v26 = 0;
      v25 = 0;
    }

    if (v18 != 3)
    {
      v24 = v26;
      v23 = v25;
    }

    if (v18 <= 4)
    {
      v27 = v24;
    }

    else
    {
      v27 = v21;
    }

    if (v18 <= 4)
    {
      v28 = v23;
    }

    else
    {
      v28 = v20;
    }
  }

  [(PLShareParticipant *)self setRole:v27];
  [(PLShareParticipant *)self setPermission:v19];
  [(PLShareParticipant *)self setAcceptanceStatus:v28];
  v32 = [(PLShareParticipant *)self share];

  if (v6 && !v32)
  {
    [(PLShareParticipant *)self setShare:v6];
  }
}

- (void)updateWithCPLShareParticipant:(id)a3 inShare:(id)a4
{
  v20 = a3;
  v5 = [v20 email];
  v6 = [v20 phoneNumber];
  v7 = [v20 nameComponents];
  v8 = [v20 userIdentifier];
  v9 = [v20 participantID];
  v10 = [(PLShareParticipant *)self emailAddress];
  v11 = [v10 isEqualToString:v5];

  if ((v11 & 1) == 0)
  {
    [(PLShareParticipant *)self setEmailAddress:v5];
  }

  v12 = [(PLShareParticipant *)self nameComponents];
  v13 = [v12 isEqual:v7];

  if ((v13 & 1) == 0)
  {
    [(PLShareParticipant *)self setNameComponents:v7];
  }

  v14 = [(PLShareParticipant *)self phoneNumber];
  v15 = [v14 isEqualToString:v6];

  if ((v15 & 1) == 0)
  {
    [(PLShareParticipant *)self setPhoneNumber:v6];
  }

  v16 = [(PLShareParticipant *)self userIdentifier];
  v17 = [v16 isEqualToString:v8];

  if ((v17 & 1) == 0)
  {
    [(PLShareParticipant *)self setUserIdentifier:v8];
  }

  v18 = [(PLShareParticipant *)self participantID];
  IsEqual = PLObjectIsEqual();

  if ((IsEqual & 1) == 0)
  {
    [(PLShareParticipant *)self setParticipantID:v9];
  }

  -[PLShareParticipant setRole:](self, "setRole:", [v20 role]);
  -[PLShareParticipant setAcceptanceStatus:](self, "setAcceptanceStatus:", [v20 acceptanceStatus]);
  -[PLShareParticipant setPermission:](self, "setPermission:", [v20 permission]);
  -[PLShareParticipant setIsCurrentUser:](self, "setIsCurrentUser:", [v20 isCurrentUser]);
}

- (void)prepareForDeletion
{
  v5.receiver = self;
  v5.super_class = PLShareParticipant;
  [(PLShareParticipant *)&v5 prepareForDeletion];
  v3 = [(PLShareParticipant *)self managedObjectContext];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v3 mergingChanges] & 1) == 0)
  {
    v4 = [v3 delayedSaveActions];
    [v4 recordShareParticipantForCloudFeedUpdate:self];
  }
}

- (void)willSave
{
  v10.receiver = self;
  v10.super_class = PLShareParticipant;
  [(PLManagedObject *)&v10 willSave];
  v3 = [(PLShareParticipant *)self managedObjectContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(PLShareParticipant *)self changedValues];
    v5 = [(PLShareParticipant *)self share];
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [v4 objectForKey:@"acceptanceStatus"];

        if (v6)
        {
          v7 = [v3 delayedSaveActions];
          [v7 recordLibraryScopeParticipantsUpdateForLibraryScope:v5];
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [v3 delayedSaveActions];
        [v8 recordShareParticipantForCloudFeedUpdate:self];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([(PLShareParticipant *)self isCurrentUser])
        {
          v9 = [v4 objectForKey:@"permission"];

          if (v9)
          {
            [v5 updateCollectionShareCurrentUserContributionStateIfNeeded];
          }
        }
      }
    }
  }
}

+ (BOOL)isCurrentUserInScopeChange:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [a3 share];
  v4 = [v3 participants];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v4;
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

+ (id)_shareParticipantsWithPredicate:(id)a3 fetchLimit:(unint64_t)a4 inManagedObjectContext:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = MEMORY[0x1E695D5E0];
  v10 = +[PLShareParticipant entityName];
  v11 = [v9 fetchRequestWithEntityName:v10];

  [v11 setPredicate:v7];
  if (a4)
  {
    [v11 setFetchLimit:a4];
  }

  v16 = 0;
  v12 = [v8 executeFetchRequest:v11 error:&v16];
  v13 = v16;
  if (!v12)
  {
    v14 = PLBackendGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v18 = v7;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Failed to fetch share participant with predicate %@: %@", buf, 0x16u);
    }
  }

  return v12;
}

+ (id)participantsWithScope:(id)a3 inPhotoLibrary:(id)a4
{
  v6 = MEMORY[0x1E696AE18];
  v7 = a4;
  v8 = [v6 predicateWithFormat:@"%K == %@", @"share", a3];
  v9 = [v7 managedObjectContext];

  v10 = [a1 _shareParticipantsWithPredicate:v8 fetchLimit:0 inManagedObjectContext:v9];

  return v10;
}

+ (PLShareParticipant)participantWithHashedPersonID:(id)a3 inScope:(id)a4 inManagedObjectContext:(id)a5
{
  v18[2] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"hashedPersonID", a3];
  if (v8)
  {
    v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"share", v8];
    v12 = MEMORY[0x1E696AB28];
    v18[0] = v10;
    v18[1] = v11;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
    v14 = [v12 andPredicateWithSubpredicates:v13];

    v10 = v14;
  }

  v15 = [a1 _shareParticipantsWithPredicate:v10 fetchLimit:1 inManagedObjectContext:v9];
  v16 = [v15 firstObject];

  return v16;
}

+ (id)participantsWithUserIdentifiers:(id)a3 inScope:(id)a4 inPhotoLibrary:(id)a5
{
  v18[2] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K in %@", @"userIdentifier", a3];
  if (v8)
  {
    v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"share", v8];
    v12 = MEMORY[0x1E696AB28];
    v18[0] = v10;
    v18[1] = v11;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
    v14 = [v12 andPredicateWithSubpredicates:v13];

    v10 = v14;
  }

  v15 = [v9 managedObjectContext];
  v16 = [a1 _shareParticipantsWithPredicate:v10 fetchLimit:0 inManagedObjectContext:v15];

  return v16;
}

+ (id)participantsWithParticipantIDs:(id)a3 inPhotoLibrary:(id)a4
{
  v6 = MEMORY[0x1E696AE18];
  v7 = a4;
  v8 = [v6 predicateWithFormat:@"%K in %@", @"participantID", a3];
  v9 = [v7 managedObjectContext];

  v10 = [a1 _shareParticipantsWithPredicate:v8 fetchLimit:0 inManagedObjectContext:v9];

  return v10;
}

+ (id)participantsWithUUIDs:(id)a3 inPhotoLibrary:(id)a4
{
  v6 = MEMORY[0x1E696AE18];
  v7 = a4;
  v8 = [v6 predicateWithFormat:@"%K in %@", @"uuid", a3];
  v9 = [v7 managedObjectContext];

  v10 = [a1 _shareParticipantsWithPredicate:v8 fetchLimit:0 inManagedObjectContext:v9];

  return v10;
}

+ (PLShareParticipant)participantWithHashedPersonID:(id)a3 inCollectionShare:(id)a4
{
  v17[2] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AE18];
  v7 = a4;
  v8 = [v6 predicateWithFormat:@"%K == %@", @"hashedPersonID", a3];
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"share", v7];
  v10 = MEMORY[0x1E696AB28];
  v17[0] = v8;
  v17[1] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v12 = [v10 andPredicateWithSubpredicates:v11];

  v13 = [v7 managedObjectContext];

  v14 = [a1 _shareParticipantsWithPredicate:v12 fetchLimit:0 inManagedObjectContext:v13];

  [v14 count];
  v15 = [v14 firstObject];

  return v15;
}

+ (PLShareParticipant)participantWithPLShareParticipant:(id)a3
{
  v3 = MEMORY[0x1E6994BC8];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 userIdentifier];
  v7 = [v4 participantID];
  v8 = [v4 phoneNumber];
  v9 = [v4 emailAddress];

  v10 = [v5 initWithUserIdentifier:v6 participantID:v7 phoneNumber:v8 email:v9];

  return v10;
}

+ (PLShareParticipant)participantWithCPLShareParticipant:(id)a3 inShare:(id)a4
{
  v23[2] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [v7 email];
  v9 = [v7 phoneNumber];
  v10 = [v7 userIdentifier];
  v11 = [v7 participantID];

  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(emailAddress != nil AND emailAddress = %@) OR (phoneNumber != nil AND phoneNumber = %@) OR (userIdentifier != nil AND userIdentifier = %@) OR (participantID != nil AND participantID = %@)", v8, v9, v10, v11];
  v13 = MEMORY[0x1E696AE18];
  v14 = [v6 objectID];
  v15 = [v13 predicateWithFormat:@"share = %@", v14];

  v16 = MEMORY[0x1E696AB28];
  v23[0] = v12;
  v23[1] = v15;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v18 = [v16 andPredicateWithSubpredicates:v17];

  v19 = [v6 managedObjectContext];

  v20 = [a1 _shareParticipantsWithPredicate:v18 fetchLimit:1 inManagedObjectContext:v19];
  v21 = [v20 firstObject];

  return v21;
}

+ (id)insertRemovedSharedStreamParticipantWithCloudOwnerHashedPersonID:(id)a3 collectionShare:(id)a4 personInfoManager:(id)a5 moc:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10)
  {
    v13 = [a1 insertInManagedObjectContext:a6];
    v14 = v13;
    if (v13)
    {
      [v13 setParticipantKind:1];
      v15 = [MEMORY[0x1E69BF320] UUIDString];
      [v14 setParticipantID:v15];

      v16 = [v11 publicPermission];
      [v14 setRole:2];
      [v14 setPermission:v16];
      [v14 setAcceptanceStatus:3];
      v17 = [v12 emailForPersonID:v10];
      [v14 setEmailAddress:v17];

      v18 = objc_alloc_init(MEMORY[0x1E696ADF0]);
      v19 = [v12 firstNameForPersonID:v10];
      if (v19)
      {
        [v18 setGivenName:v19];
      }

      v20 = [v12 lastNameForPersonID:v10];
      if (v20)
      {
        [v18 setFamilyName:v20];
      }

      [v14 setNameComponents:v18];
      [v14 setHashedPersonID:v10];
      [v14 setIsCurrentUser:0];
      [v14 setShare:v11];
      v21 = v14;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)insertInManagedObjectContext:(id)a3
{
  v4 = a3;
  v5 = [a1 entityName];
  v6 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(v5, v4, 0);

  v7 = [MEMORY[0x1E69BF320] UUIDString];
  [v6 setUuid:v7];

  return v6;
}

@end