@interface WFEnumerationValuePicker
+ (id)presentWithParameter:(id)parameter state:(id)state slotIdentifier:(id)identifier initialCollection:(id)collection variableProvider:(id)provider variableUIDelegate:(id)delegate allowsPickingVariables:(BOOL)variables processing:(BOOL)self0 presentationAnchor:(id)self1 cancelHandler:(id)self2 completionHandler:(id)self3;
- (WFEnumerationValuePicker)initWithParameter:(id)parameter currentState:(id)state completionHandler:(id)handler;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection;
- (int64_t)editingSlotArrayIndex;
- (void)cancelOperationAndCommitState;
- (void)cancelOperationCommittingState:(BOOL)state;
- (void)dismissWithCompletionHandler:(id)handler;
- (void)parameterValuePickingDidClear;
- (void)parameterValuePickingDidFinishWithParameterState:(id)state;
- (void)presentationControllerDidDismiss:(id)dismiss;
@end

@implementation WFEnumerationValuePicker

- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection
{
  collectionCopy = collection;
  if ([collectionCopy userInterfaceIdiom])
  {
    if ([collectionCopy horizontalSizeClass] == 1)
    {
      v5 = 2;
    }

    else
    {
      v5 = -1;
    }
  }

  else
  {
    v5 = 2;
  }

  return v5;
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  if (![(WFEnumerationValuePicker *)self suppressAutomaticCancellation])
  {

    [(WFEnumerationValuePicker *)self cancelOperationAndCommitState];
  }
}

- (void)parameterValuePickingDidClear
{
  parameter = [(WFEnumerationValuePicker *)self parameter];
  if (parameter)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = parameter;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  currentState = [(WFEnumerationValuePicker *)self currentState];
  if (currentState)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = currentState;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v15 = v7;

  allowsMultipleValues = [v5 allowsMultipleValues];
  if (!allowsMultipleValues || -[WFEnumerationValuePicker editingSlotArrayIndex](self, "editingSlotArrayIndex") == 0x7FFFFFFFFFFFFFFFLL || (v9 = -[WFEnumerationValuePicker editingSlotArrayIndex](self, "editingSlotArrayIndex"), [v15 value], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "count"), v10, v9 >= v11))
  {
    v12 = 0;
  }

  else
  {
    v12 = [v15 stateByRemovingValueAtIndex:{-[WFEnumerationValuePicker editingSlotArrayIndex](self, "editingSlotArrayIndex")}];
  }

  completionHandler = [(WFEnumerationValuePicker *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(WFEnumerationValuePicker *)self completionHandler];
    (completionHandler2)[2](completionHandler2, v12);
  }
}

- (void)parameterValuePickingDidFinishWithParameterState:(id)state
{
  v24[1] = *MEMORY[0x277D85DE8];
  stateCopy = state;
  parameter = [(WFEnumerationValuePicker *)self parameter];
  if (parameter)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = parameter;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (![v7 allowsMultipleValues] || (objc_msgSend(v7, "isRangedSizeArray") & 1) != 0)
  {
    goto LABEL_10;
  }

  slotIdentifier = [(WFEnumerationValuePicker *)self slotIdentifier];
  v9 = [slotIdentifier key];
  if ([v9 isEqual:@"_array_add_"])
  {

LABEL_10:
    v10 = stateCopy;
    goto LABEL_11;
  }

  currentState = [(WFEnumerationValuePicker *)self currentState];
  if (!currentState)
  {
    goto LABEL_17;
  }

  v14 = currentState;
  currentState2 = [(WFEnumerationValuePicker *)self currentState];
  if (WFParameterStateIsMultipleValue(currentState2))
  {

LABEL_17:
    goto LABEL_18;
  }

  IsMultipleValue = WFParameterStateIsMultipleValue(stateCopy);

  if ((IsMultipleValue & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_18:
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (!stateCopy || (isKindOfClass & 1) != 0)
  {
    goto LABEL_10;
  }

  currentState3 = [(WFEnumerationValuePicker *)self currentState];
  if (currentState3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (-[WFEnumerationValuePicker editingSlotArrayIndex](self, "editingSlotArrayIndex") == 0x7FFFFFFFFFFFFFFFLL || (v18 = -[WFEnumerationValuePicker editingSlotArrayIndex](self, "editingSlotArrayIndex"), [currentState3 value], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "count"), v19, v18 >= v20))
    {
      v21 = [currentState3 stateByAppendingValue:stateCopy];
    }

    else
    {
      v21 = [currentState3 stateByReplacingValueAtIndex:-[WFEnumerationValuePicker editingSlotArrayIndex](self withValue:{"editingSlotArrayIndex"), stateCopy}];
    }
  }

  else
  {

    v23 = objc_alloc([v7 multipleStateClass]);
    v24[0] = stateCopy;
    currentState3 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
    v21 = [v23 initWithParameterStates:currentState3];
  }

  v10 = v21;

LABEL_11:
  completionHandler = [(WFEnumerationValuePicker *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(WFEnumerationValuePicker *)self completionHandler];
    (completionHandler2)[2](completionHandler2, v10);
  }
}

- (void)cancelOperationCommittingState:(BOOL)state
{
  stateCopy = state;
  cancelHandler = [(WFEnumerationValuePicker *)self cancelHandler];

  if (cancelHandler)
  {
    cancelHandler2 = [(WFEnumerationValuePicker *)self cancelHandler];
    cancelHandler2[2](cancelHandler2, stateCopy);
  }
}

- (void)cancelOperationAndCommitState
{
  cancelHandler = [(WFEnumerationValuePicker *)self cancelHandler];

  if (cancelHandler)
  {
    cancelHandler2 = [(WFEnumerationValuePicker *)self cancelHandler];
    cancelHandler2[2](cancelHandler2, 1);
  }
}

- (void)dismissWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  parameterValuePickerViewController = [(WFEnumerationValuePicker *)self parameterValuePickerViewController];

  if (parameterValuePickerViewController)
  {
    parameterValuePickerViewController2 = [(WFEnumerationValuePicker *)self parameterValuePickerViewController];
    presentingViewController = [parameterValuePickerViewController2 presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:handlerCopy];
  }

  else if (handlerCopy)
  {
    handlerCopy[2]();
  }
}

- (int64_t)editingSlotArrayIndex
{
  slotIdentifier = [(WFEnumerationValuePicker *)self slotIdentifier];
  if (slotIdentifier)
  {
    slotIdentifier2 = [(WFEnumerationValuePicker *)self slotIdentifier];
    arrayIndex = [slotIdentifier2 arrayIndex];
  }

  else
  {
    arrayIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  return arrayIndex;
}

- (WFEnumerationValuePicker)initWithParameter:(id)parameter currentState:(id)state completionHandler:(id)handler
{
  parameterCopy = parameter;
  stateCopy = state;
  handlerCopy = handler;
  v18.receiver = self;
  v18.super_class = WFEnumerationValuePicker;
  v12 = [(WFEnumerationValuePicker *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_parameter, parameter);
    objc_storeStrong(&v13->_currentState, state);
    v14 = _Block_copy(handlerCopy);
    completionHandler = v13->_completionHandler;
    v13->_completionHandler = v14;

    v16 = v13;
  }

  return v13;
}

+ (id)presentWithParameter:(id)parameter state:(id)state slotIdentifier:(id)identifier initialCollection:(id)collection variableProvider:(id)provider variableUIDelegate:(id)delegate allowsPickingVariables:(BOOL)variables processing:(BOOL)self0 presentationAnchor:(id)self1 cancelHandler:(id)self2 completionHandler:(id)self3
{
  parameterCopy = parameter;
  stateCopy = state;
  identifierCopy = identifier;
  anchorCopy = anchor;
  completionHandlerCopy = completionHandler;
  handlerCopy = handler;
  delegateCopy = delegate;
  v24 = parameterCopy;
  v25 = delegateCopy;
  providerCopy = provider;
  collectionCopy = collection;
  v28 = [[WFEnumerationValuePicker alloc] initWithParameter:v24 currentState:stateCopy completionHandler:completionHandlerCopy];

  [(WFEnumerationValuePicker *)v28 setSlotIdentifier:identifierCopy];
  [(WFEnumerationValuePicker *)v28 setCancelHandler:handlerCopy];

  v85 = identifierCopy;
  if (identifierCopy)
  {
    arrayIndex = [identifierCopy arrayIndex];
  }

  else
  {
    arrayIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  v91 = v28;
  if ([v24 allowsMultipleValues] && (objc_msgSend(v24, "isRangedSizeArray") & 1) == 0)
  {
    v30 = [v24 wf_supportsSearch] ^ 1;
  }

  else
  {
    v30 = 0;
  }

  if (processing)
  {
    v31 = 0;
  }

  else
  {
    v31 = [v24 wf_supportsSearch] ^ 1;
  }

  v32 = stateCopy;
  if (v32)
  {
    v89 = v25;
    v33 = arrayIndex;
    v34 = v24;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v36 = v32;
    }

    else
    {
      v36 = 0;
    }

    v37 = v36;

    if ((isKindOfClass & 1 & v30) == 1)
    {
      v38 = v37;

      v88 = v32;
    }

    else
    {
      v88 = v37;
      if (([v34 allowsMultipleValues] & isKindOfClass) == 1)
      {
        if (arrayIndex == 0x7FFFFFFFFFFFFFFFLL || ([v37 value], v39 = objc_claimAutoreleasedReturnValue(), v40 = objc_msgSend(v39, "count"), v39, v33 >= v40))
        {

          v32 = 0;
        }

        else
        {
          parameterStates = [v37 parameterStates];
          v42 = [parameterStates objectAtIndex:v33];

          v32 = v42;
        }
      }
    }

    v24 = v34;
    v25 = v89;
  }

  else
  {
    [v24 allowsMultipleValues];
    v88 = 0;
  }

  v90 = v24;
  v43 = [[WFParameterValuePickerViewController alloc] initWithParameter:v24 widgetFamily:3 allowsVariables:v31 initialCollection:collectionCopy currentState:v32 delegate:v91];

  [(WFEnumerationValuePicker *)v91 setParameterValuePickerViewController:v43];
  [(WFParameterValuePickerViewController *)v43 setVariableProvider:providerCopy];

  [(WFParameterValuePickerViewController *)v43 setVariableUIDelegate:v25];
  [(WFParameterValuePickerViewController *)v43 setAllowsMultipleSelection:v30];
  v44 = WFLocalizedString(@"No options available.");
  [(WFParameterValuePickerViewController *)v43 setNoOptionAvailableTitle:v44];

  if (!processing)
  {
    variable = [v32 variable];
    if (variable || (([v24 defaultSerializedRepresentation], v46 = objc_claimAutoreleasedReturnValue(), v47 = v46, v46 != 0 || v32 == 0) ? (v25 = v46) : (v25 = 0), (v46 == 0 && v32 != 0) | v30 & 1))
    {
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];
      v50 = [bundleIdentifier isEqualToString:*MEMORY[0x277D7A338]];

      if (variable)
      {

        if (!v50)
        {
          goto LABEL_36;
        }
      }

      else
      {

        if ((v50 & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      v51 = WFLocalizedString(@"Clear");
      [(WFParameterValuePickerViewController *)v43 setRemoveItemButtonTitle:v51];

      v52 = WFLocalizedString(@"Select All");
      [(WFParameterValuePickerViewController *)v43 setSelectAllButtonTitle:v52];

      v47 = WFLocalizedString(@"Deselect All");
      [(WFParameterValuePickerViewController *)v43 setDeselectAllButtonTitle:v47];
    }
  }

LABEL_36:
  v53 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v43];
  mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
  wf_isWidgetConfigurationExtensionBundle = [mainBundle2 wf_isWidgetConfigurationExtensionBundle];

  if (wf_isWidgetConfigurationExtensionBundle)
  {
    [v53 setModalPresentationStyle:2];
    presentationController = [v53 presentationController];
    v57 = v91;
    if (presentationController)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v58 = presentationController;
      }

      else
      {
        v58 = 0;
      }
    }

    else
    {
      v58 = 0;
    }

    v80 = v88;
    popoverPresentationController5 = v58;

    [popoverPresentationController5 _setWantsBottomAttachedInCompactHeight:1];
  }

  else
  {
    sourceViewController = [anchorCopy sourceViewController];
    traitCollection = [sourceViewController traitCollection];
    layoutDirection = [traitCollection layoutDirection];

    [v53 setModalPresentationStyle:7];
    popoverPresentationController = [v53 popoverPresentationController];
    v57 = v91;
    [popoverPresentationController setDelegate:v91];

    sourceView = [anchorCopy sourceView];
    popoverPresentationController2 = [v53 popoverPresentationController];
    [popoverPresentationController2 setSourceView:sourceView];

    [anchorCopy sourceRect];
    v66 = v65;
    v68 = v67;
    v70 = v69;
    v72 = v71;
    popoverPresentationController3 = [v53 popoverPresentationController];
    [popoverPresentationController3 setSourceRect:{v66, v68, v70, v72}];

    mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
    wf_isFocusConfigurationExtensionBundle = [mainBundle3 wf_isFocusConfigurationExtensionBundle];

    v76 = 6;
    if (layoutDirection == 1)
    {
      v76 = 10;
    }

    if (wf_isFocusConfigurationExtensionBundle)
    {
      v77 = 15;
    }

    else
    {
      v77 = v76;
    }

    popoverPresentationController4 = [v53 popoverPresentationController];
    [popoverPresentationController4 setPermittedArrowDirections:v77];

    popoverPresentationController5 = [v53 popoverPresentationController];
    [popoverPresentationController5 wf_forcePresentationInPresenterSceneIfNeeded];
    v80 = v88;
  }

  sourceViewController2 = [anchorCopy sourceViewController];
  traitCollection2 = [sourceViewController2 traitCollection];
  [v53 setOverrideUserInterfaceStyle:{objc_msgSend(traitCollection2, "userInterfaceStyle")}];

  sourceViewController3 = [anchorCopy sourceViewController];
  [sourceViewController3 presentViewController:v53 animated:1 completion:0];

  return v57;
}

@end