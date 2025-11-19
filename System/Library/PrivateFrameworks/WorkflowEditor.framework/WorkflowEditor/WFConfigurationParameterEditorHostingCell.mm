@interface WFConfigurationParameterEditorHostingCell
- (WFConfigurationParameterEditorHostingCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)applyStylingWithStrokeProvider:(id)a3 fillProvider:(id)a4 cardBackgroundColor:(id)a5 overridingTintColor:(id)a6;
- (void)reconfigureModernView;
- (void)setCardBackgroundColor:(id)a3;
- (void)setFillProvider:(id)a3;
- (void)setLabelColor:(id)a3;
- (void)setStrokeProvider:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation WFConfigurationParameterEditorHostingCell

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = WFConfigurationParameterEditorHostingCell;
  v4 = a3;
  [(WFParameterEditorHostingCell *)&v8 traitCollectionDidChange:v4];
  v5 = [(WFConfigurationParameterEditorHostingCell *)self traitCollection:v8.receiver];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
  {
    [(WFParameterEditorHostingCell *)self updateContext];
  }
}

- (void)reconfigureModernView
{
  v3 = [(WFParameterEditorHostingCell *)self model];
  v12 = [(WFParameterEditorHostingCell *)self modernHostingView];
  objc_initWeak(&location, self);
  v4 = [v3 parameter];
  v5 = [v3 state];
  v6 = [v3 becomeFirstResponder];
  v7 = [v3 widgetFamily];
  v8 = [(WFConfigurationParameterEditorHostingCell *)self fillProvider];
  v9 = [(WFConfigurationParameterEditorHostingCell *)self overridingBackgroundColor];
  v10 = [(WFConfigurationParameterEditorHostingCell *)self overridingTintColor];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66__WFConfigurationParameterEditorHostingCell_reconfigureModernView__block_invoke;
  v13[3] = &unk_279EDC1F8;
  objc_copyWeak(&v14, &location);
  [v12 configureConfigurationUIViewWithParameter:v4 state:v5 processing:1 shouldFocus:v6 variableProvider:0 widgetFamily:v7 fillProvider:v8 overridingCellBackgroundColor:v9 overridingTintColor:v10 updateBlock:v13];

  v11 = [(WFParameterEditorHostingCell *)self delegate];
  [v11 parameterEditorCellDidInvalidateSize:self];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __66__WFConfigurationParameterEditorHostingCell_reconfigureModernView__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updatedParameterState:v5 isUIUpdate:a3];
}

- (void)applyStylingWithStrokeProvider:(id)a3 fillProvider:(id)a4 cardBackgroundColor:(id)a5 overridingTintColor:(id)a6
{
  v10 = a6;
  v12 = a4;
  v11 = a3;
  [(WFConfigurationParameterEditorHostingCell *)self setCardBackgroundColor:a5];
  [(WFConfigurationParameterEditorHostingCell *)self setOverridingTintColor:v10];

  [(WFConfigurationParameterEditorHostingCell *)self setStrokeProvider:v11];
  [(WFConfigurationParameterEditorHostingCell *)self setFillProvider:v12];
}

- (void)setCardBackgroundColor:(id)a3
{
  v10 = a3;
  objc_storeStrong(&self->_cardBackgroundColor, a3);
  v5 = [(WFConfigurationParameterEditorHostingCell *)self cardBackgroundColor];
  [v5 CGColor];
  WFCGColorPerceivedLightness();
  v7 = v6;

  v8 = [(WFConfigurationParameterEditorHostingCell *)self cardBackgroundColor];
  if (v8 && ((v8, v7 < 0.15) || v7 > 0.95))
  {
    v9 = [MEMORY[0x277D75348] secondarySystemGroupedBackgroundColor];
    [(WFConfigurationParameterEditorHostingCell *)self setOverridingBackgroundColor:v9];
  }

  else
  {
    [(WFConfigurationParameterEditorHostingCell *)self setOverridingBackgroundColor:0];
  }
}

- (void)setFillProvider:(id)a3
{
  v5 = a3;
  v6 = [(WFConfigurationParameterEditorHostingCell *)self fillProvider];
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {
  }

  else
  {
    if (v7 && v6)
    {
      v9 = [v6 isEqual:v7];

      if (v9)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

    v10 = [(WFConfigurationParameterEditorHostingCell *)self fillProvider];
    v11 = [(WFConfigurationParameterEditorHostingCell *)self highlighedBackgroundView];
    [v10 stopAutomaticallyUpdatingView:v11];

    v12 = [(WFConfigurationParameterEditorHostingCell *)self fillProvider];
    v13 = [(WFConfigurationParameterEditorHostingCell *)self backgroundView];
    [v12 stopAutomaticallyUpdatingView:v13];

    objc_storeStrong(&self->_fillProvider, a3);
    if (v8)
    {
      v14 = [(WFConfigurationParameterEditorHostingCell *)self highlighedBackgroundView];
      [(WFConfigurationParameterEditorHostingCell *)self setSelectedBackgroundView:v14];
    }

    else
    {
      [(WFConfigurationParameterEditorHostingCell *)self setSelectedBackgroundView:0];
    }

    objc_initWeak(&location, self);
    v15 = [(WFConfigurationParameterEditorHostingCell *)self fillProvider];
    v16 = [(WFConfigurationParameterEditorHostingCell *)self backgroundView];
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __61__WFConfigurationParameterEditorHostingCell_setFillProvider___block_invoke;
    v22 = &unk_279EDC1D0;
    objc_copyWeak(&v23, &location);
    [v15 automaticallyUpdateView:v16 withStyle:0 andObserverBlock:&v19];

    v17 = [(WFConfigurationParameterEditorHostingCell *)self fillProvider:v19];
    v18 = [(WFConfigurationParameterEditorHostingCell *)self highlighedBackgroundView];
    [v17 automaticallyUpdateView:v18 withStyle:1];

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

- (void)setStrokeProvider:(id)a3
{
  v5 = a3;
  v6 = [(WFConfigurationParameterEditorHostingCell *)self strokeProvider];
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {
  }

  else
  {
    if (v7 && v6)
    {
      v9 = [v6 isEqual:v7];

      if (v9)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    v10 = [(WFConfigurationParameterEditorHostingCell *)self strokeProvider];
    v11 = [(WFConfigurationParameterEditorHostingCell *)self contentView];
    [v10 stopAutomaticallyUpdatingView:v11];

    objc_storeStrong(&self->_strokeProvider, a3);
    objc_initWeak(&location, self);
    v12 = [(WFConfigurationParameterEditorHostingCell *)self strokeProvider];
    v13 = [(WFConfigurationParameterEditorHostingCell *)self contentView];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __63__WFConfigurationParameterEditorHostingCell_setStrokeProvider___block_invoke;
    v14[3] = &unk_279EDC1D0;
    objc_copyWeak(&v15, &location);
    [v12 automaticallyUpdateView:v13 withStyle:0 andObserverBlock:v14];

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

- (void)setLabelColor:(id)a3
{
  v5 = a3;
  v6 = [(WFConfigurationParameterEditorHostingCell *)self labelColor];
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

  v8 = [v6 isEqual:v7];

  if ((v8 & 1) == 0)
  {
LABEL_8:
    objc_storeStrong(&self->_labelColor, a3);
    [(WFParameterEditorHostingCell *)self updateContext];
  }

LABEL_9:
}

- (WFConfigurationParameterEditorHostingCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v13.receiver = self;
  v13.super_class = WFConfigurationParameterEditorHostingCell;
  v4 = [(WFParameterEditorHostingCell *)&v13 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D75D18]);
    [(WFConfigurationParameterEditorHostingCell *)v4 setBackgroundView:v5];

    v6 = [(WFConfigurationParameterEditorHostingCell *)v4 backgroundView];
    [v6 setAutoresizingMask:18];

    v7 = objc_alloc_init(MEMORY[0x277D75D18]);
    [(WFConfigurationParameterEditorHostingCell *)v4 setHighlighedBackgroundView:v7];

    v8 = [(WFConfigurationParameterEditorHostingCell *)v4 highlighedBackgroundView];
    [v8 setAutoresizingMask:18];

    [(WFConfigurationParameterEditorHostingCell *)v4 setSelectionStyle:0];
    v9 = [MEMORY[0x277D75348] clearColor];
    v10 = [(WFConfigurationParameterEditorHostingCell *)v4 contentView];
    [v10 setBackgroundColor:v9];

    v11 = v4;
  }

  return v4;
}

@end