@interface PXPeopleWidgetUtilities
+ (id)localizedTitleStringForWidgetDataSource:(id)source photoLibrary:(id)library;
+ (id)verifiedPersonsFromMergeCandidatesForPersons:(id)persons;
@end

@implementation PXPeopleWidgetUtilities

+ (id)localizedTitleStringForWidgetDataSource:(id)source photoLibrary:(id)library
{
  libraryCopy = library;
  numberOfMembers = [source numberOfMembers];
  v7 = &stru_1F1741150;
  if (numberOfMembers)
  {
    px_peoplePetsHomeVisibility = [libraryCopy px_peoplePetsHomeVisibility];
    v9 = @"People";
    if ((px_peoplePetsHomeVisibility & 1) == 0)
    {
      v9 = &stru_1F1741150;
    }

    if ((px_peoplePetsHomeVisibility & 2) != 0)
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

+ (id)verifiedPersonsFromMergeCandidatesForPersons:(id)persons
{
  v27[1] = *MEMORY[0x1E69E9840];
  personsCopy = persons;
  if ([personsCopy count])
  {
    v4 = [MEMORY[0x1E695DFA8] setWithArray:personsCopy];
    firstObject = [personsCopy firstObject];
    photoLibrary = [firstObject photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    v27[0] = *MEMORY[0x1E6978F38];
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
    [librarySpecificFetchOptions setFetchPropertySets:v8];

    v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"verifiedType > %d && type != %d", 0, -1];
    [librarySpecificFetchOptions setPredicate:v9];

    px_defaultDetectionTypes = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
    [librarySpecificFetchOptions setIncludedDetectionTypes:px_defaultDetectionTypes];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = personsCopy;
    v11 = personsCopy;
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
            v18 = [MEMORY[0x1E6978980] fetchMergeCandidatePersonsForPerson:v16 options:librarySpecificFetchOptions];
            if ([v18 count])
            {
              [v4 removeObject:v16];
              fetchedObjects = [v18 fetchedObjects];
              [v4 addObjectsFromArray:fetchedObjects];
            }

            objc_autoreleasePoolPop(v17);
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v13);
    }

    personsCopy = v21;
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  }

  return v4;
}

@end