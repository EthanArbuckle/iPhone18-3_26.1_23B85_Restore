@interface PKPaymentSetupProductsSectionMainFactory
+ (id)_buildCredentialIdentifierToSectionMetadataMappingFromSections:(id)a3 withContext:(id)a4;
+ (id)_buildSectionIdentifierToSectionMetadataMappingFromSections:(id)a3 withContext:(id)a4;
+ (void)generateSectionsWithDefaultSortingForItems:(id)a3 categorizingByCredentialTypes:(id)a4 withContext:(id)a5 outSectionIdentifierToSectionMetadataMapping:(id *)a6 outOrderedSectionIdentifiers:(id *)a7;
+ (void)generateSectionsWithSearchFilter:(id)a3 forItems:(id)a4 categorizingByCredentialTypes:(id)a5 withContext:(id)a6 outSectionIdentifierToSectionMetadataMapping:(id *)a7 outOrderedSectionIdentifiers:(id *)a8;
@end

@implementation PKPaymentSetupProductsSectionMainFactory

+ (void)generateSectionsWithDefaultSortingForItems:(id)a3 categorizingByCredentialTypes:(id)a4 withContext:(id)a5 outSectionIdentifierToSectionMetadataMapping:(id *)a6 outOrderedSectionIdentifiers:(id *)a7
{
  v20 = a4;
  v12 = a5;
  v13 = [a3 mutableCopy];
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = [PKPaymentSetupProductsSectionNearbyFactory generateSectionWithDefaultSortingForItems:v13 withContext:v12];
  [v14 safelyAddObject:v15];
  v16 = [v15 sectionListItems];
  [v13 removeObjectsInArray:v16];

  if ([v20 count])
  {
    v17 = [PKPaymentSetupProductsSectionAlphabeticalFactory generateSectionWithCredentialTypeSortingForItems:v13 categorizingByCredentialTypes:v20 withContext:v12];
    [v14 addObjectsFromArray:v17];
    v18 = [a1 _buildCredentialIdentifierToSectionMetadataMappingFromSections:v14 withContext:v12];
    v19 = &__block_literal_global_36;
  }

  else
  {
    v17 = [PKPaymentSetupProductsSectionAlphabeticalFactory generateSectionWithDefaultSortingForItems:v13 withContext:v12];
    [v14 addObjectsFromArray:v17];
    v18 = [a1 _buildSectionIdentifierToSectionMetadataMappingFromSections:v14 withContext:v12];
    v19 = &__block_literal_global_17;
  }

  *a6 = v18;
  *a7 = [v14 pk_arrayByApplyingBlock:v19];
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

+ (void)generateSectionsWithSearchFilter:(id)a3 forItems:(id)a4 categorizingByCredentialTypes:(id)a5 withContext:(id)a6 outSectionIdentifierToSectionMetadataMapping:(id *)a7 outOrderedSectionIdentifiers:(id *)a8
{
  v14 = a6;
  v15 = a4;
  v16 = a3;
  v17 = [a5 count];
  v21 = [PKPaymentSetupProductsSectionSearchFactory generateSectionsWithSearchFilter:v16 forItems:v15 withContext:v14 prefersCategorizingSectionsByCredentialType:v17 != 0];

  if (v17)
  {
    v18 = [a1 _buildCredentialIdentifierToSectionMetadataMappingFromSections:v21 withContext:v14];
    v19 = &__block_literal_global_20;
  }

  else
  {
    v18 = [a1 _buildSectionIdentifierToSectionMetadataMappingFromSections:v21 withContext:v14];
    v19 = &__block_literal_global_22_0;
  }

  v20 = v18;
  *a7 = v18;
  *a8 = [v21 pk_arrayByApplyingBlock:v19];
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

+ (id)_buildSectionIdentifierToSectionMetadataMappingFromSections:(id)a3 withContext:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v4;
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
        v10 = [v9 identifier];
        v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v12 = [v9 sectionListItems];
        v13 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
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
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v24 + 1) + 8 * j);
              [v17 setSectionIdentifier:v10];
              v18 = [v17 identifier];
              [v11 addObject:v18];
            }

            v14 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v14);
        }

        v19 = [[PKPaymentSetupProductsSectionMetadata alloc] initWithTitle:v10 itemIdentifiers:v11];
        [v23 setObject:v19 forKey:v10];
      }

      v6 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v6);
  }

  v20 = [v23 copy];

  return v20;
}

+ (id)_buildCredentialIdentifierToSectionMetadataMappingFromSections:(id)a3 withContext:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v23 = [v4 pk_containsObjectPassingTest:&__block_literal_global_27_0];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v4;
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
        v9 = [v8 credentialTypeIdentifier];
        v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v11 = [v8 sectionListItems];
        v12 = [v11 countByEnumeratingWithState:&v27 objects:v35 count:16];
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
                objc_enumerationMutation(v11);
              }

              v16 = [*(*(&v27 + 1) + 8 * j) identifier];
              [v10 addObject:v16];
            }

            v13 = [v11 countByEnumeratingWithState:&v27 objects:v35 count:16];
          }

          while (v13);
        }

        v17 = [v8 title];
        if ([v9 integerValue] == 129)
        {
          if (v23)
          {
            v18 = 0;
          }

          else
          {
            v18 = v17;
          }

          v19 = [[PKPaymentSetupProductsSectionMetadata alloc] initWithTitle:v18 itemIdentifiers:v10];

          if (v9)
          {
LABEL_17:
            [v26 setObject:v19 forKey:v9];
            goto LABEL_21;
          }
        }

        else
        {
          v19 = [[PKPaymentSetupProductsSectionMetadata alloc] initWithTitle:v17 itemIdentifiers:v10];
          if (v9)
          {
            goto LABEL_17;
          }
        }

        v20 = [v8 identifier];
        [v26 setObject:v19 forKey:v20];

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