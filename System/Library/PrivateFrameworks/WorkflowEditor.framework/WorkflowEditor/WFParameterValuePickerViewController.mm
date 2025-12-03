@interface WFParameterValuePickerViewController
- (BOOL)currentSelectedValueIsVariable:(id)variable;
- (BOOL)currentSelectedValuesContainsState:(id)state;
- (BOOL)tableView:(id)view shouldDrawBottomSeparatorForSection:(int64_t)section;
- (UIBarButtonItem)cancelBarButtonItem;
- (UIBarButtonItem)deselectAllBarButtonItem;
- (UIBarButtonItem)doneBarButtonItem;
- (UIBarButtonItem)removeItemBarButtonItem;
- (UIBarButtonItem)selectAllBarButtonItem;
- (WFParameterValuePickerViewController)initWithParameter:(id)parameter widgetFamily:(int64_t)family allowsVariables:(BOOL)variables initialCollection:(id)collection currentState:(id)state delegate:(id)delegate;
- (WFParameterValuePickerViewControllerDelegate)delegate;
- (WFVariableProvider)variableProvider;
- (WFVariableUIDelegate)variableUIDelegate;
- (double)tableView:(id)view estimatedHeightForHeaderInSection:(int64_t)section;
- (id)extractIntentsExecutionErrorFromError:(id)error;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (void)cancelPickingValue;
- (void)configureCell:(id)cell forState:(id)state;
- (void)configureCell:(id)cell forVariable:(id)variable;
- (void)displayError:(id)error;
- (void)finishPickingValue;
- (void)parameterAttributesDidChange:(id)change;
- (void)parameterValuePickerTableViewCell:(id)cell didToggleSelection:(BOOL)selection;
- (void)performSearchWithUserInput:(id)input;
- (void)reloadChoosingPrompt;
- (void)reloadDisplayingValuesWithCollection:(id)collection searchTerm:(id)term validateCurrentState:(BOOL)state animatingDifferences:(BOOL)differences;
- (void)reloadNavigationBarButtonItems;
- (void)requestRemovingItem;
- (void)requestSelectAllItems;
- (void)resetVisibleCellsSelection;
- (void)scrollViewDidScroll:(id)scroll;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarSearchButtonClicked:(id)clicked;
- (void)setAllowsMultipleSelection:(BOOL)selection;
- (void)setCustomPrompt:(id)prompt;
- (void)setDefaultPrompt:(id)prompt;
- (void)setDeselectAllButtonTitle:(id)title;
- (void)setNoOptionAvailableTitle:(id)title;
- (void)setRemoveItemButtonTitle:(id)title;
- (void)setSelectAllButtonTitle:(id)title;
- (void)setShowsCancelButton:(BOOL)button;
- (void)setShowsPrompt:(BOOL)prompt;
- (void)setVariableProvider:(id)provider;
- (void)setVariableUIDelegate:(id)delegate;
- (void)setupSearchController;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)toggleCell:(id)cell atIndexPath:(id)path;
- (void)updateContentUnavailableConfigurationUsingState:(id)state;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)updateSearchResultsFromCurrentUserInput;
- (void)validateCurrentStateWithCollection:(id)collection;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
@end

@implementation WFParameterValuePickerViewController

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

- (WFParameterValuePickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)parameterValuePickerTableViewCell:(id)cell didToggleSelection:(BOOL)selection
{
  cellCopy = cell;
  tableView = [(WFParameterValuePickerViewController *)self tableView];
  v7 = [tableView indexPathForCell:cellCopy];

  [(WFParameterValuePickerViewController *)self toggleCell:cellCopy atIndexPath:v7];
}

- (void)parameterAttributesDidChange:(id)change
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __69__WFParameterValuePickerViewController_parameterAttributesDidChange___block_invoke;
  v3[3] = &unk_279EDBDA8;
  v3[4] = self;
  [change wf_reloadFromAttributesDidChangeWithCompletionHandler:v3];
}

void __69__WFParameterValuePickerViewController_parameterAttributesDidChange___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__WFParameterValuePickerViewController_parameterAttributesDidChange___block_invoke_2;
  v6[3] = &unk_279EDBC70;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __69__WFParameterValuePickerViewController_parameterAttributesDidChange___block_invoke_2(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    return [*(result + 40) reloadDisplayingValuesWithCollection:v1 searchTerm:0 validateCurrentState:1 animatingDifferences:1];
  }

  return result;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  viewCopy = view;
  cellCopy = cell;
  pathCopy = path;
  v10 = cellCopy;
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    v13 = v10;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v15 = v14;

  dataSource = [(WFParameterValuePickerViewController *)self dataSource];
  v17 = [dataSource parameterStateAtIndexPath:pathCopy];

  v18 = [(WFParameterValuePickerViewController *)self currentSelectedValuesContainsState:v17];
  if (v18)
  {
    v19 = 3;
  }

  else
  {
    v19 = 0;
  }

  [v12 setContainedInState:v18];
  [v15 setAccessoryType:v19];
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  dataSource = [(WFParameterValuePickerViewController *)self dataSource];
  v8 = [dataSource tableView:viewCopy titleForHeaderInSection:section];

  if (v8)
  {
    v9 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:@"WFParameterValuePickerSectionHeaderView"];
    headerConfiguration = [MEMORY[0x277D756E0] headerConfiguration];
    [headerConfiguration setText:v8];
    [v9 setContentConfiguration:headerConfiguration];
    listHeaderConfiguration = [MEMORY[0x277D751C0] listHeaderConfiguration];
    [v9 setBackgroundConfiguration:listHeaderConfiguration];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (double)tableView:(id)view estimatedHeightForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  dataSource = [(WFParameterValuePickerViewController *)self dataSource];
  v8 = [dataSource tableView:viewCopy titleForHeaderInSection:section];

  if (v8)
  {
    v9 = 22.0;
  }

  else
  {
    v9 = 0.0;
  }

  return v9;
}

- (BOOL)tableView:(id)view shouldDrawBottomSeparatorForSection:(int64_t)section
{
  viewCopy = view;
  dataSource = [(WFParameterValuePickerViewController *)self dataSource];
  v8 = [dataSource sectionsCount] - 1;

  if (v8 <= section)
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    wf_isWidgetConfigurationExtensionBundle = [mainBundle wf_isWidgetConfigurationExtensionBundle];
  }

  else
  {
    dataSource2 = [(WFParameterValuePickerViewController *)self dataSource];
    mainBundle = [dataSource2 tableView:viewCopy titleForHeaderInSection:section + 1];

    wf_isWidgetConfigurationExtensionBundle = [mainBundle length] == 0;
  }

  return wf_isWidgetConfigurationExtensionBundle;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  parameter = [(WFParameterValuePickerViewController *)self parameter];
  wf_usesTogglesForSelection = [parameter wf_usesTogglesForSelection];

  if ((wf_usesTogglesForSelection & 1) == 0)
  {
    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
    v9 = [viewCopy cellForRowAtIndexPath:pathCopy];
    [(WFParameterValuePickerViewController *)self toggleCell:v9 atIndexPath:pathCopy];
    [(WFParameterValuePickerViewController *)self reloadNavigationBarButtonItems];
  }
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(WFParameterValuePickerViewController *)self maximumSelectableItemsCount]< 2 || [(WFParameterValuePickerViewController *)self maximumSelectableItemsCount]== 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_3:
    v6 = pathCopy;
    goto LABEL_4;
  }

  dataSource = [(WFParameterValuePickerViewController *)self dataSource];
  v9 = [dataSource parameterStateAtIndexPath:pathCopy];

  if ([(WFParameterValuePickerViewController *)self currentSelectedValuesContainsState:v9])
  {
    v6 = pathCopy;
  }

  else
  {
    currentState = [(WFParameterValuePickerViewController *)self currentState];
    if (currentState)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = currentState;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    parameterStates = [v12 parameterStates];

    v14 = [parameterStates count];
    maximumSelectableItemsCount = [(WFParameterValuePickerViewController *)self maximumSelectableItemsCount];

    if (v14 < maximumSelectableItemsCount)
    {
      goto LABEL_3;
    }

    v6 = 0;
  }

LABEL_4:

  return v6;
}

- (void)toggleCell:(id)cell atIndexPath:(id)path
{
  v41[1] = *MEMORY[0x277D85DE8];
  cellCopy = cell;
  pathCopy = path;
  v8 = cellCopy;
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    v11 = v8;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = v12;

  dataSource = [(WFParameterValuePickerViewController *)self dataSource];
  v15 = [dataSource parameterStateAtIndexPath:pathCopy];

  variable = [v15 variable];
  v17 = [variable isEqual:*MEMORY[0x277D7D038]];

  if (!v17)
  {
    if (!-[WFParameterValuePickerViewController allowsMultipleSelection](self, "allowsMultipleSelection") || (-[WFParameterValuePickerViewController parameter](self, "parameter"), v19 = objc_claimAutoreleasedReturnValue(), [v19 multipleStateClass], isKindOfClass = objc_opt_isKindOfClass(), v19, (isKindOfClass & 1) != 0))
    {
      [(WFParameterValuePickerViewController *)self setCurrentState:v15];
      [(WFParameterValuePickerViewController *)self finishPickingValue];
      goto LABEL_26;
    }

    currentState = [(WFParameterValuePickerViewController *)self currentState];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      currentState2 = [(WFParameterValuePickerViewController *)self currentState];
      variable2 = [currentState2 variable];

      if (!variable2)
      {
        v24 = [(WFParameterValuePickerViewController *)self currentSelectedValuesContainsState:v15];
        currentState3 = [(WFParameterValuePickerViewController *)self currentState];
        presentingViewController = currentState3;
        if (v24)
        {
          parameterStates = [currentState3 parameterStates];
          v35 = MEMORY[0x277D85DD0];
          v36 = 3221225472;
          v37 = __63__WFParameterValuePickerViewController_toggleCell_atIndexPath___block_invoke_3;
          v38 = &unk_279EDBCC0;
          v39 = v15;
          v27 = [parameterStates indexOfObjectPassingTest:&v35];

          if (v27 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v28 = [presentingViewController stateByRemovingValueAtIndex:{v27, v35, v36, v37, v38}];
            [(WFParameterValuePickerViewController *)self setCurrentState:v28];

            [v10 setContainedInState:0];
            [v13 setAccessoryType:0];
          }

          goto LABEL_11;
        }

        v34 = [currentState3 stateByAppendingValue:v15];
        [(WFParameterValuePickerViewController *)self setCurrentState:v34];

LABEL_25:
        [v10 setContainedInState:1];
        [v13 setAccessoryType:3];
        goto LABEL_26;
      }
    }

    else
    {
    }

    currentState4 = [(WFParameterValuePickerViewController *)self currentState];
    variable3 = [currentState4 variable];

    if (variable3)
    {
      [(WFParameterValuePickerViewController *)self resetVisibleCellsSelection];
    }

    v31 = objc_alloc(MEMORY[0x277D7C678]);
    v41[0] = v15;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:1];
    v33 = [v31 initWithParameterStates:v32];
    [(WFParameterValuePickerViewController *)self setCurrentState:v33];

    goto LABEL_25;
  }

  presentingViewController = [(WFParameterValuePickerViewController *)self presentingViewController];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __63__WFParameterValuePickerViewController_toggleCell_atIndexPath___block_invoke;
  v40[3] = &unk_279EDC288;
  v40[4] = self;
  [presentingViewController dismissViewControllerAnimated:1 completion:v40];
LABEL_11:

LABEL_26:
}

void __63__WFParameterValuePickerViewController_toggleCell_atIndexPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) allowedVariableTypes];
  v3 = [v2 containsObject:*MEMORY[0x277D7D068]];

  v4 = [*(a1 + 32) variableUIDelegate];
  v5 = [*(a1 + 32) variableProvider];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__WFParameterValuePickerViewController_toggleCell_atIndexPath___block_invoke_2;
  v6[3] = &unk_279EDBDF8;
  v6[4] = *(a1 + 32);
  [v4 showActionOutputPickerAllowingShortcutInput:v3 variableProvider:v5 completionHandler:v6];
}

uint64_t __63__WFParameterValuePickerViewController_toggleCell_atIndexPath___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 stateIsEquivalent:*(a1 + 32)];
  *a4 = result;
  return result;
}

void __63__WFParameterValuePickerViewController_toggleCell_atIndexPath___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8 = v3;
  if (v3)
  {
    v5 = [v4 parameter];
    v6 = [v5 stateClass];

    v7 = [[v6 alloc] initWithVariable:v8];
    [*(a1 + 32) setCurrentState:v7];
    [*(a1 + 32) finishPickingValue];
  }

  else
  {
    [v4 cancelPickingValue];
  }
}

- (void)resetVisibleCellsSelection
{
  tableView = [(WFParameterValuePickerViewController *)self tableView];
  visibleCells = [tableView visibleCells];
  [visibleCells enumerateObjectsUsingBlock:&__block_literal_global_267];
}

void __66__WFParameterValuePickerViewController_resetVisibleCellsSelection__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = v7;
    }

    else
    {
      v2 = 0;
    }

    v3 = v2;

    v4 = v7;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = v5;

  [v3 setContainedInState:0];
  [v6 setAccessoryType:0];
}

- (void)requestSelectAllItems
{
  if (![(WFParameterValuePickerViewController *)self allowsMultipleSelection])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFParameterValuePickerViewController.m" lineNumber:691 description:{@"Invalid parameter not satisfying: %@", @"self.allowsMultipleSelection"}];
  }

  [(WFParameterValuePickerViewController *)self resetVisibleCellsSelection];
  v4 = objc_opt_new();
  sections = [(INObjectCollection *)self->_defaultResults sections];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__WFParameterValuePickerViewController_requestSelectAllItems__block_invoke;
  v13[3] = &unk_279EDBD60;
  v13[4] = self;
  v6 = v4;
  v14 = v6;
  [sections enumerateObjectsUsingBlock:v13];

  v7 = [v6 count];
  if (v7 > [(WFParameterValuePickerViewController *)self maximumSelectableItemsCount])
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFParameterValuePickerViewController.m" lineNumber:702 description:{@"Invalid parameter not satisfying: %@", @"allParameterStates.count <= self.maximumSelectableItemsCount"}];
  }

  v8 = [objc_alloc(MEMORY[0x277D7C678]) initWithParameterStates:v6];
  [(WFParameterValuePickerViewController *)self setCurrentState:v8];

  tableView = [(WFParameterValuePickerViewController *)self tableView];
  visibleCells = [tableView visibleCells];
  [visibleCells enumerateObjectsUsingBlock:&__block_literal_global_265];

  [(WFParameterValuePickerViewController *)self reloadNavigationBarButtonItems];
}

void __61__WFParameterValuePickerViewController_requestSelectAllItems__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = a2;
  v5 = [v12 items];
  v6 = [v5 count];

  if (v6)
  {
    v7 = 0;
    do
    {
      v8 = [MEMORY[0x277CCAA70] indexPathForItem:v7 inSection:a3];
      v9 = [*(*(a1 + 32) + 1192) wf_itemAtIndexPath:v8];
      [*(a1 + 40) addObject:v9];

      ++v7;
      v10 = [v12 items];
      v11 = [v10 count];
    }

    while (v7 < v11);
  }
}

void __61__WFParameterValuePickerViewController_requestSelectAllItems__block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = v7;
    }

    else
    {
      v2 = 0;
    }

    v3 = v2;

    v4 = v7;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = v5;

  [v3 setContainedInState:1];
  [v6 setAccessoryType:3];
}

- (void)requestRemovingItem
{
  if ([(WFParameterValuePickerViewController *)self allowsMultipleSelection])
  {
    [(WFParameterValuePickerViewController *)self setCurrentState:0];
    [(WFParameterValuePickerViewController *)self resetVisibleCellsSelection];

    [(WFParameterValuePickerViewController *)self reloadNavigationBarButtonItems];
  }

  else
  {
    delegate = [(WFParameterValuePickerViewController *)self delegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      delegate2 = [(WFParameterValuePickerViewController *)self delegate];
      [delegate2 parameterValuePickerViewControllerDidRequestRemovingItem:self];
    }
  }
}

- (void)cancelPickingValue
{
  searchController = [(WFParameterValuePickerViewController *)self searchController];
  [searchController setActive:0];

  delegate = [(WFParameterValuePickerViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(WFParameterValuePickerViewController *)self delegate];
    [delegate2 parameterValuePickerViewControllerDidCancel:self];
  }
}

- (void)finishPickingValue
{
  searchController = [(WFParameterValuePickerViewController *)self searchController];
  [searchController setActive:0];

  delegate = [(WFParameterValuePickerViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(WFParameterValuePickerViewController *)self delegate];
    currentState = [(WFParameterValuePickerViewController *)self currentState];
    [delegate2 parameterValuePickerViewController:self didFinishWithParameterState:currentState];
  }
}

- (void)updateSearchResultsFromCurrentUserInput
{
  searchBar = [(WFParameterValuePickerViewController *)self searchBar];
  text = [searchBar text];

  if ([text length])
  {
    v4 = text;
  }

  else
  {

    v4 = 0;
  }

  v6 = v4;
  [(WFParameterValuePickerViewController *)self performSearchWithUserInput:v4];
}

- (void)searchBarSearchButtonClicked:(id)clicked
{
  searchBar = [(WFParameterValuePickerViewController *)self searchBar];
  [searchBar resignFirstResponder];
}

- (void)searchBar:(id)bar textDidChange:(id)change
{
  v4 = [(WFParameterValuePickerViewController *)self inputDebouncer:bar];
  [v4 poke];
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  if ([controller isActive])
  {
    inputDebouncer = [(WFParameterValuePickerViewController *)self inputDebouncer];
    [inputDebouncer poke];
  }
}

- (void)performSearchWithUserInput:(id)input
{
  inputCopy = input;
  if ([inputCopy length])
  {
    cachedResults = [(WFParameterValuePickerViewController *)self cachedResults];
    defaultResults = [cachedResults objectForKey:inputCopy];

    cachedPrompts = [(WFParameterValuePickerViewController *)self cachedPrompts];
    defaultPrompt = [cachedPrompts objectForKey:inputCopy];

    v10 = 1;
    if (defaultResults)
    {
LABEL_3:
      [(WFParameterValuePickerViewController *)self reloadDisplayingValuesWithCollection:defaultResults searchTerm:inputCopy validateCurrentState:1 animatingDifferences:1];
      [(WFParameterValuePickerViewController *)self setCustomPrompt:defaultPrompt];
      goto LABEL_19;
    }
  }

  else
  {
    defaultResults = [(WFParameterValuePickerViewController *)self defaultResults];
    defaultPrompt = [(WFParameterValuePickerViewController *)self defaultPrompt];
    v10 = defaultResults != 0;
    if (defaultResults)
    {
      goto LABEL_3;
    }
  }

  if (!inputCopy || (-[WFParameterValuePickerViewController parameter](self, "parameter"), v11 = objc_claimAutoreleasedReturnValue(), defaultResults2 = [v11 wf_supportsSearch], v11, defaultResults2))
  {
    objc_initWeak(&location, self);
    v12 = [inputCopy length];
    if (!v12)
    {
      defaultResults2 = [(WFParameterValuePickerViewController *)self defaultResults];
      if (!defaultResults2)
      {
        goto LABEL_16;
      }
    }

    searchBar = [(WFParameterValuePickerViewController *)self searchBar];
    searchTextField = [searchBar searchTextField];
    rightView = [searchTextField rightView];

    if (v12)
    {
      if (!rightView)
      {
        goto LABEL_15;
      }
    }

    else
    {

      if (!rightView)
      {
LABEL_15:
        v19 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
        [v19 startAnimating];
        searchBar2 = [(WFParameterValuePickerViewController *)self searchBar];
        searchTextField2 = [searchBar2 searchTextField];
        [searchTextField2 setRightView:v19];

        searchBar3 = [(WFParameterValuePickerViewController *)self searchBar];
        searchTextField3 = [searchBar3 searchTextField];
        [searchTextField3 setRightViewMode:1];
      }
    }

LABEL_16:
    parameter = [(WFParameterValuePickerViewController *)self parameter];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __67__WFParameterValuePickerViewController_performSearchWithUserInput___block_invoke;
    v35[3] = &unk_279EDBD10;
    objc_copyWeak(&v37, &location);
    v36 = inputCopy;
    v38 = v10;
    [parameter wf_loadStatesWithSearchTerm:v36 completionHandler:v35];

    objc_destroyWeak(&v37);
    objc_destroyWeak(&location);
    goto LABEL_19;
  }

  defaultResults3 = [(WFParameterValuePickerViewController *)self defaultResults];
  v17 = defaultResults3;
  if (defaultResults3)
  {
    v18 = defaultResults3;
  }

  else
  {
    v25 = objc_alloc(MEMORY[0x277CD3E28]);
    v18 = [v25 initWithItems:MEMORY[0x277CBEBF8]];
  }

  v26 = v18;

  v29 = MEMORY[0x277D85DD0];
  v30 = 3221225472;
  v31 = __67__WFParameterValuePickerViewController_performSearchWithUserInput___block_invoke_3;
  v32 = &unk_279EDBD38;
  selfCopy = self;
  v27 = inputCopy;
  v34 = v27;
  v28 = [v26 wf_filteredCollectionUsingBlock:&v29];
  [(WFParameterValuePickerViewController *)self reloadDisplayingValuesWithCollection:v28 searchTerm:v27 validateCurrentState:0 animatingDifferences:v10, v29, v30, v31, v32, selfCopy];

LABEL_19:
}

void __67__WFParameterValuePickerViewController_performSearchWithUserInput___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = [WeakRetained searchBar];
  v12 = [v11 text];
  v13 = *(a1 + 32);
  v14 = v12;
  v15 = v13;
  v16 = v15;
  if (v14 == v15)
  {

    goto LABEL_7;
  }

  if (v14 && v15)
  {
    v17 = [v14 isEqualToString:v15];

    if ((v17 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_7:

    goto LABEL_8;
  }

LABEL_11:
  if ([*(a1 + 32) length])
  {

    goto LABEL_20;
  }

  v19 = [WeakRetained searchBar];
  v20 = [v19 text];
  v21 = [v20 length];

  if (v21)
  {
    goto LABEL_20;
  }

LABEL_8:
  if (v9)
  {
    [WeakRetained displayError:v9];
  }

  else
  {
    if (v7)
    {
      v18 = v7;
    }

    else
    {
      v22 = objc_alloc(MEMORY[0x277CD3E28]);
      v18 = [v22 initWithItems:MEMORY[0x277CBEBF8]];
    }

    v23 = v18;
    [WeakRetained reloadDisplayingValuesWithCollection:v18 searchTerm:*(a1 + 32) validateCurrentState:1 animatingDifferences:*(a1 + 48)];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__WFParameterValuePickerViewController_performSearchWithUserInput___block_invoke_2;
  block[3] = &unk_279EDC130;
  v25 = *(a1 + 32);
  v26 = WeakRetained;
  v27 = v8;
  dispatch_async(MEMORY[0x277D85CD0], block);

LABEL_20:
}

uint64_t __67__WFParameterValuePickerViewController_performSearchWithUserInput___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 parameter];
  v6 = [v5 wf_pickerLocalizedTitleForState:v4];

  v7 = [v6 localizedStandardContainsString:*(a1 + 40)];
  return v7;
}

void __67__WFParameterValuePickerViewController_performSearchWithUserInput___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) searchBar];
  v4 = [v3 text];
  v5 = v2;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {
  }

  else
  {
    if (v5)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {

      goto LABEL_12;
    }

    v9 = [v5 isEqualToString:v6];

    if (!v9)
    {
      goto LABEL_12;
    }
  }

  v10 = [*(a1 + 40) isViewLoaded];

  if (!v10)
  {
    goto LABEL_13;
  }

  v3 = [*(a1 + 40) searchBar];
  v7 = [v3 searchTextField];
  [v7 setRightView:0];
LABEL_12:

LABEL_13:
  [*(a1 + 40) setCustomPrompt:*(a1 + 48)];
  v11 = *(a1 + 48);
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = [*(a1 + 40) defaultPrompt];
  }

  v13 = v12;
  v14 = *(a1 + 40);
  v16 = v13;
  if (*(a1 + 32))
  {
    v15 = [v14 cachedPrompts];
    [v15 setObject:v16 forKeyedSubscript:*(a1 + 32)];
  }

  else
  {
    [v14 setDefaultPrompt:v13];
  }
}

- (void)reloadDisplayingValuesWithCollection:(id)collection searchTerm:(id)term validateCurrentState:(BOOL)state animatingDifferences:(BOOL)differences
{
  differencesCopy = differences;
  stateCopy = state;
  collectionCopy = collection;
  termCopy = term;
  [(WFParameterValuePickerViewController *)self setContentUnavailableConfiguration:0];
  searchBar = [(WFParameterValuePickerViewController *)self searchBar];
  text = [searchBar text];

  if (![text length])
  {

    text = 0;
  }

  if (![termCopy length])
  {
    [(WFParameterValuePickerViewController *)self setDefaultResults:collectionCopy];
    goto LABEL_10;
  }

  cachedResults = text;
  v14 = termCopy;
  v15 = v14;
  if (cachedResults == v14)
  {

LABEL_25:
    cachedResults = [(WFParameterValuePickerViewController *)self cachedResults];
    [cachedResults setObject:collectionCopy forKeyedSubscript:v15];
    goto LABEL_27;
  }

  if (v14 && cachedResults)
  {
    v16 = [cachedResults isEqualToString:v14];

    if (v16)
    {
      goto LABEL_25;
    }

LABEL_10:
    if (!stateCopy)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_27:
  if (stateCopy)
  {
LABEL_11:
    [(WFParameterValuePickerViewController *)self validateCurrentStateWithCollection:collectionCopy];
  }

LABEL_12:
  v17 = text;
  v18 = termCopy;
  v19 = v18;
  if (v17 == v18)
  {

LABEL_18:
    if ([(WFParameterValuePickerViewController *)self isViewLoaded])
    {
      dataSource = [(WFParameterValuePickerViewController *)self dataSource];
      [dataSource applyCollection:collectionCopy animatingDifferences:differencesCopy filterVariableTitle:v19];

      [(WFParameterValuePickerViewController *)self setNeedsUpdateContentUnavailableConfiguration];
      [(WFParameterValuePickerViewController *)self setupSearchController];
    }

    goto LABEL_21;
  }

  if (!v18 || !v17)
  {

    goto LABEL_21;
  }

  v20 = [v17 isEqualToString:v18];

  if (v20)
  {
    goto LABEL_18;
  }

LABEL_21:
}

- (void)validateCurrentStateWithCollection:(id)collection
{
  collectionCopy = collection;
  currentState = [(WFParameterValuePickerViewController *)self currentState];
  if (currentState)
  {
    v6 = currentState;
    parameter = [(WFParameterValuePickerViewController *)self parameter];
    if ([parameter wf_shouldValidateCurrentStateOnCollectionChanged])
    {
      currentState2 = [(WFParameterValuePickerViewController *)self currentState];
      variable = [currentState2 variable];

      if (!variable)
      {
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __75__WFParameterValuePickerViewController_validateCurrentStateWithCollection___block_invoke;
        aBlock[3] = &unk_279EDBCE8;
        v22 = collectionCopy;
        v10 = _Block_copy(aBlock);
        currentState3 = [(WFParameterValuePickerViewController *)self currentState];
        if (currentState3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          parameterStates = [currentState3 parameterStates];
          v13 = [parameterStates if_objectsPassingTest:v10];

          parameterStates2 = [currentState3 parameterStates];
          v15 = [parameterStates2 isEqual:v13];

          if ((v15 & 1) == 0)
          {
            parameter2 = [(WFParameterValuePickerViewController *)self parameter];
            multipleStateClass = [parameter2 multipleStateClass];

            if ([v13 count])
            {
              v18 = [[multipleStateClass alloc] initWithParameterStates:v13];
              [(WFParameterValuePickerViewController *)self setCurrentState:v18];
            }

            else
            {
              [(WFParameterValuePickerViewController *)self setCurrentState:0];
            }
          }
        }

        else
        {

          currentState4 = [(WFParameterValuePickerViewController *)self currentState];
          v20 = v10[2](v10, currentState4);

          if ((v20 & 1) == 0)
          {
            [(WFParameterValuePickerViewController *)self setCurrentState:0];
          }
        }
      }
    }

    else
    {
    }
  }
}

BOOL __75__WFParameterValuePickerViewController_validateCurrentStateWithCollection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) allItems];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __75__WFParameterValuePickerViewController_validateCurrentStateWithCollection___block_invoke_2;
  v8[3] = &unk_279EDBCC0;
  v9 = v3;
  v5 = v3;
  v6 = [v4 indexOfObjectPassingTest:v8] != 0x7FFFFFFFFFFFFFFFLL;

  return v6;
}

uint64_t __75__WFParameterValuePickerViewController_validateCurrentStateWithCollection___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) stateIsEquivalent:a2];
  *a4 = result;
  return result;
}

- (BOOL)currentSelectedValueIsVariable:(id)variable
{
  variableCopy = variable;
  currentState = [(WFParameterValuePickerViewController *)self currentState];
  variable = [currentState variable];

  if (variable)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [variableCopy isEqual:*MEMORY[0x277D7D038]];
    }

    else
    {
      name = [variable name];
      v9 = variableCopy;
      if (v9)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
      }

      v11 = v10;

      name2 = [v11 name];

      v7 = [name isEqualToString:name2];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)currentSelectedValuesContainsState:(id)state
{
  stateCopy = state;
  currentState = [(WFParameterValuePickerViewController *)self currentState];
  if (!currentState || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    currentState = 0;
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
LABEL_6:
    currentState2 = [(WFParameterValuePickerViewController *)self currentState];
    v7 = [currentState2 stateIsEquivalent:stateCopy];

    goto LABEL_7;
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  parameterStates = [currentState parameterStates];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75__WFParameterValuePickerViewController_currentSelectedValuesContainsState___block_invoke;
  v10[3] = &unk_279EDBC98;
  v12 = &v13;
  v11 = stateCopy;
  [parameterStates enumerateObjectsUsingBlock:v10];

  v7 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
LABEL_7:

  return v7 & 1;
}

uint64_t __75__WFParameterValuePickerViewController_currentSelectedValuesContainsState___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 stateIsEquivalent:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  *a4 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

- (void)updateContentUnavailableConfigurationUsingState:(id)state
{
  searchBar = [(WFParameterValuePickerViewController *)self searchBar];
  text = [searchBar text];
  if ([text length])
  {
  }

  else
  {
    defaultResults = [(WFParameterValuePickerViewController *)self defaultResults];

    if (!defaultResults)
    {
      loadingConfiguration = [MEMORY[0x277D75390] loadingConfiguration];
      goto LABEL_8;
    }
  }

  dataSource = [(WFParameterValuePickerViewController *)self dataSource];
  itemsCount = [dataSource itemsCount];

  if (itemsCount)
  {
    loadingConfiguration = 0;
  }

  else
  {
    emptyConfiguration = [MEMORY[0x277D75390] emptyConfiguration];
    noOptionAvailableTitle = [(WFParameterValuePickerViewController *)self noOptionAvailableTitle];
    [emptyConfiguration setSecondaryText:noOptionAvailableTitle];

    loadingConfiguration = emptyConfiguration;
  }

LABEL_8:
  v12 = loadingConfiguration;
  [(WFParameterValuePickerViewController *)self setContentUnavailableConfiguration:loadingConfiguration];
}

- (void)displayError:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    dataSource = [(WFParameterValuePickerViewController *)self dataSource];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __53__WFParameterValuePickerViewController_displayError___block_invoke;
    v6[3] = &unk_279EDBC70;
    v6[4] = self;
    v7 = errorCopy;
    [dataSource applyEmptyCollectionAnimatingDifferences:1 completion:v6];
  }
}

void __53__WFParameterValuePickerViewController_displayError___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) extractIntentsExecutionErrorFromError:*(a1 + 40)];
  v2 = [MEMORY[0x277D75390] emptyConfiguration];
  v3 = [v5 localizedDescription];
  [v2 setText:v3];

  v4 = [v5 localizedFailureReason];
  [v2 setSecondaryText:v4];

  [v2 setTextToSecondaryTextPadding:3.0];
  [*(a1 + 32) setContentUnavailableConfiguration:v2];
}

- (id)extractIntentsExecutionErrorFromError:(id)error
{
  errorCopy = error;
  userInfo = [errorCopy userInfo];
  v6 = *MEMORY[0x277CCA7E8];
  v7 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

  if (v7)
  {
    domain = [errorCopy domain];
    if ([domain isEqualToString:*MEMORY[0x277D7CCD0]])
    {

LABEL_5:
      userInfo2 = [errorCopy userInfo];
      v12 = [userInfo2 objectForKeyedSubscript:v6];

      if (v12)
      {
        v13 = [(WFParameterValuePickerViewController *)self extractIntentsExecutionErrorFromError:v12];
      }

      else
      {
        v13 = errorCopy;
      }

      v14 = v13;

      goto LABEL_10;
    }

    domain2 = [errorCopy domain];
    v10 = [domain2 isEqualToString:*MEMORY[0x277CD4450]];

    if (v10)
    {
      goto LABEL_5;
    }
  }

  v14 = errorCopy;
LABEL_10:

  return v14;
}

- (void)reloadChoosingPrompt
{
  if ([(WFParameterValuePickerViewController *)self showsPrompt])
  {
    customPrompt = [(WFParameterValuePickerViewController *)self customPrompt];
    v4 = customPrompt;
    if (customPrompt)
    {
      defaultPrompt = customPrompt;
    }

    else
    {
      defaultPrompt = [(WFParameterValuePickerViewController *)self defaultPrompt];
    }

    v7 = defaultPrompt;

    v6 = v7;
  }

  else
  {
    v6 = 0;
  }

  v8 = v6;
  [(WFParameterValuePickerViewController *)self setTitle:v6];
}

- (void)reloadNavigationBarButtonItems
{
  if ([(WFParameterValuePickerViewController *)self allowsMultipleSelection])
  {
    doneBarButtonItem = [(WFParameterValuePickerViewController *)self doneBarButtonItem];
    navigationItem = [(WFParameterValuePickerViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:doneBarButtonItem];

    if (-[WFParameterValuePickerViewController minimumSelectableItemsCount](self, "minimumSelectableItemsCount") && (-[WFParameterValuePickerViewController dataSource](self, "dataSource"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 itemsCount], v7 = -[WFParameterValuePickerViewController maximumSelectableItemsCount](self, "maximumSelectableItemsCount"), v5, v6 <= v7))
    {
      currentState = [(WFParameterValuePickerViewController *)self currentState];
      if (currentState)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = currentState;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;

      parameterStates = [v13 parameterStates];

      v15 = [parameterStates count];
      dataSource = [(WFParameterValuePickerViewController *)self dataSource];
      itemsCount = [dataSource itemsCount];

      v18 = v15 >= [(WFParameterValuePickerViewController *)self minimumSelectableItemsCount];
      navigationItem2 = [(WFParameterValuePickerViewController *)self navigationItem];
      rightBarButtonItem = [navigationItem2 rightBarButtonItem];
      [rightBarButtonItem setEnabled:v18];

      navigationItem3 = [(WFParameterValuePickerViewController *)self navigationItem];
      if (v15 >= itemsCount)
      {
        [(WFParameterValuePickerViewController *)self deselectAllBarButtonItem];
      }

      else
      {
        [(WFParameterValuePickerViewController *)self selectAllBarButtonItem];
      }
      navigationItem4 = ;
      [navigationItem3 setLeftBarButtonItem:navigationItem4 animated:1];
    }

    else
    {
      navigationItem3 = [(WFParameterValuePickerViewController *)self removeItemBarButtonItem];
      navigationItem4 = [(WFParameterValuePickerViewController *)self navigationItem];
      [navigationItem4 setLeftBarButtonItem:navigationItem3];
    }
  }

  else
  {
    navigationItem5 = [(WFParameterValuePickerViewController *)self navigationItem];
    if ([(WFParameterValuePickerViewController *)self showsCancelButton])
    {
      cancelBarButtonItem = [(WFParameterValuePickerViewController *)self cancelBarButtonItem];
      [navigationItem5 setLeftBarButtonItem:cancelBarButtonItem animated:1];
    }

    else
    {
      [navigationItem5 setLeftBarButtonItem:0 animated:1];
    }

    navigationItem3 = [(WFParameterValuePickerViewController *)self navigationItem];
    navigationItem4 = [(WFParameterValuePickerViewController *)self removeItemBarButtonItem];
    [navigationItem3 setRightBarButtonItem:navigationItem4 animated:1];
  }
}

- (void)configureCell:(id)cell forVariable:(id)variable
{
  cellCopy = cell;
  variableCopy = variable;
  if (variableCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      name = [variableCopy name];
      icon = [variableCopy icon];
      [cellCopy updateWithName:name icon:icon];
      v9 = variableCopy;
LABEL_6:

      goto LABEL_8;
    }
  }

  if ([variableCopy isEqual:*MEMORY[0x277D7D038]])
  {
    name = WFLocalizedString(@"Select Variable");
    v10 = objc_alloc(MEMORY[0x277D7A158]);
    icon = [MEMORY[0x277D79FB8] clearBackground];
    v11 = [v10 initWithSymbolName:@"wand.and.stars" background:icon];
    [cellCopy updateWithName:name icon:v11];

    v9 = 0;
    goto LABEL_6;
  }

  v9 = 0;
LABEL_8:
  if ([(WFParameterValuePickerViewController *)self currentSelectedValueIsVariable:variableCopy])
  {
    v12 = 3;
  }

  else
  {
    v12 = 0;
  }

  [cellCopy setAccessoryType:v12];
}

- (void)configureCell:(id)cell forState:(id)state
{
  stateCopy = state;
  cellCopy = cell;
  parameter = [(WFParameterValuePickerViewController *)self parameter];
  [cellCopy setParameter:parameter];

  [cellCopy setState:stateCopy];
  v8 = [(WFParameterValuePickerViewController *)self currentSelectedValuesContainsState:stateCopy];

  [cellCopy setContainedInState:v8];
  parameter2 = [(WFParameterValuePickerViewController *)self parameter];
  if ([parameter2 wf_usesTogglesForSelection])
  {
    v10 = 0;
  }

  else
  {
    v10 = 3;
  }

  [cellCopy setSelectionStyle:v10];

  [cellCopy setParentViewController:self];
  [cellCopy setDelegate:self];
}

- (void)scrollViewDidScroll:(id)scroll
{
  tableView = [(WFParameterValuePickerViewController *)self tableView];
  panGestureRecognizer = [tableView panGestureRecognizer];
  numberOfTouches = [panGestureRecognizer numberOfTouches];

  if (numberOfTouches)
  {
    searchController = [(WFParameterValuePickerViewController *)self searchController];
    searchBar = [searchController searchBar];
    [searchBar resignFirstResponder];
  }
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v25 = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = WFParameterValuePickerViewController;
  [(WFParameterValuePickerViewController *)&v23 viewWillAppear:appearing];
  if (![(WFParameterValuePickerViewController *)self hasScrolledToSelectedItem])
  {
    [(WFParameterValuePickerViewController *)self setHasScrolledToSelectedItem:1];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    dataSource = [(WFParameterValuePickerViewController *)self dataSource];
    collection = [dataSource collection];
    allItems = [collection allItems];

    v7 = [allItems countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = 0;
      v11 = *v20;
      while (2)
      {
        v12 = 0;
        v13 = v9;
        v14 = v10;
        do
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(allItems);
          }

          v15 = *(*(&v19 + 1) + 8 * v12);
          dataSource2 = [(WFParameterValuePickerViewController *)self dataSource];
          v10 = [dataSource2 indexPathForItemIdentifier:v15];

          dataSource3 = [(WFParameterValuePickerViewController *)self dataSource];
          v9 = [dataSource3 parameterStateAtIndexPath:v10];

          if ([(WFParameterValuePickerViewController *)self currentSelectedValuesContainsState:v9])
          {
            tableView = [(WFParameterValuePickerViewController *)self tableView];
            [tableView scrollToRowAtIndexPath:v10 atScrollPosition:2 animated:0];

            goto LABEL_12;
          }

          ++v12;
          v13 = v9;
          v14 = v10;
        }

        while (v8 != v12);
        v8 = [allItems countByEnumeratingWithState:&v19 objects:v24 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }

LABEL_12:
    }
  }
}

- (void)viewDidLoad
{
  v35[1] = *MEMORY[0x277D85DE8];
  v34.receiver = self;
  v34.super_class = WFParameterValuePickerViewController;
  [(WFParameterValuePickerViewController *)&v34 viewDidLoad];
  tableView = [(WFParameterValuePickerViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"ParameterStateCell"];

  tableView2 = [(WFParameterValuePickerViewController *)self tableView];
  [tableView2 registerClass:objc_opt_class() forCellReuseIdentifier:@"ParameterVariableCell"];

  tableView3 = [(WFParameterValuePickerViewController *)self tableView];
  [tableView3 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"WFParameterValuePickerSectionHeaderView"];

  allowsMultipleSelection = [(WFParameterValuePickerViewController *)self allowsMultipleSelection];
  tableView4 = [(WFParameterValuePickerViewController *)self tableView];
  [tableView4 setAllowsMultipleSelection:allowsMultipleSelection];

  tableView5 = [(WFParameterValuePickerViewController *)self tableView];
  [tableView5 setEstimatedRowHeight:44.0];

  tableView6 = [(WFParameterValuePickerViewController *)self tableView];
  [tableView6 setRowHeight:*MEMORY[0x277D76F30]];

  objc_initWeak(&location, self);
  v10 = [WFParameterValuePickerDataSource alloc];
  parameter = [(WFParameterValuePickerViewController *)self parameter];
  tableView7 = [(WFParameterValuePickerViewController *)self tableView];
  v28 = MEMORY[0x277D85DD0];
  v29 = 3221225472;
  v30 = __51__WFParameterValuePickerViewController_viewDidLoad__block_invoke;
  v31 = &unk_279EDBC28;
  objc_copyWeak(&v32, &location);
  v13 = [(WFParameterValuePickerDataSource *)v10 initWithParameter:parameter tableView:tableView7 cellProvider:&v28];
  [(WFParameterValuePickerViewController *)self setDataSource:v13, v28, v29, v30, v31];

  variableProvider = [(WFParameterValuePickerViewController *)self variableProvider];
  dataSource = [(WFParameterValuePickerViewController *)self dataSource];
  [dataSource setVariableProvider:variableProvider];

  variableUIDelegate = [(WFParameterValuePickerViewController *)self variableUIDelegate];
  dataSource2 = [(WFParameterValuePickerViewController *)self dataSource];
  [dataSource2 setVariableUIDelegate:variableUIDelegate];

  allowedVariableTypes = [(WFParameterValuePickerViewController *)self allowedVariableTypes];
  dataSource3 = [(WFParameterValuePickerViewController *)self dataSource];
  [dataSource3 setAllowedVariableTypes:allowedVariableTypes];

  dataSource4 = [(WFParameterValuePickerViewController *)self dataSource];
  [dataSource4 setDefaultRowAnimation:0];

  defaultResults = [(WFParameterValuePickerViewController *)self defaultResults];

  if (defaultResults)
  {
    dataSource5 = [(WFParameterValuePickerViewController *)self dataSource];
    defaultResults2 = [(WFParameterValuePickerViewController *)self defaultResults];
    [dataSource5 applyCollection:defaultResults2 animatingDifferences:0 filterVariableTitle:0];

    [(WFParameterValuePickerViewController *)self setNeedsUpdateContentUnavailableConfiguration];
    [(WFParameterValuePickerViewController *)self setCustomPrompt:0];
  }

  v24 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, 1.0, 1.0}];
  tableView8 = [(WFParameterValuePickerViewController *)self tableView];
  [tableView8 setTableFooterView:v24];

  v35[0] = objc_opt_class();
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
  v27 = [(WFParameterValuePickerViewController *)self registerForTraitChanges:v26 withHandler:&__block_literal_global_2344];

  [(WFParameterValuePickerViewController *)self reloadNavigationBarButtonItems];
  [(WFParameterValuePickerViewController *)self reloadChoosingPrompt];
  objc_destroyWeak(&v32);
  objc_destroyWeak(&location);
}

id __51__WFParameterValuePickerViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v9 value];

    v9 = v11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v7 dequeueReusableCellWithIdentifier:@"ParameterStateCell" forIndexPath:v8];
    v13 = [WeakRetained tableView];
    if ([v13 numberOfSections] == 2)
    {
      v14 = [WeakRetained tableView];
      v15 = [v14 numberOfRowsInSection:{objc_msgSend(v8, "section")}];
      v16 = v15 == [v8 row] + 1;
    }

    else
    {
      v16 = 0;
    }

    [WeakRetained configureCell:v12 forState:v9];
  }

  else
  {
    v12 = [v7 dequeueReusableCellWithIdentifier:@"ParameterVariableCell" forIndexPath:v8];
    [WeakRetained configureCell:v12 forVariable:v9];
    v16 = 0;
  }

  v17 = v12;
  if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v17 setDisablesSeparatorIconInset:v16];
    v18 = v17;
  }

  else
  {

    v18 = 0;
  }

  return v17;
}

void __51__WFParameterValuePickerViewController_viewDidLoad__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v6 = [v2 traitCollection];
  v3 = [v6 userInterfaceStyle];
  if (v3 == 1)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3 == 2;
  }

  v5 = [v2 searchBar];

  [v5 setKeyboardAppearance:v4];
}

- (void)setupSearchController
{
  searchController = [(WFParameterValuePickerViewController *)self searchController];
  if (searchController)
  {
LABEL_9:

    return;
  }

  parameter = [(WFParameterValuePickerViewController *)self parameter];
  if (parameter)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = parameter;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  preferContextMenu = [v6 preferContextMenu];
  if ((preferContextMenu & 1) == 0)
  {
    v8 = [objc_alloc(MEMORY[0x277D759F0]) initWithSearchResultsController:0];
    [(WFParameterValuePickerViewController *)self setSearchController:v8];

    searchController2 = [(WFParameterValuePickerViewController *)self searchController];
    [searchController2 setObscuresBackgroundDuringPresentation:0];

    searchController3 = [(WFParameterValuePickerViewController *)self searchController];
    [searchController3 setHidesNavigationBarDuringPresentation:0];

    searchController4 = [(WFParameterValuePickerViewController *)self searchController];
    [searchController4 setAutomaticallyShowsCancelButton:1];

    searchController5 = [(WFParameterValuePickerViewController *)self searchController];
    [searchController5 setSearchResultsUpdater:self];

    searchController6 = [(WFParameterValuePickerViewController *)self searchController];
    searchBar = [searchController6 searchBar];
    [(WFParameterValuePickerViewController *)self setSearchBar:searchBar];

    searchBar2 = [(WFParameterValuePickerViewController *)self searchBar];
    [searchBar2 setShowsCancelButton:0];

    searchBar3 = [(WFParameterValuePickerViewController *)self searchBar];
    [searchBar3 setSearchBarStyle:2];

    searchBar4 = [(WFParameterValuePickerViewController *)self searchBar];
    [searchBar4 setAutocorrectionType:1];

    searchBar5 = [(WFParameterValuePickerViewController *)self searchBar];
    [searchBar5 setSearchBarStyle:2];

    v20 = WFLocalizedString(@"Search");
    searchBar6 = [(WFParameterValuePickerViewController *)self searchBar];
    [searchBar6 setPlaceholder:v20];

    searchController = v20;
    goto LABEL_9;
  }
}

- (void)setCustomPrompt:(id)prompt
{
  promptCopy = prompt;
  v5 = self->_customPrompt;
  v6 = promptCopy;
  v10 = v6;
  if (v5 == v6)
  {

    goto LABEL_10;
  }

  if (v6 && v5)
  {
    v7 = [(NSString *)v5 isEqualToString:v6];

    if (v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v8 = [(NSString *)v10 copy];
  customPrompt = self->_customPrompt;
  self->_customPrompt = v8;

  if ([(WFParameterValuePickerViewController *)self isViewLoaded])
  {
    [(WFParameterValuePickerViewController *)self reloadChoosingPrompt];
  }

LABEL_10:
}

- (void)setDefaultPrompt:(id)prompt
{
  promptCopy = prompt;
  v5 = self->_defaultPrompt;
  v6 = promptCopy;
  v10 = v6;
  if (v5 == v6)
  {

    goto LABEL_10;
  }

  if (v6 && v5)
  {
    v7 = [(NSString *)v5 isEqualToString:v6];

    if (v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v8 = [(NSString *)v10 copy];
  defaultPrompt = self->_defaultPrompt;
  self->_defaultPrompt = v8;

  if ([(WFParameterValuePickerViewController *)self isViewLoaded])
  {
    [(WFParameterValuePickerViewController *)self reloadChoosingPrompt];
  }

LABEL_10:
}

- (void)setShowsCancelButton:(BOOL)button
{
  if (self->_showsCancelButton != button)
  {
    self->_showsCancelButton = button;
    if ([(WFParameterValuePickerViewController *)self isViewLoaded])
    {

      [(WFParameterValuePickerViewController *)self reloadNavigationBarButtonItems];
    }
  }
}

- (void)setShowsPrompt:(BOOL)prompt
{
  if (self->_showsPrompt != prompt)
  {
    self->_showsPrompt = prompt;
    if ([(WFParameterValuePickerViewController *)self isViewLoaded])
    {

      [(WFParameterValuePickerViewController *)self reloadNavigationBarButtonItems];
    }
  }
}

- (UIBarButtonItem)cancelBarButtonItem
{
  cancelBarButtonItem = self->_cancelBarButtonItem;
  if (!cancelBarButtonItem)
  {
    v4 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelPickingValue];
    v5 = self->_cancelBarButtonItem;
    self->_cancelBarButtonItem = v4;

    cancelBarButtonItem = self->_cancelBarButtonItem;
  }

  return cancelBarButtonItem;
}

- (UIBarButtonItem)deselectAllBarButtonItem
{
  if (!self->_deselectAllBarButtonItem)
  {
    deselectAllButtonTitle = [(WFParameterValuePickerViewController *)self deselectAllButtonTitle];

    if (deselectAllButtonTitle)
    {
      v4 = objc_alloc(MEMORY[0x277D751E0]);
      deselectAllButtonTitle2 = [(WFParameterValuePickerViewController *)self deselectAllButtonTitle];
      v6 = [v4 initWithTitle:deselectAllButtonTitle2 style:0 target:self action:sel_requestDeselectAllItems];
      deselectAllBarButtonItem = self->_deselectAllBarButtonItem;
      self->_deselectAllBarButtonItem = v6;
    }
  }

  v8 = self->_deselectAllBarButtonItem;

  return v8;
}

- (UIBarButtonItem)selectAllBarButtonItem
{
  if (!self->_selectAllBarButtonItem)
  {
    selectAllButtonTitle = [(WFParameterValuePickerViewController *)self selectAllButtonTitle];

    if (selectAllButtonTitle)
    {
      v4 = objc_alloc(MEMORY[0x277D751E0]);
      selectAllButtonTitle2 = [(WFParameterValuePickerViewController *)self selectAllButtonTitle];
      v6 = [v4 initWithTitle:selectAllButtonTitle2 style:0 target:self action:sel_requestSelectAllItems];
      selectAllBarButtonItem = self->_selectAllBarButtonItem;
      self->_selectAllBarButtonItem = v6;
    }
  }

  v8 = self->_selectAllBarButtonItem;

  return v8;
}

- (UIBarButtonItem)removeItemBarButtonItem
{
  if (!self->_removeItemBarButtonItem)
  {
    removeItemButtonTitle = [(WFParameterValuePickerViewController *)self removeItemButtonTitle];

    if (removeItemButtonTitle)
    {
      v4 = objc_alloc(MEMORY[0x277D751E0]);
      removeItemButtonTitle2 = [(WFParameterValuePickerViewController *)self removeItemButtonTitle];
      v6 = [v4 initWithTitle:removeItemButtonTitle2 style:0 target:self action:sel_requestRemovingItem];
      removeItemBarButtonItem = self->_removeItemBarButtonItem;
      self->_removeItemBarButtonItem = v6;
    }
  }

  v8 = self->_removeItemBarButtonItem;

  return v8;
}

- (UIBarButtonItem)doneBarButtonItem
{
  doneBarButtonItem = self->_doneBarButtonItem;
  if (!doneBarButtonItem)
  {
    v4 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_finishPickingValue];
    v5 = self->_doneBarButtonItem;
    self->_doneBarButtonItem = v4;

    doneBarButtonItem = self->_doneBarButtonItem;
  }

  return doneBarButtonItem;
}

- (void)setVariableUIDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_variableUIDelegate, delegateCopy);
  dataSource = [(WFParameterValuePickerViewController *)self dataSource];
  [dataSource setVariableUIDelegate:delegateCopy];
}

- (void)setVariableProvider:(id)provider
{
  providerCopy = provider;
  objc_storeWeak(&self->_variableProvider, providerCopy);
  dataSource = [(WFParameterValuePickerViewController *)self dataSource];
  [dataSource setVariableProvider:providerCopy];
}

- (void)setDeselectAllButtonTitle:(id)title
{
  v4 = [title copy];
  deselectAllButtonTitle = self->_deselectAllButtonTitle;
  self->_deselectAllButtonTitle = v4;

  deselectAllBarButtonItem = self->_deselectAllBarButtonItem;
  self->_deselectAllBarButtonItem = 0;

  if ([(WFParameterValuePickerViewController *)self isViewLoaded])
  {

    [(WFParameterValuePickerViewController *)self reloadNavigationBarButtonItems];
  }
}

- (void)setSelectAllButtonTitle:(id)title
{
  v4 = [title copy];
  selectAllButtonTitle = self->_selectAllButtonTitle;
  self->_selectAllButtonTitle = v4;

  selectAllBarButtonItem = self->_selectAllBarButtonItem;
  self->_selectAllBarButtonItem = 0;

  if ([(WFParameterValuePickerViewController *)self isViewLoaded])
  {

    [(WFParameterValuePickerViewController *)self reloadNavigationBarButtonItems];
  }
}

- (void)setRemoveItemButtonTitle:(id)title
{
  v4 = [title copy];
  removeItemButtonTitle = self->_removeItemButtonTitle;
  self->_removeItemButtonTitle = v4;

  removeItemBarButtonItem = self->_removeItemBarButtonItem;
  self->_removeItemBarButtonItem = 0;

  if ([(WFParameterValuePickerViewController *)self isViewLoaded])
  {

    [(WFParameterValuePickerViewController *)self reloadNavigationBarButtonItems];
  }
}

- (void)setAllowsMultipleSelection:(BOOL)selection
{
  selectionCopy = selection;
  self->_allowsMultipleSelection = selection;
  if ([(WFParameterValuePickerViewController *)self isViewLoaded])
  {
    tableView = [(WFParameterValuePickerViewController *)self tableView];
    [tableView setAllowsMultipleSelection:selectionCopy];

    [(WFParameterValuePickerViewController *)self reloadNavigationBarButtonItems];
  }
}

- (void)setNoOptionAvailableTitle:(id)title
{
  v4 = [title copy];
  noOptionAvailableTitle = self->_noOptionAvailableTitle;
  self->_noOptionAvailableTitle = v4;

  if ([(WFParameterValuePickerViewController *)self isViewLoaded])
  {

    [(WFParameterValuePickerViewController *)self setNeedsUpdateContentUnavailableConfiguration];
  }
}

- (WFParameterValuePickerViewController)initWithParameter:(id)parameter widgetFamily:(int64_t)family allowsVariables:(BOOL)variables initialCollection:(id)collection currentState:(id)state delegate:(id)delegate
{
  variablesCopy = variables;
  parameterCopy = parameter;
  collectionCopy = collection;
  stateCopy = state;
  delegateCopy = delegate;
  if ([parameterCopy wf_usesGroupTableViewStyle])
  {
    v19 = 2;
  }

  else
  {
    v19 = 0;
  }

  v40.receiver = self;
  v40.super_class = WFParameterValuePickerViewController;
  v20 = [(WFParameterValuePickerViewController *)&v40 initWithStyle:v19];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_parameter, parameter);
    v21->_widgetFamily = family;
    if (variablesCopy)
    {
      supportedVariableTypes = [parameterCopy supportedVariableTypes];
    }

    else
    {
      supportedVariableTypes = objc_opt_new();
    }

    allowedVariableTypes = v21->_allowedVariableTypes;
    v21->_allowedVariableTypes = supportedVariableTypes;

    objc_storeWeak(&v21->_delegate, delegateCopy);
    v24 = objc_alloc(MEMORY[0x277D79F00]);
    v25 = [v24 initWithDelay:MEMORY[0x277D85CD0] queue:0.200000003];
    inputDebouncer = v21->_inputDebouncer;
    v21->_inputDebouncer = v25;

    [(WFDebouncer *)v21->_inputDebouncer addTarget:v21 action:sel_updateSearchResultsFromCurrentUserInput];
    objc_storeStrong(&v21->_defaultResults, collection);
    objc_storeStrong(&v21->_currentState, state);
    v27 = objc_opt_new();
    cachedResults = v21->_cachedResults;
    v21->_cachedResults = v27;

    v29 = objc_opt_new();
    cachedPrompts = v21->_cachedPrompts;
    v21->_cachedPrompts = v29;

    if ([parameterCopy isRangedSizeArray])
    {
      v31 = [parameterCopy arrayMaxCountForWidgetFamily:family];
    }

    else
    {
      v31 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v21->_maximumSelectableItemsCount = v31;
    v21->_minimumSelectableItemsCount = [parameterCopy allowsEmptyValue] ^ 1;
    [(WFParameterValuePickerViewController *)v21 setupSearchController];
    searchController = [(WFParameterValuePickerViewController *)v21 searchController];
    navigationItem = [(WFParameterValuePickerViewController *)v21 navigationItem];
    [navigationItem setSearchController:searchController];

    v34 = WFLocalizedString(@"Choose");
    [(WFParameterValuePickerViewController *)v21 setTitle:v34];

    navigationItem2 = [(WFParameterValuePickerViewController *)v21 navigationItem];
    [navigationItem2 setHidesSearchBarWhenScrolling:0];

    parameter = [(WFParameterValuePickerViewController *)v21 parameter];
    wf_displayLocalizedPrompt = [parameter wf_displayLocalizedPrompt];
    [(WFParameterValuePickerViewController *)v21 setDefaultPrompt:wf_displayLocalizedPrompt];

    v21->_showsPrompt = 1;
    v21->_showsCancelButton = 1;
    [(WFParameterValuePickerViewController *)v21 performSearchWithUserInput:0];
    [parameterCopy addEventObserver:v21];
    v38 = v21;
  }

  return v21;
}

@end