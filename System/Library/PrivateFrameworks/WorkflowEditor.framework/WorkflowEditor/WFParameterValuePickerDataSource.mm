@interface WFParameterValuePickerDataSource
+ (id)variableSectionIdentifier;
- (UILocalizedIndexedCollation)localizedCollation;
- (WFParameterValuePickerDataSource)initWithParameter:(id)a3 tableView:(id)a4 cellProvider:(id)a5;
- (WFVariableProvider)variableProvider;
- (WFVariableUIDelegate)variableUIDelegate;
- (id)displayVariables;
- (id)displayVariablesWithTitle:(id)a3;
- (id)parameterStateAtIndexPath:(id)a3;
- (id)sectionIndexTitlesForTableView:(id)a3;
- (id)snapshotForCollection:(id)a3 filterVariableTitle:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 sectionForSectionIndexTitle:(id)a4 atIndex:(int64_t)a5;
- (unint64_t)itemsCount;
- (unint64_t)sectionsCount;
- (void)applyCollection:(id)a3 animatingDifferences:(BOOL)a4 filterVariableTitle:(id)a5 completion:(id)a6;
- (void)applyEmptyCollectionAnimatingDifferences:(BOOL)a3 completion:(id)a4;
@end

@implementation WFParameterValuePickerDataSource

- (WFVariableUIDelegate)variableUIDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_variableUIDelegate);

  return WeakRetained;
}

- (WFVariableProvider)variableProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_variableProvider);

  return WeakRetained;
}

- (int64_t)tableView:(id)a3 sectionForSectionIndexTitle:(id)a4 atIndex:(int64_t)a5
{
  v7 = [(WFParameterValuePickerDataSource *)self collection:a3];
  v8 = [v7 usesIndexedCollation];

  if (v8)
  {
    v9 = [(WFParameterValuePickerDataSource *)self localizedCollation];
    a5 = [v9 sectionForSectionIndexTitleAtIndex:a5];
  }

  return a5;
}

- (id)sectionIndexTitlesForTableView:(id)a3
{
  v4 = [(WFParameterValuePickerDataSource *)self collection];
  if ([v4 usesIndexedCollation])
  {
    v5 = [(WFParameterValuePickerDataSource *)self localizedCollation];
    v6 = [v5 sectionIndexTitles];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v6 = [(WFParameterValuePickerDataSource *)self collection];
  v7 = [v6 sections];
  v8 = [v7 count];

  if (v8 <= a4)
  {
    v15 = 0;
    goto LABEL_9;
  }

  v9 = [(WFParameterValuePickerDataSource *)self collection];
  v10 = [v9 sections];
  v11 = [v10 objectAtIndexedSubscript:a4];

  v12 = [v11 items];
  if (![v12 count])
  {

    goto LABEL_7;
  }

  v13 = [v11 title];
  v14 = [v13 length];

  if (!v14)
  {
LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  v15 = [v11 title];
LABEL_8:

LABEL_9:

  return v15;
}

- (void)applyEmptyCollectionAnimatingDifferences:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  [(WFParameterValuePickerDataSource *)self setCollection:0];
  v7 = objc_alloc_init(MEMORY[0x277CFB890]);
  v8.receiver = self;
  v8.super_class = WFParameterValuePickerDataSource;
  [(UITableViewDiffableDataSource *)&v8 applySnapshot:v7 animatingDifferences:v4 completion:v6];
}

- (void)applyCollection:(id)a3 animatingDifferences:(BOOL)a4 filterVariableTitle:(id)a5 completion:(id)a6
{
  v7 = a4;
  v10 = a6;
  v11 = a5;
  v12 = a3;
  if ([v12 usesIndexedCollation])
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __104__WFParameterValuePickerDataSource_applyCollection_animatingDifferences_filterVariableTitle_completion___block_invoke;
    v20[3] = &unk_279EDB930;
    v20[4] = self;
    v13 = [v12 wf_mapItems:v20];

    v14 = [(WFParameterValuePickerDataSource *)self localizedCollation];
    v15 = [v13 wf_localizedIndexedCollationCollectionWithCollation:v14 collationStringSelector:sel_readableTitle];

    v16 = [v15 wf_mapItems:&__block_literal_global_243];
    [(WFParameterValuePickerDataSource *)self setCollection:v16];
  }

  else
  {
    [(WFParameterValuePickerDataSource *)self setCollection:v12];
  }

  v17 = [(WFParameterValuePickerDataSource *)self collection];
  v18 = [(WFParameterValuePickerDataSource *)self snapshotForCollection:v17 filterVariableTitle:v11];

  v19.receiver = self;
  v19.super_class = WFParameterValuePickerDataSource;
  [(UITableViewDiffableDataSource *)&v19 applySnapshot:v18 animatingDifferences:v7 completion:v10];
}

WFParameterValueWrapper *__104__WFParameterValuePickerDataSource_applyCollection_animatingDifferences_filterVariableTitle_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [WFParameterValueWrapper alloc];
  v5 = [*(a1 + 32) parameter];
  v6 = [(WFParameterValueWrapper *)v4 initWithValue:v3 parameter:v5];

  return v6;
}

- (id)snapshotForCollection:(id)a3 filterVariableTitle:(id)a4
{
  v23[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CFB890];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  v10 = [v8 sections];

  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __78__WFParameterValuePickerDataSource_snapshotForCollection_filterVariableTitle___block_invoke;
  v20 = &unk_279EDBD60;
  v11 = v9;
  v21 = v11;
  v22 = self;
  [v10 enumerateObjectsUsingBlock:&v17];

  v12 = [(WFParameterValuePickerDataSource *)self displayVariablesWithTitle:v7, v17, v18, v19, v20];

  if ([v12 count])
  {
    v13 = [objc_opt_class() variableSectionIdentifier];
    v23[0] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
    [v11 appendSectionsWithIdentifiers:v14];

    [v11 appendItemsWithIdentifiers:v12];
  }

  v15 = v11;

  return v11;
}

void __78__WFParameterValuePickerDataSource_snapshotForCollection_filterVariableTitle___block_invoke(uint64_t a1, void *a2)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 _identifier];
  v5 = *(a1 + 32);
  v20[0] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  [v5 appendSectionsWithIdentifiers:v6];

  v7 = [v3 items];
  v8 = MEMORY[0x277CBEB98];
  v9 = [v3 items];
  v10 = [v8 setWithArray:v9];
  v11 = [v10 count];
  v12 = [v3 items];
  v13 = [v12 count];

  if (v11 != v13)
  {
    v14 = [v3 items];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __78__WFParameterValuePickerDataSource_snapshotForCollection_filterVariableTitle___block_invoke_2;
    v19[3] = &unk_279EDB908;
    v19[4] = *(a1 + 40);
    v15 = [v14 if_map:v19];
    v16 = v15;
    v17 = MEMORY[0x277CBEBF8];
    if (v15)
    {
      v17 = v15;
    }

    v18 = v17;

    v7 = v18;
  }

  [*(a1 + 32) appendItemsWithIdentifiers:v7 intoSectionWithIdentifier:v4];
}

WFParameterValueWrapper *__78__WFParameterValuePickerDataSource_snapshotForCollection_filterVariableTitle___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [WFParameterValueWrapper alloc];
  v5 = [*(a1 + 32) parameter];
  v6 = [(WFParameterValueWrapper *)v4 initWithValue:v3 parameter:v5];

  return v6;
}

- (id)parameterStateAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 section];
  v6 = [(WFParameterValuePickerDataSource *)self collection];
  v7 = [v6 sections];
  v8 = [v7 count];

  if (v5 >= v8)
  {
    v12 = [(WFParameterValuePickerDataSource *)self displayVariables];
    v13 = [v4 row];

    v10 = [v12 objectAtIndexedSubscript:v13];

    v14 = [(WFParameterValuePickerDataSource *)self parameter];
    v15 = [v14 stateClass];

    v11 = [[v15 alloc] initWithVariable:v10];
  }

  else
  {
    v9 = [(WFParameterValuePickerDataSource *)self collection];
    v10 = [v9 wf_itemAtIndexPath:v4];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    v11 = [v10 value];
  }

  v16 = v11;

  v10 = v16;
LABEL_6:

  return v10;
}

- (WFParameterValuePickerDataSource)initWithParameter:(id)a3 tableView:(id)a4 cellProvider:(id)a5
{
  v9 = a3;
  v14.receiver = self;
  v14.super_class = WFParameterValuePickerDataSource;
  v10 = [(UITableViewDiffableDataSource *)&v14 initWithTableView:a4 cellProvider:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_parameter, a3);
    v12 = v11;
  }

  return v11;
}

- (unint64_t)sectionsCount
{
  v5.receiver = self;
  v5.super_class = WFParameterValuePickerDataSource;
  v2 = [(UITableViewDiffableDataSource *)&v5 snapshot];
  v3 = [v2 numberOfSections];

  return v3;
}

- (unint64_t)itemsCount
{
  v5.receiver = self;
  v5.super_class = WFParameterValuePickerDataSource;
  v2 = [(UITableViewDiffableDataSource *)&v5 snapshot];
  v3 = [v2 numberOfItems];

  return v3;
}

- (id)displayVariablesWithTitle:(id)a3
{
  v4 = a3;
  v5 = [(WFParameterValuePickerDataSource *)self displayVariables];
  v6 = v5;
  if (v4)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __62__WFParameterValuePickerDataSource_displayVariablesWithTitle___block_invoke;
    v9[3] = &unk_279EDBC00;
    v10 = v4;
    v7 = [v6 if_objectsPassingTest:v9];
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

uint64_t __62__WFParameterValuePickerDataSource_displayVariablesWithTitle___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 name];
    v5 = v3;
  }

  else
  {

    if ([v3 isEqual:*MEMORY[0x277D7D038]])
    {
      v4 = WFLocalizedString(@"Select Magic Variable");
      v5 = 0;
    }

    else
    {
      v5 = 0;
      v4 = 0;
    }
  }

  v6 = [v4 localizedStandardContainsString:*(a1 + 32)];

  return v6;
}

- (id)displayVariables
{
  v3 = [(WFParameterValuePickerDataSource *)self allowedVariableTypes];
  if (![v3 count])
  {

    goto LABEL_8;
  }

  v4 = [(WFParameterValuePickerDataSource *)self variableProvider];

  if (!v4)
  {
LABEL_8:
    v5 = 0;
    goto LABEL_21;
  }

  v5 = objc_opt_new();
  v6 = [(WFParameterValuePickerDataSource *)self allowedVariableTypes];
  v7 = *MEMORY[0x277D7D038];
  if ([v6 containsObject:*MEMORY[0x277D7D038]])
  {
    v8 = [(WFParameterValuePickerDataSource *)self variableProvider];
    if ([v8 hasAvailableActionOutputVariables])
    {
      v9 = [(WFParameterValuePickerDataSource *)self variableUIDelegate];

      if (v9)
      {
        [v5 addObject:v7];
      }

      goto LABEL_11;
    }
  }

LABEL_11:
  v10 = [(WFParameterValuePickerDataSource *)self allowedVariableTypes];
  v11 = [v10 containsObject:*MEMORY[0x277D7D040]];

  if (v11)
  {
    v12 = objc_opt_new();
    [v5 addObject:v12];
  }

  v13 = [(WFParameterValuePickerDataSource *)self allowedVariableTypes];
  v14 = [v13 containsObject:*MEMORY[0x277D7D048]];

  if (v14)
  {
    v15 = objc_opt_new();
    [v5 addObject:v15];
  }

  v16 = [(WFParameterValuePickerDataSource *)self allowedVariableTypes];
  v17 = [v16 containsObject:*MEMORY[0x277D7D058]];

  if (v17)
  {
    v18 = objc_opt_new();
    [v5 addObject:v18];
  }

  v19 = [(WFParameterValuePickerDataSource *)self allowedVariableTypes];
  v20 = [v19 containsObject:*MEMORY[0x277D7D060]];

  if (v20)
  {
    v21 = objc_opt_new();
    [v5 addObject:v21];
  }

  v22 = [(WFParameterValuePickerDataSource *)self allowedVariableTypes];
  v23 = [v22 containsObject:*MEMORY[0x277D7D070]];

  if (v23)
  {
    v24 = [(WFParameterValuePickerDataSource *)self variableProvider];
    v25 = [v24 availableVariableNames];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __52__WFParameterValuePickerDataSource_displayVariables__block_invoke;
    v28[3] = &unk_279EDBA40;
    v28[4] = self;
    v26 = [v25 if_map:v28];
    [v5 addObjectsFromArray:v26];
  }

LABEL_21:

  return v5;
}

id __52__WFParameterValuePickerDataSource_displayVariables__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D7C9E8];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [*(a1 + 32) variableProvider];
  v7 = [v5 initWithName:v4 variableProvider:v6 aggrandizements:0];

  return v7;
}

- (UILocalizedIndexedCollation)localizedCollation
{
  localizedCollation = self->_localizedCollation;
  if (!localizedCollation)
  {
    v4 = [MEMORY[0x277D75700] currentCollation];
    v5 = self->_localizedCollation;
    self->_localizedCollation = v4;

    localizedCollation = self->_localizedCollation;
  }

  return localizedCollation;
}

+ (id)variableSectionIdentifier
{
  if (variableSectionIdentifier_onceToken != -1)
  {
    dispatch_once(&variableSectionIdentifier_onceToken, &__block_literal_global_238);
  }

  v3 = variableSectionIdentifier_variableSectionIdentifier;

  return v3;
}

void __61__WFParameterValuePickerDataSource_variableSectionIdentifier__block_invoke()
{
  v2 = [MEMORY[0x277CCAD78] UUID];
  v0 = [v2 UUIDString];
  v1 = variableSectionIdentifier_variableSectionIdentifier;
  variableSectionIdentifier_variableSectionIdentifier = v0;
}

@end