@interface PLModelMigrationAction_FixMultipleCurrentUserOwnerShareParticipantsOnCollectionShares
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
- (void)updateTargetParticipant:(id)participant duplicateParticipant:(id)duplicateParticipant collectionShare:(id)share managedObjectContext:(id)context;
@end

@implementation PLModelMigrationAction_FixMultipleCurrentUserOwnerShareParticipantsOnCollectionShares

- (void)updateTargetParticipant:(id)participant duplicateParticipant:(id)duplicateParticipant collectionShare:(id)share managedObjectContext:(id)context
{
  participantCopy = participant;
  duplicateParticipantCopy = duplicateParticipant;
  shareCopy = share;
  contextCopy = context;
  emailAddress = [participantCopy emailAddress];
  if (!emailAddress)
  {
    emailAddress2 = [duplicateParticipantCopy emailAddress];

    if (!emailAddress2)
    {
      goto LABEL_5;
    }

    emailAddress = [duplicateParticipantCopy emailAddress];
    [participantCopy setEmailAddress:emailAddress];
  }

LABEL_5:
  hashedPersonID = [participantCopy hashedPersonID];
  if (!hashedPersonID)
  {
    hashedPersonID2 = [duplicateParticipantCopy hashedPersonID];

    if (!hashedPersonID2)
    {
      goto LABEL_9;
    }

    hashedPersonID = [duplicateParticipantCopy hashedPersonID];
    [participantCopy setHashedPersonID:hashedPersonID];
  }

LABEL_9:
  nameComponents = [participantCopy nameComponents];
  givenName = [nameComponents givenName];
  if (givenName)
  {

LABEL_13:
    goto LABEL_14;
  }

  nameComponents2 = [duplicateParticipantCopy nameComponents];
  givenName2 = [nameComponents2 givenName];

  if (givenName2)
  {
    nameComponents = [duplicateParticipantCopy nameComponents];
    [participantCopy setNameComponents:nameComponents];
    goto LABEL_13;
  }

LABEL_14:
  v21 = MEMORY[0x1E695D5E0];
  v22 = +[PLManagedAsset entityName];
  v23 = [v21 fetchRequestWithEntityName:v22];

  v24 = MEMORY[0x1E696AE18];
  objectID = [duplicateParticipantCopy objectID];
  v26 = [v24 predicateWithFormat:@"%K.%K == %@", @"collectionShareAssetContributor", @"participant", objectID];
  [v23 setPredicate:v26];

  v27 = [contextCopy executeFetchRequest:v23 error:0];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __171__PLModelMigrationAction_FixMultipleCurrentUserOwnerShareParticipantsOnCollectionShares_updateTargetParticipant_duplicateParticipant_collectionShare_managedObjectContext___block_invoke;
  v37[3] = &unk_1E75781C0;
  v38 = shareCopy;
  v28 = participantCopy;
  v39 = v28;
  v29 = shareCopy;
  v30 = [contextCopy enumerateWithIncrementalSaveUsingObjects:v27 withBlock:v37];
  collectionShareComments = [duplicateParticipantCopy collectionShareComments];
  allObjects = [collectionShareComments allObjects];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __171__PLModelMigrationAction_FixMultipleCurrentUserOwnerShareParticipantsOnCollectionShares_updateTargetParticipant_duplicateParticipant_collectionShare_managedObjectContext___block_invoke_2;
  v35[3] = &unk_1E75681A0;
  v36 = v28;
  v33 = v28;
  v34 = [contextCopy enumerateWithIncrementalSaveUsingObjects:allObjects withBlock:v35];
}

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v27[2] = *MEMORY[0x1E69E9840];
  contextCopy = context;
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
  v16 = contextCopy;
  v24 = v16;
  v17 = [PLModelMigrationActionUtility processManagedObjectsWithAction:self managedObjectContext:v16 fetchRequest:v9 pendingParentUnitCount:0 error:&v25 processingBlock:v23];
  v18 = v25;
  [(PLModelMigrationActionCore *)self finalizeProgress];
  v19 = v18;
  v20 = v19;
  if (v17 != 1 && error)
  {
    v21 = v19;
    *error = v20;
  }

  return v17;
}

@end