@interface PSDocumentsPolicyController
- (id)documentSource;
- (id)specifiers;
- (void)dealloc;
- (void)setDocumentSource:(id)source;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateFooterAnimated:(BOOL)animated;
- (void)updateRadioGroupWithSources:(id)sources animated:(BOOL)animated;
@end

@implementation PSDocumentsPolicyController

- (void)dealloc
{
  v3 = MEMORY[0x1E699A348];
  searchingContext = [(PSDocumentsPolicyController *)self searchingContext];
  [v3 endSearchingSources:searchingContext];

  v5.receiver = self;
  v5.super_class = PSDocumentsPolicyController;
  [(PSListController *)&v5 dealloc];
}

- (id)specifiers
{
  specifiers = self->super._specifiers;
  if (!specifiers)
  {
    documentSource = [(PSDocumentsPolicyController *)self documentSource];
    [(PSDocumentsPolicyController *)self setSelectedDocumentSource:documentSource];
    v5 = [(PSSpecifier *)self->super.super._specifier propertyForKey:PSDocumentBundleIdentifierKey];
    [(PSDocumentsPolicyController *)self setBundleIdentifier:v5];

    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = PS_LocalizedStringForDocumentsPolicy(@"STORE_DOCS_AND_DATA_ON");
    v8 = [PSSpecifier groupSpecifierWithName:v7];
    [(PSDocumentsPolicyController *)self setGroupSpecifier:v8];

    groupSpecifier = [(PSDocumentsPolicyController *)self groupSpecifier];
    [groupSpecifier setIdentifier:@"DOCS_AND_DATA_GROUP"];

    groupSpecifier2 = [(PSDocumentsPolicyController *)self groupSpecifier];
    [groupSpecifier2 setProperty:MEMORY[0x1E695E118] forKey:@"isRadioGroup"];

    groupSpecifier3 = [(PSDocumentsPolicyController *)self groupSpecifier];
    [v6 addObject:groupSpecifier3];

    objc_storeStrong(&self->super._specifiers, v6);
    [(PSListController *)self reload];
    searchingContext = [(PSDocumentsPolicyController *)self searchingContext];

    if (searchingContext)
    {
      v13 = MEMORY[0x1E699A348];
      searchingContext2 = [(PSDocumentsPolicyController *)self searchingContext];
      [v13 endSearchingSources:searchingContext2];
    }

    objc_initWeak(&location, self);
    v15 = MEMORY[0x1E699A348];
    bundleIdentifier = [(PSDocumentsPolicyController *)self bundleIdentifier];
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __41__PSDocumentsPolicyController_specifiers__block_invoke;
    v22 = &unk_1E71DBF90;
    objc_copyWeak(&v23, &location);
    v17 = [v15 startSearchingSourcesForBundleIdentifier:bundleIdentifier updateBlock:&v19];
    [(PSDocumentsPolicyController *)self setSearchingContext:v17, v19, v20, v21, v22];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);

    specifiers = self->super._specifiers;
  }

  return specifiers;
}

void __41__PSDocumentsPolicyController_specifiers__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__PSDocumentsPolicyController_specifiers__block_invoke_2;
  v5[3] = &unk_1E71DBF68;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __41__PSDocumentsPolicyController_specifiers__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained isFirstSourceResults];

  v4 = objc_loadWeakRetained((a1 + 40));
  [v4 setIsFirstSourceResults:0];

  v5 = objc_loadWeakRetained((a1 + 40));
  [v5 updateRadioGroupWithSources:*(a1 + 32) animated:v3];
}

- (void)updateRadioGroupWithSources:(id)sources animated:(BOOL)animated
{
  animatedCopy = animated;
  v40 = *MEMORY[0x1E69E9840];
  allValues = [sources allValues];
  v6 = [allValues mutableCopy];

  [v6 sortUsingComparator:&__block_literal_global_3];
  [(PSListController *)self beginUpdates];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  specifiers = [(PSDocumentsPolicyController *)self specifiers];
  reverseObjectEnumerator = [specifiers reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];

  v10 = [allObjects countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v35;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(allObjects);
        }

        v14 = *(*(&v34 + 1) + 8 * i);
        v15 = [v14 propertyForKey:@"PSDocumentSourceKey"];
        v16 = [v6 containsObject:v15];

        if (v16)
        {
          [(PSListController *)self removeSpecifier:v14 animated:animatedCopy];
        }
      }

      v11 = [allObjects countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v11);
  }

  [(PSListController *)self endUpdates];
  [(PSListController *)self beginUpdates];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v17 = v6;
  v18 = [v17 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v31;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v31 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v30 + 1) + 8 * j);
        if (([v22 hidden] & 1) == 0)
        {
          displayName = [v22 displayName];
          v24 = [PSSpecifier preferenceSpecifierNamed:displayName target:self set:0 get:0 detail:0 cell:3 edit:0];

          [v24 setProperty:v22 forKey:@"PSDocumentSourceKey"];
          v25 = [v22 iconForSize:0];
          [v24 setProperty:v25 forKey:@"iconImage"];

          [(PSListController *)self addSpecifier:v24 animated:animatedCopy];
          selectedDocumentSource = [(PSDocumentsPolicyController *)self selectedDocumentSource];
          v27 = [v22 isEqual:selectedDocumentSource];

          if (v27)
          {
            v28 = [(PSListController *)self specifierForID:@"DOCS_AND_DATA_GROUP"];
            [v28 setProperty:v24 forKey:@"radioGroupCheckedSpecifier"];
          }
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v19);
  }

  [(PSListController *)self endUpdates];
  [(PSDocumentsPolicyController *)self updateFooterAnimated:animatedCopy];
}

uint64_t __68__PSDocumentsPolicyController_updateRadioGroupWithSources_animated___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 identifier];
  v7 = *MEMORY[0x1E699A368];
  v8 = [v6 isEqualToString:*MEMORY[0x1E699A368]];

  if (v8)
  {
    goto LABEL_2;
  }

  v10 = [v5 identifier];
  v11 = [v10 isEqualToString:v7];

  if (v11)
  {
LABEL_4:
    v9 = 1;
    goto LABEL_5;
  }

  v13 = [v5 identifier];
  v14 = *MEMORY[0x1E699A390];
  v15 = [v13 isEqualToString:*MEMORY[0x1E699A390]];

  if ((v15 & 1) == 0)
  {
    v16 = [v4 identifier];
    v17 = [v16 isEqualToString:v14];

    if ((v17 & 1) == 0)
    {
      v18 = [v4 displayName];
      v19 = [v5 displayName];
      v9 = [v18 localizedStandardCompare:v19];

      goto LABEL_5;
    }

    goto LABEL_4;
  }

LABEL_2:
  v9 = -1;
LABEL_5:

  return v9;
}

- (void)updateFooterAnimated:(BOOL)animated
{
  animatedCopy = animated;
  selectedDocumentSource = [(PSDocumentsPolicyController *)self selectedDocumentSource];
  identifier = [selectedDocumentSource identifier];
  v7 = [identifier isEqualToString:*MEMORY[0x1E699A368]];

  if (v7)
  {
    v8 = @"DOCUMENTS_AND_DATA_ICLOUD_FOOTER";
LABEL_5:
    v17 = PS_LocalizedStringForDocumentsPolicy(v8);
    goto LABEL_7;
  }

  selectedDocumentSource2 = [(PSDocumentsPolicyController *)self selectedDocumentSource];
  identifier2 = [selectedDocumentSource2 identifier];
  v11 = [identifier2 isEqualToString:*MEMORY[0x1E699A390]];

  if (v11)
  {
    v8 = @"DOCUMENTS_AND_DATA_LOCAL_FOOTER";
    goto LABEL_5;
  }

  v12 = MEMORY[0x1E696AEC0];
  v13 = PS_LocalizedStringForDocumentsPolicy(@"DOCUMENTS_AND_DATA_THIRD_PARTY_FOOTER");
  selectedDocumentSource3 = [(PSDocumentsPolicyController *)self selectedDocumentSource];
  displayName = [selectedDocumentSource3 displayName];
  v17 = [v12 stringWithFormat:v13, displayName];

LABEL_7:
  v16 = [(PSListController *)self specifierForID:@"DOCS_AND_DATA_GROUP"];
  [v16 setProperty:v17 forKey:@"footerText"];
  [(PSListController *)self reloadSpecifier:v16 animated:animatedCopy];
}

- (id)documentSource
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  v3 = dispatch_semaphore_create(0);
  v4 = MEMORY[0x1E699A348];
  v5 = [(PSSpecifier *)self->super.super._specifier propertyForKey:PSDocumentBundleIdentifierKey];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__PSDocumentsPolicyController_documentSource__block_invoke;
  v9[3] = &unk_1E71DBFD8;
  v11 = &v12;
  v6 = v3;
  v10 = v6;
  [v4 defaultSourceForBundleIdentifier:v5 completionBlock:v9];

  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __45__PSDocumentsPolicyController_documentSource__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (a3)
  {
    v7 = _PSLoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_18B008000, v7, OS_LOG_TYPE_DEFAULT, "Error getting selected document source.", v8, 2u);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)setDocumentSource:(id)source
{
  sourceCopy = source;
  [(PSDocumentsPolicyController *)self setSelectedDocumentSource:sourceCopy];
  v5 = MEMORY[0x1E699A348];
  bundleIdentifier = [(PSDocumentsPolicyController *)self bundleIdentifier];
  [v5 setDefaultSource:sourceCopy forBundleIdentifier:bundleIdentifier];

  [(PSDocumentsPolicyController *)self updateFooterAnimated:1];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [(PSListController *)self indexForIndexPath:pathCopy];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = [(NSArray *)self->super._specifiers objectAtIndex:v8];
  }

  v10 = [(PSListController *)self getGroupSpecifierForSpecifier:v9];
  if ([v10 isRadioGroup])
  {
    v11 = [v9 propertyForKey:@"PSDocumentSourceKey"];
    [(PSDocumentsPolicyController *)self setDocumentSource:v11];
  }

  WeakRetained = objc_loadWeakRetained(&self->super.super._parentController);
  [WeakRetained reloadSpecifier:self->super.super._specifier];

  v13.receiver = self;
  v13.super_class = PSDocumentsPolicyController;
  [(PSListController *)&v13 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
}

@end