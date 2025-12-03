@interface WFConfigurationParameterEditorHostingCell
- (WFConfigurationParameterEditorHostingCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)applyStylingWithStrokeProvider:(id)provider fillProvider:(id)fillProvider cardBackgroundColor:(id)color overridingTintColor:(id)tintColor;
- (void)reconfigureModernView;
- (void)setCardBackgroundColor:(id)color;
- (void)setFillProvider:(id)provider;
- (void)setLabelColor:(id)color;
- (void)setStrokeProvider:(id)provider;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation WFConfigurationParameterEditorHostingCell

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = WFConfigurationParameterEditorHostingCell;
  changeCopy = change;
  [(WFParameterEditorHostingCell *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(WFConfigurationParameterEditorHostingCell *)self traitCollection:v8.receiver];
  userInterfaceStyle = [v5 userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    [(WFParameterEditorHostingCell *)self updateContext];
  }
}

- (void)reconfigureModernView
{
  model = [(WFParameterEditorHostingCell *)self model];
  modernHostingView = [(WFParameterEditorHostingCell *)self modernHostingView];
  objc_initWeak(&location, self);
  parameter = [model parameter];
  state = [model state];
  becomeFirstResponder = [model becomeFirstResponder];
  widgetFamily = [model widgetFamily];
  fillProvider = [(WFConfigurationParameterEditorHostingCell *)self fillProvider];
  overridingBackgroundColor = [(WFConfigurationParameterEditorHostingCell *)self overridingBackgroundColor];
  overridingTintColor = [(WFConfigurationParameterEditorHostingCell *)self overridingTintColor];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66__WFConfigurationParameterEditorHostingCell_reconfigureModernView__block_invoke;
  v13[3] = &unk_279EDC1F8;
  objc_copyWeak(&v14, &location);
  [modernHostingView configureConfigurationUIViewWithParameter:parameter state:state processing:1 shouldFocus:becomeFirstResponder variableProvider:0 widgetFamily:widgetFamily fillProvider:fillProvider overridingCellBackgroundColor:overridingBackgroundColor overridingTintColor:overridingTintColor updateBlock:v13];

  delegate = [(WFParameterEditorHostingCell *)self delegate];
  [delegate parameterEditorCellDidInvalidateSize:self];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __66__WFConfigurationParameterEditorHostingCell_reconfigureModernView__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updatedParameterState:v5 isUIUpdate:a3];
}

- (void)applyStylingWithStrokeProvider:(id)provider fillProvider:(id)fillProvider cardBackgroundColor:(id)color overridingTintColor:(id)tintColor
{
  tintColorCopy = tintColor;
  fillProviderCopy = fillProvider;
  providerCopy = provider;
  [(WFConfigurationParameterEditorHostingCell *)self setCardBackgroundColor:color];
  [(WFConfigurationParameterEditorHostingCell *)self setOverridingTintColor:tintColorCopy];

  [(WFConfigurationParameterEditorHostingCell *)self setStrokeProvider:providerCopy];
  [(WFConfigurationParameterEditorHostingCell *)self setFillProvider:fillProviderCopy];
}

- (void)setCardBackgroundColor:(id)color
{
  colorCopy = color;
  objc_storeStrong(&self->_cardBackgroundColor, color);
  cardBackgroundColor = [(WFConfigurationParameterEditorHostingCell *)self cardBackgroundColor];
  [cardBackgroundColor CGColor];
  WFCGColorPerceivedLightness();
  v7 = v6;

  cardBackgroundColor2 = [(WFConfigurationParameterEditorHostingCell *)self cardBackgroundColor];
  if (cardBackgroundColor2 && ((cardBackgroundColor2, v7 < 0.15) || v7 > 0.95))
  {
    secondarySystemGroupedBackgroundColor = [MEMORY[0x277D75348] secondarySystemGroupedBackgroundColor];
    [(WFConfigurationParameterEditorHostingCell *)self setOverridingBackgroundColor:secondarySystemGroupedBackgroundColor];
  }

  else
  {
    [(WFConfigurationParameterEditorHostingCell *)self setOverridingBackgroundColor:0];
  }
}

- (void)setFillProvider:(id)provider
{
  providerCopy = provider;
  fillProvider = [(WFConfigurationParameterEditorHostingCell *)self fillProvider];
  v7 = providerCopy;
  v8 = v7;
  if (fillProvider == v7)
  {
  }

  else
  {
    if (v7 && fillProvider)
    {
      v9 = [fillProvider isEqual:v7];

      if (v9)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

    fillProvider2 = [(WFConfigurationParameterEditorHostingCell *)self fillProvider];
    highlighedBackgroundView = [(WFConfigurationParameterEditorHostingCell *)self highlighedBackgroundView];
    [fillProvider2 stopAutomaticallyUpdatingView:highlighedBackgroundView];

    fillProvider3 = [(WFConfigurationParameterEditorHostingCell *)self fillProvider];
    backgroundView = [(WFConfigurationParameterEditorHostingCell *)self backgroundView];
    [fillProvider3 stopAutomaticallyUpdatingView:backgroundView];

    objc_storeStrong(&self->_fillProvider, provider);
    if (v8)
    {
      highlighedBackgroundView2 = [(WFConfigurationParameterEditorHostingCell *)self highlighedBackgroundView];
      [(WFConfigurationParameterEditorHostingCell *)self setSelectedBackgroundView:highlighedBackgroundView2];
    }

    else
    {
      [(WFConfigurationParameterEditorHostingCell *)self setSelectedBackgroundView:0];
    }

    objc_initWeak(&location, self);
    fillProvider4 = [(WFConfigurationParameterEditorHostingCell *)self fillProvider];
    backgroundView2 = [(WFConfigurationParameterEditorHostingCell *)self backgroundView];
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __61__WFConfigurationParameterEditorHostingCell_setFillProvider___block_invoke;
    v22 = &unk_279EDC1D0;
    objc_copyWeak(&v23, &location);
    [fillProvider4 automaticallyUpdateView:backgroundView2 withStyle:0 andObserverBlock:&v19];

    v17 = [(WFConfigurationParameterEditorHostingCell *)self fillProvider:v19];
    highlighedBackgroundView3 = [(WFConfigurationParameterEditorHostingCell *)self highlighedBackgroundView];
    [v17 automaticallyUpdateView:highlighedBackgroundView3 withStyle:1];

    [(WFParameterEditorHostingCell *)self updateContext];
    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

LABEL_12:
}

id __61__WFConfigurationParameterEditorHostingCell_setFillProvider___block_invoke(uint64_t a1)
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__WFConfigurationParameterEditorHostingCell_setFillProvider___block_invoke_2;
  aBlock[3] = &unk_279EDC1A8;
  objc_copyWeak(&v4, (a1 + 32));
  v1 = _Block_copy(aBlock);
  objc_destroyWeak(&v4);

  return v1;
}

void __61__WFConfigurationParameterEditorHostingCell_setFillProvider___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = v4;
  v6 = [WeakRetained overridingBackgroundColor];

  if (v6)
  {
    v7 = [WeakRetained overridingBackgroundColor];
    [v8 setBackgroundColor:v7];
  }
}

- (void)setStrokeProvider:(id)provider
{
  providerCopy = provider;
  strokeProvider = [(WFConfigurationParameterEditorHostingCell *)self strokeProvider];
  v7 = providerCopy;
  v8 = v7;
  if (strokeProvider == v7)
  {
  }

  else
  {
    if (v7 && strokeProvider)
    {
      v9 = [strokeProvider isEqual:v7];

      if (v9)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    strokeProvider2 = [(WFConfigurationParameterEditorHostingCell *)self strokeProvider];
    contentView = [(WFConfigurationParameterEditorHostingCell *)self contentView];
    [strokeProvider2 stopAutomaticallyUpdatingView:contentView];

    objc_storeStrong(&self->_strokeProvider, provider);
    objc_initWeak(&location, self);
    strokeProvider3 = [(WFConfigurationParameterEditorHostingCell *)self strokeProvider];
    contentView2 = [(WFConfigurationParameterEditorHostingCell *)self contentView];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __63__WFConfigurationParameterEditorHostingCell_setStrokeProvider___block_invoke;
    v14[3] = &unk_279EDC1D0;
    objc_copyWeak(&v15, &location);
    [strokeProvider3 automaticallyUpdateView:contentView2 withStyle:0 andObserverBlock:v14];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

LABEL_9:
}

id __63__WFConfigurationParameterEditorHostingCell_setStrokeProvider___block_invoke(uint64_t a1)
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__WFConfigurationParameterEditorHostingCell_setStrokeProvider___block_invoke_2;
  aBlock[3] = &unk_279EDC1A8;
  objc_copyWeak(&v4, (a1 + 32));
  v1 = _Block_copy(aBlock);
  objc_destroyWeak(&v4);

  return v1;
}

void __63__WFConfigurationParameterEditorHostingCell_setStrokeProvider___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = MEMORY[0x277D75348];
  v12 = v5;
  v9 = [v8 clearColor];
  [v12 setBackgroundColor:v9];

  v10 = [v6 _visualStylingForContinuallyUpdatedView:v12];

  v11 = [v10 color];
  [WeakRetained setLabelColor:v11];
}

- (void)setLabelColor:(id)color
{
  colorCopy = color;
  labelColor = [(WFConfigurationParameterEditorHostingCell *)self labelColor];
  v7 = colorCopy;
  v9 = v7;
  if (labelColor == v7)
  {

    goto LABEL_9;
  }

  if (!v7 || !labelColor)
  {

    goto LABEL_8;
  }

  v8 = [labelColor isEqual:v7];

  if ((v8 & 1) == 0)
  {
LABEL_8:
    objc_storeStrong(&self->_labelColor, color);
    [(WFParameterEditorHostingCell *)self updateContext];
  }

LABEL_9:
}

- (WFConfigurationParameterEditorHostingCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v13.receiver = self;
  v13.super_class = WFConfigurationParameterEditorHostingCell;
  v4 = [(WFParameterEditorHostingCell *)&v13 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D75D18]);
    [(WFConfigurationParameterEditorHostingCell *)v4 setBackgroundView:v5];

    backgroundView = [(WFConfigurationParameterEditorHostingCell *)v4 backgroundView];
    [backgroundView setAutoresizingMask:18];

    v7 = objc_alloc_init(MEMORY[0x277D75D18]);
    [(WFConfigurationParameterEditorHostingCell *)v4 setHighlighedBackgroundView:v7];

    highlighedBackgroundView = [(WFConfigurationParameterEditorHostingCell *)v4 highlighedBackgroundView];
    [highlighedBackgroundView setAutoresizingMask:18];

    [(WFConfigurationParameterEditorHostingCell *)v4 setSelectionStyle:0];
    clearColor = [MEMORY[0x277D75348] clearColor];
    contentView = [(WFConfigurationParameterEditorHostingCell *)v4 contentView];
    [contentView setBackgroundColor:clearColor];

    v11 = v4;
  }

  return v4;
}

@end