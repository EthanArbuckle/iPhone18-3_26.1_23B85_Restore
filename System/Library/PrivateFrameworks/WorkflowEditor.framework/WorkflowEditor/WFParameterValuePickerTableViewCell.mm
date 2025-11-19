@interface WFParameterValuePickerTableViewCell
- (UIViewController)parentViewController;
- (WFParameterValuePickerTableViewCellDelegate)delegate;
- (id)configurationState;
- (id)defaultContentConfiguration;
- (void)setContainedInState:(BOOL)a3;
- (void)setParameter:(id)a3;
- (void)setParentViewController:(id)a3;
- (void)setState:(id)a3;
- (void)tintColorDidChange;
- (void)updateConfigurationUsingState:(id)a3;
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

- (void)updateConfigurationUsingState:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"parameter"];
  v6 = [v4 objectForKeyedSubscript:@"state"];
  v7 = [v4 objectForKeyedSubscript:@"parentViewController"];
  v8 = [v4 objectForKeyedSubscript:@"containedInState"];
  v9 = [v8 BOOLValue];

  v10 = [v4 objectForKeyedSubscript:@"delegate"];
  v11 = [(WFParameterValuePickerTableViewCell *)self defaultContentConfiguration];
  v12 = [v11 updatedConfigurationForState:v4];

  v13 = [v5 wf_pickerLocalizedTitleForState:v6];
  [v12 setText:v13];

  v14 = [v5 wf_pickerLocalizedSubtitleForState:v6];
  [v12 setSecondaryText:v14];

  v15 = [v5 wf_pickerLocalizedImageForState:v6];
  v16 = [v15 platformImage];
  if ([v5 wf_alwaysScaleIconImage])
  {
    [v16 size];
    if (v17 < 29.0)
    {
      [v16 size];
      if (v18 < 29.0)
      {
        [v16 size];
        v20 = 29.0 / v19;
        [v16 size];
        v22 = fmin(v20, 29.0 / v21);
        [v16 size];
        v24 = v23 * v22;
        [v16 size];
        v36 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:{v24, v22 * v25}];
        v37 = [v16 renderingMode];
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __69__WFParameterValuePickerTableViewCell_updateConfigurationUsingState___block_invoke;
        v38[3] = &unk_279EDBE20;
        v39 = v16;
        v26 = [v36 imageWithActions:v38];
        v16 = [v26 imageWithRenderingMode:v37];
      }
    }
  }

  [v12 setImage:v15];
  [v16 size];
  v28 = fmin(v27, 29.0);
  [v16 size];
  v30 = fmax(v28, fmin(v29, 29.0));
  v31 = [v15 displayStyle];
  v32 = 15.0;
  if (v31 == 1)
  {
    v32 = 2.0;
  }

  [v12 setCornerRadius:ceil(v30 / v32)];
  [v12 setForceImageScaling:{objc_msgSend(v5, "wf_alwaysScaleIconImage")}];
  [v12 setUsesInsetGroupedTableStyle:{objc_msgSend(v5, "wf_usesGroupTableViewStyle")}];
  if (!v16 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v33 = [v5 wf_pickerLocalizedIconForState:v6];
    [v12 setIcon:v33];
  }

  [v12 setParentViewController:v7];
  [v12 setContainedInState:v9];
  [v12 setDelegate:v10];
  [(WFParameterValuePickerTableViewCell *)self layoutMargins];
  v34 = [(WFParameterValuePickerTableViewCell *)self disablesSeparatorIconInset];
  if (v16 || v34)
  {
    if (v34)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v35 = [v12 icon];

  if (v35)
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
  v4 = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = [v4 wf_isWidgetConfigurationExtensionBundle];

  v6 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D76918]];
  v7 = MEMORY[0x277D74300];
  v8 = 17.0;
  if (v5)
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
  v14 = [(WFParameterValuePickerTableViewCell *)self parameter];
  -[WFParameterValuePickerTableViewCellConfiguration setUsesToggleForSelection:](v3, "setUsesToggleForSelection:", [v14 wf_usesTogglesForSelection]);

  v15 = [MEMORY[0x277D75348] labelColor];
  [(WFParameterValuePickerTableViewCellConfiguration *)v3 setTextColor:v15];

  v16 = [MEMORY[0x277D75348] secondaryLabelColor];
  [(WFParameterValuePickerTableViewCellConfiguration *)v3 setSecondaryTextColor:v16];

  return v3;
}

- (void)setParentViewController:(id)a3
{
  v4 = a3;
  v5 = objc_loadWeakRetained(&self->_parentViewController);
  v6 = v4;
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

- (void)setContainedInState:(BOOL)a3
{
  if (self->_containedInState != a3)
  {
    v3 = a3;
    self->_containedInState = a3;
    v5 = [(WFParameterValuePickerTableViewCell *)self parameter];
    v6 = [v5 wf_usesTogglesForSelection];

    if (v6)
    {

      [(WFParameterValuePickerTableViewCell *)self setNeedsUpdateConfiguration];
    }

    else
    {
      if (v3)
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

- (void)setState:(id)a3
{
  v5 = a3;
  v6 = self->_state;
  v7 = v5;
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
    objc_storeStrong(&self->_state, a3);
    [(WFParameterValuePickerTableViewCell *)self setNeedsUpdateConfiguration];
  }

LABEL_9:
}

- (void)setParameter:(id)a3
{
  v5 = a3;
  v6 = self->_parameter;
  v7 = v5;
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
    objc_storeStrong(&self->_parameter, a3);
    [(WFParameterValuePickerTableViewCell *)self setNeedsUpdateConfiguration];
  }

LABEL_9:
}

- (id)configurationState
{
  v10.receiver = self;
  v10.super_class = WFParameterValuePickerTableViewCell;
  v3 = [(WFParameterValuePickerTableViewCell *)&v10 configurationState];
  v4 = [(WFParameterValuePickerTableViewCell *)self state];
  [v3 setCustomState:v4 forKey:@"state"];

  v5 = [(WFParameterValuePickerTableViewCell *)self parameter];
  [v3 setCustomState:v5 forKey:@"parameter"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[WFParameterValuePickerTableViewCell isContainedInState](self, "isContainedInState")}];
  [v3 setCustomState:v6 forKey:@"containedInState"];

  v7 = [(WFParameterValuePickerTableViewCell *)self parentViewController];
  [v3 setCustomState:v7 forKey:@"parentViewController"];

  v8 = [(WFParameterValuePickerTableViewCell *)self delegate];
  [v3 setCustomState:v8 forKey:@"delegate"];

  return v3;
}

@end