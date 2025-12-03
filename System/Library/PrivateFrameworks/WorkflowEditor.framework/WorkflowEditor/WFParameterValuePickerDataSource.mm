@interface WFParameterValuePickerDataSource
+ (id)variableSectionIdentifier;
- (UILocalizedIndexedCollation)localizedCollation;
- (WFParameterValuePickerDataSource)initWithParameter:(id)parameter tableView:(id)view cellProvider:(id)provider;
- (WFVariableProvider)variableProvider;
- (WFVariableUIDelegate)variableUIDelegate;
- (id)displayVariables;
- (id)displayVariablesWithTitle:(id)title;
- (id)parameterStateAtIndexPath:(id)path;
- (id)sectionIndexTitlesForTableView:(id)view;
- (id)snapshotForCollection:(id)collection filterVariableTitle:(id)title;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view sectionForSectionIndexTitle:(id)title atIndex:(int64_t)index;
- (unint64_t)itemsCount;
- (unint64_t)sectionsCount;
- (void)applyCollection:(id)collection animatingDifferences:(BOOL)differences filterVariableTitle:(id)title completion:(id)completion;
- (void)applyEmptyCollectionAnimatingDifferences:(BOOL)differences completion:(id)completion;
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

- (int64_t)tableView:(id)view sectionForSectionIndexTitle:(id)title atIndex:(int64_t)index
{
  v7 = [(WFParameterValuePickerDataSource *)self collection:view];
  usesIndexedCollation = [v7 usesIndexedCollation];

  if (usesIndexedCollation)
  {
    localizedCollation = [(WFParameterValuePickerDataSource *)self localizedCollation];
    index = [localizedCollation sectionForSectionIndexTitleAtIndex:index];
  }

  return index;
}

- (id)sectionIndexTitlesForTableView:(id)view
{
  collection = [(WFParameterValuePickerDataSource *)self collection];
  if ([collection usesIndexedCollation])
  {
    localizedCollation = [(WFParameterValuePickerDataSource *)self localizedCollation];
    sectionIndexTitles = [localizedCollation sectionIndexTitles];
  }

  else
  {
    sectionIndexTitles = 0;
  }

  return sectionIndexTitles;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  collection = [(WFParameterValuePickerDataSource *)self collection];
  sections = [collection sections];
  v8 = [sections count];

  if (v8 <= section)
  {
    title2 = 0;
    goto LABEL_9;
  }

  collection2 = [(WFParameterValuePickerDataSource *)self collection];
  sections2 = [collection2 sections];
  v11 = [sections2 objectAtIndexedSubscript:section];

  items = [v11 items];
  if (![items count])
  {

    goto LABEL_7;
  }

  title = [v11 title];
  v14 = [title length];

  if (!v14)
  {
LABEL_7:
    title2 = 0;
    goto LABEL_8;
  }

  title2 = [v11 title];
LABEL_8:

LABEL_9:

  return title2;
}

- (void)applyEmptyCollectionAnimatingDifferences:(BOOL)differences completion:(id)completion
{
  differencesCopy = differences;
  completionCopy = completion;
  [(WFParameterValuePickerDataSource *)self setCollection:0];
  v7 = objc_alloc_init(MEMORY[0x277CFB890]);
  v8.receiver = self;
  v8.super_class = WFParameterValuePickerDataSource;
  [(UITableViewDiffableDataSource *)&v8 applySnapshot:v7 animatingDifferences:differencesCopy completion:completionCopy];
}

- (void)applyCollection:(id)collection animatingDifferences:(BOOL)differences filterVariableTitle:(id)title completion:(id)completion
{
  differencesCopy = differences;
  completionCopy = completion;
  titleCopy = title;
  collectionCopy = collection;
  if ([collectionCopy usesIndexedCollation])
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __104__WFParameterValuePickerDataSource_applyCollection_animatingDifferences_filterVariableTitle_completion___block_invoke;
    v20[3] = &unk_279EDB930;
    v20[4] = self;
    v13 = [collectionCopy wf_mapItems:v20];

    localizedCollation = [(WFParameterValuePickerDataSource *)self localizedCollation];
    v15 = [v13 wf_localizedIndexedCollationCollectionWithCollation:localizedCollation collationStringSelector:sel_readableTitle];

    v16 = [v15 wf_mapItems:&__block_literal_global_243];
    [(WFParameterValuePickerDataSource *)self setCollection:v16];
  }

  else
  {
    [(WFParameterValuePickerDataSource *)self setCollection:collectionCopy];
  }

  collection = [(WFParameterValuePickerDataSource *)self collection];
  v18 = [(WFParameterValuePickerDataSource *)self snapshotForCollection:collection filterVariableTitle:titleCopy];

  v19.receiver = self;
  v19.super_class = WFParameterValuePickerDataSource;
  [(UITableViewDiffableDataSource *)&v19 applySnapshot:v18 animatingDifferences:differencesCopy completion:completionCopy];
}

WFParameterValueWrapper *__104__WFParameterValuePickerDataSource_applyCollection_animatingDifferences_filterVariableTitle_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [WFParameterValueWrapper alloc];
  v5 = [*(a1 + 32) parameter];
  v6 = [(WFParameterValueWrapper *)v4 initWithValue:v3 parameter:v5];

  return v6;
}

- (id)snapshotForCollection:(id)collection filterVariableTitle:(id)title
{
  v23[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CFB890];
  titleCopy = title;
  collectionCopy = collection;
  v9 = objc_alloc_init(v6);
  sections = [collectionCopy sections];

  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __78__WFParameterValuePickerDataSource_snapshotForCollection_filterVariableTitle___block_invoke;
  v20 = &unk_279EDBD60;
  v11 = v9;
  v21 = v11;
  selfCopy = self;
  [sections enumerateObjectsUsingBlock:&v17];

  v12 = [(WFParameterValuePickerDataSource *)self displayVariablesWithTitle:titleCopy, v17, v18, v19, v20];

  if ([v12 count])
  {
    variableSectionIdentifier = [objc_opt_class() variableSectionIdentifier];
    v23[0] = variableSectionIdentifier;
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

- (id)parameterStateAtIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  collection = [(WFParameterValuePickerDataSource *)self collection];
  sections = [collection sections];
  v8 = [sections count];

  if (section >= v8)
  {
    displayVariables = [(WFParameterValuePickerDataSource *)self displayVariables];
    v13 = [pathCopy row];

    v10 = [displayVariables objectAtIndexedSubscript:v13];

    parameter = [(WFParameterValuePickerDataSource *)self parameter];
    stateClass = [parameter stateClass];

    value = [[stateClass alloc] initWithVariable:v10];
  }

  else
  {
    collection2 = [(WFParameterValuePickerDataSource *)self collection];
    v10 = [collection2 wf_itemAtIndexPath:pathCopy];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    value = [v10 value];
  }

  v16 = value;

  v10 = v16;
LABEL_6:

  return v10;
}

- (WFParameterValuePickerDataSource)initWithParameter:(id)parameter tableView:(id)view cellProvider:(id)provider
{
  parameterCopy = parameter;
  v14.receiver = self;
  v14.super_class = WFParameterValuePickerDataSource;
  v10 = [(UITableViewDiffableDataSource *)&v14 initWithTableView:view cellProvider:provider];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_parameter, parameter);
    v12 = v11;
  }

  return v11;
}

- (unint64_t)sectionsCount
{
  v5.receiver = self;
  v5.super_class = WFParameterValuePickerDataSource;
  snapshot = [(UITableViewDiffableDataSource *)&v5 snapshot];
  numberOfSections = [snapshot numberOfSections];

  return numberOfSections;
}

- (unint64_t)itemsCount
{
  v5.receiver = self;
  v5.super_class = WFParameterValuePickerDataSource;
  snapshot = [(UITableViewDiffableDataSource *)&v5 snapshot];
  numberOfItems = [snapshot numberOfItems];

  return numberOfItems;
}

- (id)displayVariablesWithTitle:(id)title
{
  titleCopy = title;
  displayVariables = [(WFParameterValuePickerDataSource *)self displayVariables];
  v6 = displayVariables;
  if (titleCopy)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __62__WFParameterValuePickerDataSource_displayVariablesWithTitle___block_invoke;
    v9[3] = &unk_279EDBC00;
    v10 = titleCopy;
    v7 = [v6 if_objectsPassingTest:v9];
  }

  else
  {
    v7 = displayVariables;
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
  allowedVariableTypes = [(WFParameterValuePickerDataSource *)self allowedVariableTypes];
  if (![allowedVariableTypes count])
  {

    goto LABEL_8;
  }

  variableProvider = [(WFParameterValuePickerDataSource *)self variableProvider];

  if (!variableProvider)
  {
LABEL_8:
    v5 = 0;
    goto LABEL_21;
  }

  v5 = objc_opt_new();
  allowedVariableTypes2 = [(WFParameterValuePickerDataSource *)self allowedVariableTypes];
  v7 = *MEMORY[0x277D7D038];
  if ([allowedVariableTypes2 containsObject:*MEMORY[0x277D7D038]])
  {
    variableProvider2 = [(WFParameterValuePickerDataSource *)self variableProvider];
    if ([variableProvider2 hasAvailableActionOutputVariables])
    {
      variableUIDelegate = [(WFParameterValuePickerDataSource *)self variableUIDelegate];

      if (variableUIDelegate)
      {
        [v5 addObject:v7];
      }

      goto LABEL_11;
    }
  }

LABEL_11:
  allowedVariableTypes3 = [(WFParameterValuePickerDataSource *)self allowedVariableTypes];
  v11 = [allowedVariableTypes3 containsObject:*MEMORY[0x277D7D040]];

  if (v11)
  {
    v12 = objc_opt_new();
    [v5 addObject:v12];
  }

  allowedVariableTypes4 = [(WFParameterValuePickerDataSource *)self allowedVariableTypes];
  v14 = [allowedVariableTypes4 containsObject:*MEMORY[0x277D7D048]];

  if (v14)
  {
    v15 = objc_opt_new();
    [v5 addObject:v15];
  }

  allowedVariableTypes5 = [(WFParameterValuePickerDataSource *)self allowedVariableTypes];
  v17 = [allowedVariableTypes5 containsObject:*MEMORY[0x277D7D058]];

  if (v17)
  {
    v18 = objc_opt_new();
    [v5 addObject:v18];
  }

  allowedVariableTypes6 = [(WFParameterValuePickerDataSource *)self allowedVariableTypes];
  v20 = [allowedVariableTypes6 containsObject:*MEMORY[0x277D7D060]];

  if (v20)
  {
    v21 = objc_opt_new();
    [v5 addObject:v21];
  }

  allowedVariableTypes7 = [(WFParameterValuePickerDataSource *)self allowedVariableTypes];
  v23 = [allowedVariableTypes7 containsObject:*MEMORY[0x277D7D070]];

  if (v23)
  {
    variableProvider3 = [(WFParameterValuePickerDataSource *)self variableProvider];
    availableVariableNames = [variableProvider3 availableVariableNames];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __52__WFParameterValuePickerDataSource_displayVariables__block_invoke;
    v28[3] = &unk_279EDBA40;
    v28[4] = self;
    v26 = [availableVariableNames if_map:v28];
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
    currentCollation = [MEMORY[0x277D75700] currentCollation];
    v5 = self->_localizedCollation;
    self->_localizedCollation = currentCollation;

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