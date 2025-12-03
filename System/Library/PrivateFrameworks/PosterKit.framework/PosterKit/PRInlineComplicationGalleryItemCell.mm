@interface PRInlineComplicationGalleryItemCell
- (BOOL)showsCheckmark;
- (PRInlineComplicationGalleryItemCell)initWithFrame:(CGRect)frame;
- (void)_updateConstraintsForIconVisibility;
- (void)prepareForReuse;
- (void)setContentViewController:(id)controller;
- (void)setIconImage:(id)image;
- (void)setShowsCheckmark:(BOOL)checkmark;
@end

@implementation PRInlineComplicationGalleryItemCell

- (PRInlineComplicationGalleryItemCell)initWithFrame:(CGRect)frame
{
  v45[2] = *MEMORY[0x1E69E9840];
  v41.receiver = self;
  v41.super_class = PRInlineComplicationGalleryItemCell;
  v3 = [(PRInlineComplicationGalleryItemCell *)&v41 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
    widgetContainerView = v3->_widgetContainerView;
    v3->_widgetContainerView = v4;

    v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    label = v3->_label;
    v3->_label = v6;

    v8 = v3->_label;
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)v8 setTextColor:whiteColor];

    v10 = v3->_label;
    v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
    [(UILabel *)v10 setFont:v11];

    [(UILabel *)v3->_label setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v3->_label setAlpha:0.6];
    v12 = objc_alloc(MEMORY[0x1E69DCF90]);
    v45[0] = v3->_widgetContainerView;
    v45[1] = v3->_label;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2];
    v14 = [v12 initWithArrangedSubviews:v13];

    [v14 setAxis:1];
    v15 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    iconImageView = v3->_iconImageView;
    v3->_iconImageView = v15;

    [(UIImageView *)v3->_iconImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = MEMORY[0x1E696ACD8];
    widthAnchor = [(UIImageView *)v3->_iconImageView widthAnchor];
    v19 = [widthAnchor constraintEqualToConstant:30.0];
    v44[0] = v19;
    heightAnchor = [(UIImageView *)v3->_iconImageView heightAnchor];
    v21 = [heightAnchor constraintEqualToConstant:30.0];
    v44[1] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];
    [v17 activateConstraints:v22];

    v23 = objc_alloc(MEMORY[0x1E69DCF90]);
    v43[0] = v3->_iconImageView;
    v43[1] = v14;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:2];
    v25 = [v23 initWithArrangedSubviews:v24];
    horizontalStackView = v3->_horizontalStackView;
    v3->_horizontalStackView = v25;

    [(UIStackView *)v3->_horizontalStackView setSpacing:12.0];
    [(UIStackView *)v3->_horizontalStackView setAlignment:3];
    [(UIStackView *)v3->_horizontalStackView setUserInteractionEnabled:0];
    contentView = [(PRInlineComplicationGalleryItemCell *)v3 contentView];
    [contentView addSubview:v3->_horizontalStackView];

    [(UIStackView *)v3->_horizontalStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    v28 = MEMORY[0x1E696ACD8];
    separatorLayoutGuide = [(PRInlineComplicationGalleryItemCell *)v3 separatorLayoutGuide];
    leadingAnchor = [separatorLayoutGuide leadingAnchor];
    leadingAnchor2 = [v14 leadingAnchor];
    v32 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v42 = v32;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
    [v28 activateConstraints:v33];

    [(PRInlineComplicationGalleryItemCell *)v3 _updateConstraintsForIconVisibility];
    v34 = objc_alloc_init(MEMORY[0x1E69DC788]);
    checkmarkAccessory = v3->_checkmarkAccessory;
    v3->_checkmarkAccessory = v34;

    v36 = v3->_checkmarkAccessory;
    whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
    [(UICellAccessory *)v36 setTintColor:whiteColor2];

    listCellConfiguration = [MEMORY[0x1E69DC6E8] listCellConfiguration];
    v39 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.1];
    [listCellConfiguration setBackgroundColor:v39];

    [(PRInlineComplicationGalleryItemCell *)v3 setBackgroundConfiguration:listCellConfiguration];
  }

  return v3;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = PRInlineComplicationGalleryItemCell;
  [(PRInlineComplicationGalleryItemCell *)&v3 prepareForReuse];
  [(PRInlineComplicationGalleryItemCell *)self setContentViewController:0];
}

- (void)setIconImage:(id)image
{
  [(UIImageView *)self->_iconImageView setImage:?];
  [(UIImageView *)self->_iconImageView setHidden:image == 0];

  [(PRInlineComplicationGalleryItemCell *)self _updateConstraintsForIconVisibility];
}

- (void)_updateConstraintsForIconVisibility
{
  v23[4] = *MEMORY[0x1E69E9840];
  image = [(UIImageView *)self->_iconImageView image];

  if (self->_stackViewConstraints)
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:?];
  }

  if (image)
  {
    v4 = 14.0;
  }

  else
  {
    v4 = 8.0;
  }

  leadingAnchor = [(UIStackView *)self->_horizontalStackView leadingAnchor];
  contentView = [(PRInlineComplicationGalleryItemCell *)self contentView];
  leadingAnchor2 = [contentView leadingAnchor];
  v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v23[0] = v19;
  trailingAnchor = [(UIStackView *)self->_horizontalStackView trailingAnchor];
  contentView2 = [(PRInlineComplicationGalleryItemCell *)self contentView];
  trailingAnchor2 = [contentView2 trailingAnchor];
  v15 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2 constant:-8.0];
  v23[1] = v15;
  topAnchor = [(UIStackView *)self->_horizontalStackView topAnchor];
  contentView3 = [(PRInlineComplicationGalleryItemCell *)self contentView];
  topAnchor2 = [contentView3 topAnchor];
  v8 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v4];
  v23[2] = v8;
  bottomAnchor = [(UIStackView *)self->_horizontalStackView bottomAnchor];
  contentView4 = [(PRInlineComplicationGalleryItemCell *)self contentView];
  bottomAnchor2 = [contentView4 bottomAnchor];
  v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-v4];
  v23[3] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];
  stackViewConstraints = self->_stackViewConstraints;
  self->_stackViewConstraints = v13;

  [MEMORY[0x1E696ACD8] activateConstraints:self->_stackViewConstraints];
}

- (void)setContentViewController:(id)controller
{
  v29[5] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  contentViewController = self->_contentViewController;
  if (contentViewController != controllerCopy)
  {
    view = [(UIViewController *)contentViewController view];
    contentView = [(PRInlineComplicationGalleryItemCell *)self contentView];
    v9 = [view isDescendantOfView:contentView];

    if (v9)
    {
      parentViewController = [(UIViewController *)self->_contentViewController parentViewController];
      [parentViewController bs_removeChildViewController:self->_contentViewController];
    }

    objc_storeStrong(&self->_contentViewController, controller);
    v11 = self->_contentViewController;
    if (v11)
    {
      view2 = [(UIViewController *)v11 view];
      [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIView *)self->_widgetContainerView addSubview:view2];
      v23 = MEMORY[0x1E696ACD8];
      heightAnchor = [view2 heightAnchor];
      v27 = [heightAnchor constraintEqualToConstant:26.0];
      v29[0] = v27;
      leadingAnchor = [view2 leadingAnchor];
      leadingAnchor2 = [(UIView *)self->_widgetContainerView leadingAnchor];
      v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v29[1] = v24;
      trailingAnchor = [view2 trailingAnchor];
      trailingAnchor2 = [(UIView *)self->_widgetContainerView trailingAnchor];
      v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v29[2] = v13;
      topAnchor = [view2 topAnchor];
      topAnchor2 = [(UIView *)self->_widgetContainerView topAnchor];
      v16 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v29[3] = v16;
      bottomAnchor = [view2 bottomAnchor];
      bottomAnchor2 = [(UIView *)self->_widgetContainerView bottomAnchor];
      v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v29[4] = v19;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:5];
      [v23 activateConstraints:v20];
    }
  }
}

- (BOOL)showsCheckmark
{
  selfCopy = self;
  accessories = [(PRInlineComplicationGalleryItemCell *)self accessories];
  LOBYTE(selfCopy) = [accessories containsObject:selfCopy->_checkmarkAccessory];

  return selfCopy;
}

- (void)setShowsCheckmark:(BOOL)checkmark
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (checkmark)
  {
    v6[0] = self->_checkmarkAccessory;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
    [(PRInlineComplicationGalleryItemCell *)self setAccessories:v4];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];

    [(PRInlineComplicationGalleryItemCell *)self setAccessories:v5];
  }
}

@end