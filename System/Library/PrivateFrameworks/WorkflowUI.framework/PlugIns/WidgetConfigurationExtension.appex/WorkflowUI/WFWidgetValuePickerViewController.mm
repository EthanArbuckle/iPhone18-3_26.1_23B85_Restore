@interface WFWidgetValuePickerViewController
- (WFWidgetValuePickerViewController)initWithAction:(id)action parameter:(id)parameter intentIdentifier:(id)identifier widgetFamily:(int64_t)family;
- (WFWidgetValuePickerViewControllerDelegate)pickerDelegate;
- (void)parameterValuePickerViewController:(id)controller didFinishWithParameterState:(id)state;
- (void)populateConfiguredAppIntentWithAction:(id)action completion:(id)completion;
- (void)populateConfiguredCustomIntentWithAction:(id)action completion:(id)completion;
- (void)populateConfiguredIntentWithCompletion:(id)completion;
@end

@implementation WFWidgetValuePickerViewController

- (WFWidgetValuePickerViewControllerDelegate)pickerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_pickerDelegate);

  return WeakRetained;
}

- (void)parameterValuePickerViewController:(id)controller didFinishWithParameterState:(id)state
{
  stateCopy = state;
  parameter = [(WFWidgetValuePickerViewController *)self parameter];
  if (![parameter allowsMultipleValues] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {

LABEL_4:
    v7 = stateCopy;
    goto LABEL_5;
  }

  if (!stateCopy)
  {
    goto LABEL_4;
  }

  parameter2 = [(WFWidgetValuePickerViewController *)self parameter];
  multipleStateClass = [parameter2 multipleStateClass];

  v15 = [multipleStateClass alloc];
  v17 = stateCopy;
  v16 = [NSArray arrayWithObjects:&v17 count:1];
  v7 = [v15 initWithParameterStates:v16];

LABEL_5:
  action = [(WFWidgetValuePickerViewController *)self action];
  parameter3 = [(WFWidgetValuePickerViewController *)self parameter];
  v10 = [parameter3 key];
  [action setParameterState:v7 forKey:v10];

  pickerDelegate = [(WFWidgetValuePickerViewController *)self pickerDelegate];
  LOBYTE(parameter3) = objc_opt_respondsToSelector();

  if (parameter3)
  {
    pickerDelegate2 = [(WFWidgetValuePickerViewController *)self pickerDelegate];
    [pickerDelegate2 widgetValuePickerViewControllerDidChooseValue:self];
  }
}

- (void)populateConfiguredAppIntentWithAction:(id)action completion:(id)completion
{
  completionCopy = completion;
  actionCopy = action;
  v8 = [INAppIntent alloc];
  fullyQualifiedLinkActionIdentifier = [actionCopy fullyQualifiedLinkActionIdentifier];
  bundleIdentifier = [fullyQualifiedLinkActionIdentifier bundleIdentifier];
  fullyQualifiedLinkActionIdentifier2 = [actionCopy fullyQualifiedLinkActionIdentifier];
  actionIdentifier = [fullyQualifiedLinkActionIdentifier2 actionIdentifier];
  action = [(WFWidgetValuePickerViewController *)self action];
  serializedParameters = [action serializedParameters];
  v20 = [v8 initWithAppBundleIdentifier:bundleIdentifier appIntentIdentifier:actionIdentifier serializedParameters:serializedParameters];

  metadata = [actionCopy metadata];

  effectiveBundleIdentifiers = [metadata effectiveBundleIdentifiers];
  array = [effectiveBundleIdentifiers array];
  v18 = [array if_firstObjectPassingTest:&stru_10002D660];
  bundleIdentifier2 = [v18 bundleIdentifier];
  [v20 _setExtensionBundleId:bundleIdentifier2];

  completionCopy[2](completionCopy, v20, 0);
}

- (void)populateConfiguredCustomIntentWithAction:(id)action completion:(id)completion
{
  actionCopy = action;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100012F90;
  v9[3] = &unk_10002D640;
  selfCopy = self;
  completionCopy = completion;
  v10 = actionCopy;
  v7 = actionCopy;
  v8 = completionCopy;
  [v7 processParametersWithoutAskingForValuesWithInput:0 workQueue:&_dispatch_main_q completionHandler:v9];
}

- (void)populateConfiguredIntentWithCompletion:(id)completion
{
  completionCopy = completion;
  action = [(WFWidgetValuePickerViewController *)self action];
  if (action)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = action;
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

  action2 = [(WFWidgetValuePickerViewController *)self action];
  if (action2)
  {
    v8 = action2;
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

    if (!v6)
    {
      if (!v10)
      {
        goto LABEL_17;
      }

      [(WFWidgetValuePickerViewController *)self populateConfiguredAppIntentWithAction:v10 completion:completionCopy];
      goto LABEL_16;
    }
  }

  else
  {
    if (!v6)
    {
      goto LABEL_17;
    }

    v10 = 0;
  }

  [(WFWidgetValuePickerViewController *)self populateConfiguredCustomIntentWithAction:v6 completion:completionCopy];
  v8 = v10;
LABEL_16:

LABEL_17:
}

- (WFWidgetValuePickerViewController)initWithAction:(id)action parameter:(id)parameter intentIdentifier:(id)identifier widgetFamily:(int64_t)family
{
  actionCopy = action;
  identifierCopy = identifier;
  parameterCopy = parameter;
  v14 = [parameterCopy key];
  v15 = [actionCopy parameterStateForKey:v14];

  if (v15)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  v23.receiver = self;
  v23.super_class = WFWidgetValuePickerViewController;
  v18 = [(WFWidgetValuePickerViewController *)&v23 initWithParameter:parameterCopy widgetFamily:family allowsVariables:0 initialCollection:0 currentState:v17 delegate:self];

  if (v18)
  {
    objc_storeStrong(&v18->_action, action);
    v19 = [identifierCopy copy];
    intentIdentifier = v18->_intentIdentifier;
    v18->_intentIdentifier = v19;

    v21 = v18;
  }

  return v18;
}

@end