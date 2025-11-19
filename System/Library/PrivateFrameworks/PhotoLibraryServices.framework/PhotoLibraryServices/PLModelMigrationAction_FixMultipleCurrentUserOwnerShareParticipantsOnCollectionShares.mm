@interface PLModelMigrationAction_FixMultipleCurrentUserOwnerShareParticipantsOnCollectionShares
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
- (void)updateTargetParticipant:(id)a3 duplicateParticipant:(id)a4 collectionShare:(id)a5 managedObjectContext:(id)a6;
@end

@implementation PLModelMigrationAction_FixMultipleCurrentUserOwnerShareParticipantsOnCollectionShares

- (void)updateTargetParticipant:(id)a3 duplicateParticipant:(id)a4 collectionShare:(id)a5 managedObjectContext:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v9 emailAddress];
  if (!v13)
  {
    v14 = [v10 emailAddress];

    if (!v14)
    {
      goto LABEL_5;
    }

    v13 = [v10 emailAddress];
    [v9 setEmailAddress:v13];
  }

LABEL_5:
  v15 = [v9 hashedPersonID];
  if (!v15)
  {
    v16 = [v10 hashedPersonID];

    if (!v16)
    {
      goto LABEL_9;
    }

    v15 = [v10 hashedPersonID];
    [v9 setHashedPersonID:v15];
  }

LABEL_9:
  v17 = [v9 nameComponents];
  v18 = [v17 givenName];
  if (v18)
  {

LABEL_13:
    goto LABEL_14;
  }

  v19 = [v10 nameComponents];
  v20 = [v19 givenName];

  if (v20)
  {
    v17 = [v10 nameComponents];
    [v9 setNameComponents:v17];
    goto LABEL_13;
  }

LABEL_14:
  v21 = MEMORY[0x1E695D5E0];
  v22 = +[PLManagedAsset entityName];
  v23 = [v21 fetchRequestWithEntityName:v22];

  v24 = MEMORY[0x1E696AE18];
  v25 = [v10 objectID];
  v26 = [v24 predicateWithFormat:@"%K.%K == %@", @"collectionShareAssetContributor", @"participant", v25];
  [v23 setPredicate:v26];

  v27 = [v12 executeFetchRequest:v23 error:0];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __171__PLModelMigrationAction_FixMultipleCurrentUserOwnerShareParticipantsOnCollectionShares_updateTargetParticipant_duplicateParticipant_collectionShare_managedObjectContext___block_invoke;
  v37[3] = &unk_1E75781C0;
  v38 = v11;
  v28 = v9;
  v39 = v28;
  v29 = v11;
  v30 = [v12 enumerateWithIncrementalSaveUsingObjects:v27 withBlock:v37];
  v31 = [v10 collectionShareComments];
  v32 = [v31 allObjects];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __171__PLModelMigrationAction_FixMultipleCurrentUserOwnerShareParticipantsOnCollectionShares_updateTargetParticipant_duplicateParticipant_collectionShare_managedObjectContext___block_invoke_2;
  v35[3] = &unk_1E75681A0;
  v36 = v28;
  v33 = v28;
  v34 = [v12 enumerateWithIncrementalSaveUsingObjects:v32 withBlock:v35];
}

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v27[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLCollectionShare entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  [v9 setFetchBatchSize:100];
  v10 = MEMORY[0x1E696AB28];
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"collectionShareKind", 2];
  v27[0] = v11;
  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SUBQUERY(participants, $p, $p.isCurrentUser == YES AND $p.role == %d).@count > 1", 1];
  v27[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v14 = [v10 andPredicateWithSubpredicates:v13];

  [v9 setPredicate:v14];
  v26 = @"participants";
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
  [v9 setRelationshipKeyPathsForPrefetching:v15];

  v25 = 0;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __133__PLModelMigrationAction_FixMultipleCurrentUserOwnerShareParticipantsOnCollectionShares_performActionWithManagedObjectContext_error___block_invoke;
  v23[3] = &unk_1E7568178;
  v23[4] = self;
  v16 = v6;
  v24 = v16;
  v17 = [PLModelMigrationActionUtility processManagedObjectsWithAction:self managedObjectContext:v16 fetchRequest:v9 pendingParentUnitCount:0 error:&v25 processingBlock:v23];
  v18 = v25;
  [(PLModelMigrationActionCore *)self finalizeProgress];
  v19 = v18;
  v20 = v19;
  if (v17 != 1 && a4)
  {
    v21 = v19;
    *a4 = v20;
  }

  return v17;
}

@end