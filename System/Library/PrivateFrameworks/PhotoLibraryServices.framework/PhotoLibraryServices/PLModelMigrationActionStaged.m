@interface PLModelMigrationActionStaged
@end

@implementation PLModelMigrationActionStaged

void __102__PLModelMigrationActionStaged_FixupExistingUserFeedback_performActionWithManagedObjectContext_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [MEMORY[0x1E696AFB0] UUID];
  v8 = [v7 UUIDString];
  [v6 setUuid:v8];

  if (objc_opt_respondsToSelector())
  {
    v9 = [*(a1 + 32) pathManager];
    [v6 persistMetadataToFileSystemWithPathManager:v9];
  }

  v10 = *(a1 + 32);
  v11 = *(*(a1 + 48) + 8);
  obj = *(v11 + 40);
  v12 = [v10 isCancelledWithError:&obj];
  objc_storeStrong((v11 + 40), obj);
  if (v12)
  {
    *(*(*(a1 + 56) + 8) + 24) = 2;
    *a4 = 1;
  }

  [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "completedUnitCount") + 1}];
}

uint64_t __122__PLModelMigrationActionStaged_FixupExistingCloudSharedAlbumInvitationRecord_performActionWithManagedObjectContext_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = MEMORY[0x1E696AFB0];
  v7 = a2;
  v8 = [v6 UUID];
  v9 = [v8 UUIDString];
  [v7 setUuid:v9];

  v10 = *(a1 + 32);
  v11 = *(*(a1 + 48) + 8);
  obj = *(v11 + 40);
  LODWORD(v7) = [v10 isCancelledWithError:&obj];
  objc_storeStrong((v11 + 40), obj);
  if (v7)
  {
    *(*(*(a1 + 56) + 8) + 24) = 2;
    *a4 = 1;
  }

  return [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "completedUnitCount") + 1}];
}

void __103__PLModelMigrationActionStaged_MoveLibraryScopeShareState_performActionWithManagedObjectContext_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 valueForKey:@"libraryScopeShareState"];
  [v6 setValue:v7 forKeyPath:@"asset.libraryScopeShareState"];

  v8 = *(a1 + 32);
  v9 = *(*(a1 + 48) + 8);
  obj = *(v9 + 40);
  v10 = [v8 isCancelledWithError:&obj];
  objc_storeStrong((v9 + 40), obj);
  if (v10)
  {
    *(*(*(a1 + 56) + 8) + 24) = 2;
    *a4 = 1;
  }

  [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "completedUnitCount") + 1}];
}

void __105__PLModelMigrationActionStaged_MoveLibraryScopeContributors_performActionWithManagedObjectContext_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = [v6 primitiveValueForKey:@"libraryScopeOriginators"];
  if ([v7 count])
  {
    v19 = v6;
    v8 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v7, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          v15 = [(PLManagedObject *)PLAssetContributor insertInManagedObjectContext:*(a1 + 32)];
          [v15 setParticipant:v14];
          [v8 addObject:v15];
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    v6 = v19;
    [v19 setValue:v8 forKey:@"libraryScopeAssetContributors"];
  }

  v16 = *(a1 + 40);
  v17 = *(*(a1 + 56) + 8);
  obj = *(v17 + 40);
  v18 = [v16 isCancelledWithError:&obj];
  objc_storeStrong((v17 + 40), obj);
  if (v18)
  {
    *(*(*(a1 + 64) + 8) + 24) = 2;
    *a4 = 1;
  }

  [*(a1 + 48) setCompletedUnitCount:{objc_msgSend(*(a1 + 48), "completedUnitCount") + 1}];
}

@end