@interface PRWidgetSuggestionCell
- (CGSize)contentSize;
- (PRWidgetSuggestionCell)initWithFrame:(CGRect)frame;
- (void)setIconImage:(id)image;
- (void)setWidgetWrapperViewController:(id)controller;
@end

@implementation PRWidgetSuggestionCell

- (PRWidgetSuggestionCell)initWithFrame:(CGRect)frame
{
  v23[4] = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = PRWidgetSuggestionCell;
  v3 = [(PRWidgetSuggestionCell *)&v22 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    iconImageView = v3->_iconImageView;
    v3->_iconImageView = v4;

    [(UIImageView *)v3->_iconImageView setHidden:1];
    contentView = [(PRWidgetSuggestionCell *)v3 contentView];
    [contentView addSubview:v3->_iconImageView];

    [(UIImageView *)v3->_iconImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = MEMORY[0x1E696ACD8];
    widthAnchor = [(UIImageView *)v3->_iconImageView widthAnchor];
    v20 = [widthAnchor constraintEqualToConstant:20.0];
    v23[0] = v20;
    heightAnchor = [(UIImageView *)v3->_iconImageView heightAnchor];
    v18 = [heightAnchor constraintEqualToConstant:20.0];
    v23[1] = v18;
    trailingAnchor = [(UIImageView *)v3->_iconImageView trailingAnchor];
    contentView2 = [(PRWidgetSuggestionCell *)v3 contentView];
    trailingAnchor2 = [contentView2 trailingAnchor];
    v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:4.0];
    v23[2] = v10;
    bottomAnchor = [(UIImageView *)v3->_iconImageView bottomAnchor];
    contentView3 = [(PRWidgetSuggestionCell *)v3 contentView];
    bottomAnchor2 = [contentView3 bottomAnchor];
    v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:4.0];
    v23[3] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];
    [v17 activateConstraints:v15];
  }

  return v3;
}

- (void)setWidgetWrapperViewController:(id)controller
{
  v32[4] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  widgetWrapperViewController = self->_widgetWrapperViewController;
  if (widgetWrapperViewController != controllerCopy)
  {
    view = [(SBHWidgetWrapperViewController *)widgetWrapperViewController view];
    v8 = [view isDescendantOfView:self];

    if (v8)
    {
      parentViewController = [(SBHWidgetWrapperViewController *)self->_widgetWrapperViewController parentViewController];
      [parentViewController bs_removeChildViewController:self->_widgetWrapperViewController];
    }

    objc_storeStrong(&self->_widgetWrapperViewController, controller);
    v10 = self->_widgetWrapperViewController;
    if (v10)
    {
      view2 = [(SBHWidgetWrapperViewController *)v10 view];
      [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
      contentView = [(PRWidgetSuggestionCell *)self contentView];
      iconImageView = [(PRWidgetSuggestionCell *)self iconImageView];
      [contentView insertSubview:view2 belowSubview:iconImageView];

      v24 = MEMORY[0x1E696ACD8];
      leadingAnchor = [view2 leadingAnchor];
      contentView2 = [(PRWidgetSuggestionCell *)self contentView];
      leadingAnchor2 = [contentView2 leadingAnchor];
      v28 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v32[0] = v28;
      trailingAnchor = [view2 trailingAnchor];
      contentView3 = [(PRWidgetSuggestionCell *)self contentView];
      trailingAnchor2 = [contentView3 trailingAnchor];
      v23 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v32[1] = v23;
      topAnchor = [view2 topAnchor];
      contentView4 = [(PRWidgetSuggestionCell *)self contentView];
      topAnchor2 = [contentView4 topAnchor];
      v16 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v32[2] = v16;
      bottomAnchor = [view2 bottomAnchor];
      contentView5 = [(PRWidgetSuggestionCell *)self contentView];
      bottomAnchor2 = [contentView5 bottomAnchor];
      v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v32[3] = v20;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:4];
      [v24 activateConstraints:v21];
    }
  }
}

- (void)setIconImage:(id)image
{
  [(UIImageView *)self->_iconImageView setImage:?];
  iconImageView = self->_iconImageView;

  [(UIImageView *)iconImageView setHidden:image == 0];
}

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end