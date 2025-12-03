@interface WFParameterValuePickerTableViewCell
- (UIViewController)parentViewController;
- (WFParameterValuePickerTableViewCellDelegate)delegate;
- (id)configurationState;
- (id)defaultContentConfiguration;
- (void)setContainedInState:(BOOL)state;
- (void)setParameter:(id)parameter;
- (void)setParentViewController:(id)controller;
- (void)setState:(id)state;
- (void)tintColorDidChange;
- (void)updateConfigurationUsingState:(id)state;
@end

@implementation WFParameterValuePickerTableViewCell

- (WFParameterValuePickerTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIViewController)parentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);

  return WeakRetained;
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = WFParameterValuePickerTableViewCell;
  [(WFParameterValuePickerTableViewCell *)&v3 tintColorDidChange];
  [(WFParameterValuePickerTableViewCell *)self setNeedsUpdateConfiguration];
}

- (void)updateConfigurationUsingState:(id)state
{
  stateCopy = state;
  v5 = [stateCopy objectForKeyedSubscript:@"parameter"];
  v6 = [stateCopy objectForKeyedSubscript:@"state"];
  v7 = [stateCopy objectForKeyedSubscript:@"parentViewController"];
  v8 = [stateCopy objectForKeyedSubscript:@"containedInState"];
  bOOLValue = [v8 BOOLValue];

  v10 = [stateCopy objectForKeyedSubscript:@"delegate"];
  defaultContentConfiguration = [(WFParameterValuePickerTableViewCell *)self defaultContentConfiguration];
  v12 = [defaultContentConfiguration updatedConfigurationForState:stateCopy];

  v13 = [v5 wf_pickerLocalizedTitleForState:v6];
  [v12 setText:v13];

  v14 = [v5 wf_pickerLocalizedSubtitleForState:v6];
  [v12 setSecondaryText:v14];

  v15 = [v5 wf_pickerLocalizedImageForState:v6];
  platformImage = [v15 platformImage];
  if ([v5 wf_alwaysScaleIconImage])
  {
    [platformImage size];
    if (v17 < 29.0)
    {
      [platformImage size];
      if (v18 < 29.0)
      {
        [platformImage size];
        v20 = 29.0 / v19;
        [platformImage size];
        v22 = fmin(v20, 29.0 / v21);
        [platformImage size];
        v24 = v23 * v22;
        [platformImage size];
        v36 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:{v24, v22 * v25}];
        renderingMode = [platformImage renderingMode];
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __69__WFParameterValuePickerTableViewCell_updateConfigurationUsingState___block_invoke;
        v38[3] = &unk_279EDBE20;
        v39 = platformImage;
        v26 = [v36 imageWithActions:v38];
        platformImage = [v26 imageWithRenderingMode:renderingMode];
      }
    }
  }

  [v12 setImage:v15];
  [platformImage size];
  v28 = fmin(v27, 29.0);
  [platformImage size];
  v30 = fmax(v28, fmin(v29, 29.0));
  displayStyle = [v15 displayStyle];
  v32 = 15.0;
  if (displayStyle == 1)
  {
    v32 = 2.0;
  }

  [v12 setCornerRadius:ceil(v30 / v32)];
  [v12 setForceImageScaling:{objc_msgSend(v5, "wf_alwaysScaleIconImage")}];
  [v12 setUsesInsetGroupedTableStyle:{objc_msgSend(v5, "wf_usesGroupTableViewStyle")}];
  if (!platformImage && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v33 = [v5 wf_pickerLocalizedIconForState:v6];
    [v12 setIcon:v33];
  }

  [v12 setParentViewController:v7];
  [v12 setContainedInState:bOOLValue];
  [v12 setDelegate:v10];
  [(WFParameterValuePickerTableViewCell *)self layoutMargins];
  disablesSeparatorIconInset = [(WFParameterValuePickerTableViewCell *)self disablesSeparatorIconInset];
  if (platformImage || disablesSeparatorIconInset)
  {
    if (disablesSeparatorIconInset)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  icon = [v12 icon];

  if (icon)
  {
LABEL_13:
    [v12 usesInsetGroupedTableStyle];
  }

LABEL_14:
  WFConvertEdgeInsetsToRTLIfNeeded();
  [(WFParameterValuePickerTableViewCell *)self setSeparatorInset:?];
  [(WFParameterValuePickerTableViewCell *)self setContentConfiguration:v12];
}

void __69__WFParameterValuePickerTableViewCell_updateConfigurationUsingState___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 format];
  [v3 bounds];
  [v2 drawInRect:?];
}

- (id)defaultContentConfiguration
{
  v3 = objc_alloc_init(WFParameterValuePickerTableViewCellConfiguration);
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  wf_isWidgetConfigurationExtensionBundle = [mainBundle wf_isWidgetConfigurationExtensionBundle];

  v6 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D76918]];
  v7 = MEMORY[0x277D74300];
  v8 = 17.0;
  if (wf_isWidgetConfigurationExtensionBundle)
  {
    [MEMORY[0x277D74300] labelFontSize];
  }

  v9 = [v7 systemFontOfSize:v8];
  v10 = [v6 scaledFontForFont:v9 maximumPointSize:36.0];
  [(WFParameterValuePickerTableViewCellConfiguration *)v3 setTextFont:v10];

  v11 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D76938]];
  v12 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
  v13 = [v11 scaledFontForFont:v12 maximumPointSize:24.0];
  [(WFParameterValuePickerTableViewCellConfiguration *)v3 setSecondaryTextFont:v13];

  [(WFParameterValuePickerTableViewCellConfiguration *)v3 setContainedInState:0];
  parameter = [(WFParameterValuePickerTableViewCell *)self parameter];
  -[WFParameterValuePickerTableViewCellConfiguration setUsesToggleForSelection:](v3, "setUsesToggleForSelection:", [parameter wf_usesTogglesForSelection]);

  labelColor = [MEMORY[0x277D75348] labelColor];
  [(WFParameterValuePickerTableViewCellConfiguration *)v3 setTextColor:labelColor];

  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  [(WFParameterValuePickerTableViewCellConfiguration *)v3 setSecondaryTextColor:secondaryLabelColor];

  return v3;
}

- (void)setParentViewController:(id)controller
{
  controllerCopy = controller;
  v5 = objc_loadWeakRetained(&self->_parentViewController);
  v6 = controllerCopy;
  obj = v6;
  if (v5 == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !v5)
  {

    goto LABEL_8;
  }

  v7 = [v5 isEqual:v6];

  if ((v7 & 1) == 0)
  {
LABEL_8:
    objc_storeWeak(&self->_parentViewController, obj);
    [(WFParameterValuePickerTableViewCell *)self setNeedsUpdateConfiguration];
  }

LABEL_9:
}

- (void)setContainedInState:(BOOL)state
{
  if (self->_containedInState != state)
  {
    stateCopy = state;
    self->_containedInState = state;
    parameter = [(WFParameterValuePickerTableViewCell *)self parameter];
    wf_usesTogglesForSelection = [parameter wf_usesTogglesForSelection];

    if (wf_usesTogglesForSelection)
    {

      [(WFParameterValuePickerTableViewCell *)self setNeedsUpdateConfiguration];
    }

    else
    {
      if (stateCopy)
      {
        v7 = 3;
      }

      else
      {
        v7 = 0;
      }

      [(WFParameterValuePickerTableViewCell *)self setAccessoryType:v7];
    }
  }
}

- (void)setState:(id)state
{
  stateCopy = state;
  v6 = self->_state;
  v7 = stateCopy;
  v9 = v7;
  if (v6 == v7)
  {

    goto LABEL_9;
  }

  if (!v7 || !v6)
  {

    goto LABEL_8;
  }

  v8 = [(WFCodableAttributeBackedSubstitutableState *)v6 isEqual:v7];

  if ((v8 & 1) == 0)
  {
LABEL_8:
    objc_storeStrong(&self->_state, state);
    [(WFParameterValuePickerTableViewCell *)self setNeedsUpdateConfiguration];
  }

LABEL_9:
}

- (void)setParameter:(id)parameter
{
  parameterCopy = parameter;
  v6 = self->_parameter;
  v7 = parameterCopy;
  v9 = v7;
  if (v6 == v7)
  {

    goto LABEL_9;
  }

  if (!v7 || !v6)
  {

    goto LABEL_8;
  }

  v8 = [(WFParameterValuePickable *)v6 isEqual:v7];

  if ((v8 & 1) == 0)
  {
LABEL_8:
    objc_storeStrong(&self->_parameter, parameter);
    [(WFParameterValuePickerTableViewCell *)self setNeedsUpdateConfiguration];
  }

LABEL_9:
}

- (id)configurationState
{
  v10.receiver = self;
  v10.super_class = WFParameterValuePickerTableViewCell;
  configurationState = [(WFParameterValuePickerTableViewCell *)&v10 configurationState];
  state = [(WFParameterValuePickerTableViewCell *)self state];
  [configurationState setCustomState:state forKey:@"state"];

  parameter = [(WFParameterValuePickerTableViewCell *)self parameter];
  [configurationState setCustomState:parameter forKey:@"parameter"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[WFParameterValuePickerTableViewCell isContainedInState](self, "isContainedInState")}];
  [configurationState setCustomState:v6 forKey:@"containedInState"];

  parentViewController = [(WFParameterValuePickerTableViewCell *)self parentViewController];
  [configurationState setCustomState:parentViewController forKey:@"parentViewController"];

  delegate = [(WFParameterValuePickerTableViewCell *)self delegate];
  [configurationState setCustomState:delegate forKey:@"delegate"];

  return configurationState;
}

@end