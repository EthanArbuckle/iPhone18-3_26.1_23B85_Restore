@interface PKPaymentSetupProductsSectionMainFactory
+ (id)_buildCredentialIdentifierToSectionMetadataMappingFromSections:(id)sections withContext:(id)context;
+ (id)_buildSectionIdentifierToSectionMetadataMappingFromSections:(id)sections withContext:(id)context;
+ (void)generateSectionsWithDefaultSortingForItems:(id)items categorizingByCredentialTypes:(id)types withContext:(id)context outSectionIdentifierToSectionMetadataMapping:(id *)mapping outOrderedSectionIdentifiers:(id *)identifiers;
+ (void)generateSectionsWithSearchFilter:(id)filter forItems:(id)items categorizingByCredentialTypes:(id)types withContext:(id)context outSectionIdentifierToSectionMetadataMapping:(id *)mapping outOrderedSectionIdentifiers:(id *)identifiers;
@end

@implementation PKPaymentSetupProductsSectionMainFactory

+ (void)generateSectionsWithDefaultSortingForItems:(id)items categorizingByCredentialTypes:(id)types withContext:(id)context outSectionIdentifierToSectionMetadataMapping:(id *)mapping outOrderedSectionIdentifiers:(id *)identifiers
{
  typesCopy = types;
  contextCopy = context;
  v13 = [items mutableCopy];
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = [PKPaymentSetupProductsSectionNearbyFactory generateSectionWithDefaultSortingForItems:v13 withContext:contextCopy];
  [v14 safelyAddObject:v15];
  sectionListItems = [v15 sectionListItems];
  [v13 removeObjectsInArray:sectionListItems];

  if ([typesCopy count])
  {
    v17 = [PKPaymentSetupProductsSectionAlphabeticalFactory generateSectionWithCredentialTypeSortingForItems:v13 categorizingByCredentialTypes:typesCopy withContext:contextCopy];
    [v14 addObjectsFromArray:v17];
    v18 = [self _buildCredentialIdentifierToSectionMetadataMappingFromSections:v14 withContext:contextCopy];
    v19 = &__block_literal_global_36;
  }

  else
  {
    v17 = [PKPaymentSetupProductsSectionAlphabeticalFactory generateSectionWithDefaultSortingForItems:v13 withContext:contextCopy];
    [v14 addObjectsFromArray:v17];
    v18 = [self _buildSectionIdentifierToSectionMetadataMappingFromSections:v14 withContext:contextCopy];
    v19 = &__block_literal_global_17;
  }

  *mapping = v18;
  *identifiers = [v14 pk_arrayByApplyingBlock:v19];
}

id __203__PKPaymentSetupProductsSectionMainFactory_generateSectionsWithDefaultSortingForItems_categorizingByCredentialTypes_withContext_outSectionIdentifierToSectionMetadataMapping_outOrderedSectionIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 credentialTypeIdentifier];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [v2 identifier];
  }

  v6 = v5;

  return v6;
}

+ (void)generateSectionsWithSearchFilter:(id)filter forItems:(id)items categorizingByCredentialTypes:(id)types withContext:(id)context outSectionIdentifierToSectionMetadataMapping:(id *)mapping outOrderedSectionIdentifiers:(id *)identifiers
{
  contextCopy = context;
  itemsCopy = items;
  filterCopy = filter;
  v17 = [types count];
  v21 = [PKPaymentSetupProductsSectionSearchFactory generateSectionsWithSearchFilter:filterCopy forItems:itemsCopy withContext:contextCopy prefersCategorizingSectionsByCredentialType:v17 != 0];

  if (v17)
  {
    v18 = [self _buildCredentialIdentifierToSectionMetadataMappingFromSections:v21 withContext:contextCopy];
    v19 = &__block_literal_global_20;
  }

  else
  {
    v18 = [self _buildSectionIdentifierToSectionMetadataMappingFromSections:v21 withContext:contextCopy];
    v19 = &__block_literal_global_22_0;
  }

  v20 = v18;
  *mapping = v18;
  *identifiers = [v21 pk_arrayByApplyingBlock:v19];
}

id __202__PKPaymentSetupProductsSectionMainFactory_generateSectionsWithSearchFilter_forItems_categorizingByCredentialTypes_withContext_outSectionIdentifierToSectionMetadataMapping_outOrderedSectionIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 credentialTypeIdentifier];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [v2 identifier];
  }

  v6 = v5;

  return v6;
}

+ (id)_buildSectionIdentifierToSectionMetadataMappingFromSections:(id)sections withContext:(id)context
{
  v34 = *MEMORY[0x1E69E9840];
  sectionsCopy = sections;
  v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = sectionsCopy;
  v5 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v28 + 1) + 8 * i);
        identifier = [v9 identifier];
        v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        sectionListItems = [v9 sectionListItems];
        v13 = [sectionListItems countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v25;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v25 != v15)
              {
                objc_enumerationMutation(sectionListItems);
              }

              v17 = *(*(&v24 + 1) + 8 * j);
              [v17 setSectionIdentifier:identifier];
              identifier2 = [v17 identifier];
              [v11 addObject:identifier2];
            }

            v14 = [sectionListItems countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v14);
        }

        v19 = [[PKPaymentSetupProductsSectionMetadata alloc] initWithTitle:identifier itemIdentifiers:v11];
        [v23 setObject:v19 forKey:identifier];
      }

      v6 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v6);
  }

  v20 = [v23 copy];

  return v20;
}

+ (id)_buildCredentialIdentifierToSectionMetadataMappingFromSections:(id)sections withContext:(id)context
{
  v37 = *MEMORY[0x1E69E9840];
  sectionsCopy = sections;
  v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v23 = [sectionsCopy pk_containsObjectPassingTest:&__block_literal_global_27_0];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = sectionsCopy;
  v5 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v5)
  {
    v6 = v5;
    v25 = *v32;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v32 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v31 + 1) + 8 * i);
        credentialTypeIdentifier = [v8 credentialTypeIdentifier];
        v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        sectionListItems = [v8 sectionListItems];
        v12 = [sectionListItems countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v28;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v28 != v14)
              {
                objc_enumerationMutation(sectionListItems);
              }

              identifier = [*(*(&v27 + 1) + 8 * j) identifier];
              [v10 addObject:identifier];
            }

            v13 = [sectionListItems countByEnumeratingWithState:&v27 objects:v35 count:16];
          }

          while (v13);
        }

        title = [v8 title];
        if ([credentialTypeIdentifier integerValue] == 129)
        {
          if (v23)
          {
            v18 = 0;
          }

          else
          {
            v18 = title;
          }

          v19 = [[PKPaymentSetupProductsSectionMetadata alloc] initWithTitle:v18 itemIdentifiers:v10];

          if (credentialTypeIdentifier)
          {
LABEL_17:
            [v26 setObject:v19 forKey:credentialTypeIdentifier];
            goto LABEL_21;
          }
        }

        else
        {
          v19 = [[PKPaymentSetupProductsSectionMetadata alloc] initWithTitle:title itemIdentifiers:v10];
          if (credentialTypeIdentifier)
          {
            goto LABEL_17;
          }
        }

        identifier2 = [v8 identifier];
        [v26 setObject:v19 forKey:identifier2];

LABEL_21:
      }

      v6 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v6);
  }

  v21 = [v26 copy];

  return v21;
}

uint64_t __119__PKPaymentSetupProductsSectionMainFactory__buildCredentialIdentifierToSectionMetadataMappingFromSections_withContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 sectionListItems];
  v3 = [v2 pk_containsObjectPassingTest:&__block_literal_global_30];

  return v3;
}

BOOL __119__PKPaymentSetupProductsSectionMainFactory__buildCredentialIdentifierToSectionMetadataMappingFromSections_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 product];
  v3 = [v2 primaryCredentialType] == 140;

  return v3;
}

@end