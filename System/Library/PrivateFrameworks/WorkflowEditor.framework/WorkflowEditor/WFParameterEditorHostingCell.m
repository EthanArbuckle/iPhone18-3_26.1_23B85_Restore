@interface WFParameterEditorHostingCell
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIViewController)containingViewController;
- (WFParameterEditorHostingCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (WFParameterEditorHostingCellDelegate)delegate;
- (void)layoutSubviews;
- (void)parameterAttributesDidChange:(id)a3;
- (void)reconfigureModernView;
- (void)setContainingViewController:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateContext;
- (void)updateModel:(id)a3;
- (void)updatedParameterState:(id)a3 isUIUpdate:(BOOL)a4;
@end

@implementation WFParameterEditorHostingCell

- (UIViewController)containingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_containingViewController);

  return WeakRetained;
}

- (WFParameterEditorHostingCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)parameterAttributesDidChange:(id)a3
{
  v4 = [(WFParameterEditorHostingCell *)self delegate];
  [v4 parameterEditorCellDidInvalidateSize:self];
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = WFParameterEditorHostingCell;
  v4 = a3;
  [(WFParameterEditorHostingCell *)&v8 traitCollectionDidChange:v4];
  v5 = [(WFParameterEditorHostingCell *)self traitCollection:v8.receiver];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
  {
    [(WFParameterEditorHostingCell *)self updateContext];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v5 = [(WFParameterEditorHostingCell *)self contentView:a3.width];
  [v5 bounds];
  v7 = v6;

  if (width >= v7)
  {
    width = v7;
  }

  v8 = [(WFParameterEditorHostingCell *)self modernHostingView];
  [v8 sizeThatFits:{width, 1.79769313e308}];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)updatedParameterState:(id)a3 isUIUpdate:(BOOL)a4
{
  if (!a4)
  {
    v5 = a3;
    v6 = [(WFParameterEditorHostingCell *)self delegate];
    [v6 parameterEditorCell:self didUpdateParameterState:v5];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__WFParameterEditorHostingCell_updatedParameterState_isUIUpdate___block_invoke;
  block[3] = &unk_279EDC288;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __65__WFParameterEditorHostingCell_updatedParameterState_isUIUpdate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 parameterEditorCellDidInvalidateSize:*(a1 + 32)];
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if (sel_isEqual(a3, sel_updatedParameterState_isUIUpdate_))
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = WFParameterEditorHostingCell;
    v7 = [(WFParameterEditorHostingCell *)&v9 canPerformAction:a3 withSender:v6];
  }

  return v7;
}

- (void)reconfigureModernView
{
  v3 = [(WFParameterEditorHostingCell *)self model];
  if (v3)
  {
    v4 = [(WFParameterEditorHostingCell *)self modernHostingView];
    v5 = [v3 parameter];
    v6 = [v3 state];
    v7 = [v3 becomeFirstResponder];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __53__WFParameterEditorHostingCell_reconfigureModernView__block_invoke;
    v8[3] = &unk_279EDBA68;
    v8[4] = self;
    [v4 configureViewForRuntimeUIWithParameter:v5 state:v6 processing:1 shouldFocus:v7 variableProvider:0 updateBlock:v8];
  }
}

- (void)updateModel:(id)a3
{
  v5 = a3;
  model = self->_model;
  if (model != v5)
  {
    v9 = v5;
    v7 = [(WFParameterEditorModel *)model parameter];
    [v7 removeEventObserver:self];

    objc_storeStrong(&self->_model, a3);
    v8 = [(WFParameterEditorModel *)v9 parameter];
    [v8 addEventObserver:self];

    [(WFParameterEditorHostingCell *)self reconfigureModernView];
    v5 = v9;
  }
}

- (void)updateContext
{
  v3 = [(WFParameterEditorHostingCell *)self containingViewController];

  v4 = [(WFParameterEditorHostingCell *)self modernHostingView];
  v5 = v4;
  if (v3)
  {
    v6 = [(WFParameterEditorHostingCell *)self containingViewController];
    [v5 attachToParentViewController:v6];
  }

  else
  {
    [v4 detachFromParentViewController];
  }

  [(WFParameterEditorHostingCell *)self reconfigureModernView];
}

- (void)setContainingViewController:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_containingViewController);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_containingViewController, obj);
    [(WFParameterEditorHostingCell *)self updateContext];
    v5 = obj;
  }
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = WFParameterEditorHostingCell;
  [(WFParameterEditorHostingCell *)&v18 layoutSubviews];
  v3 = [(WFParameterEditorHostingCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v19.origin.x = v5;
  v19.origin.y = v7;
  v19.size.width = v9;
  v19.size.height = v11;
  v20 = CGRectIntegral(v19);
  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;
  v16 = [(WFParameterEditorHostingCell *)self modernHostingView];
  [v16 setFrame:{x, y, width, height}];

  if (v9 != self->_lastWidth)
  {
    self->_lastWidth = v9;
    v17 = [(WFParameterEditorHostingCell *)self delegate];
    [v17 parameterEditorCellDidInvalidateSize:self];
  }
}

- (WFParameterEditorHostingCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v9.receiver = self;
  v9.super_class = WFParameterEditorHostingCell;
  v4 = [(WFParameterEditorHostingCell *)&v9 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc_init(WFParameterHostingView);
    v6 = [(WFParameterEditorHostingCell *)v4 contentView];
    [v6 addSubview:v5];

    [(WFParameterEditorHostingCell *)v4 setModernHostingView:v5];
    v7 = v4;
  }

  return v4;
}

@end