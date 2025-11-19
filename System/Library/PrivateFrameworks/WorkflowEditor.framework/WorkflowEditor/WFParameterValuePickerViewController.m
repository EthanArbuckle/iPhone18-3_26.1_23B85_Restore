@interface WFParameterValuePickerViewController
- (BOOL)currentSelectedValueIsVariable:(id)a3;
- (BOOL)currentSelectedValuesContainsState:(id)a3;
- (BOOL)tableView:(id)a3 shouldDrawBottomSeparatorForSection:(int64_t)a4;
- (UIBarButtonItem)cancelBarButtonItem;
- (UIBarButtonItem)deselectAllBarButtonItem;
- (UIBarButtonItem)doneBarButtonItem;
- (UIBarButtonItem)removeItemBarButtonItem;
- (UIBarButtonItem)selectAllBarButtonItem;
- (WFParameterValuePickerViewController)initWithParameter:(id)a3 widgetFamily:(int64_t)a4 allowsVariables:(BOOL)a5 initialCollection:(id)a6 currentState:(id)a7 delegate:(id)a8;
- (WFParameterValuePickerViewControllerDelegate)delegate;
- (WFVariableProvider)variableProvider;
- (WFVariableUIDelegate)variableUIDelegate;
- (double)tableView:(id)a3 estimatedHeightForHeaderInSection:(int64_t)a4;
- (id)extractIntentsExecutionErrorFromError:(id)a3;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (void)cancelPickingValue;
- (void)configureCell:(id)a3 forState:(id)a4;
- (void)configureCell:(id)a3 forVariable:(id)a4;
- (void)displayError:(id)a3;
- (void)finishPickingValue;
- (void)parameterAttributesDidChange:(id)a3;
- (void)parameterValuePickerTableViewCell:(id)a3 didToggleSelection:(BOOL)a4;
- (void)performSearchWithUserInput:(id)a3;
- (void)reloadChoosingPrompt;
- (void)reloadDisplayingValuesWithCollection:(id)a3 searchTerm:(id)a4 validateCurrentState:(BOOL)a5 animatingDifferences:(BOOL)a6;
- (void)reloadNavigationBarButtonItems;
- (void)requestRemovingItem;
- (void)requestSelectAllItems;
- (void)resetVisibleCellsSelection;
- (void)scrollViewDidScroll:(id)a3;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarSearchButtonClicked:(id)a3;
- (void)setAllowsMultipleSelection:(BOOL)a3;
- (void)setCustomPrompt:(id)a3;
- (void)setDefaultPrompt:(id)a3;
- (void)setDeselectAllButtonTitle:(id)a3;
- (void)setNoOptionAvailableTitle:(id)a3;
- (void)setRemoveItemButtonTitle:(id)a3;
- (void)setSelectAllButtonTitle:(id)a3;
- (void)setShowsCancelButton:(BOOL)a3;
- (void)setShowsPrompt:(BOOL)a3;
- (void)setVariableProvider:(id)a3;
- (void)setVariableUIDelegate:(id)a3;
- (void)setupSearchController;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)toggleCell:(id)a3 atIndexPath:(id)a4;
- (void)updateContentUnavailableConfigurationUsingState:(id)a3;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)updateSearchResultsFromCurrentUserInput;
- (void)validateCurrentStateWithCollection:(id)a3;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
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

- (void)parameterValuePickerTableViewCell:(id)a3 didToggleSelection:(BOOL)a4
{
  v5 = a3;
  v6 = [(WFParameterValuePickerViewController *)self tableView];
  v7 = [v6 indexPathForCell:v5];

  [(WFParameterValuePickerViewController *)self toggleCell:v5 atIndexPath:v7];
}

- (void)parameterAttributesDidChange:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __69__WFParameterValuePickerViewController_parameterAttributesDidChange___block_invoke;
  v3[3] = &unk_279EDBDA8;
  v3[4] = self;
  [a3 wf_reloadFromAttributesDidChangeWithCompletionHandler:v3];
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

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v20 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v8;
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

  v16 = [(WFParameterValuePickerViewController *)self dataSource];
  v17 = [v16 parameterStateAtIndexPath:v9];

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

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(WFParameterValuePickerViewController *)self dataSource];
  v8 = [v7 tableView:v6 titleForHeaderInSection:a4];

  if (v8)
  {
    v9 = [v6 dequeueReusableHeaderFooterViewWithIdentifier:@"WFParameterValuePickerSectionHeaderView"];
    v10 = [MEMORY[0x277D756E0] headerConfiguration];
    [v10 setText:v8];
    [v9 setContentConfiguration:v10];
    v11 = [MEMORY[0x277D751C0] listHeaderConfiguration];
    [v9 setBackgroundConfiguration:v11];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (double)tableView:(id)a3 estimatedHeightForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(WFParameterValuePickerViewController *)self dataSource];
  v8 = [v7 tableView:v6 titleForHeaderInSection:a4];

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

- (BOOL)tableView:(id)a3 shouldDrawBottomSeparatorForSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(WFParameterValuePickerViewController *)self dataSource];
  v8 = [v7 sectionsCount] - 1;

  if (v8 <= a4)
  {
    v10 = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = [v10 wf_isWidgetConfigurationExtensionBundle];
  }

  else
  {
    v9 = [(WFParameterValuePickerViewController *)self dataSource];
    v10 = [v9 tableView:v6 titleForHeaderInSection:a4 + 1];

    v11 = [v10 length] == 0;
  }

  return v11;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(WFParameterValuePickerViewController *)self parameter];
  v8 = [v7 wf_usesTogglesForSelection];

  if ((v8 & 1) == 0)
  {
    [v10 deselectRowAtIndexPath:v6 animated:1];
    v9 = [v10 cellForRowAtIndexPath:v6];
    [(WFParameterValuePickerViewController *)self toggleCell:v9 atIndexPath:v6];
    [(WFParameterValuePickerViewController *)self reloadNavigationBarButtonItems];
  }
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  if ([(WFParameterValuePickerViewController *)self maximumSelectableItemsCount]< 2 || [(WFParameterValuePickerViewController *)self maximumSelectableItemsCount]== 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_3:
    v6 = v5;
    goto LABEL_4;
  }

  v8 = [(WFParameterValuePickerViewController *)self dataSource];
  v9 = [v8 parameterStateAtIndexPath:v5];

  if ([(WFParameterValuePickerViewController *)self currentSelectedValuesContainsState:v9])
  {
    v6 = v5;
  }

  else
  {
    v10 = [(WFParameterValuePickerViewController *)self currentState];
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
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    v13 = [v12 parameterStates];

    v14 = [v13 count];
    v15 = [(WFParameterValuePickerViewController *)self maximumSelectableItemsCount];

    if (v14 < v15)
    {
      goto LABEL_3;
    }

    v6 = 0;
  }

LABEL_4:

  return v6;
}

- (void)toggleCell:(id)a3 atIndexPath:(id)a4
{
  v41[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v6;
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

  v14 = [(WFParameterValuePickerViewController *)self dataSource];
  v15 = [v14 parameterStateAtIndexPath:v7];

  v16 = [v15 variable];
  v17 = [v16 isEqual:*MEMORY[0x277D7D038]];

  if (!v17)
  {
    if (!-[WFParameterValuePickerViewController allowsMultipleSelection](self, "allowsMultipleSelection") || (-[WFParameterValuePickerViewController parameter](self, "parameter"), v19 = objc_claimAutoreleasedReturnValue(), [v19 multipleStateClass], isKindOfClass = objc_opt_isKindOfClass(), v19, (isKindOfClass & 1) != 0))
    {
      [(WFParameterValuePickerViewController *)self setCurrentState:v15];
      [(WFParameterValuePickerViewController *)self finishPickingValue];
      goto LABEL_26;
    }

    v21 = [(WFParameterValuePickerViewController *)self currentState];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [(WFParameterValuePickerViewController *)self currentState];
      v23 = [v22 variable];

      if (!v23)
      {
        v24 = [(WFParameterValuePickerViewController *)self currentSelectedValuesContainsState:v15];
        v25 = [(WFParameterValuePickerViewController *)self currentState];
        v18 = v25;
        if (v24)
        {
          v26 = [v25 parameterStates];
          v35 = MEMORY[0x277D85DD0];
          v36 = 3221225472;
          v37 = __63__WFParameterValuePickerViewController_toggleCell_atIndexPath___block_invoke_3;
          v38 = &unk_279EDBCC0;
          v39 = v15;
          v27 = [v26 indexOfObjectPassingTest:&v35];

          if (v27 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v28 = [v18 stateByRemovingValueAtIndex:{v27, v35, v36, v37, v38}];
            [(WFParameterValuePickerViewController *)self setCurrentState:v28];

            [v10 setContainedInState:0];
            [v13 setAccessoryType:0];
          }

          goto LABEL_11;
        }

        v34 = [v25 stateByAppendingValue:v15];
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

    v29 = [(WFParameterValuePickerViewController *)self currentState];
    v30 = [v29 variable];

    if (v30)
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

  v18 = [(WFParameterValuePickerViewController *)self presentingViewController];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __63__WFParameterValuePickerViewController_toggleCell_atIndexPath___block_invoke;
  v40[3] = &unk_279EDC288;
  v40[4] = self;
  [v18 dismissViewControllerAnimated:1 completion:v40];
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
  v3 = [(WFParameterValuePickerViewController *)self tableView];
  v2 = [v3 visibleCells];
  [v2 enumerateObjectsUsingBlock:&__block_literal_global_267];
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
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"WFParameterValuePickerViewController.m" lineNumber:691 description:{@"Invalid parameter not satisfying: %@", @"self.allowsMultipleSelection"}];
  }

  [(WFParameterValuePickerViewController *)self resetVisibleCellsSelection];
  v4 = objc_opt_new();
  v5 = [(INObjectCollection *)self->_defaultResults sections];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__WFParameterValuePickerViewController_requestSelectAllItems__block_invoke;
  v13[3] = &unk_279EDBD60;
  v13[4] = self;
  v6 = v4;
  v14 = v6;
  [v5 enumerateObjectsUsingBlock:v13];

  v7 = [v6 count];
  if (v7 > [(WFParameterValuePickerViewController *)self maximumSelectableItemsCount])
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"WFParameterValuePickerViewController.m" lineNumber:702 description:{@"Invalid parameter not satisfying: %@", @"allParameterStates.count <= self.maximumSelectableItemsCount"}];
  }

  v8 = [objc_alloc(MEMORY[0x277D7C678]) initWithParameterStates:v6];
  [(WFParameterValuePickerViewController *)self setCurrentState:v8];

  v9 = [(WFParameterValuePickerViewController *)self tableView];
  v10 = [v9 visibleCells];
  [v10 enumerateObjectsUsingBlock:&__block_literal_global_265];

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
    v3 = [(WFParameterValuePickerViewController *)self delegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = [(WFParameterValuePickerViewController *)self delegate];
      [v5 parameterValuePickerViewControllerDidRequestRemovingItem:self];
    }
  }
}

- (void)cancelPickingValue
{
  v3 = [(WFParameterValuePickerViewController *)self searchController];
  [v3 setActive:0];

  v4 = [(WFParameterValuePickerViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(WFParameterValuePickerViewController *)self delegate];
    [v6 parameterValuePickerViewControllerDidCancel:self];
  }
}

- (void)finishPickingValue
{
  v3 = [(WFParameterValuePickerViewController *)self searchController];
  [v3 setActive:0];

  v4 = [(WFParameterValuePickerViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v7 = [(WFParameterValuePickerViewController *)self delegate];
    v6 = [(WFParameterValuePickerViewController *)self currentState];
    [v7 parameterValuePickerViewController:self didFinishWithParameterState:v6];
  }
}

- (void)updateSearchResultsFromCurrentUserInput
{
  v3 = [(WFParameterValuePickerViewController *)self searchBar];
  v5 = [v3 text];

  if ([v5 length])
  {
    v4 = v5;
  }

  else
  {

    v4 = 0;
  }

  v6 = v4;
  [(WFParameterValuePickerViewController *)self performSearchWithUserInput:v4];
}

- (void)searchBarSearchButtonClicked:(id)a3
{
  v3 = [(WFParameterValuePickerViewController *)self searchBar];
  [v3 resignFirstResponder];
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  v4 = [(WFParameterValuePickerViewController *)self inputDebouncer:a3];
  [v4 poke];
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  if ([a3 isActive])
  {
    v4 = [(WFParameterValuePickerViewController *)self inputDebouncer];
    [v4 poke];
  }
}

- (void)performSearchWithUserInput:(id)a3
{
  v5 = a3;
  if ([v5 length])
  {
    v6 = [(WFParameterValuePickerViewController *)self cachedResults];
    v7 = [v6 objectForKey:v5];

    v8 = [(WFParameterValuePickerViewController *)self cachedPrompts];
    v9 = [v8 objectForKey:v5];

    v10 = 1;
    if (v7)
    {
LABEL_3:
      [(WFParameterValuePickerViewController *)self reloadDisplayingValuesWithCollection:v7 searchTerm:v5 validateCurrentState:1 animatingDifferences:1];
      [(WFParameterValuePickerViewController *)self setCustomPrompt:v9];
      goto LABEL_19;
    }
  }

  else
  {
    v7 = [(WFParameterValuePickerViewController *)self defaultResults];
    v9 = [(WFParameterValuePickerViewController *)self defaultPrompt];
    v10 = v7 != 0;
    if (v7)
    {
      goto LABEL_3;
    }
  }

  if (!v5 || (-[WFParameterValuePickerViewController parameter](self, "parameter"), v11 = objc_claimAutoreleasedReturnValue(), v3 = [v11 wf_supportsSearch], v11, v3))
  {
    objc_initWeak(&location, self);
    v12 = [v5 length];
    if (!v12)
    {
      v3 = [(WFParameterValuePickerViewController *)self defaultResults];
      if (!v3)
      {
        goto LABEL_16;
      }
    }

    v13 = [(WFParameterValuePickerViewController *)self searchBar];
    v14 = [v13 searchTextField];
    v15 = [v14 rightView];

    if (v12)
    {
      if (!v15)
      {
        goto LABEL_15;
      }
    }

    else
    {

      if (!v15)
      {
LABEL_15:
        v19 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
        [v19 startAnimating];
        v20 = [(WFParameterValuePickerViewController *)self searchBar];
        v21 = [v20 searchTextField];
        [v21 setRightView:v19];

        v22 = [(WFParameterValuePickerViewController *)self searchBar];
        v23 = [v22 searchTextField];
        [v23 setRightViewMode:1];
      }
    }

LABEL_16:
    v24 = [(WFParameterValuePickerViewController *)self parameter];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __67__WFParameterValuePickerViewController_performSearchWithUserInput___block_invoke;
    v35[3] = &unk_279EDBD10;
    objc_copyWeak(&v37, &location);
    v36 = v5;
    v38 = v10;
    [v24 wf_loadStatesWithSearchTerm:v36 completionHandler:v35];

    objc_destroyWeak(&v37);
    objc_destroyWeak(&location);
    goto LABEL_19;
  }

  v16 = [(WFParameterValuePickerViewController *)self defaultResults];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
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
  v33 = self;
  v27 = v5;
  v34 = v27;
  v28 = [v26 wf_filteredCollectionUsingBlock:&v29];
  [(WFParameterValuePickerViewController *)self reloadDisplayingValuesWithCollection:v28 searchTerm:v27 validateCurrentState:0 animatingDifferences:v10, v29, v30, v31, v32, v33];

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

- (void)reloadDisplayingValuesWithCollection:(id)a3 searchTerm:(id)a4 validateCurrentState:(BOOL)a5 animatingDifferences:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v22 = a3;
  v10 = a4;
  [(WFParameterValuePickerViewController *)self setContentUnavailableConfiguration:0];
  v11 = [(WFParameterValuePickerViewController *)self searchBar];
  v12 = [v11 text];

  if (![v12 length])
  {

    v12 = 0;
  }

  if (![v10 length])
  {
    [(WFParameterValuePickerViewController *)self setDefaultResults:v22];
    goto LABEL_10;
  }

  v13 = v12;
  v14 = v10;
  v15 = v14;
  if (v13 == v14)
  {

LABEL_25:
    v13 = [(WFParameterValuePickerViewController *)self cachedResults];
    [v13 setObject:v22 forKeyedSubscript:v15];
    goto LABEL_27;
  }

  if (v14 && v13)
  {
    v16 = [v13 isEqualToString:v14];

    if (v16)
    {
      goto LABEL_25;
    }

LABEL_10:
    if (!v7)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_27:
  if (v7)
  {
LABEL_11:
    [(WFParameterValuePickerViewController *)self validateCurrentStateWithCollection:v22];
  }

LABEL_12:
  v17 = v12;
  v18 = v10;
  v19 = v18;
  if (v17 == v18)
  {

LABEL_18:
    if ([(WFParameterValuePickerViewController *)self isViewLoaded])
    {
      v21 = [(WFParameterValuePickerViewController *)self dataSource];
      [v21 applyCollection:v22 animatingDifferences:v6 filterVariableTitle:v19];

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

- (void)validateCurrentStateWithCollection:(id)a3
{
  v4 = a3;
  v5 = [(WFParameterValuePickerViewController *)self currentState];
  if (v5)
  {
    v6 = v5;
    v7 = [(WFParameterValuePickerViewController *)self parameter];
    if ([v7 wf_shouldValidateCurrentStateOnCollectionChanged])
    {
      v8 = [(WFParameterValuePickerViewController *)self currentState];
      v9 = [v8 variable];

      if (!v9)
      {
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __75__WFParameterValuePickerViewController_validateCurrentStateWithCollection___block_invoke;
        aBlock[3] = &unk_279EDBCE8;
        v22 = v4;
        v10 = _Block_copy(aBlock);
        v11 = [(WFParameterValuePickerViewController *)self currentState];
        if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v12 = [v11 parameterStates];
          v13 = [v12 if_objectsPassingTest:v10];

          v14 = [v11 parameterStates];
          v15 = [v14 isEqual:v13];

          if ((v15 & 1) == 0)
          {
            v16 = [(WFParameterValuePickerViewController *)self parameter];
            v17 = [v16 multipleStateClass];

            if ([v13 count])
            {
              v18 = [[v17 alloc] initWithParameterStates:v13];
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

          v19 = [(WFParameterValuePickerViewController *)self currentState];
          v20 = v10[2](v10, v19);

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

- (BOOL)currentSelectedValueIsVariable:(id)a3
{
  v4 = a3;
  v5 = [(WFParameterValuePickerViewController *)self currentState];
  v6 = [v5 variable];

  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v4 isEqual:*MEMORY[0x277D7D038]];
    }

    else
    {
      v8 = [v6 name];
      v9 = v4;
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

      v12 = [v11 name];

      v7 = [v8 isEqualToString:v12];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)currentSelectedValuesContainsState:(id)a3
{
  v4 = a3;
  v5 = [(WFParameterValuePickerViewController *)self currentState];
  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v5 = 0;
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
LABEL_6:
    v8 = [(WFParameterValuePickerViewController *)self currentState];
    v7 = [v8 stateIsEquivalent:v4];

    goto LABEL_7;
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v6 = [v5 parameterStates];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75__WFParameterValuePickerViewController_currentSelectedValuesContainsState___block_invoke;
  v10[3] = &unk_279EDBC98;
  v12 = &v13;
  v11 = v4;
  [v6 enumerateObjectsUsingBlock:v10];

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

- (void)updateContentUnavailableConfigurationUsingState:(id)a3
{
  v4 = [(WFParameterValuePickerViewController *)self searchBar];
  v5 = [v4 text];
  if ([v5 length])
  {
  }

  else
  {
    v6 = [(WFParameterValuePickerViewController *)self defaultResults];

    if (!v6)
    {
      v9 = [MEMORY[0x277D75390] loadingConfiguration];
      goto LABEL_8;
    }
  }

  v7 = [(WFParameterValuePickerViewController *)self dataSource];
  v8 = [v7 itemsCount];

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v11 = [MEMORY[0x277D75390] emptyConfiguration];
    v10 = [(WFParameterValuePickerViewController *)self noOptionAvailableTitle];
    [v11 setSecondaryText:v10];

    v9 = v11;
  }

LABEL_8:
  v12 = v9;
  [(WFParameterValuePickerViewController *)self setContentUnavailableConfiguration:v9];
}

- (void)displayError:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(WFParameterValuePickerViewController *)self dataSource];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __53__WFParameterValuePickerViewController_displayError___block_invoke;
    v6[3] = &unk_279EDBC70;
    v6[4] = self;
    v7 = v4;
    [v5 applyEmptyCollectionAnimatingDifferences:1 completion:v6];
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

- (id)extractIntentsExecutionErrorFromError:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = *MEMORY[0x277CCA7E8];
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

  if (v7)
  {
    v8 = [v4 domain];
    if ([v8 isEqualToString:*MEMORY[0x277D7CCD0]])
    {

LABEL_5:
      v11 = [v4 userInfo];
      v12 = [v11 objectForKeyedSubscript:v6];

      if (v12)
      {
        v13 = [(WFParameterValuePickerViewController *)self extractIntentsExecutionErrorFromError:v12];
      }

      else
      {
        v13 = v4;
      }

      v14 = v13;

      goto LABEL_10;
    }

    v9 = [v4 domain];
    v10 = [v9 isEqualToString:*MEMORY[0x277CD4450]];

    if (v10)
    {
      goto LABEL_5;
    }
  }

  v14 = v4;
LABEL_10:

  return v14;
}

- (void)reloadChoosingPrompt
{
  if ([(WFParameterValuePickerViewController *)self showsPrompt])
  {
    v3 = [(WFParameterValuePickerViewController *)self customPrompt];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = [(WFParameterValuePickerViewController *)self defaultPrompt];
    }

    v7 = v5;

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
    v3 = [(WFParameterValuePickerViewController *)self doneBarButtonItem];
    v4 = [(WFParameterValuePickerViewController *)self navigationItem];
    [v4 setRightBarButtonItem:v3];

    if (-[WFParameterValuePickerViewController minimumSelectableItemsCount](self, "minimumSelectableItemsCount") && (-[WFParameterValuePickerViewController dataSource](self, "dataSource"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 itemsCount], v7 = -[WFParameterValuePickerViewController maximumSelectableItemsCount](self, "maximumSelectableItemsCount"), v5, v6 <= v7))
    {
      v11 = [(WFParameterValuePickerViewController *)self currentState];
      if (v11)
      {
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
        v12 = 0;
      }

      v13 = v12;

      v14 = [v13 parameterStates];

      v15 = [v14 count];
      v16 = [(WFParameterValuePickerViewController *)self dataSource];
      v17 = [v16 itemsCount];

      v18 = v15 >= [(WFParameterValuePickerViewController *)self minimumSelectableItemsCount];
      v19 = [(WFParameterValuePickerViewController *)self navigationItem];
      v20 = [v19 rightBarButtonItem];
      [v20 setEnabled:v18];

      v21 = [(WFParameterValuePickerViewController *)self navigationItem];
      if (v15 >= v17)
      {
        [(WFParameterValuePickerViewController *)self deselectAllBarButtonItem];
      }

      else
      {
        [(WFParameterValuePickerViewController *)self selectAllBarButtonItem];
      }
      v8 = ;
      [v21 setLeftBarButtonItem:v8 animated:1];
    }

    else
    {
      v21 = [(WFParameterValuePickerViewController *)self removeItemBarButtonItem];
      v8 = [(WFParameterValuePickerViewController *)self navigationItem];
      [v8 setLeftBarButtonItem:v21];
    }
  }

  else
  {
    v9 = [(WFParameterValuePickerViewController *)self navigationItem];
    if ([(WFParameterValuePickerViewController *)self showsCancelButton])
    {
      v10 = [(WFParameterValuePickerViewController *)self cancelBarButtonItem];
      [v9 setLeftBarButtonItem:v10 animated:1];
    }

    else
    {
      [v9 setLeftBarButtonItem:0 animated:1];
    }

    v21 = [(WFParameterValuePickerViewController *)self navigationItem];
    v8 = [(WFParameterValuePickerViewController *)self removeItemBarButtonItem];
    [v21 setRightBarButtonItem:v8 animated:1];
  }
}

- (void)configureCell:(id)a3 forVariable:(id)a4
{
  v13 = a3;
  v6 = a4;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 name];
      v8 = [v6 icon];
      [v13 updateWithName:v7 icon:v8];
      v9 = v6;
LABEL_6:

      goto LABEL_8;
    }
  }

  if ([v6 isEqual:*MEMORY[0x277D7D038]])
  {
    v7 = WFLocalizedString(@"Select Variable");
    v10 = objc_alloc(MEMORY[0x277D7A158]);
    v8 = [MEMORY[0x277D79FB8] clearBackground];
    v11 = [v10 initWithSymbolName:@"wand.and.stars" background:v8];
    [v13 updateWithName:v7 icon:v11];

    v9 = 0;
    goto LABEL_6;
  }

  v9 = 0;
LABEL_8:
  if ([(WFParameterValuePickerViewController *)self currentSelectedValueIsVariable:v6])
  {
    v12 = 3;
  }

  else
  {
    v12 = 0;
  }

  [v13 setAccessoryType:v12];
}

- (void)configureCell:(id)a3 forState:(id)a4
{
  v6 = a4;
  v11 = a3;
  v7 = [(WFParameterValuePickerViewController *)self parameter];
  [v11 setParameter:v7];

  [v11 setState:v6];
  v8 = [(WFParameterValuePickerViewController *)self currentSelectedValuesContainsState:v6];

  [v11 setContainedInState:v8];
  v9 = [(WFParameterValuePickerViewController *)self parameter];
  if ([v9 wf_usesTogglesForSelection])
  {
    v10 = 0;
  }

  else
  {
    v10 = 3;
  }

  [v11 setSelectionStyle:v10];

  [v11 setParentViewController:self];
  [v11 setDelegate:self];
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = [(WFParameterValuePickerViewController *)self tableView];
  v5 = [v4 panGestureRecognizer];
  v6 = [v5 numberOfTouches];

  if (v6)
  {
    v8 = [(WFParameterValuePickerViewController *)self searchController];
    v7 = [v8 searchBar];
    [v7 resignFirstResponder];
  }
}

- (void)viewIsAppearing:(BOOL)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = WFParameterValuePickerViewController;
  [(WFParameterValuePickerViewController *)&v23 viewWillAppear:a3];
  if (![(WFParameterValuePickerViewController *)self hasScrolledToSelectedItem])
  {
    [(WFParameterValuePickerViewController *)self setHasScrolledToSelectedItem:1];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v4 = [(WFParameterValuePickerViewController *)self dataSource];
    v5 = [v4 collection];
    v6 = [v5 allItems];

    v7 = [v6 countByEnumeratingWithState:&v19 objects:v24 count:16];
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
            objc_enumerationMutation(v6);
          }

          v15 = *(*(&v19 + 1) + 8 * v12);
          v16 = [(WFParameterValuePickerViewController *)self dataSource];
          v10 = [v16 indexPathForItemIdentifier:v15];

          v17 = [(WFParameterValuePickerViewController *)self dataSource];
          v9 = [v17 parameterStateAtIndexPath:v10];

          if ([(WFParameterValuePickerViewController *)self currentSelectedValuesContainsState:v9])
          {
            v18 = [(WFParameterValuePickerViewController *)self tableView];
            [v18 scrollToRowAtIndexPath:v10 atScrollPosition:2 animated:0];

            goto LABEL_12;
          }

          ++v12;
          v13 = v9;
          v14 = v10;
        }

        while (v8 != v12);
        v8 = [v6 countByEnumeratingWithState:&v19 objects:v24 count:16];
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
  v3 = [(WFParameterValuePickerViewController *)self tableView];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"ParameterStateCell"];

  v4 = [(WFParameterValuePickerViewController *)self tableView];
  [v4 registerClass:objc_opt_class() forCellReuseIdentifier:@"ParameterVariableCell"];

  v5 = [(WFParameterValuePickerViewController *)self tableView];
  [v5 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"WFParameterValuePickerSectionHeaderView"];

  v6 = [(WFParameterValuePickerViewController *)self allowsMultipleSelection];
  v7 = [(WFParameterValuePickerViewController *)self tableView];
  [v7 setAllowsMultipleSelection:v6];

  v8 = [(WFParameterValuePickerViewController *)self tableView];
  [v8 setEstimatedRowHeight:44.0];

  v9 = [(WFParameterValuePickerViewController *)self tableView];
  [v9 setRowHeight:*MEMORY[0x277D76F30]];

  objc_initWeak(&location, self);
  v10 = [WFParameterValuePickerDataSource alloc];
  v11 = [(WFParameterValuePickerViewController *)self parameter];
  v12 = [(WFParameterValuePickerViewController *)self tableView];
  v28 = MEMORY[0x277D85DD0];
  v29 = 3221225472;
  v30 = __51__WFParameterValuePickerViewController_viewDidLoad__block_invoke;
  v31 = &unk_279EDBC28;
  objc_copyWeak(&v32, &location);
  v13 = [(WFParameterValuePickerDataSource *)v10 initWithParameter:v11 tableView:v12 cellProvider:&v28];
  [(WFParameterValuePickerViewController *)self setDataSource:v13, v28, v29, v30, v31];

  v14 = [(WFParameterValuePickerViewController *)self variableProvider];
  v15 = [(WFParameterValuePickerViewController *)self dataSource];
  [v15 setVariableProvider:v14];

  v16 = [(WFParameterValuePickerViewController *)self variableUIDelegate];
  v17 = [(WFParameterValuePickerViewController *)self dataSource];
  [v17 setVariableUIDelegate:v16];

  v18 = [(WFParameterValuePickerViewController *)self allowedVariableTypes];
  v19 = [(WFParameterValuePickerViewController *)self dataSource];
  [v19 setAllowedVariableTypes:v18];

  v20 = [(WFParameterValuePickerViewController *)self dataSource];
  [v20 setDefaultRowAnimation:0];

  v21 = [(WFParameterValuePickerViewController *)self defaultResults];

  if (v21)
  {
    v22 = [(WFParameterValuePickerViewController *)self dataSource];
    v23 = [(WFParameterValuePickerViewController *)self defaultResults];
    [v22 applyCollection:v23 animatingDifferences:0 filterVariableTitle:0];

    [(WFParameterValuePickerViewController *)self setNeedsUpdateContentUnavailableConfiguration];
    [(WFParameterValuePickerViewController *)self setCustomPrompt:0];
  }

  v24 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, 1.0, 1.0}];
  v25 = [(WFParameterValuePickerViewController *)self tableView];
  [v25 setTableFooterView:v24];

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
  v3 = [(WFParameterValuePickerViewController *)self searchController];
  if (v3)
  {
LABEL_9:

    return;
  }

  v4 = [(WFParameterValuePickerViewController *)self parameter];
  if (v4)
  {
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
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 preferContextMenu];
  if ((v7 & 1) == 0)
  {
    v8 = [objc_alloc(MEMORY[0x277D759F0]) initWithSearchResultsController:0];
    [(WFParameterValuePickerViewController *)self setSearchController:v8];

    v9 = [(WFParameterValuePickerViewController *)self searchController];
    [v9 setObscuresBackgroundDuringPresentation:0];

    v10 = [(WFParameterValuePickerViewController *)self searchController];
    [v10 setHidesNavigationBarDuringPresentation:0];

    v11 = [(WFParameterValuePickerViewController *)self searchController];
    [v11 setAutomaticallyShowsCancelButton:1];

    v12 = [(WFParameterValuePickerViewController *)self searchController];
    [v12 setSearchResultsUpdater:self];

    v13 = [(WFParameterValuePickerViewController *)self searchController];
    v14 = [v13 searchBar];
    [(WFParameterValuePickerViewController *)self setSearchBar:v14];

    v15 = [(WFParameterValuePickerViewController *)self searchBar];
    [v15 setShowsCancelButton:0];

    v16 = [(WFParameterValuePickerViewController *)self searchBar];
    [v16 setSearchBarStyle:2];

    v17 = [(WFParameterValuePickerViewController *)self searchBar];
    [v17 setAutocorrectionType:1];

    v18 = [(WFParameterValuePickerViewController *)self searchBar];
    [v18 setSearchBarStyle:2];

    v20 = WFLocalizedString(@"Search");
    v19 = [(WFParameterValuePickerViewController *)self searchBar];
    [v19 setPlaceholder:v20];

    v3 = v20;
    goto LABEL_9;
  }
}

- (void)setCustomPrompt:(id)a3
{
  v4 = a3;
  v5 = self->_customPrompt;
  v6 = v4;
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

- (void)setDefaultPrompt:(id)a3
{
  v4 = a3;
  v5 = self->_defaultPrompt;
  v6 = v4;
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

- (void)setShowsCancelButton:(BOOL)a3
{
  if (self->_showsCancelButton != a3)
  {
    self->_showsCancelButton = a3;
    if ([(WFParameterValuePickerViewController *)self isViewLoaded])
    {

      [(WFParameterValuePickerViewController *)self reloadNavigationBarButtonItems];
    }
  }
}

- (void)setShowsPrompt:(BOOL)a3
{
  if (self->_showsPrompt != a3)
  {
    self->_showsPrompt = a3;
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
    v3 = [(WFParameterValuePickerViewController *)self deselectAllButtonTitle];

    if (v3)
    {
      v4 = objc_alloc(MEMORY[0x277D751E0]);
      v5 = [(WFParameterValuePickerViewController *)self deselectAllButtonTitle];
      v6 = [v4 initWithTitle:v5 style:0 target:self action:sel_requestDeselectAllItems];
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
    v3 = [(WFParameterValuePickerViewController *)self selectAllButtonTitle];

    if (v3)
    {
      v4 = objc_alloc(MEMORY[0x277D751E0]);
      v5 = [(WFParameterValuePickerViewController *)self selectAllButtonTitle];
      v6 = [v4 initWithTitle:v5 style:0 target:self action:sel_requestSelectAllItems];
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
    v3 = [(WFParameterValuePickerViewController *)self removeItemButtonTitle];

    if (v3)
    {
      v4 = objc_alloc(MEMORY[0x277D751E0]);
      v5 = [(WFParameterValuePickerViewController *)self removeItemButtonTitle];
      v6 = [v4 initWithTitle:v5 style:0 target:self action:sel_requestRemovingItem];
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

- (void)setVariableUIDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_variableUIDelegate, v4);
  v5 = [(WFParameterValuePickerViewController *)self dataSource];
  [v5 setVariableUIDelegate:v4];
}

- (void)setVariableProvider:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_variableProvider, v4);
  v5 = [(WFParameterValuePickerViewController *)self dataSource];
  [v5 setVariableProvider:v4];
}

- (void)setDeselectAllButtonTitle:(id)a3
{
  v4 = [a3 copy];
  deselectAllButtonTitle = self->_deselectAllButtonTitle;
  self->_deselectAllButtonTitle = v4;

  deselectAllBarButtonItem = self->_deselectAllBarButtonItem;
  self->_deselectAllBarButtonItem = 0;

  if ([(WFParameterValuePickerViewController *)self isViewLoaded])
  {

    [(WFParameterValuePickerViewController *)self reloadNavigationBarButtonItems];
  }
}

- (void)setSelectAllButtonTitle:(id)a3
{
  v4 = [a3 copy];
  selectAllButtonTitle = self->_selectAllButtonTitle;
  self->_selectAllButtonTitle = v4;

  selectAllBarButtonItem = self->_selectAllBarButtonItem;
  self->_selectAllBarButtonItem = 0;

  if ([(WFParameterValuePickerViewController *)self isViewLoaded])
  {

    [(WFParameterValuePickerViewController *)self reloadNavigationBarButtonItems];
  }
}

- (void)setRemoveItemButtonTitle:(id)a3
{
  v4 = [a3 copy];
  removeItemButtonTitle = self->_removeItemButtonTitle;
  self->_removeItemButtonTitle = v4;

  removeItemBarButtonItem = self->_removeItemBarButtonItem;
  self->_removeItemBarButtonItem = 0;

  if ([(WFParameterValuePickerViewController *)self isViewLoaded])
  {

    [(WFParameterValuePickerViewController *)self reloadNavigationBarButtonItems];
  }
}

- (void)setAllowsMultipleSelection:(BOOL)a3
{
  v3 = a3;
  self->_allowsMultipleSelection = a3;
  if ([(WFParameterValuePickerViewController *)self isViewLoaded])
  {
    v5 = [(WFParameterValuePickerViewController *)self tableView];
    [v5 setAllowsMultipleSelection:v3];

    [(WFParameterValuePickerViewController *)self reloadNavigationBarButtonItems];
  }
}

- (void)setNoOptionAvailableTitle:(id)a3
{
  v4 = [a3 copy];
  noOptionAvailableTitle = self->_noOptionAvailableTitle;
  self->_noOptionAvailableTitle = v4;

  if ([(WFParameterValuePickerViewController *)self isViewLoaded])
  {

    [(WFParameterValuePickerViewController *)self setNeedsUpdateContentUnavailableConfiguration];
  }
}

- (WFParameterValuePickerViewController)initWithParameter:(id)a3 widgetFamily:(int64_t)a4 allowsVariables:(BOOL)a5 initialCollection:(id)a6 currentState:(id)a7 delegate:(id)a8
{
  v11 = a5;
  v15 = a3;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  if ([v15 wf_usesGroupTableViewStyle])
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
    objc_storeStrong(&v20->_parameter, a3);
    v21->_widgetFamily = a4;
    if (v11)
    {
      v22 = [v15 supportedVariableTypes];
    }

    else
    {
      v22 = objc_opt_new();
    }

    allowedVariableTypes = v21->_allowedVariableTypes;
    v21->_allowedVariableTypes = v22;

    objc_storeWeak(&v21->_delegate, v18);
    v24 = objc_alloc(MEMORY[0x277D79F00]);
    v25 = [v24 initWithDelay:MEMORY[0x277D85CD0] queue:0.200000003];
    inputDebouncer = v21->_inputDebouncer;
    v21->_inputDebouncer = v25;

    [(WFDebouncer *)v21->_inputDebouncer addTarget:v21 action:sel_updateSearchResultsFromCurrentUserInput];
    objc_storeStrong(&v21->_defaultResults, a6);
    objc_storeStrong(&v21->_currentState, a7);
    v27 = objc_opt_new();
    cachedResults = v21->_cachedResults;
    v21->_cachedResults = v27;

    v29 = objc_opt_new();
    cachedPrompts = v21->_cachedPrompts;
    v21->_cachedPrompts = v29;

    if ([v15 isRangedSizeArray])
    {
      v31 = [v15 arrayMaxCountForWidgetFamily:a4];
    }

    else
    {
      v31 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v21->_maximumSelectableItemsCount = v31;
    v21->_minimumSelectableItemsCount = [v15 allowsEmptyValue] ^ 1;
    [(WFParameterValuePickerViewController *)v21 setupSearchController];
    v32 = [(WFParameterValuePickerViewController *)v21 searchController];
    v33 = [(WFParameterValuePickerViewController *)v21 navigationItem];
    [v33 setSearchController:v32];

    v34 = WFLocalizedString(@"Choose");
    [(WFParameterValuePickerViewController *)v21 setTitle:v34];

    v35 = [(WFParameterValuePickerViewController *)v21 navigationItem];
    [v35 setHidesSearchBarWhenScrolling:0];

    v36 = [(WFParameterValuePickerViewController *)v21 parameter];
    v37 = [v36 wf_displayLocalizedPrompt];
    [(WFParameterValuePickerViewController *)v21 setDefaultPrompt:v37];

    v21->_showsPrompt = 1;
    v21->_showsCancelButton = 1;
    [(WFParameterValuePickerViewController *)v21 performSearchWithUserInput:0];
    [v15 addEventObserver:v21];
    v38 = v21;
  }

  return v21;
}

@end