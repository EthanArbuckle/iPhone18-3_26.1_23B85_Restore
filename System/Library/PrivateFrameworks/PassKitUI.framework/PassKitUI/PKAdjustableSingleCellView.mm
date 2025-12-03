@interface PKAdjustableSingleCellView
- (CGSize)_layoutWithBounds:(CGRect)bounds;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKAdjustableSingleCellView)init;
- (PKAdjustableSingleCellView)initWithFrame:(CGRect)frame;
- (id)_detailFont;
- (id)_smallerDetailFont;
- (void)_actionButtonTapped:(id)tapped;
- (void)_applyStyles;
- (void)_performInit;
- (void)_setupViews;
- (void)_updateContent:(BOOL)content;
- (void)endUpdates:(BOOL)updates;
- (void)layoutIfNeededAnimated:(BOOL)animated;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAction:(id)action;
- (void)setActionHandler:(id)handler;
- (void)setDetail:(id)detail;
- (void)setDetailColor:(id)color;
- (void)setDetailLineBreakMode:(int64_t)mode;
- (void)setEnableDisclosure:(BOOL)disclosure;
- (void)setPass:(id)pass;
- (void)setSubDetail:(id)detail;
- (void)setSubDetailColor:(id)color;
- (void)setSubDetailLineBreakMode:(int64_t)mode;
- (void)setTitle:(id)title;
- (void)setTitleColor:(id)color;
- (void)setTitleLineBreakMode:(int64_t)mode;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PKAdjustableSingleCellView

- (PKAdjustableSingleCellView)init
{
  v5.receiver = self;
  v5.super_class = PKAdjustableSingleCellView;
  v2 = [(PKAdjustableSingleCellView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PKAdjustableSingleCellView *)v2 _performInit];
  }

  return v3;
}

- (PKAdjustableSingleCellView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PKAdjustableSingleCellView;
  v3 = [(PKAdjustableSingleCellView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PKAdjustableSingleCellView *)v3 _performInit];
  }

  return v4;
}

- (void)prepareForReuse
{
  [(UILabel *)self->_titleView setText:0];
  [(UILabel *)self->_detailView setText:0];
  [(UILabel *)self->_subDetailView setText:0];
  [(PKContinuousButton *)self->_actionButton setAlpha:0.0];
  disclosureView = self->_disclosureView;

  [(UIImageView *)disclosureView setAlpha:0.0];
}

- (void)_performInit
{
  self->_isTemplateLayout = 0;
  self->_deferUpdateCounter = 0;
  self->_animated = 0;
  [(PKAdjustableSingleCellView *)self _setupViews];
  [(PKAdjustableSingleCellView *)self _applyStyles];
  v3 = *MEMORY[0x1E69B9428];

  [(PKAdjustableSingleCellView *)self setAccessibilityIdentifier:v3];
}

- (void)_setupViews
{
  secondarySystemGroupedBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  [(UIView *)self pkui_setMaskType:3];
  v4 = objc_alloc(MEMORY[0x1E69DCC10]);
  v5 = *MEMORY[0x1E695F058];
  v6 = *(MEMORY[0x1E695F058] + 8);
  v7 = *(MEMORY[0x1E695F058] + 16);
  v8 = *(MEMORY[0x1E695F058] + 24);
  v9 = [v4 initWithFrame:{*MEMORY[0x1E695F058], v6, v7, v8}];
  titleView = self->_titleView;
  self->_titleView = v9;

  [(UILabel *)self->_titleView setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
  v11 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v5, v6, v7, v8}];
  detailView = self->_detailView;
  self->_detailView = v11;

  [(UILabel *)self->_detailView setAccessibilityIdentifier:*MEMORY[0x1E69B96F8]];
  v13 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v5, v6, v7, v8}];
  subDetailView = self->_subDetailView;
  self->_subDetailView = v13;

  [(UILabel *)self->_subDetailView setAccessibilityIdentifier:*MEMORY[0x1E69B9CC8]];
  v23 = 0;
  v24 = vdupq_n_s64(2uLL);
  v25 = v24;
  v15 = [[PKContinuousButton alloc] initWithConfiguration:&v23];
  actionButton = self->_actionButton;
  self->_actionButton = v15;

  [(PKContinuousButton *)self->_actionButton addTarget:self action:sel__actionButtonTapped_ forControlEvents:64];
  [(PKContinuousButton *)self->_actionButton setAlpha:0.0];
  [(PKContinuousButton *)self->_actionButton setAccessibilityIdentifier:*MEMORY[0x1E69B93D0]];
  v17 = objc_alloc(MEMORY[0x1E69DCAE0]);
  if (_UISolariumFeatureFlagEnabled())
  {
    PKUISmallChevronImage();
  }

  else
  {
    PKUIChevronImage();
  }
  v18 = ;
  v19 = [v17 initWithImage:v18];
  disclosureView = self->_disclosureView;
  self->_disclosureView = v19;

  v21 = self->_disclosureView;
  tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
  [(UIImageView *)v21 setTintColor:tertiaryLabelColor];

  [(UIImageView *)self->_disclosureView setAlpha:0.0];
  [(PKAdjustableSingleCellView *)self addSubview:self->_titleView];
  [(PKAdjustableSingleCellView *)self addSubview:self->_detailView];
  [(PKAdjustableSingleCellView *)self addSubview:self->_subDetailView];
  [(PKAdjustableSingleCellView *)self addSubview:self->_actionButton];
  [(PKAdjustableSingleCellView *)self addSubview:self->_disclosureView];
  [(PKAdjustableSingleCellView *)self setBackgroundColor:secondarySystemGroupedBackgroundColor];
}

- (id)_detailFont
{
  detailView = self->_detailView;
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [(UILabel *)detailView setTextColor:labelColor];

  v4 = *MEMORY[0x1E69DB8D8];
  v5 = *MEMORY[0x1E69DDDB8];
  v6 = *MEMORY[0x1E69DDC28];
  v7 = *MEMORY[0x1E69DB958];

  return PKFontForDesign(v4, v5, v6, 2, 0, v7);
}

- (id)_smallerDetailFont
{
  detailView = self->_detailView;
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [(UILabel *)detailView setTextColor:labelColor];

  v4 = *MEMORY[0x1E69DB8D8];
  v5 = *MEMORY[0x1E69DDDC0];
  v6 = *MEMORY[0x1E69DDC28];
  v7 = *MEMORY[0x1E69DB958];

  return PKFontForDesign(v4, v5, v6, 2, 0, v7);
}

- (void)_applyStyles
{
  [(PKContinuousButton *)self->_actionButton setContentEdgeInsets:10.0, 16.0, 10.0, 16.0];
  titleLabel = [(PKContinuousButton *)self->_actionButton titleLabel];
  [titleLabel setTextAlignment:1];
  v3 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC50], 2, 0);
  [titleLabel setFont:v3];

  [titleLabel setAdjustsFontSizeToFitWidth:1];
  [(PKAdjustableSingleCellView *)self setNeedsLayout];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  self->_isTemplateLayout = 1;
  [(PKAdjustableSingleCellView *)self _layoutWithBounds:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), fits.width, fits.height];
  self->_isTemplateLayout = 0;
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKAdjustableSingleCellView;
  [(PKAdjustableSingleCellView *)&v3 layoutSubviews];
  [(PKAdjustableSingleCellView *)self bounds];
  [(PKAdjustableSingleCellView *)self _layoutWithBounds:?];
}

- (CGSize)_layoutWithBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v70[1] = *MEMORY[0x1E69E9840];
  traitCollection = [(PKAdjustableSingleCellView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  v11 = _UISolariumFeatureFlagEnabled();
  v12 = _UISolariumFeatureFlagEnabled();
  if (v11)
  {
    v13 = 16.0;
  }

  else
  {
    v13 = 10.0;
  }

  v14 = 32.0;
  if (!v11)
  {
    v14 = 20.0;
  }

  if (v12)
  {
    v15 = 12.0;
  }

  else
  {
    v15 = 10.0;
  }

  v16 = x + v13;
  v17 = y + v15;
  v18 = width - v14;
  v19 = 24.0;
  if (!v12)
  {
    v19 = 20.0;
  }

  v20 = height - v19;
  if ([(PKAdjustableSingleCellView *)self _shouldReverseLayoutDirection])
  {
    v21 = CGRectMinXEdge;
  }

  else
  {
    v21 = CGRectMaxXEdge;
  }

  remainder.origin.x = v16;
  remainder.origin.y = v17;
  remainder.size.width = v18;
  remainder.size.height = v20;
  titleView = self->_titleView;
  _titleFont = [(PKAdjustableSingleCellView *)self _titleFont];
  [(UILabel *)titleView setFont:_titleFont];

  detailView = self->_detailView;
  _detailFont = [(PKAdjustableSingleCellView *)self _detailFont];
  [(UILabel *)detailView setFont:_detailFont];

  subDetailView = self->_subDetailView;
  _subDetailFont = [(PKAdjustableSingleCellView *)self _subDetailFont];
  [(UILabel *)subDetailView setFont:_subDetailFont];

  if (IsAccessibilityCategory)
  {
    v28 = 0;
  }

  else
  {
    v28 = 4;
  }

  self->_titleLineBreakMode = v28;
  [(UILabel *)self->_titleView setNumberOfLines:!IsAccessibilityCategory];
  self->_detailLineBreakMode = v28;
  [(UILabel *)self->_detailView setNumberOfLines:!IsAccessibilityCategory];
  self->_subDetailLineBreakMode = v28;
  [(UILabel *)self->_subDetailView setNumberOfLines:!IsAccessibilityCategory];
  memset(&slice, 0, sizeof(slice));
  [(UIImageView *)self->_disclosureView alpha];
  if (v29 > 0.0)
  {
    [(UIImageView *)self->_disclosureView sizeThatFits:v18, v20];
    v31 = v30;
    v72.origin.x = v16;
    v72.origin.y = v17;
    v72.size.width = v18;
    v72.size.height = v20;
    CGRectDivide(v72, &slice, &remainder, v31, v21);
    if (!self->_isTemplateLayout)
    {
      disclosureView = self->_disclosureView;
      PKSizeAlignedInRect();
      [(UIImageView *)disclosureView setFrame:?];
    }

    CGRectDivide(remainder, &slice, &remainder, v13, v21);
  }

  v33 = v15 + v15;
  [(PKContinuousButton *)self->_actionButton alpha];
  if (v34 > 0.0)
  {
    [(PKContinuousButton *)self->_actionButton sizeThatFits:remainder.size.width, remainder.size.height];
    if (IsAccessibilityCategory)
    {
      CGRectDivide(remainder, &slice, &remainder, v35, CGRectMaxYEdge);
      if (!self->_isTemplateLayout)
      {
        actionButton = self->_actionButton;
        PKSizeAlignedInRect();
        [(PKContinuousButton *)actionButton setFrame:?];
      }

      CGRectDivide(remainder, &slice, &remainder, v15, CGRectMaxYEdge);
      PKFloatRoundToPixel();
      v33 = v33 + v37;
    }

    else
    {
      PKSizeRoundToPixel();
      CGRectDivide(remainder, &slice, &remainder, v38 + 16.0, v21);
      if (!self->_isTemplateLayout)
      {
        v39 = self->_actionButton;
        PKContentAlignmentMake();
        PKSizeAlignedInRect();
        [(PKContinuousButton *)v39 setFrame:?];
      }
    }
  }

  [(UILabel *)self->_titleView sizeThatFits:remainder.size.width, 1.79769313e308];
  v41 = v40;
  CGRectDivide(remainder, &slice, &remainder, v40, CGRectMinYEdge);
  if (!self->_isTemplateLayout)
  {
    [(UILabel *)self->_titleView setFrame:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
  }

  if (!IsAccessibilityCategory)
  {
    detail = self->_detail;
    _detailFont2 = [(PKAdjustableSingleCellView *)self _detailFont];
    v44 = remainder.size.width;
    v45 = detail;
    v46 = _detailFont2;
    v47 = v45;
    v48 = v47;
    if (v47 && (v49 = [(NSString *)v47 length], v48, v49))
    {
      v50 = objc_alloc(MEMORY[0x1E696AAB0]);
      v69 = *MEMORY[0x1E69DB648];
      v70[0] = v46;
      v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v70 forKeys:&v69 count:1];
      v52 = [v50 initWithString:v48 attributes:v51];

      [v52 pkui_sizeThatFits:1 withNumberOfLines:0 forceWordWrap:{v44, 1.79769313e308}];
      v54 = v53;
      [v52 pkui_sizeThatFits:2 withNumberOfLines:1 forceWordWrap:?];
      v56 = v55;

      if (v56 > v54)
      {
        v57 = self->_detailView;
        _smallerDetailFont = [(PKAdjustableSingleCellView *)self _smallerDetailFont];
        [(UILabel *)v57 setFont:_smallerDetailFont];

        if (![(NSString *)self->_title length])
        {
          [(UILabel *)self->_detailView setNumberOfLines:2];
          self->_detailLineBreakMode = 0;
        }
      }
    }

    else
    {
    }
  }

  v59 = v33 + v41;
  [(UILabel *)self->_detailView sizeThatFits:remainder.size.width, 1.79769313e308];
  v61 = v60;
  CGRectDivide(remainder, &slice, &remainder, v60, CGRectMinYEdge);
  if (!self->_isTemplateLayout)
  {
    [(UILabel *)self->_detailView setFrame:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
  }

  v62 = v59 + v61;
  if ([(PKAdjustableSingleCellView *)self _needsThirdLine])
  {
    [(UILabel *)self->_subDetailView sizeThatFits:remainder.size.width, 1.79769313e308];
    v64 = v63;
    CGRectDivide(remainder, &slice, &remainder, v63, CGRectMinYEdge);
    if (!self->_isTemplateLayout)
    {
      [(UILabel *)self->_subDetailView setFrame:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
    }

    v62 = v62 + v64;
    CGRectDivide(remainder, &slice, &remainder, v15, CGRectMinYEdge);
  }

  v65 = width;
  v66 = v62;
  result.height = v66;
  result.width = v65;
  return result;
}

- (void)_actionButtonTapped:(id)tapped
{
  actionHandler = self->_actionHandler;
  if (actionHandler)
  {
    actionHandler[2](actionHandler, self, self->_action);
  }
}

- (void)setEnableDisclosure:(BOOL)disclosure
{
  if (self->_enableDisclosure != disclosure)
  {
    self->_enableDisclosure = disclosure;
  }
}

- (void)setAction:(id)action
{
  actionCopy = action;
  if (!actionCopy)
  {
    [(PKContinuousButton *)self->_actionButton setAlpha:0.0];
  }

  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_action, action);
  }
}

- (void)setActionHandler:(id)handler
{
  aBlock = handler;
  if (!aBlock)
  {
    [(PKContinuousButton *)self->_actionButton setAlpha:0.0];
  }

  v4 = _Block_copy(self->_actionHandler);
  v5 = _Block_copy(aBlock);
  v6 = PKEqualObjects();

  if ((v6 & 1) == 0)
  {
    v7 = [aBlock copy];
    actionHandler = self->_actionHandler;
    self->_actionHandler = v7;
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  title = self->_title;
  v6 = titleCopy;
  v10 = v6;
  if (title == v6)
  {

LABEL_9:
    v8 = v10;
    goto LABEL_10;
  }

  if (!v6 || !title)
  {

    v8 = v10;
    goto LABEL_8;
  }

  v7 = [(NSString *)title isEqualToString:v6];

  v8 = v10;
  if (!v7)
  {
LABEL_8:
    v9 = v8;
    title = self->_title;
    self->_title = v9;
    goto LABEL_9;
  }

LABEL_10:
}

- (void)setDetail:(id)detail
{
  detailCopy = detail;
  detail = self->_detail;
  v6 = detailCopy;
  v10 = v6;
  if (detail == v6)
  {

LABEL_9:
    v8 = v10;
    goto LABEL_10;
  }

  if (!v6 || !detail)
  {

    v8 = v10;
    goto LABEL_8;
  }

  v7 = [(NSString *)detail isEqualToString:v6];

  v8 = v10;
  if (!v7)
  {
LABEL_8:
    v9 = v8;
    detail = self->_detail;
    self->_detail = v9;
    goto LABEL_9;
  }

LABEL_10:
}

- (void)setSubDetail:(id)detail
{
  detailCopy = detail;
  subDetail = self->_subDetail;
  v6 = detailCopy;
  v10 = v6;
  if (subDetail == v6)
  {

LABEL_9:
    v8 = v10;
    goto LABEL_10;
  }

  if (!v6 || !subDetail)
  {

    v8 = v10;
    goto LABEL_8;
  }

  v7 = [(NSString *)subDetail isEqualToString:v6];

  v8 = v10;
  if (!v7)
  {
LABEL_8:
    v9 = v8;
    subDetail = self->_subDetail;
    self->_subDetail = v9;
    goto LABEL_9;
  }

LABEL_10:
}

- (void)setPass:(id)pass
{
  passCopy = pass;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_pass, pass);
  }
}

- (void)setTitleColor:(id)color
{
  colorCopy = color;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_titleColor, color);
  }
}

- (void)setDetailColor:(id)color
{
  colorCopy = color;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_detailColor, color);
  }
}

- (void)setSubDetailColor:(id)color
{
  colorCopy = color;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_subDetailColor, color);
  }
}

- (void)setTitleLineBreakMode:(int64_t)mode
{
  if (self->_titleLineBreakMode != mode)
  {
    self->_titleLineBreakMode = mode;
  }
}

- (void)setDetailLineBreakMode:(int64_t)mode
{
  if (self->_detailLineBreakMode != mode)
  {
    self->_detailLineBreakMode = mode;
  }
}

- (void)setSubDetailLineBreakMode:(int64_t)mode
{
  if (self->_subDetailLineBreakMode != mode)
  {
    self->_subDetailLineBreakMode = mode;
  }
}

- (void)layoutIfNeededAnimated:(BOOL)animated
{
  self->_animated = animated;
  [(PKAdjustableSingleCellView *)self layoutIfNeeded];
  self->_animated = 0;
}

- (void)endUpdates:(BOOL)updates
{
  v3 = self->_deferUpdateCounter - 1;
  self->_deferUpdateCounter = v3;
  if (!v3)
  {
    [(PKAdjustableSingleCellView *)self _updateContent:updates];
  }
}

- (void)_updateContent:(BOOL)content
{
  if (!self->_deferUpdateCounter)
  {
    contentCopy = content;
    [(PKAdjustableSingleCellView *)self _applyStyles];
    actionButton = self->_actionButton;
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(PKContinuousButton *)actionButton setTintColor:labelColor];

    v7 = self->_actionButton;
    backgroundColor = [(PKAdjustableSingleCellView *)self backgroundColor];
    [(PKContinuousButton *)v7 updateTitleColorWithColor:backgroundColor];

    pass = [(PKAdjustableSingleCellView *)self pass];
    activationState = [pass activationState];

    if (self->_action)
    {
      v11 = activationState == 0;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      [(PKAdjustableSingleCellView *)self bringSubviewToFront:self->_actionButton];
      [(PKContinuousButton *)self->_actionButton setEnabled:1];
      v14 = self->_actionButton;
      title = [(PKPaymentPassAction *)self->_action title];
      [(PKContinuousButton *)v14 setTitle:title forState:0];

      disclosureView = self->_actionButton;
      enableDisclosure = 1;
    }

    else
    {
      __45__PKAdjustableSingleCellView__updateContent___block_invoke(self->_actionButton, 0, contentCopy);
      disclosureView = self->_disclosureView;
      enableDisclosure = self->_enableDisclosure;
    }

    __45__PKAdjustableSingleCellView__updateContent___block_invoke(disclosureView, enableDisclosure, contentCopy);
    titleView = self->_titleView;
    title = self->_title;
    titleColor = self->_titleColor;
    labelColor2 = titleColor;
    if (!titleColor)
    {
      labelColor2 = [MEMORY[0x1E69DC888] labelColor];
    }

    if (self->_titleLineBreakMode)
    {
      titleLineBreakMode = self->_titleLineBreakMode;
    }

    else
    {
      titleLineBreakMode = 4;
    }

    __45__PKAdjustableSingleCellView__updateContent___block_invoke_2(titleView, title, labelColor2, titleLineBreakMode, contentCopy);
    if (!titleColor)
    {
    }

    detailView = self->_detailView;
    detail = self->_detail;
    detailColor = self->_detailColor;
    labelColor3 = detailColor;
    if (!detailColor)
    {
      labelColor3 = [MEMORY[0x1E69DC888] labelColor];
    }

    if (self->_detailLineBreakMode)
    {
      detailLineBreakMode = self->_detailLineBreakMode;
    }

    else
    {
      detailLineBreakMode = 4;
    }

    __45__PKAdjustableSingleCellView__updateContent___block_invoke_2(detailView, detail, labelColor3, detailLineBreakMode, contentCopy);
    if (!detailColor)
    {
    }

    subDetailView = self->_subDetailView;
    subDetail = self->_subDetail;
    subDetailColor = self->_subDetailColor;
    secondaryLabelColor = subDetailColor;
    if (!subDetailColor)
    {
      secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    }

    if (self->_subDetailLineBreakMode)
    {
      subDetailLineBreakMode = self->_subDetailLineBreakMode;
    }

    else
    {
      subDetailLineBreakMode = 4;
    }

    __45__PKAdjustableSingleCellView__updateContent___block_invoke_2(subDetailView, subDetail, secondaryLabelColor, subDetailLineBreakMode, contentCopy);
    if (!subDetailColor)
    {
    }

    [(PKAdjustableSingleCellView *)self setNeedsLayout];
    if (contentCopy)
    {

      [(PKAdjustableSingleCellView *)self layoutIfNeededAnimated:1];
    }
  }
}

void __45__PKAdjustableSingleCellView__updateContent___block_invoke(void *a1, unsigned int a2, int a3)
{
  v10 = a1;
  [v10 alpha];
  if (v5 != a2)
  {
    v6 = v5;
    [v10 setAlpha:a2];
    if (a3)
    {
      v7 = [MEMORY[0x1E69B92B0] springAnimationWithKeyPath:@"opacity"];
      [v7 pkui_updateForAdditiveAnimationFromScalar:v6 toScalar:a2];
      v8 = [v10 layer];
      v9 = [v8 pkui_addAdditiveAnimation:v7];
    }
  }
}

void __45__PKAdjustableSingleCellView__updateContent___block_invoke_2(void *a1, uint64_t a2, void *a3, uint64_t a4, int a5)
{
  v9 = a1;
  if (v9)
  {
    if (a3)
    {
      v19 = v9;
      v10 = a3;
      [v19 setText:a2];
      [v19 setTextColor:v10];

      [v19 setLineBreakMode:a4];
      v9 = v19;
      if (a5)
      {
        v11 = [v19 layer];
        v12 = v11;
        if (a2)
        {
          v13 = 1.0;
        }

        else
        {
          v13 = 0.0;
        }

        [v11 opacity];
        v15 = v14;
        if (v13 != v14)
        {
          v16 = [MEMORY[0x1E69B92B0] springAnimationWithKeyPath:@"opacity"];
          [v16 pkui_updateForAdditiveAnimationFromScalar:v15 toScalar:v13];
          v17 = [v12 pkui_addAdditiveAnimation:v16];

          v18 = 0.0;
          if (a2)
          {
            *&v18 = 1.0;
          }

          [v12 setOpacity:v18];
        }

        v9 = v19;
      }
    }
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v12.receiver = self;
  v12.super_class = PKAdjustableSingleCellView;
  [(PKAdjustableSingleCellView *)&v12 traitCollectionDidChange:changeCopy];
  traitCollection = [(PKAdjustableSingleCellView *)self traitCollection];
  v6 = traitCollection;
  if (changeCopy)
  {
    if (traitCollection)
    {
      preferredContentSizeCategory = [changeCopy preferredContentSizeCategory];
      preferredContentSizeCategory2 = [v6 preferredContentSizeCategory];
      v9 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, preferredContentSizeCategory2);

      if (v9)
      {
        preferredContentSizeCategory3 = [changeCopy preferredContentSizeCategory];
        v11 = *MEMORY[0x1E69DDC90];

        if (preferredContentSizeCategory3 != v11)
        {
          [(PKAdjustableSingleCellView *)self _updateContent:0];
        }
      }
    }
  }
}

@end