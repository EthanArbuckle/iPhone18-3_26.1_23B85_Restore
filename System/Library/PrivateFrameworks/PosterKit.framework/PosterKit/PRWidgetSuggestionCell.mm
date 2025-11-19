@interface PRWidgetSuggestionCell
- (CGSize)contentSize;
- (PRWidgetSuggestionCell)initWithFrame:(CGRect)a3;
- (void)setIconImage:(id)a3;
- (void)setWidgetWrapperViewController:(id)a3;
@end

@implementation PRWidgetSuggestionCell

- (PRWidgetSuggestionCell)initWithFrame:(CGRect)a3
{
  v23[4] = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = PRWidgetSuggestionCell;
  v3 = [(PRWidgetSuggestionCell *)&v22 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    iconImageView = v3->_iconImageView;
    v3->_iconImageView = v4;

    [(UIImageView *)v3->_iconImageView setHidden:1];
    v6 = [(PRWidgetSuggestionCell *)v3 contentView];
    [v6 addSubview:v3->_iconImageView];

    [(UIImageView *)v3->_iconImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = MEMORY[0x1E696ACD8];
    v21 = [(UIImageView *)v3->_iconImageView widthAnchor];
    v20 = [v21 constraintEqualToConstant:20.0];
    v23[0] = v20;
    v19 = [(UIImageView *)v3->_iconImageView heightAnchor];
    v18 = [v19 constraintEqualToConstant:20.0];
    v23[1] = v18;
    v7 = [(UIImageView *)v3->_iconImageView trailingAnchor];
    v8 = [(PRWidgetSuggestionCell *)v3 contentView];
    v9 = [v8 trailingAnchor];
    v10 = [v7 constraintEqualToAnchor:v9 constant:4.0];
    v23[2] = v10;
    v11 = [(UIImageView *)v3->_iconImageView bottomAnchor];
    v12 = [(PRWidgetSuggestionCell *)v3 contentView];
    v13 = [v12 bottomAnchor];
    v14 = [v11 constraintEqualToAnchor:v13 constant:4.0];
    v23[3] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];
    [v17 activateConstraints:v15];
  }

  return v3;
}

- (void)setWidgetWrapperViewController:(id)a3
{
  v32[4] = *MEMORY[0x1E69E9840];
  v5 = a3;
  widgetWrapperViewController = self->_widgetWrapperViewController;
  if (widgetWrapperViewController != v5)
  {
    v7 = [(SBHWidgetWrapperViewController *)widgetWrapperViewController view];
    v8 = [v7 isDescendantOfView:self];

    if (v8)
    {
      v9 = [(SBHWidgetWrapperViewController *)self->_widgetWrapperViewController parentViewController];
      [v9 bs_removeChildViewController:self->_widgetWrapperViewController];
    }

    objc_storeStrong(&self->_widgetWrapperViewController, a3);
    v10 = self->_widgetWrapperViewController;
    if (v10)
    {
      v11 = [(SBHWidgetWrapperViewController *)v10 view];
      [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
      v12 = [(PRWidgetSuggestionCell *)self contentView];
      v13 = [(PRWidgetSuggestionCell *)self iconImageView];
      [v12 insertSubview:v11 belowSubview:v13];

      v24 = MEMORY[0x1E696ACD8];
      v30 = [v11 leadingAnchor];
      v31 = [(PRWidgetSuggestionCell *)self contentView];
      v29 = [v31 leadingAnchor];
      v28 = [v30 constraintEqualToAnchor:v29];
      v32[0] = v28;
      v26 = [v11 trailingAnchor];
      v27 = [(PRWidgetSuggestionCell *)self contentView];
      v25 = [v27 trailingAnchor];
      v23 = [v26 constraintEqualToAnchor:v25];
      v32[1] = v23;
      v22 = [v11 topAnchor];
      v14 = [(PRWidgetSuggestionCell *)self contentView];
      v15 = [v14 topAnchor];
      v16 = [v22 constraintEqualToAnchor:v15];
      v32[2] = v16;
      v17 = [v11 bottomAnchor];
      v18 = [(PRWidgetSuggestionCell *)self contentView];
      v19 = [v18 bottomAnchor];
      v20 = [v17 constraintEqualToAnchor:v19];
      v32[3] = v20;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:4];
      [v24 activateConstraints:v21];
    }
  }
}

- (void)setIconImage:(id)a3
{
  [(UIImageView *)self->_iconImageView setImage:?];
  iconImageView = self->_iconImageView;

  [(UIImageView *)iconImageView setHidden:a3 == 0];
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