@interface WFEnumerationValuePicker
+ (id)presentWithParameter:(id)a3 state:(id)a4 slotIdentifier:(id)a5 initialCollection:(id)a6 variableProvider:(id)a7 variableUIDelegate:(id)a8 allowsPickingVariables:(BOOL)a9 processing:(BOOL)a10 presentationAnchor:(id)a11 cancelHandler:(id)a12 completionHandler:(id)a13;
- (WFEnumerationValuePicker)initWithParameter:(id)a3 currentState:(id)a4 completionHandler:(id)a5;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3 traitCollection:(id)a4;
- (int64_t)editingSlotArrayIndex;
- (void)cancelOperationAndCommitState;
- (void)cancelOperationCommittingState:(BOOL)a3;
- (void)dismissWithCompletionHandler:(id)a3;
- (void)parameterValuePickingDidClear;
- (void)parameterValuePickingDidFinishWithParameterState:(id)a3;
- (void)presentationControllerDidDismiss:(id)a3;
@end

@implementation WFEnumerationValuePicker

- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3 traitCollection:(id)a4
{
  v4 = a4;
  if ([v4 userInterfaceIdiom])
  {
    if ([v4 horizontalSizeClass] == 1)
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

- (void)presentationControllerDidDismiss:(id)a3
{
  if (![(WFEnumerationValuePicker *)self suppressAutomaticCancellation])
  {

    [(WFEnumerationValuePicker *)self cancelOperationAndCommitState];
  }
}

- (void)parameterValuePickingDidClear
{
  v3 = [(WFEnumerationValuePicker *)self parameter];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
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

  v6 = [(WFEnumerationValuePicker *)self currentState];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
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

  v8 = [v5 allowsMultipleValues];
  if (!v8 || -[WFEnumerationValuePicker editingSlotArrayIndex](self, "editingSlotArrayIndex") == 0x7FFFFFFFFFFFFFFFLL || (v9 = -[WFEnumerationValuePicker editingSlotArrayIndex](self, "editingSlotArrayIndex"), [v15 value], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "count"), v10, v9 >= v11))
  {
    v12 = 0;
  }

  else
  {
    v12 = [v15 stateByRemovingValueAtIndex:{-[WFEnumerationValuePicker editingSlotArrayIndex](self, "editingSlotArrayIndex")}];
  }

  v13 = [(WFEnumerationValuePicker *)self completionHandler];

  if (v13)
  {
    v14 = [(WFEnumerationValuePicker *)self completionHandler];
    (v14)[2](v14, v12);
  }
}

- (void)parameterValuePickingDidFinishWithParameterState:(id)a3
{
  v24[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WFEnumerationValuePicker *)self parameter];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
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

  v8 = [(WFEnumerationValuePicker *)self slotIdentifier];
  v9 = [v8 key];
  if ([v9 isEqual:@"_array_add_"])
  {

LABEL_10:
    v10 = v4;
    goto LABEL_11;
  }

  v13 = [(WFEnumerationValuePicker *)self currentState];
  if (!v13)
  {
    goto LABEL_17;
  }

  v14 = v13;
  v15 = [(WFEnumerationValuePicker *)self currentState];
  if (WFParameterStateIsMultipleValue(v15))
  {

LABEL_17:
    goto LABEL_18;
  }

  IsMultipleValue = WFParameterStateIsMultipleValue(v4);

  if ((IsMultipleValue & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_18:
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (!v4 || (isKindOfClass & 1) != 0)
  {
    goto LABEL_10;
  }

  v17 = [(WFEnumerationValuePicker *)self currentState];
  if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (-[WFEnumerationValuePicker editingSlotArrayIndex](self, "editingSlotArrayIndex") == 0x7FFFFFFFFFFFFFFFLL || (v18 = -[WFEnumerationValuePicker editingSlotArrayIndex](self, "editingSlotArrayIndex"), [v17 value], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "count"), v19, v18 >= v20))
    {
      v21 = [v17 stateByAppendingValue:v4];
    }

    else
    {
      v21 = [v17 stateByReplacingValueAtIndex:-[WFEnumerationValuePicker editingSlotArrayIndex](self withValue:{"editingSlotArrayIndex"), v4}];
    }
  }

  else
  {

    v23 = objc_alloc([v7 multipleStateClass]);
    v24[0] = v4;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
    v21 = [v23 initWithParameterStates:v17];
  }

  v10 = v21;

LABEL_11:
  v11 = [(WFEnumerationValuePicker *)self completionHandler];

  if (v11)
  {
    v12 = [(WFEnumerationValuePicker *)self completionHandler];
    (v12)[2](v12, v10);
  }
}

- (void)cancelOperationCommittingState:(BOOL)a3
{
  v3 = a3;
  v5 = [(WFEnumerationValuePicker *)self cancelHandler];

  if (v5)
  {
    v6 = [(WFEnumerationValuePicker *)self cancelHandler];
    v6[2](v6, v3);
  }
}

- (void)cancelOperationAndCommitState
{
  v3 = [(WFEnumerationValuePicker *)self cancelHandler];

  if (v3)
  {
    v4 = [(WFEnumerationValuePicker *)self cancelHandler];
    v4[2](v4, 1);
  }
}

- (void)dismissWithCompletionHandler:(id)a3
{
  v7 = a3;
  v4 = [(WFEnumerationValuePicker *)self parameterValuePickerViewController];

  if (v4)
  {
    v5 = [(WFEnumerationValuePicker *)self parameterValuePickerViewController];
    v6 = [v5 presentingViewController];
    [v6 dismissViewControllerAnimated:1 completion:v7];
  }

  else if (v7)
  {
    v7[2]();
  }
}

- (int64_t)editingSlotArrayIndex
{
  v3 = [(WFEnumerationValuePicker *)self slotIdentifier];
  if (v3)
  {
    v4 = [(WFEnumerationValuePicker *)self slotIdentifier];
    v5 = [v4 arrayIndex];
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (WFEnumerationValuePicker)initWithParameter:(id)a3 currentState:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = WFEnumerationValuePicker;
  v12 = [(WFEnumerationValuePicker *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_parameter, a3);
    objc_storeStrong(&v13->_currentState, a4);
    v14 = _Block_copy(v11);
    completionHandler = v13->_completionHandler;
    v13->_completionHandler = v14;

    v16 = v13;
  }

  return v13;
}

+ (id)presentWithParameter:(id)a3 state:(id)a4 slotIdentifier:(id)a5 initialCollection:(id)a6 variableProvider:(id)a7 variableUIDelegate:(id)a8 allowsPickingVariables:(BOOL)a9 processing:(BOOL)a10 presentationAnchor:(id)a11 cancelHandler:(id)a12 completionHandler:(id)a13
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v87 = a11;
  v21 = a13;
  v22 = a12;
  v23 = a8;
  v24 = v18;
  v25 = v23;
  v26 = a7;
  v27 = a6;
  v28 = [[WFEnumerationValuePicker alloc] initWithParameter:v24 currentState:v19 completionHandler:v21];

  [(WFEnumerationValuePicker *)v28 setSlotIdentifier:v20];
  [(WFEnumerationValuePicker *)v28 setCancelHandler:v22];

  v85 = v20;
  if (v20)
  {
    v29 = [v20 arrayIndex];
  }

  else
  {
    v29 = 0x7FFFFFFFFFFFFFFFLL;
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

  if (a10)
  {
    v31 = 0;
  }

  else
  {
    v31 = [v24 wf_supportsSearch] ^ 1;
  }

  v32 = v19;
  if (v32)
  {
    v89 = v25;
    v33 = v29;
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
        if (v29 == 0x7FFFFFFFFFFFFFFFLL || ([v37 value], v39 = objc_claimAutoreleasedReturnValue(), v40 = objc_msgSend(v39, "count"), v39, v33 >= v40))
        {

          v32 = 0;
        }

        else
        {
          v41 = [v37 parameterStates];
          v42 = [v41 objectAtIndex:v33];

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
  v43 = [[WFParameterValuePickerViewController alloc] initWithParameter:v24 widgetFamily:3 allowsVariables:v31 initialCollection:v27 currentState:v32 delegate:v91];

  [(WFEnumerationValuePicker *)v91 setParameterValuePickerViewController:v43];
  [(WFParameterValuePickerViewController *)v43 setVariableProvider:v26];

  [(WFParameterValuePickerViewController *)v43 setVariableUIDelegate:v25];
  [(WFParameterValuePickerViewController *)v43 setAllowsMultipleSelection:v30];
  v44 = WFLocalizedString(@"No options available.");
  [(WFParameterValuePickerViewController *)v43 setNoOptionAvailableTitle:v44];

  if (!a10)
  {
    v45 = [v32 variable];
    if (v45 || (([v24 defaultSerializedRepresentation], v46 = objc_claimAutoreleasedReturnValue(), v47 = v46, v46 != 0 || v32 == 0) ? (v25 = v46) : (v25 = 0), (v46 == 0 && v32 != 0) | v30 & 1))
    {
      v48 = [MEMORY[0x277CCA8D8] mainBundle];
      v49 = [v48 bundleIdentifier];
      v50 = [v49 isEqualToString:*MEMORY[0x277D7A338]];

      if (v45)
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
  v54 = [MEMORY[0x277CCA8D8] mainBundle];
  v55 = [v54 wf_isWidgetConfigurationExtensionBundle];

  if (v55)
  {
    [v53 setModalPresentationStyle:2];
    v56 = [v53 presentationController];
    v57 = v91;
    if (v56)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v58 = v56;
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
    v79 = v58;

    [v79 _setWantsBottomAttachedInCompactHeight:1];
  }

  else
  {
    v59 = [v87 sourceViewController];
    v60 = [v59 traitCollection];
    v61 = [v60 layoutDirection];

    [v53 setModalPresentationStyle:7];
    v62 = [v53 popoverPresentationController];
    v57 = v91;
    [v62 setDelegate:v91];

    v63 = [v87 sourceView];
    v64 = [v53 popoverPresentationController];
    [v64 setSourceView:v63];

    [v87 sourceRect];
    v66 = v65;
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v73 = [v53 popoverPresentationController];
    [v73 setSourceRect:{v66, v68, v70, v72}];

    v74 = [MEMORY[0x277CCA8D8] mainBundle];
    v75 = [v74 wf_isFocusConfigurationExtensionBundle];

    v76 = 6;
    if (v61 == 1)
    {
      v76 = 10;
    }

    if (v75)
    {
      v77 = 15;
    }

    else
    {
      v77 = v76;
    }

    v78 = [v53 popoverPresentationController];
    [v78 setPermittedArrowDirections:v77];

    v79 = [v53 popoverPresentationController];
    [v79 wf_forcePresentationInPresenterSceneIfNeeded];
    v80 = v88;
  }

  v81 = [v87 sourceViewController];
  v82 = [v81 traitCollection];
  [v53 setOverrideUserInterfaceStyle:{objc_msgSend(v82, "userInterfaceStyle")}];

  v83 = [v87 sourceViewController];
  [v83 presentViewController:v53 animated:1 completion:0];

  return v57;
}

@end