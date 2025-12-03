@interface PKPaymentSetupProductsSectionAlphabeticalFactory
+ (id)_createSectionsListFromListItems:(id)items;
+ (id)generateSectionWithCredentialTypeSortingForItems:(id)items categorizingByCredentialTypes:(id)types withContext:(id)context;
+ (id)generateSectionWithDefaultSortingForItems:(id)items withContext:(id)context;
+ (void)_applyDefaultSortToSectionList:(id)list usingContext:(id)context;
@end

@implementation PKPaymentSetupProductsSectionAlphabeticalFactory

+ (id)generateSectionWithDefaultSortingForItems:(id)items withContext:(id)context
{
  contextCopy = context;
  v7 = [self _createSectionsListFromListItems:items];
  [self _applyDefaultSortToSectionList:v7 usingContext:contextCopy];

  return v7;
}

+ (id)generateSectionWithCredentialTypeSortingForItems:(id)items categorizingByCredentialTypes:(id)types withContext:(id)context
{
  v47 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  typesCopy = types;
  contextCopy = context;
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = itemsCopy;
  v9 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v42;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v42 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v41 + 1) + 8 * i);
        sectionIdentifier = [v13 sectionIdentifier];
        credentialSectionIdentifier = [v13 credentialSectionIdentifier];
        v16 = credentialSectionIdentifier;
        if (credentialSectionIdentifier)
        {
          stringValue = credentialSectionIdentifier;
        }

        else
        {
          v18 = MEMORY[0x1E696AD98];
          product = [v13 product];
          v20 = [v18 numberWithInteger:{objc_msgSend(product, "primaryCredentialType")}];
          stringValue = [v20 stringValue];
        }

        v21 = [v8 objectForKey:stringValue];
        if (!v21)
        {
          v21 = [[PKPaymentSetupProductsSectionListSection alloc] initWithIdentifier:sectionIdentifier credentialTypeIdentifier:stringValue];
          [v8 setObject:v21 forKey:stringValue];
        }

        sectionListItems = [(PKPaymentSetupProductsSectionListSection *)v21 sectionListItems];
        [sectionListItems addObject:v13];
      }

      v10 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v10);
  }

  v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v24 = typesCopy;
  v25 = [v24 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v38;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v38 != v27)
        {
          objc_enumerationMutation(v24);
        }

        stringValue2 = [*(*(&v37 + 1) + 8 * j) stringValue];
        v30 = [v8 objectForKey:stringValue2];

        if (v30)
        {
          sectionListItems2 = [v30 sectionListItems];
          [sectionListItems2 sortUsingComparator:&__block_literal_global_246];

          [v23 addObject:v30];
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v26);
  }

  [self _applyDefaultSortToSectionList:v23 usingContext:contextCopy];

  return v23;
}

uint64_t __143__PKPaymentSetupProductsSectionAlphabeticalFactory_generateSectionWithCredentialTypeSortingForItems_categorizingByCredentialTypes_withContext___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 identifier];
  v7 = [v6 isEqualToString:@"PKAddADifferentCardListItemIdentifier"];

  v8 = [v5 identifier];
  v9 = [v8 isEqualToString:@"PKAddADifferentCardListItemIdentifier"];

  if (((v7 ^ 1) & 1) != 0 || v9)
  {
    if ((v7 | v9 ^ 1))
    {
      if ((v7 ^ 1 | v9 ^ 1))
      {
        v11 = [v4 title];
        v12 = [v5 title];
        v10 = [v11 localizedCaseInsensitiveCompare:v12];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

+ (id)_createSectionsListFromListItems:(id)items
{
  v33 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = itemsCopy;
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        sectionIdentifier = [v10 sectionIdentifier];
        if (sectionIdentifier)
        {
          v12 = [v4 objectForKey:sectionIdentifier];
          if (!v12)
          {
            v12 = [[PKPaymentSetupProductsSectionListSection alloc] initWithIdentifier:sectionIdentifier];
            [v4 setObject:v12 forKey:sectionIdentifier];
          }

          sectionListItems = [(PKPaymentSetupProductsSectionListSection *)v12 sectionListItems];
          [sectionListItems addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v7);
  }

  allValues = [v4 allValues];
  v15 = [allValues mutableCopy];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v16 = v15;
  v17 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v24;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(v16);
        }

        sectionListItems2 = [*(*(&v23 + 1) + 8 * j) sectionListItems];
        [sectionListItems2 sortUsingComparator:&__block_literal_global_18_0];
      }

      v18 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v18);
  }

  return v16;
}

uint64_t __85__PKPaymentSetupProductsSectionAlphabeticalFactory__createSectionsListFromListItems___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 identifier];
  v7 = [v6 isEqualToString:@"PKAddADifferentCardListItemIdentifier"];

  v8 = [v5 identifier];
  v9 = [v8 isEqualToString:@"PKAddADifferentCardListItemIdentifier"];

  if (((v7 ^ 1) & 1) != 0 || v9)
  {
    if ((v7 | v9 ^ 1))
    {
      if ((v7 ^ 1 | v9 ^ 1))
      {
        v11 = [v4 title];
        v12 = [v5 title];
        v10 = [v11 localizedCaseInsensitiveCompare:v12];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

+ (void)_applyDefaultSortToSectionList:(id)list usingContext:(id)context
{
  contextCopy = context;
  listCopy = list;
  primaryCountryName = [contextCopy primaryCountryName];
  secondaryCountryName = [contextCopy secondaryCountryName];

  v9 = [primaryCountryName isEqualToString:secondaryCountryName];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __96__PKPaymentSetupProductsSectionAlphabeticalFactory__applyDefaultSortToSectionList_usingContext___block_invoke;
  v12[3] = &unk_1E8025988;
  v15 = v9 ^ 1;
  v13 = primaryCountryName;
  v14 = secondaryCountryName;
  v10 = secondaryCountryName;
  v11 = primaryCountryName;
  [listCopy sortUsingComparator:v12];
}

uint64_t __96__PKPaymentSetupProductsSectionAlphabeticalFactory__applyDefaultSortToSectionList_usingContext___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 identifier];
  v7 = [v5 identifier];

  if ([v6 isEqualToString:*(a1 + 32)])
  {
    goto LABEL_2;
  }

  if ([v7 isEqualToString:*(a1 + 32)])
  {
LABEL_4:
    v8 = 1;
    goto LABEL_10;
  }

  if (*(a1 + 48) != 1)
  {
LABEL_9:
    v8 = [v6 localizedCaseInsensitiveCompare:v7];
    goto LABEL_10;
  }

  if (([v6 isEqualToString:*(a1 + 40)] & 1) == 0)
  {
    if (*(a1 + 48) & 1) != 0 && ([v7 isEqualToString:*(a1 + 40)])
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

LABEL_2:
  v8 = -1;
LABEL_10:

  return v8;
}

@end