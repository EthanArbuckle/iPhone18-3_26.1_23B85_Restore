@interface WFSystemShortcutPickerModuleSummaryCoordinator
+ (id)singleButtonSlotForParameter:(id)a3 state:(id)a4;
- (WFSystemShortcutPickerModuleSummaryCoordinator)initWithAction:(id)a3;
- (WFSystemShortcutPickerModuleSummaryCoordinatorDelegate)delegate;
- (id)createViewController;
- (id)initialStateForSummaryEditor:(id)a3;
- (void)populateConfiguredAppIntentWithCompletion:(id)a3;
- (void)summaryEditor:(id)a3 didCommitParameterState:(id)a4;
- (void)summaryEditor:(id)a3 didRequestEditingSlotWithIdentifier:(id)a4;
- (void)summaryEditorDidRequestTextEntry:(id)a3;
@end

@implementation WFSystemShortcutPickerModuleSummaryCoordinator

- (WFSystemShortcutPickerModuleSummaryCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)summaryEditor:(id)a3 didRequestEditingSlotWithIdentifier:(id)a4
{
  v4 = getWFDialogLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    v5 = 136315138;
    v6 = "[WFSystemShortcutPickerModuleSummaryCoordinator summaryEditor:didRequestEditingSlotWithIdentifier:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "%s Text entry isn't supported in the system shortcut picker!", &v5, 0xCu);
  }
}

- (void)summaryEditorDidRequestTextEntry:(id)a3
{
  v3 = getWFDialogLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    v4 = 136315138;
    v5 = "[WFSystemShortcutPickerModuleSummaryCoordinator summaryEditorDidRequestTextEntry:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "%s Text entry isn't supported in the system shortcut picker!", &v4, 0xCu);
  }
}

- (void)populateConfiguredAppIntentWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(WFSystemShortcutPickerModuleSummaryCoordinator *)self action];
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

  v8 = [INAppIntent alloc];
  v9 = [v7 fullyQualifiedLinkActionIdentifier];
  v10 = [v9 bundleIdentifier];
  v11 = [v7 fullyQualifiedLinkActionIdentifier];
  v12 = [v11 actionIdentifier];
  v13 = [(WFSystemShortcutPickerModuleSummaryCoordinator *)self action];
  v14 = [v13 serializedParameters];
  v20 = [v8 initWithAppBundleIdentifier:v10 appIntentIdentifier:v12 serializedParameters:v14];

  v15 = [v7 metadata];

  v16 = [v15 effectiveBundleIdentifiers];
  v17 = [v16 array];
  v18 = [v17 if_firstObjectPassingTest:&stru_10002D6A0];
  v19 = [v18 bundleIdentifier];
  [v20 _setExtensionBundleId:v19];

  v4[2](v4, v20, 0);
}

- (void)summaryEditor:(id)a3 didCommitParameterState:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WFSystemShortcutPickerModuleSummaryCoordinator *)self action];
  v9 = [v7 parameter];

  v10 = [v9 key];
  [v8 setParameterState:v6 forKey:v10];

  v11 = [(WFSystemShortcutPickerModuleSummaryCoordinator *)self delegate];
  [v11 systemShortcutPickerModuleSummaryCoordinatorDidFinish:self];
}

- (id)initialStateForSummaryEditor:(id)a3
{
  v4 = a3;
  v5 = [(WFSystemShortcutPickerModuleSummaryCoordinator *)self action];
  v6 = [v4 parameter];

  v7 = [v6 key];
  v8 = [v5 parameterStateForKey:v7];

  return v8;
}

- (id)createViewController
{
  v3 = [(WFSystemShortcutPickerModuleSummaryCoordinator *)self action];
  v4 = [v3 parameterForKey:@"shortcut"];

  v5 = v4;
  objc_opt_class();
  v6 = WFModuleSummaryEditorClassForParameterClass();
  v7 = objc_opt_class();
  v8 = [(WFSystemShortcutPickerModuleSummaryCoordinator *)self action];
  v9 = [v5 key];
  v10 = [v8 parameterStateForKey:v9];
  v11 = [v7 singleButtonSlotForParameter:v5 state:v10];

  [(WFSystemShortcutPickerModuleSummaryCoordinator *)self setSummarySlot:v11];
  v12 = [(WFSystemShortcutPickerModuleSummaryCoordinator *)self summarySlot];
  v13 = v12;
  v14 = 0;
  if (v6 && v12)
  {
    v15 = [[v6 alloc] initWithParameter:v5 arrayIndex:0x7FFFFFFFFFFFFFFFLL processing:1];
    [v15 setDelegate:self];
    v16 = [(WFSystemShortcutPickerModuleSummaryCoordinator *)self action];
    [v15 setVariableProvider:v16];

    summaryEditor = self->_summaryEditor;
    self->_summaryEditor = v15;
    v18 = v15;

    v19 = [v13 identifier];
    v14 = [v18 viewControllerForEditingWithIdentifier:v19];
  }

  return v14;
}

- (WFSystemShortcutPickerModuleSummaryCoordinator)initWithAction:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WFSystemShortcutPickerModuleSummaryCoordinator;
  v6 = [(WFSystemShortcutPickerModuleSummaryCoordinator *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_action, a3);
    v8 = v7;
  }

  return v7;
}

+ (id)singleButtonSlotForParameter:(id)a3 state:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (objc_opt_respondsToSelector())
  {
    v7 = [v5 moduleSummarySlotForState:v6];
    goto LABEL_8;
  }

  if (objc_opt_respondsToSelector())
  {
    v8 = [v5 moduleSummarySlotsForState:v6];
    if ([v8 count] == 1)
    {
      v7 = [v8 firstObject];

      goto LABEL_8;
    }
  }

  v7 = 0;
LABEL_8:

  return v7;
}

@end