@interface WFSystemShortcutPickerModuleSummaryCoordinator
+ (id)singleButtonSlotForParameter:(id)parameter state:(id)state;
- (WFSystemShortcutPickerModuleSummaryCoordinator)initWithAction:(id)action;
- (WFSystemShortcutPickerModuleSummaryCoordinatorDelegate)delegate;
- (id)createViewController;
- (id)initialStateForSummaryEditor:(id)editor;
- (void)populateConfiguredAppIntentWithCompletion:(id)completion;
- (void)summaryEditor:(id)editor didCommitParameterState:(id)state;
- (void)summaryEditor:(id)editor didRequestEditingSlotWithIdentifier:(id)identifier;
- (void)summaryEditorDidRequestTextEntry:(id)entry;
@end

@implementation WFSystemShortcutPickerModuleSummaryCoordinator

- (WFSystemShortcutPickerModuleSummaryCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)summaryEditor:(id)editor didRequestEditingSlotWithIdentifier:(id)identifier
{
  v4 = getWFDialogLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    v5 = 136315138;
    v6 = "[WFSystemShortcutPickerModuleSummaryCoordinator summaryEditor:didRequestEditingSlotWithIdentifier:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "%s Text entry isn't supported in the system shortcut picker!", &v5, 0xCu);
  }
}

- (void)summaryEditorDidRequestTextEntry:(id)entry
{
  v3 = getWFDialogLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    v4 = 136315138;
    v5 = "[WFSystemShortcutPickerModuleSummaryCoordinator summaryEditorDidRequestTextEntry:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "%s Text entry isn't supported in the system shortcut picker!", &v4, 0xCu);
  }
}

- (void)populateConfiguredAppIntentWithCompletion:(id)completion
{
  completionCopy = completion;
  action = [(WFSystemShortcutPickerModuleSummaryCoordinator *)self action];
  if (action)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = action;
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
  fullyQualifiedLinkActionIdentifier = [v7 fullyQualifiedLinkActionIdentifier];
  bundleIdentifier = [fullyQualifiedLinkActionIdentifier bundleIdentifier];
  fullyQualifiedLinkActionIdentifier2 = [v7 fullyQualifiedLinkActionIdentifier];
  actionIdentifier = [fullyQualifiedLinkActionIdentifier2 actionIdentifier];
  action2 = [(WFSystemShortcutPickerModuleSummaryCoordinator *)self action];
  serializedParameters = [action2 serializedParameters];
  v20 = [v8 initWithAppBundleIdentifier:bundleIdentifier appIntentIdentifier:actionIdentifier serializedParameters:serializedParameters];

  metadata = [v7 metadata];

  effectiveBundleIdentifiers = [metadata effectiveBundleIdentifiers];
  array = [effectiveBundleIdentifiers array];
  v18 = [array if_firstObjectPassingTest:&stru_10002D6A0];
  bundleIdentifier2 = [v18 bundleIdentifier];
  [v20 _setExtensionBundleId:bundleIdentifier2];

  completionCopy[2](completionCopy, v20, 0);
}

- (void)summaryEditor:(id)editor didCommitParameterState:(id)state
{
  stateCopy = state;
  editorCopy = editor;
  action = [(WFSystemShortcutPickerModuleSummaryCoordinator *)self action];
  parameter = [editorCopy parameter];

  v10 = [parameter key];
  [action setParameterState:stateCopy forKey:v10];

  delegate = [(WFSystemShortcutPickerModuleSummaryCoordinator *)self delegate];
  [delegate systemShortcutPickerModuleSummaryCoordinatorDidFinish:self];
}

- (id)initialStateForSummaryEditor:(id)editor
{
  editorCopy = editor;
  action = [(WFSystemShortcutPickerModuleSummaryCoordinator *)self action];
  parameter = [editorCopy parameter];

  v7 = [parameter key];
  v8 = [action parameterStateForKey:v7];

  return v8;
}

- (id)createViewController
{
  action = [(WFSystemShortcutPickerModuleSummaryCoordinator *)self action];
  v4 = [action parameterForKey:@"shortcut"];

  v5 = v4;
  objc_opt_class();
  v6 = WFModuleSummaryEditorClassForParameterClass();
  v7 = objc_opt_class();
  action2 = [(WFSystemShortcutPickerModuleSummaryCoordinator *)self action];
  v9 = [v5 key];
  v10 = [action2 parameterStateForKey:v9];
  v11 = [v7 singleButtonSlotForParameter:v5 state:v10];

  [(WFSystemShortcutPickerModuleSummaryCoordinator *)self setSummarySlot:v11];
  summarySlot = [(WFSystemShortcutPickerModuleSummaryCoordinator *)self summarySlot];
  v13 = summarySlot;
  v14 = 0;
  if (v6 && summarySlot)
  {
    v15 = [[v6 alloc] initWithParameter:v5 arrayIndex:0x7FFFFFFFFFFFFFFFLL processing:1];
    [v15 setDelegate:self];
    action3 = [(WFSystemShortcutPickerModuleSummaryCoordinator *)self action];
    [v15 setVariableProvider:action3];

    summaryEditor = self->_summaryEditor;
    self->_summaryEditor = v15;
    v18 = v15;

    identifier = [v13 identifier];
    v14 = [v18 viewControllerForEditingWithIdentifier:identifier];
  }

  return v14;
}

- (WFSystemShortcutPickerModuleSummaryCoordinator)initWithAction:(id)action
{
  actionCopy = action;
  v10.receiver = self;
  v10.super_class = WFSystemShortcutPickerModuleSummaryCoordinator;
  v6 = [(WFSystemShortcutPickerModuleSummaryCoordinator *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_action, action);
    v8 = v7;
  }

  return v7;
}

+ (id)singleButtonSlotForParameter:(id)parameter state:(id)state
{
  parameterCopy = parameter;
  stateCopy = state;
  if (objc_opt_respondsToSelector())
  {
    firstObject = [parameterCopy moduleSummarySlotForState:stateCopy];
    goto LABEL_8;
  }

  if (objc_opt_respondsToSelector())
  {
    v8 = [parameterCopy moduleSummarySlotsForState:stateCopy];
    if ([v8 count] == 1)
    {
      firstObject = [v8 firstObject];

      goto LABEL_8;
    }
  }

  firstObject = 0;
LABEL_8:

  return firstObject;
}

@end