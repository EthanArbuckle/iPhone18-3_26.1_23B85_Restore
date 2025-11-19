@interface PRInlineComplicationGalleryItemCell
- (BOOL)showsCheckmark;
- (PRInlineComplicationGalleryItemCell)initWithFrame:(CGRect)a3;
- (void)_updateConstraintsForIconVisibility;
- (void)prepareForReuse;
- (void)setContentViewController:(id)a3;
- (void)setIconImage:(id)a3;
- (void)setShowsCheckmark:(BOOL)a3;
@end

@implementation PRInlineComplicationGalleryItemCell

- (PRInlineComplicationGalleryItemCell)initWithFrame:(CGRect)a3
{
  v45[2] = *MEMORY[0x1E69E9840];
  v41.receiver = self;
  v41.super_class = PRInlineComplicationGalleryItemCell;
  v3 = [(PRInlineComplicationGalleryItemCell *)&v41 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
    widgetContainerView = v3->_widgetContainerView;
    v3->_widgetContainerView = v4;

    v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    label = v3->_label;
    v3->_label = v6;

    v8 = v3->_label;
    v9 = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)v8 setTextColor:v9];

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
    v18 = [(UIImageView *)v3->_iconImageView widthAnchor];
    v19 = [v18 constraintEqualToConstant:30.0];
    v44[0] = v19;
    v20 = [(UIImageView *)v3->_iconImageView heightAnchor];
    v21 = [v20 constraintEqualToConstant:30.0];
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
    v27 = [(PRInlineComplicationGalleryItemCell *)v3 contentView];
    [v27 addSubview:v3->_horizontalStackView];

    [(UIStackView *)v3->_horizontalStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    v28 = MEMORY[0x1E696ACD8];
    v29 = [(PRInlineComplicationGalleryItemCell *)v3 separatorLayoutGuide];
    v30 = [v29 leadingAnchor];
    v31 = [v14 leadingAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];
    v42 = v32;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
    [v28 activateConstraints:v33];

    [(PRInlineComplicationGalleryItemCell *)v3 _updateConstraintsForIconVisibility];
    v34 = objc_alloc_init(MEMORY[0x1E69DC788]);
    checkmarkAccessory = v3->_checkmarkAccessory;
    v3->_checkmarkAccessory = v34;

    v36 = v3->_checkmarkAccessory;
    v37 = [MEMORY[0x1E69DC888] whiteColor];
    [(UICellAccessory *)v36 setTintColor:v37];

    v38 = [MEMORY[0x1E69DC6E8] listCellConfiguration];
    v39 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.1];
    [v38 setBackgroundColor:v39];

    [(PRInlineComplicationGalleryItemCell *)v3 setBackgroundConfiguration:v38];
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

- (void)setIconImage:(id)a3
{
  [(UIImageView *)self->_iconImageView setImage:?];
  [(UIImageView *)self->_iconImageView setHidden:a3 == 0];

  [(PRInlineComplicationGalleryItemCell *)self _updateConstraintsForIconVisibility];
}

- (void)_updateConstraintsForIconVisibility
{
  v23[4] = *MEMORY[0x1E69E9840];
  v3 = [(UIImageView *)self->_iconImageView image];

  if (self->_stackViewConstraints)
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:?];
  }

  if (v3)
  {
    v4 = 14.0;
  }

  else
  {
    v4 = 8.0;
  }

  v21 = [(UIStackView *)self->_horizontalStackView leadingAnchor];
  v22 = [(PRInlineComplicationGalleryItemCell *)self contentView];
  v20 = [v22 leadingAnchor];
  v19 = [v21 constraintEqualToAnchor:v20 constant:16.0];
  v23[0] = v19;
  v17 = [(UIStackView *)self->_horizontalStackView trailingAnchor];
  v18 = [(PRInlineComplicationGalleryItemCell *)self contentView];
  v16 = [v18 trailingAnchor];
  v15 = [v17 constraintLessThanOrEqualToAnchor:v16 constant:-8.0];
  v23[1] = v15;
  v5 = [(UIStackView *)self->_horizontalStackView topAnchor];
  v6 = [(PRInlineComplicationGalleryItemCell *)self contentView];
  v7 = [v6 topAnchor];
  v8 = [v5 constraintEqualToAnchor:v7 constant:v4];
  v23[2] = v8;
  v9 = [(UIStackView *)self->_horizontalStackView bottomAnchor];
  v10 = [(PRInlineComplicationGalleryItemCell *)self contentView];
  v11 = [v10 bottomAnchor];
  v12 = [v9 constraintEqualToAnchor:v11 constant:-v4];
  v23[3] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];
  stackViewConstraints = self->_stackViewConstraints;
  self->_stackViewConstraints = v13;

  [MEMORY[0x1E696ACD8] activateConstraints:self->_stackViewConstraints];
}

- (void)setContentViewController:(id)a3
{
  v29[5] = *MEMORY[0x1E69E9840];
  v5 = a3;
  contentViewController = self->_contentViewController;
  if (contentViewController != v5)
  {
    v7 = [(UIViewController *)contentViewController view];
    v8 = [(PRInlineComplicationGalleryItemCell *)self contentView];
    v9 = [v7 isDescendantOfView:v8];

    if (v9)
    {
      v10 = [(UIViewController *)self->_contentViewController parentViewController];
      [v10 bs_removeChildViewController:self->_contentViewController];
    }

    objc_storeStrong(&self->_contentViewController, a3);
    v11 = self->_contentViewController;
    if (v11)
    {
      v12 = [(UIViewController *)v11 view];
      [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIView *)self->_widgetContainerView addSubview:v12];
      v23 = MEMORY[0x1E696ACD8];
      v28 = [v12 heightAnchor];
      v27 = [v28 constraintEqualToConstant:26.0];
      v29[0] = v27;
      v26 = [v12 leadingAnchor];
      v25 = [(UIView *)self->_widgetContainerView leadingAnchor];
      v24 = [v26 constraintEqualToAnchor:v25];
      v29[1] = v24;
      v22 = [v12 trailingAnchor];
      v21 = [(UIView *)self->_widgetContainerView trailingAnchor];
      v13 = [v22 constraintEqualToAnchor:v21];
      v29[2] = v13;
      v14 = [v12 topAnchor];
      v15 = [(UIView *)self->_widgetContainerView topAnchor];
      v16 = [v14 constraintEqualToAnchor:v15];
      v29[3] = v16;
      v17 = [v12 bottomAnchor];
      v18 = [(UIView *)self->_widgetContainerView bottomAnchor];
      v19 = [v17 constraintEqualToAnchor:v18];
      v29[4] = v19;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:5];
      [v23 activateConstraints:v20];
    }
  }
}

- (BOOL)showsCheckmark
{
  v2 = self;
  v3 = [(PRInlineComplicationGalleryItemCell *)self accessories];
  LOBYTE(v2) = [v3 containsObject:v2->_checkmarkAccessory];

  return v2;
}

- (void)setShowsCheckmark:(BOOL)a3
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (a3)
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