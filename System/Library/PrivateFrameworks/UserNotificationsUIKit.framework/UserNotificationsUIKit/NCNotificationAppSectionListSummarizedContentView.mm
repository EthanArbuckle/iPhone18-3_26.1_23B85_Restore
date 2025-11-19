@interface NCNotificationAppSectionListSummarizedContentView
- (CGSize)sizeThatFits:(CGSize)a3;
- (NCNotificationAppSectionListSummarizedContentViewDelegate)delegate;
- (double)_allowedWidthForTextInRect:(CGRect)a3;
- (double)_countBackgroundDimensionInRect:(CGRect)a3;
- (id)_newContentStringLabelForText:(id)a3;
- (unint64_t)_maximumNumberOfLinesForContentText;
- (unint64_t)_maximumNumberOfLinesForTitleText;
- (unint64_t)_numberOfLinesForContentTextInFrame:(CGRect)a3;
- (unint64_t)_numberOfLinesForTitleTextInFrame:(CGRect)a3;
- (void)_configureBackgroundViewIfNecessary;
- (void)_configureShadowForAttachmentView:(id)a3;
- (void)_configureTapGestureRecognizerIfNecessary;
- (void)_layoutAttachmentImageViews;
- (void)_layoutBackgroundView;
- (void)_layoutCountLabel;
- (void)_layoutTitleAndContentStringLabels;
- (void)_layoutTitleLabel;
- (void)_updateTextAttributes;
- (void)_updateTextAttributesForCountLabel;
- (void)_updateTextAttributesForTitleAndContentStringLabels;
- (void)_updateTextAttributesForTitleLabel;
- (void)_visualStylingProviderDidChange:(id)a3 forCategory:(int64_t)a4 outgoingProvider:(id)a5;
- (void)didMoveToWindow;
- (void)handleTap:(id)a3;
- (void)layoutSubviews;
- (void)setAttachmentImageViews:(id)a3;
- (void)setCount:(unint64_t)count;
- (void)setTitle:(id)a3;
- (void)setTitleAndContentStrings:(id)a3;
@end

@implementation NCNotificationAppSectionListSummarizedContentView

- (void)setTitle:(id)a3
{
  v10 = a3;
  v4 = [(UILabel *)self->_titleLabel text];
  v5 = [v4 isEqualToString:v10];

  if ((v5 & 1) == 0)
  {
    titleLabel = self->_titleLabel;
    if (!titleLabel)
    {
      v7 = objc_alloc_init(MEMORY[0x277D756B8]);
      v8 = self->_titleLabel;
      self->_titleLabel = v7;

      [(NCNotificationAppSectionListSummarizedContentView *)self addSubview:self->_titleLabel];
      titleLabel = self->_titleLabel;
    }

    [(UILabel *)titleLabel setText:v10];
    [(NCNotificationAppSectionListSummarizedContentView *)self _updateTextAttributesForTitleLabel];
    v9 = [(NCNotificationListBaseContentView *)self visualStylingProviderForCategory:1];
    [(NCNotificationListBaseContentView *)self _updateVisualStylingOfView:self->_titleLabel style:0 visualStylingProvider:v9 outgoingProvider:0];
    [(NCNotificationAppSectionListSummarizedContentView *)self setNeedsLayout];
  }
}

- (void)setCount:(unint64_t)count
{
  if (self->_count != count)
  {
    self->_count = count;
    countLabel = self->_countLabel;
    if (count)
    {
      if (!countLabel)
      {
        v5 = objc_alloc_init(MEMORY[0x277D75D18]);
        countBackgroundView = self->_countBackgroundView;
        self->_countBackgroundView = v5;

        v7 = [(UIView *)self->_countBackgroundView layer];
        [v7 setCornerCurve:*MEMORY[0x277CDA130]];

        [(NCNotificationAppSectionListSummarizedContentView *)self addSubview:self->_countBackgroundView];
        v8 = self->_countBackgroundView;
        v9 = [MEMORY[0x277D75348] blackColor];
        [(UIView *)v8 setBackgroundColor:v9];

        [(UIView *)self->_countBackgroundView setAlpha:0.25];
        v10 = objc_alloc_init(MEMORY[0x277D756B8]);
        v11 = self->_countLabel;
        self->_countLabel = v10;

        [(UILabel *)self->_countLabel setTextAlignment:1];
        v12 = self->_countLabel;
        v13 = [MEMORY[0x277D75348] systemWhiteColor];
        [(UILabel *)v12 setTextColor:v13];

        [(NCNotificationAppSectionListSummarizedContentView *)self addSubview:self->_countLabel];
        [(NCNotificationAppSectionListSummarizedContentView *)self _updateTextAttributesForCountLabel];
        countLabel = self->_countLabel;
        count = self->_count;
      }

      v14 = MEMORY[0x277CCABB8];
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:count];
      v15 = [v14 localizedStringFromNumber:v18 numberStyle:0];
      [(UILabel *)countLabel setText:v15];
    }

    else if (countLabel)
    {
      [(UILabel *)self->_countLabel removeFromSuperview];
      v16 = self->_countLabel;
      self->_countLabel = 0;

      [(UIView *)self->_countBackgroundView removeFromSuperview];
      v17 = self->_countBackgroundView;
      self->_countBackgroundView = 0;

      [(NCNotificationAppSectionListSummarizedContentView *)self setNeedsLayout];
    }
  }
}

- (void)setTitleAndContentStrings:(id)a3
{
  v4 = a3;
  if (([v4 isEqualToArray:self->_titleAndContentStrings] & 1) == 0)
  {
    [(NSArray *)self->_titleAndContentStringLabels enumerateObjectsUsingBlock:&__block_literal_global_15];
    titleAndContentStringLabels = self->_titleAndContentStringLabels;
    self->_titleAndContentStringLabels = 0;

    if ([v4 count])
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v10 = MEMORY[0x277D85DD0];
      v11 = 3221225472;
      v12 = __79__NCNotificationAppSectionListSummarizedContentView_setTitleAndContentStrings___block_invoke_3;
      v13 = &unk_278371460;
      v14 = self;
      v7 = v6;
      v15 = v7;
      [v4 enumerateObjectsUsingBlock:&v10];
      v8 = self->_titleAndContentStringLabels;
      self->_titleAndContentStringLabels = v7;
      v9 = v7;

      [(NCNotificationAppSectionListSummarizedContentView *)self _updateTextAttributesForTitleAndContentStringLabels:v10];
    }

    [(NCNotificationAppSectionListSummarizedContentView *)self setNeedsLayout];
  }
}

void __79__NCNotificationAppSectionListSummarizedContentView_setTitleAndContentStrings___block_invoke_3(uint64_t a1, void *a2)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 objectAtIndex:0];
  v6 = [v3 _newContentStringLabelForText:v5];

  v7 = *(a1 + 32);
  v8 = [v4 objectAtIndex:1];

  v9 = [v7 _newContentStringLabelForText:v8];
  v10 = *(a1 + 40);
  v12[0] = v6;
  v12[1] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  [v10 addObject:v11];
}

- (void)setAttachmentImageViews:(id)a3
{
  v5 = a3;
  if (([v5 isEqualToArray:self->_attachmentImageViews] & 1) == 0)
  {
    [(NSArray *)self->_attachmentImageViews enumerateObjectsUsingBlock:&__block_literal_global_12_0];
    attachmentImageViews = self->_attachmentImageViews;
    self->_attachmentImageViews = 0;

    [(UIView *)self->_attachmentImageBoundingView removeFromSuperview];
    attachmentImageBoundingView = self->_attachmentImageBoundingView;
    self->_attachmentImageBoundingView = 0;

    if ([v5 count])
    {
      v8 = objc_alloc_init(MEMORY[0x277D75D18]);
      v9 = self->_attachmentImageBoundingView;
      self->_attachmentImageBoundingView = v8;

      [(NCNotificationAppSectionListSummarizedContentView *)self addSubview:self->_attachmentImageBoundingView];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __77__NCNotificationAppSectionListSummarizedContentView_setAttachmentImageViews___block_invoke_2;
      v10[3] = &unk_2783714A8;
      v10[4] = self;
      [v5 enumerateObjectsUsingBlock:v10];
      objc_storeStrong(&self->_attachmentImageViews, a3);
    }

    [(NCNotificationAppSectionListSummarizedContentView *)self setNeedsLayout];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(NCNotificationAppSectionListSummarizedContentView *)self _countBackgroundDimensionInRect:0.0, 0.0, a3.width, a3.height];
  [(NCNotificationAppSectionListSummarizedContentView *)self _allowedWidthForTextInRect:0.0, 0.0, width, height];
  v7 = v6;
  titleLabel = self->_titleLabel;
  if (titleLabel)
  {
    [(NCNotificationListBaseContentView *)self _sizeMeasuringHeightForLabel:titleLabel withNumberOfLines:[(NCNotificationAppSectionListSummarizedContentView *)self _numberOfLinesForTitleTextInFrame:0.0, 0.0, v6, height]];
  }

  if ([(NSArray *)self->_titleAndContentStringLabels count])
  {
    v9 = [(NSArray *)self->_titleAndContentStringLabels firstObject];
    v10 = [v9 firstObject];

    [(NCNotificationListBaseContentView *)self _sizeMeasuringHeightForLabel:v10 withNumberOfLines:[(NCNotificationAppSectionListSummarizedContentView *)self _numberOfLinesForContentTextInFrame:0.0, 0.0, v7, height]];
  }

  if (self->_attachmentImageBoundingView)
  {
    [(NSArray *)self->_attachmentImageViews count];
  }

  v11 = [(NCNotificationAppSectionListSummarizedContentView *)self traitCollection];
  [v11 displayScale];
  UICeilToScale();
  v13 = v12;

  v14 = width;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = NCNotificationAppSectionListSummarizedContentView;
  [(NCNotificationAppSectionListSummarizedContentView *)&v4 layoutSubviews];
  [(NCNotificationAppSectionListSummarizedContentView *)self _configureBackgroundViewIfNecessary];
  [(NCNotificationAppSectionListSummarizedContentView *)self _configureTapGestureRecognizerIfNecessary];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __67__NCNotificationAppSectionListSummarizedContentView_layoutSubviews__block_invoke;
  v3[3] = &unk_27836F6A8;
  v3[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v3];
}

uint64_t __67__NCNotificationAppSectionListSummarizedContentView_layoutSubviews__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _layoutBackgroundView];
  [*(a1 + 32) _layoutCountLabel];
  [*(a1 + 32) _layoutAttachmentImageViews];
  [*(a1 + 32) _layoutTitleLabel];
  v2 = *(a1 + 32);

  return [v2 _layoutTitleAndContentStringLabels];
}

- (void)didMoveToWindow
{
  v3 = [(NCNotificationAppSectionListSummarizedContentView *)self window];

  if (v3)
  {

    [(NCNotificationListBaseContentView *)self adjustForContentSizeCategoryChange];
  }
}

- (void)_configureBackgroundViewIfNecessary
{
  if (!self->_backgroundView)
  {
    v3 = [objc_alloc(MEMORY[0x277D3D328]) initWithRecipe:1];
    v4 = objc_alloc_init(NCDigestPlatterBackgroundView);
    [(UIView *)v3 setBackgroundView:v4];

    [(UIView *)v3 _setContinuousCornerRadius:23.5];
    v5 = [(NCNotificationAppSectionListSummarizedContentView *)self delegate];
    v6 = [v5 backgroundGroupNameBaseForAppSectionListSummarizedContentView:self];
    [(UIView *)v3 setMaterialGroupNameBase:v6];

    [(NCNotificationAppSectionListSummarizedContentView *)self addSubview:v3];
    backgroundView = self->_backgroundView;
    self->_backgroundView = v3;
  }
}

- (void)_configureTapGestureRecognizerIfNecessary
{
  if (!self->_tapGestureRecognizer)
  {
    v3 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_handleTap_];
    tapGestureRecognizer = self->_tapGestureRecognizer;
    self->_tapGestureRecognizer = v3;

    v5 = self->_tapGestureRecognizer;

    [(NCNotificationAppSectionListSummarizedContentView *)self addGestureRecognizer:v5];
  }
}

- (void)_layoutBackgroundView
{
  backgroundView = self->_backgroundView;
  if (backgroundView)
  {
    [(NCNotificationAppSectionListSummarizedContentView *)self bounds];
    [(UIView *)backgroundView setFrame:?];
    v4 = self->_backgroundView;

    [(NCNotificationAppSectionListSummarizedContentView *)self sendSubviewToBack:v4];
  }
}

- (void)_layoutCountLabel
{
  if (self->_countLabel)
  {
    [(NCNotificationAppSectionListSummarizedContentView *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(UIView *)self->_countBackgroundView frame];
    [(UILabel *)self->_countLabel sizeThatFits:v8, v10];
    [(NCNotificationAppSectionListSummarizedContentView *)self _countBackgroundDimensionInRect:v4, v6, v8, v10];
    v12 = v11;
    if ([(NCNotificationAppSectionListSummarizedContentView *)self _shouldReverseLayoutDirection])
    {
      v16.origin.x = v4;
      v16.origin.y = v6;
      v16.size.width = v8;
      v16.size.height = v10;
      CGRectGetWidth(v16);
    }

    UIRectCenteredYInRect();
    UIRectIntegralWithScale();
    [(UIView *)self->_countBackgroundView setFrame:?];
    v13 = [(UIView *)self->_countBackgroundView layer];
    [v13 setCornerRadius:v12 * 0.5];

    [(UILabel *)self->_countLabel frame];
    UIRectCenteredRect();
    UIRectIntegralWithScale();
    countLabel = self->_countLabel;

    [(UILabel *)countLabel setFrame:?];
  }
}

- (void)_layoutAttachmentImageViews
{
  attachmentImageBoundingView = self->_attachmentImageBoundingView;
  if (attachmentImageBoundingView)
  {
    [(UIView *)attachmentImageBoundingView frame];
    [(NCNotificationAppSectionListSummarizedContentView *)self bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = [(NSArray *)self->_attachmentImageViews count];
    if (([(NCNotificationAppSectionListSummarizedContentView *)self _shouldReverseLayoutDirection]& 1) == 0)
    {
      v27.origin.x = v5;
      v27.origin.y = v7;
      v27.size.width = v9;
      v27.size.height = v11;
      CGRectGetWidth(v27);
    }

    v13 = 0.0;
    UIRectIntegralWithScale();
    [(UIView *)self->_attachmentImageBoundingView setFrame:?];
    [(UIView *)self->_attachmentImageBoundingView bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    attachmentImageViews = self->_attachmentImageViews;
    if (v12 == 1)
    {
      v25 = [(NSArray *)attachmentImageViews firstObject];
      [v25 setFrame:{v15, v17, v19, v21}];
    }

    else
    {
      v25 = [(NSArray *)attachmentImageViews objectAtIndex:0];
      if ([(NCNotificationAppSectionListSummarizedContentView *)self _shouldReverseLayoutDirection])
      {
        v28.origin.x = v15;
        v28.origin.y = v17;
        v28.size.width = v19;
        v28.size.height = v21;
        v13 = CGRectGetMaxX(v28) + -44.0;
      }

      v23 = 0.0;
      [v25 setFrame:{v13, 0.0, 44.0, 44.0}];
      [(NCNotificationAppSectionListSummarizedContentView *)self _configureShadowForAttachmentView:v25];
      v24 = [(NSArray *)self->_attachmentImageViews objectAtIndex:1];
      if (([(NCNotificationAppSectionListSummarizedContentView *)self _shouldReverseLayoutDirection]& 1) == 0)
      {
        v29.origin.x = v15;
        v29.origin.y = v17;
        v29.size.width = v19;
        v29.size.height = v21;
        v23 = CGRectGetMaxX(v29) + -44.0;
      }

      v30.origin.x = v15;
      v30.origin.y = v17;
      v30.size.width = v19;
      v30.size.height = v21;
      [v24 setFrame:{v23, CGRectGetMaxY(v30) + -44.0, 44.0, 44.0}];
      [(UIView *)self->_attachmentImageBoundingView sendSubviewToBack:v24];
      [(NCNotificationAppSectionListSummarizedContentView *)self _configureShadowForAttachmentView:v24];
    }
  }
}

- (void)_layoutTitleLabel
{
  titleLabel = self->_titleLabel;
  if (titleLabel)
  {
    [(UILabel *)titleLabel frame];
    [(NCNotificationAppSectionListSummarizedContentView *)self bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    [(NCNotificationAppSectionListSummarizedContentView *)self _allowedWidthForTextInRect:?];
    v11 = v10;
    [(UILabel *)self->_titleLabel unui_measuringHeightWithNumberOfLines:[(NCNotificationAppSectionListSummarizedContentView *)self _numberOfLinesForTitleTextInFrame:v5, v7, v10, v9]];
    v13 = v12;
    v14 = [(NCNotificationAppSectionListSummarizedContentView *)self _shouldReverseLayoutDirection];
    v15 = &OBJC_IVAR___NCNotificationAppSectionListSummarizedContentView__countBackgroundView;
    if (v14)
    {
      v15 = &OBJC_IVAR___NCNotificationAppSectionListSummarizedContentView__attachmentImageBoundingView;
    }

    [*(&self->super.super.super.super.isa + *v15) frame];
    v16 = CGRectGetMaxX(v19) + 12.0;
    [(UILabel *)self->_titleLabel unui_drawingHeightWithNumberOfLines:[(NCNotificationAppSectionListSummarizedContentView *)self _numberOfLinesForTitleTextInFrame:v5, v7, v11, v9]];
    v20.origin.y = 10.0;
    v20.origin.x = v16;
    v20.size.width = v11;
    v20.size.height = v13;
    CGRectGetWidth(v20);
    BSRectWithSize();
    UIRectCenteredIntegralRectScale();
    v17 = self->_titleLabel;

    [(UILabel *)v17 setFrame:?];
  }
}

- (void)_layoutTitleAndContentStringLabels
{
  if ([(NSArray *)self->_titleAndContentStringLabels count])
  {
    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x2020000000;
    titleLabel = self->_titleLabel;
    if (titleLabel)
    {
      [(UILabel *)titleLabel frame];
      v4 = CGRectGetMaxY(v19) + 1.0;
    }

    else
    {
      v4 = 10.0;
    }

    *&v18[3] = v4;
    [(NCNotificationAppSectionListSummarizedContentView *)self bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(NCNotificationAppSectionListSummarizedContentView *)self _allowedWidthForTextInRect:?];
    v12 = v11;
    v13 = [(NCNotificationAppSectionListSummarizedContentView *)self _shouldReverseLayoutDirection];
    v14 = &OBJC_IVAR___NCNotificationAppSectionListSummarizedContentView__countBackgroundView;
    if (v13)
    {
      v14 = &OBJC_IVAR___NCNotificationAppSectionListSummarizedContentView__attachmentImageBoundingView;
    }

    [*(&self->super.super.super.super.isa + *v14) frame];
    MaxX = CGRectGetMaxX(v20);
    titleAndContentStringLabels = self->_titleAndContentStringLabels;
    v17[1] = 3221225472;
    v17[0] = MEMORY[0x277D85DD0];
    v17[2] = __87__NCNotificationAppSectionListSummarizedContentView__layoutTitleAndContentStringLabels__block_invoke;
    v17[3] = &unk_2783714D0;
    v17[6] = v6;
    v17[7] = v8;
    v17[8] = v12;
    v17[9] = v10;
    v17[4] = self;
    v17[5] = v18;
    v17[10] = v12;
    *&v17[11] = MaxX + 12.0;
    [(NSArray *)titleAndContentStringLabels enumerateObjectsUsingBlock:v17];
    _Block_object_dispose(v18, 8);
  }
}

void __87__NCNotificationAppSectionListSummarizedContentView__layoutTitleAndContentStringLabels__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v37 = [v3 objectAtIndex:0];
  [v37 frame];
  [v37 unui_measuringHeightWithNumberOfLines:{objc_msgSend(*(a1 + 32), "_numberOfLinesForContentTextInFrame:", *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72))}];
  v5 = v4;
  [v37 sizeThatFits:{*(a1 + 64), *(a1 + 72)}];
  if (v6 >= *(a1 + 80))
  {
    v7 = *(a1 + 80);
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*(*(a1 + 40) + 8) + 24);
  v9 = [*(a1 + 32) _shouldReverseLayoutDirection];
  v10 = *(a1 + 88);
  if (v9)
  {
    v10 = v10 + *(a1 + 80) - v7;
  }

  [v37 unui_drawingHeightWithNumberOfLines:{objc_msgSend(*(a1 + 32), "_numberOfLinesForContentTextInFrame:", *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72))}];
  v39.origin.x = v10;
  v39.origin.y = v8;
  v39.size.width = v7;
  v39.size.height = v5;
  CGRectGetWidth(v39);
  BSRectWithSize();
  UIRectCenteredIntegralRectScale();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [v37 setFrame:0];
  v19 = [v3 objectAtIndex:1];

  [v19 frame];
  v20 = [*(a1 + 32) preferredContentSizeCategory];
  if (!UIContentSizeCategoryIsAccessibilityCategory(v20))
  {

    goto LABEL_10;
  }

  v40.origin.x = v12;
  v40.origin.y = v14;
  v40.size.width = v16;
  v40.size.height = v18;
  Width = CGRectGetWidth(v40);

  if (Width <= 0.0)
  {
LABEL_10:
    v35 = v16;
    v36 = v14;
    v26 = *(a1 + 72);
    v27 = fmax(*(a1 + 80) - v7 + -2.0, 0.0);
    v28 = *(a1 + 48);
    v29 = *(a1 + 56);
    [v19 unui_measuringHeightWithNumberOfLines:{objc_msgSend(*(a1 + 32), "_numberOfLinesForContentTextInFrame:", v28, v29, v27, v26)}];
    v31 = v30;
    v34 = v12;
    if ([*(a1 + 32) _shouldReverseLayoutDirection])
    {
      v32 = *(a1 + 88);
    }

    else
    {
      v41.origin.x = v12;
      v41.size.width = v35;
      v41.origin.y = v36;
      v41.size.height = v18;
      v32 = CGRectGetMaxX(v41) + 2.0;
    }

    [v19 unui_drawingHeightWithNumberOfLines:{objc_msgSend(*(a1 + 32), "_numberOfLinesForContentTextInFrame:", v28, v29, v27, v26)}];
    v42.origin.x = v32;
    v42.origin.y = v8;
    v42.size.width = v27;
    v42.size.height = v31;
    CGRectGetWidth(v42);
    BSRectWithSize();
    v33 = 0;
    UIRectCenteredIntegralRectScale();
    v12 = v34;
    v16 = v35;
    v14 = v36;
    goto LABEL_14;
  }

  v22 = *MEMORY[0x277CBF3A0];
  v23 = *(MEMORY[0x277CBF3A0] + 8);
  v24 = *(MEMORY[0x277CBF3A0] + 16);
  v25 = *(MEMORY[0x277CBF3A0] + 24);
LABEL_14:
  [v19 setFrame:{v22, v23, v24, v25, v33}];
  v43.origin.x = v12;
  v43.origin.y = v14;
  v43.size.width = v16;
  v43.size.height = v18;
  *(*(*(a1 + 40) + 8) + 24) = CGRectGetMaxY(v43) + 0.0;
}

- (void)_visualStylingProviderDidChange:(id)a3 forCategory:(int64_t)a4 outgoingProvider:(id)a5
{
  v7 = a3;
  v8 = a5;
  [(NCNotificationListBaseContentView *)self _updateVisualStylingOfView:self->_titleLabel style:0 visualStylingProvider:v7 outgoingProvider:v8];
  titleAndContentStringLabels = self->_titleAndContentStringLabels;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __114__NCNotificationAppSectionListSummarizedContentView__visualStylingProviderDidChange_forCategory_outgoingProvider___block_invoke;
  v12[3] = &unk_278371520;
  v12[4] = self;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  [(NSArray *)titleAndContentStringLabels enumerateObjectsUsingBlock:v12];
}

void __114__NCNotificationAppSectionListSummarizedContentView__visualStylingProviderDidChange_forCategory_outgoingProvider___block_invoke(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __114__NCNotificationAppSectionListSummarizedContentView__visualStylingProviderDidChange_forCategory_outgoingProvider___block_invoke_2;
  v5[3] = &unk_2783714F8;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  [a2 enumerateObjectsUsingBlock:v5];
}

- (void)_updateTextAttributes
{
  v3.receiver = self;
  v3.super_class = NCNotificationAppSectionListSummarizedContentView;
  [(NCNotificationListBaseContentView *)&v3 _updateTextAttributes];
  [(NCNotificationAppSectionListSummarizedContentView *)self _updateTextAttributesForCountLabel];
  [(NCNotificationAppSectionListSummarizedContentView *)self _updateTextAttributesForTitleLabel];
  [(NCNotificationAppSectionListSummarizedContentView *)self _updateTextAttributesForTitleAndContentStringLabels];
}

- (void)_updateTextAttributesForCountLabel
{
  if (self->_countLabel)
  {
    v3 = [(NCNotificationListBaseContentView *)self preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v3);
    v5 = MEMORY[0x277D76918];
    if (!IsAccessibilityCategory)
    {
      v5 = MEMORY[0x277D769D0];
    }

    v6 = *v5;

    [(NCNotificationListBaseContentView *)self _updateTextAttributesForLabel:self->_countLabel withTextStyle:v6 fontWeight:0 additionalTraits:1 maximumNumberOfLines:*MEMORY[0x277D74420]];

    [(NCNotificationAppSectionListSummarizedContentView *)self setNeedsLayout];
  }
}

- (void)_updateTextAttributesForTitleLabel
{
  if (self->_titleLabel)
  {
    v3 = [(NCNotificationListBaseContentView *)self preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v3);
    v5 = MEMORY[0x277D76918];
    if (!IsAccessibilityCategory)
    {
      v5 = MEMORY[0x277D769D0];
    }

    v6 = *v5;

    [(NCNotificationListBaseContentView *)self _updateTextAttributesForLabel:self->_titleLabel withTextStyle:v6 fontWeight:0 additionalTraits:[(NCNotificationAppSectionListSummarizedContentView *)self _maximumNumberOfLinesForTitleText] maximumNumberOfLines:*MEMORY[0x277D74420]];

    [(NCNotificationAppSectionListSummarizedContentView *)self setNeedsLayout];
  }
}

- (void)_updateTextAttributesForTitleAndContentStringLabels
{
  if ([(NSArray *)self->_titleAndContentStringLabels count])
  {
    v3 = [(NCNotificationListBaseContentView *)self preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v3);
    v5 = MEMORY[0x277D76918];
    if (!IsAccessibilityCategory)
    {
      v5 = MEMORY[0x277D76968];
    }

    v6 = *v5;

    v7 = *MEMORY[0x277D74420];
    v8 = *MEMORY[0x277D74418];
    titleAndContentStringLabels = self->_titleAndContentStringLabels;
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __104__NCNotificationAppSectionListSummarizedContentView__updateTextAttributesForTitleAndContentStringLabels__block_invoke;
    v14 = &unk_278371548;
    v15 = self;
    v16 = v6;
    v17 = v7;
    v18 = v8;
    v10 = v6;
    [(NSArray *)titleAndContentStringLabels enumerateObjectsUsingBlock:&v11];
    [(NCNotificationAppSectionListSummarizedContentView *)self setNeedsLayout:v11];
  }
}

void __104__NCNotificationAppSectionListSummarizedContentView__updateTextAttributesForTitleAndContentStringLabels__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [v3 objectAtIndex:0];
  [*(a1 + 32) _updateTextAttributesForLabel:v5 withTextStyle:*(a1 + 40) fontWeight:0 additionalTraits:objc_msgSend(*(a1 + 32) maximumNumberOfLines:{"_maximumNumberOfLinesForContentText"), *(a1 + 48)}];
  v4 = [v3 objectAtIndex:1];

  [*(a1 + 32) _updateTextAttributesForLabel:v4 withTextStyle:*(a1 + 40) fontWeight:0 additionalTraits:objc_msgSend(*(a1 + 32) maximumNumberOfLines:{"_maximumNumberOfLinesForContentText"), *(a1 + 56)}];
}

- (unint64_t)_maximumNumberOfLinesForTitleText
{
  v2 = [(NCNotificationListBaseContentView *)self preferredContentSizeCategory];
  v3 = !UIContentSizeCategoryIsAccessibilityCategory(v2);

  return v3;
}

- (unint64_t)_maximumNumberOfLinesForContentText
{
  v2 = [(NCNotificationListBaseContentView *)self preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(v2))
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (unint64_t)_numberOfLinesForTitleTextInFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  titleLabel = self->_titleLabel;
  v9 = [(NCNotificationAppSectionListSummarizedContentView *)self _maximumNumberOfLinesForTitleText];

  return [(NCNotificationListBaseContentView *)self _numberOfLinesForLabel:titleLabel maximumNumberOfLines:v9 inFrame:x, y, width, height];
}

- (unint64_t)_numberOfLinesForContentTextInFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(NSArray *)self->_titleAndContentStringLabels firstObject];
  v9 = [v8 objectAtIndex:1];

  v10 = [(NCNotificationListBaseContentView *)self _numberOfLinesForLabel:v9 maximumNumberOfLines:[(NCNotificationAppSectionListSummarizedContentView *)self _maximumNumberOfLinesForContentText] inFrame:x, y, width, height];
  return v10;
}

- (void)handleTap:(id)a3
{
  v4 = [(NCNotificationAppSectionListSummarizedContentView *)self delegate];
  [v4 appSectionListSummarizedContentViewDidRecognizeTapGesture:self];
}

- (id)_newContentStringLabelForText:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v5 _setTextAlignmentFollowsWritingDirection:1];
  [v5 setLineBreakMode:4];
  [(NCNotificationAppSectionListSummarizedContentView *)self addSubview:v5];
  v6 = [(NCNotificationListBaseContentView *)self visualStylingProviderForCategory:1];
  [(NCNotificationListBaseContentView *)self _updateVisualStylingOfView:v5 style:0 visualStylingProvider:v6 outgoingProvider:0];
  if (v6)
  {
    [v6 automaticallyUpdateView:v5 withStyle:0];
  }

  [v5 setText:v4];

  return v5;
}

- (void)_configureShadowForAttachmentView:(id)a3
{
  v4 = [a3 layer];
  [v4 setShadowColor:CGColorGetConstantColor(*MEMORY[0x277CBF3B8])];
  [v4 setShadowRadius:5.0];
  LODWORD(v3) = 1050253722;
  [v4 setShadowOpacity:v3];
  [v4 setShadowOffset:{2.0, 3.0}];
}

- (double)_countBackgroundDimensionInRect:(CGRect)a3
{
  [(UILabel *)self->_countLabel sizeThatFits:a3.size.width, a3.size.height];
  if (v3 < v4)
  {
    v3 = v4;
  }

  result = v3 + 10.0;
  if (result < 40.0)
  {
    return 40.0;
  }

  return result;
}

- (double)_allowedWidthForTextInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (self->_countBackgroundView)
  {
    [(NCNotificationAppSectionListSummarizedContentView *)self _countBackgroundDimensionInRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
    v9 = v8 + 12.0 + 12.0;
  }

  else
  {
    v9 = 12.0;
  }

  attachmentImageBoundingView = self->_attachmentImageBoundingView;
  if (attachmentImageBoundingView)
  {
    [(UIView *)attachmentImageBoundingView frame];
    v11 = CGRectGetWidth(v13) + 12.0 + 15.0;
  }

  else
  {
    v11 = 15.0;
  }

  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  return CGRectGetWidth(v14) - v9 - v11;
}

- (NCNotificationAppSectionListSummarizedContentViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end