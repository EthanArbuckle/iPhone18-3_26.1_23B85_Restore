@interface WFParameterEditorHostingCell
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIViewController)containingViewController;
- (WFParameterEditorHostingCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (WFParameterEditorHostingCellDelegate)delegate;
- (void)layoutSubviews;
- (void)parameterAttributesDidChange:(id)change;
- (void)reconfigureModernView;
- (void)setContainingViewController:(id)controller;
- (void)traitCollectionDidChange:(id)change;
- (void)updateContext;
- (void)updateModel:(id)model;
- (void)updatedParameterState:(id)state isUIUpdate:(BOOL)update;
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

- (void)parameterAttributesDidChange:(id)change
{
  delegate = [(WFParameterEditorHostingCell *)self delegate];
  [delegate parameterEditorCellDidInvalidateSize:self];
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = WFParameterEditorHostingCell;
  changeCopy = change;
  [(WFParameterEditorHostingCell *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(WFParameterEditorHostingCell *)self traitCollection:v8.receiver];
  userInterfaceStyle = [v5 userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    [(WFParameterEditorHostingCell *)self updateContext];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v5 = [(WFParameterEditorHostingCell *)self contentView:fits.width];
  [v5 bounds];
  v7 = v6;

  if (width >= v7)
  {
    width = v7;
  }

  modernHostingView = [(WFParameterEditorHostingCell *)self modernHostingView];
  [modernHostingView sizeThatFits:{width, 1.79769313e308}];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)updatedParameterState:(id)state isUIUpdate:(BOOL)update
{
  if (!update)
  {
    stateCopy = state;
    delegate = [(WFParameterEditorHostingCell *)self delegate];
    [delegate parameterEditorCell:self didUpdateParameterState:stateCopy];
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

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if (sel_isEqual(action, sel_updatedParameterState_isUIUpdate_))
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = WFParameterEditorHostingCell;
    v7 = [(WFParameterEditorHostingCell *)&v9 canPerformAction:action withSender:senderCopy];
  }

  return v7;
}

- (void)reconfigureModernView
{
  model = [(WFParameterEditorHostingCell *)self model];
  if (model)
  {
    modernHostingView = [(WFParameterEditorHostingCell *)self modernHostingView];
    parameter = [model parameter];
    state = [model state];
    becomeFirstResponder = [model becomeFirstResponder];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __53__WFParameterEditorHostingCell_reconfigureModernView__block_invoke;
    v8[3] = &unk_279EDBA68;
    v8[4] = self;
    [modernHostingView configureViewForRuntimeUIWithParameter:parameter state:state processing:1 shouldFocus:becomeFirstResponder variableProvider:0 updateBlock:v8];
  }
}

- (void)updateModel:(id)model
{
  modelCopy = model;
  model = self->_model;
  if (model != modelCopy)
  {
    v9 = modelCopy;
    parameter = [(WFParameterEditorModel *)model parameter];
    [parameter removeEventObserver:self];

    objc_storeStrong(&self->_model, model);
    parameter2 = [(WFParameterEditorModel *)v9 parameter];
    [parameter2 addEventObserver:self];

    [(WFParameterEditorHostingCell *)self reconfigureModernView];
    modelCopy = v9;
  }
}

- (void)updateContext
{
  containingViewController = [(WFParameterEditorHostingCell *)self containingViewController];

  modernHostingView = [(WFParameterEditorHostingCell *)self modernHostingView];
  v5 = modernHostingView;
  if (containingViewController)
  {
    containingViewController2 = [(WFParameterEditorHostingCell *)self containingViewController];
    [v5 attachToParentViewController:containingViewController2];
  }

  else
  {
    [modernHostingView detachFromParentViewController];
  }

  [(WFParameterEditorHostingCell *)self reconfigureModernView];
}

- (void)setContainingViewController:(id)controller
{
  obj = controller;
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
  contentView = [(WFParameterEditorHostingCell *)self contentView];
  [contentView bounds];
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
  modernHostingView = [(WFParameterEditorHostingCell *)self modernHostingView];
  [modernHostingView setFrame:{x, y, width, height}];

  if (v9 != self->_lastWidth)
  {
    self->_lastWidth = v9;
    delegate = [(WFParameterEditorHostingCell *)self delegate];
    [delegate parameterEditorCellDidInvalidateSize:self];
  }
}

- (WFParameterEditorHostingCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = WFParameterEditorHostingCell;
  v4 = [(WFParameterEditorHostingCell *)&v9 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(WFParameterHostingView);
    contentView = [(WFParameterEditorHostingCell *)v4 contentView];
    [contentView addSubview:v5];

    [(WFParameterEditorHostingCell *)v4 setModernHostingView:v5];
    v7 = v4;
  }

  return v4;
}

@end