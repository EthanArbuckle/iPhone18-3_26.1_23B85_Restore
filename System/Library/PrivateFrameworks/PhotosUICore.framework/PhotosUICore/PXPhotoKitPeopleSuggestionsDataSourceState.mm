@interface PXPhotoKitPeopleSuggestionsDataSourceState
- (PXPhotoKitPeopleSuggestionsDataSourceState)initWithPeople:(id)people personSuggestionsByPerson:(id)person;
- (id)stateUpdatedWithChange:(id)change changeDetails:(id *)details;
@end

@implementation PXPhotoKitPeopleSuggestionsDataSourceState

- (id)stateUpdatedWithChange:(id)change changeDetails:(id *)details
{
  v62 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  people = [(PXPhotoKitPeopleSuggestionsDataSourceState *)self people];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v8 = [changeCopy changeDetailsForFetchResult:people];
  v9 = "anager";
  v44 = people;
  if (v8)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __83__PXPhotoKitPeopleSuggestionsDataSourceState_stateUpdatedWithChange_changeDetails___block_invoke;
    aBlock[3] = &unk_1E7739E40;
    v59 = dictionary;
    v10 = _Block_copy(aBlock);
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    insertedObjects = [v8 insertedObjects];
    v12 = [insertedObjects countByEnumeratingWithState:&v54 objects:v61 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v55;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v55 != v14)
          {
            objc_enumerationMutation(insertedObjects);
          }

          v10[2](v10, *(*(&v54 + 1) + 8 * i));
        }

        v13 = [insertedObjects countByEnumeratingWithState:&v54 objects:v61 count:16];
      }

      while (v13);
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    changedObjects = [v8 changedObjects];
    v17 = [changedObjects countByEnumeratingWithState:&v50 objects:v60 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v51;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v51 != v19)
          {
            objc_enumerationMutation(changedObjects);
          }

          v10[2](v10, *(*(&v50 + 1) + 8 * j));
        }

        v18 = [changedObjects countByEnumeratingWithState:&v50 objects:v60 count:16];
      }

      while (v18);
    }

    fetchResultAfterChanges = [v8 fetchResultAfterChanges];
    people = v44;
    v9 = "MacSyncedAssetsNotificationListManager" + 32;
  }

  else
  {
    fetchResultAfterChanges = people;
  }

  changedIndexes = [v8 changedIndexes];
  if (changedIndexes)
  {
    changedIndexes2 = [v8 changedIndexes];
    indexSet = [changedIndexes2 mutableCopy];
  }

  else
  {
    indexSet = [MEMORY[0x1E696AD50] indexSet];
  }

  personSuggestionsByPerson = [(PXPhotoKitPeopleSuggestionsDataSourceState *)self personSuggestionsByPerson];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = *(v9 + 63);
  v45[2] = __83__PXPhotoKitPeopleSuggestionsDataSourceState_stateUpdatedWithChange_changeDetails___block_invoke_2;
  v45[3] = &unk_1E7739E68;
  v26 = dictionary;
  v46 = v26;
  v27 = fetchResultAfterChanges;
  v47 = v27;
  v42 = changeCopy;
  v48 = v42;
  v28 = indexSet;
  v49 = v28;
  [personSuggestionsByPerson enumerateKeysAndObjectsUsingBlock:v45];
  removedObjects = [v8 removedObjects];
  if (removedObjects)
  {
  }

  else if (![v26 count])
  {
    v30 = personSuggestionsByPerson;
    goto LABEL_27;
  }

  v30 = [personSuggestionsByPerson mutableCopy];
  removedObjects2 = [v8 removedObjects];

  if (removedObjects2)
  {
    removedObjects3 = [v8 removedObjects];
    [v30 removeObjectsForKeys:removedObjects3];
  }

  [v30 addEntriesFromDictionary:v26];
LABEL_27:
  if (v27 == people && v30 == personSuggestionsByPerson)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [[PXPhotoKitPeopleSuggestionsDataSourceState alloc] initWithPeople:v27 personSuggestionsByPerson:v30];
  }

  v41 = selfCopy;
  v34 = [off_1E7721450 alloc];
  removedIndexes = [v8 removedIndexes];
  insertedIndexes = [v8 insertedIndexes];
  movedIndexes = [v8 movedIndexes];
  v38 = [v34 initWithIncrementalChangeDetailsRemovedIndexes:removedIndexes insertedIndexes:insertedIndexes movesToIndexes:movedIndexes movesFromIndexes:objc_msgSend(v8 changedIndexes:{"movedFromIndexes"), v28}];

  if (details)
  {
    v39 = v38;
    *details = v38;
  }

  return v41;
}

void __83__PXPhotoKitPeopleSuggestionsDataSourceState_stateUpdatedWithChange_changeDetails___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [PXPhotoKitPersonSuggestion personSuggestionWithPerson:v3];
  [*(a1 + 32) setObject:v4 forKeyedSubscript:v3];
}

void __83__PXPhotoKitPeopleSuggestionsDataSourceState_stateUpdatedWithChange_changeDetails___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v18 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v18];
  if (v6)
  {
    goto LABEL_14;
  }

  v7 = [*(a1 + 40) indexOfObject:v18];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_15;
  }

  v8 = v7;
  v9 = [v5 keyFaceFetchResult];
  if (v9)
  {
    v10 = v9;
    v11 = *(a1 + 48);
    v12 = [v5 keyFaceFetchResult];
    v13 = [v11 changeDetailsForFetchResult:v12];

    if (v13)
    {
      v14 = [v13 fetchResultAfterChanges];
      v15 = [v5 personSuggestionUpdatedKeyFaceFetchResult:v14];
      goto LABEL_9;
    }
  }

  v6 = [v5 keyAssetFetchResult];
  if (v6)
  {
    v16 = *(a1 + 48);
    v17 = [v5 keyAssetFetchResult];
    v13 = [v16 changeDetailsForFetchResult:v17];

    if (v13)
    {
      v14 = [v13 fetchResultAfterChanges];
      v15 = [v5 personSuggestionUpdatedKeyAssetFetchResult:v14];
LABEL_9:
      v6 = v15;

      if (v6)
      {
        [*(a1 + 32) setObject:v6 forKeyedSubscript:v18];
        [*(a1 + 56) addIndex:v8];
      }

      goto LABEL_13;
    }

    v6 = 0;
  }

  else
  {
    v13 = 0;
  }

LABEL_13:

LABEL_14:
LABEL_15:
}

- (PXPhotoKitPeopleSuggestionsDataSourceState)initWithPeople:(id)people personSuggestionsByPerson:(id)person
{
  peopleCopy = people;
  personCopy = person;
  v12.receiver = self;
  v12.super_class = PXPhotoKitPeopleSuggestionsDataSourceState;
  v9 = [(PXPhotoKitPeopleSuggestionsDataSourceState *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_people, people);
    objc_storeStrong(&v10->_personSuggestionsByPerson, person);
  }

  return v10;
}

@end