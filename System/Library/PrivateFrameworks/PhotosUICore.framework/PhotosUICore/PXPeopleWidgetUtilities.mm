@interface PXPeopleWidgetUtilities
+ (id)localizedTitleStringForWidgetDataSource:(id)a3 photoLibrary:(id)a4;
+ (id)verifiedPersonsFromMergeCandidatesForPersons:(id)a3;
@end

@implementation PXPeopleWidgetUtilities

+ (id)localizedTitleStringForWidgetDataSource:(id)a3 photoLibrary:(id)a4
{
  v5 = a4;
  v6 = [a3 numberOfMembers];
  v7 = &stru_1F1741150;
  if (v6)
  {
    v8 = [v5 px_peoplePetsHomeVisibility];
    v9 = @"People";
    if ((v8 & 1) == 0)
    {
      v9 = &stru_1F1741150;
    }

    if ((v8 & 2) != 0)
    {
      v7 = @"Pets";
    }
  }

  else
  {
    v9 = &stru_1F1741150;
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PXEditorialRelatedPeopleWidgetTitle_%@%@", v9, v7];
  if ([v10 isEqualToString:@"PXEditorialRelatedPeopleWidgetTitle_"])
  {
    v11 = &stru_1F1741150;
  }

  else
  {
    v11 = PXLocalizedStringFromTable(v10, @"PhotosUICore");
  }

  return v11;
}

+ (id)verifiedPersonsFromMergeCandidatesForPersons:(id)a3
{
  v27[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count])
  {
    v4 = [MEMORY[0x1E695DFA8] setWithArray:v3];
    v5 = [v3 firstObject];
    v6 = [v5 photoLibrary];
    v7 = [v6 librarySpecificFetchOptions];

    v27[0] = *MEMORY[0x1E6978F38];
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
    [v7 setFetchPropertySets:v8];

    v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"verifiedType > %d && type != %d", 0, -1];
    [v7 setPredicate:v9];

    v10 = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
    [v7 setIncludedDetectionTypes:v10];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = v3;
    v11 = v3;
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v22 + 1) + 8 * i);
          if (![v16 verifiedType])
          {
            v17 = objc_autoreleasePoolPush();
            v18 = [MEMORY[0x1E6978980] fetchMergeCandidatePersonsForPerson:v16 options:v7];
            if ([v18 count])
            {
              [v4 removeObject:v16];
              v19 = [v18 fetchedObjects];
              [v4 addObjectsFromArray:v19];
            }

            objc_autoreleasePoolPop(v17);
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v13);
    }

    v3 = v21;
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  }

  return v4;
}

@end