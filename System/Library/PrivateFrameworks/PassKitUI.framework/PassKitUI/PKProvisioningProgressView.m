@interface PKProvisioningProgressView
- (CGSize)_layoutWithBounds:(CGRect)a3 applyLayout:(BOOL)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKProvisioningProgressView)init;
- (void)createViews;
- (void)layoutSubviews;
- (void)setHeaderView:(id)a3;
- (void)setPrimaryText:(id)a3;
- (void)setShowingCheckmark:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation PKProvisioningProgressView

- (PKProvisioningProgressView)init
{
  v5.receiver = self;
  v5.super_class = PKProvisioningProgressView;
  v2 = [(PKProvisioningProgressView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PKProvisioningProgressView *)v2 createViews];
  }

  return v3;
}

- (void)createViews
{
  PKSetupViewConstantsViewMargin();
  [(PKProvisioningProgressView *)self layoutMargins];
  [(PKProvisioningProgressView *)self setLayoutMargins:?];
  v3 = objc_alloc_init(MEMORY[0x1E69DCEF8]);
  scrollView = self->_scrollView;
  self->_scrollView = v3;

  [(PKProvisioningProgressView *)self addSubview:self->_scrollView];
  v5 = [MEMORY[0x1E69DD168] pkui_plainNonInteractiveTextViewWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  primaryLabel = self->_primaryLabel;
  self->_primaryLabel = v5;

  v7 = *MEMORY[0x1E69DDCE0];
  v8 = *(MEMORY[0x1E69DDCE0] + 8);
  v9 = *(MEMORY[0x1E69DDCE0] + 16);
  v10 = *(MEMORY[0x1E69DDCE0] + 24);
  [(UITextView *)self->_primaryLabel setTextContainerInset:*MEMORY[0x1E69DDCE0], v8, v9, v10];
  [(UITextView *)self->_primaryLabel setEditable:0];
  [(UITextView *)self->_primaryLabel setSelectable:1];
  [(UITextView *)self->_primaryLabel _setInteractiveTextSelectionDisabled:1];
  [(UITextView *)self->_primaryLabel setContentInset:v7, v8, v9, v10];
  [(UITextView *)self->_primaryLabel setContentInsetAdjustmentBehavior:2];
  v11 = [(UITextView *)self->_primaryLabel textContainer];
  [v11 setLineFragmentPadding:0.0];

  [(UITextView *)self->_primaryLabel setTextAlignment:4];
  v12 = self->_primaryLabel;
  v13 = PKOBKHeaderTitleTextColor();
  [(UITextView *)v12 setTextColor:v13];

  v14 = self->_primaryLabel;
  v15 = PKOBKHeaderTitleFont();
  [(UITextView *)v14 setFont:v15];

  v32 = [(UITextView *)self->_primaryLabel textContainer];
  [v32 setMaximumNumberOfLines:0];
  [v32 setLineBreakMode:4];
  [(UIScrollView *)self->_scrollView addSubview:self->_primaryLabel];
  v16 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  secondaryLabel = self->_secondaryLabel;
  self->_secondaryLabel = v16;

  v18 = self->_secondaryLabel;
  v19 = PKOBKHeaderSubtitleFont();
  [(UILabel *)v18 setFont:v19];

  [(UILabel *)self->_secondaryLabel setNumberOfLines:0];
  v20 = self->_secondaryLabel;
  v21 = PKOBKBodyTextColor();
  [(UILabel *)v20 setTextColor:v21];

  [(UILabel *)self->_secondaryLabel setTextAlignment:4];
  [(UIScrollView *)self->_scrollView addSubview:self->_secondaryLabel];
  v22 = [objc_alloc(MEMORY[0x1E69DCE48]) initWithProgressViewStyle:0];
  progressView = self->_progressView;
  self->_progressView = v22;

  [(PKProvisioningProgressView *)self addSubview:self->_progressView];
  v24 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  progressLabel = self->_progressLabel;
  self->_progressLabel = v24;

  v26 = self->_progressLabel;
  v27 = PKOBKBulletSubtitleFont();
  [(UILabel *)v26 setFont:v27];

  [(UILabel *)self->_progressLabel setNumberOfLines:1];
  [(UILabel *)self->_progressLabel setTextAlignment:1];
  v28 = self->_progressLabel;
  v29 = PKOBKBodyTextColor();
  [(UILabel *)v28 setTextColor:v29];

  [(PKProvisioningProgressView *)self addSubview:self->_progressLabel];
  v30 = objc_alloc_init(PKCheckmarkView);
  checkmarkView = self->_checkmarkView;
  self->_checkmarkView = v30;

  [(UIScrollView *)self->_scrollView addSubview:self->_checkmarkView];
}

- (void)setHeaderView:(id)a3
{
  v5 = a3;
  headerView = self->_headerView;
  v7 = v5;
  if (headerView != v5)
  {
    [(UIView *)headerView removeFromSuperview];
    objc_storeStrong(&self->_headerView, a3);
    if (self->_headerView)
    {
      [(UIScrollView *)self->_scrollView addSubview:?];
      [(PKProvisioningProgressView *)self setNeedsLayout];
    }
  }
}

- (void)setPrimaryText:(id)a3
{
  v4 = a3;
  v5 = [v4 length];
  v11 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v4];

  v6 = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  v7 = [v6 mutableCopy];

  [v7 setLineBreakMode:0];
  [v7 setAlignment:1];
  v8 = PKOBKHeaderTitleFont();
  [v11 addAttribute:*MEMORY[0x1E69DB648] value:v8 range:{0, v5}];
  [v11 addAttribute:*MEMORY[0x1E69DB688] value:v7 range:{0, v5}];
  v9 = *MEMORY[0x1E69DB650];
  v10 = [MEMORY[0x1E69DC888] labelColor];
  [v11 addAttribute:v9 value:v10 range:{0, v5}];

  [(UITextView *)self->_primaryLabel setAttributedText:v11];
}

- (void)setShowingCheckmark:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_showingCheckmark != a3)
  {
    self->_showingCheckmark = a3;
    [PKCheckmarkView showCheckmark:"showCheckmark:animated:" animated:?];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKProvisioningProgressView;
  [(PKProvisioningProgressView *)&v3 layoutSubviews];
  [(PKProvisioningProgressView *)self bounds];
  [(PKProvisioningProgressView *)self _layoutWithBounds:1 applyLayout:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(PKProvisioningProgressView *)self _layoutWithBounds:0 applyLayout:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)_layoutWithBounds:(CGRect)a3 applyLayout:(BOOL)a4
{
  v4 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(PKProvisioningProgressView *)self layoutMargins];
  v11 = v10;
  v13 = width - (v10 + v12);
  [(UIProgressView *)self->_progressView frame];
  v15 = v14;
  [(UILabel *)self->_progressLabel sizeThatFits:v13];
  v17 = v16;
  v71.origin.x = x;
  v71.origin.y = y;
  v71.size.width = width;
  v71.size.height = height;
  v68 = CGRectGetMaxY(v71) - v17 - v15 + -50.0 + -13.0 + -10.0;
  if (v4)
  {
    [(UIScrollView *)self->_scrollView frame];
    v75.origin.x = v18;
    v75.origin.y = v19;
    v75.size.width = v20;
    v75.size.height = v21;
    v72.origin.x = x;
    v72.origin.y = y;
    v72.size.width = width;
    v72.size.height = height;
    if (!CGRectEqualToRect(v72, v75))
    {
      [(UIScrollView *)self->_scrollView setFrame:x, y, width, v68];
    }
  }

  headerView = self->_headerView;
  v69 = 0.0;
  if (headerView)
  {
    [(UIView *)headerView sizeThatFits:width, 1.79769313e308];
    PKSizeRoundToPixel();
    v69 = v23 + 25.0;
    if (v4)
    {
      [(UIView *)self->_headerView setFrame:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), width, v23];
    }
  }

  v24 = x + v11;
  [(UITextView *)self->_primaryLabel sizeThatFits:v13 + -20.0, 1.79769313e308];
  v27 = v26;
  if (v4)
  {
    [(UITextView *)self->_primaryLabel setFrame:v24, v69, v25, v26];
  }

  v65 = v27;
  v28 = _UISolariumFeatureFlagEnabled();
  v29 = 8.0;
  if (v28)
  {
    v29 = 0.0;
  }

  v66 = v29;
  checkmarkView = self->_checkmarkView;
  v67 = v17;
  if (checkmarkView && v4)
  {
    [(PKCheckmarkView *)checkmarkView sizeThatFits:width, height];
    v31 = [(UITextView *)self->_primaryLabel layoutManager];
    v32 = [(UITextView *)self->_primaryLabel textContainer];
    [v31 ensureLayoutForTextContainer:v32];

    primaryLabel = self->_primaryLabel;
    v34 = [(UITextView *)primaryLabel endOfDocument];
    v35 = [(UITextView *)primaryLabel positionFromPosition:v34 offset:-1];

    v36 = self->_primaryLabel;
    v37 = [(UITextView *)v36 endOfDocument];
    v38 = [(UITextView *)v36 textRangeFromPosition:v35 toPosition:v37];

    [(UITextView *)self->_primaryLabel firstRectForRange:v38];
    [(PKProvisioningProgressView *)self convertRect:self->_primaryLabel fromView:?];
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v47 = [(PKProvisioningProgressView *)self _shouldReverseLayoutDirection];
    v48 = v40;
    v49 = v42;
    v50 = v44;
    v51 = v46;
    if (v47)
    {
      CGRectGetMinX(*&v48);
    }

    else
    {
      CGRectGetMaxX(*&v48);
    }

    UIRectCenteredYInRect();
    [(PKCheckmarkView *)self->_checkmarkView setFrame:?];

    v17 = v67;
  }

  [(UILabel *)self->_secondaryLabel sizeThatFits:v13, 1.79769313e308];
  if (v4)
  {
    v53 = v52;
    [(UILabel *)self->_secondaryLabel setFrame:v24, v69 + v65 + v66, v13, v52];
    v73.origin.x = v24;
    v73.origin.y = v69 + v65 + v66;
    v17 = v67;
    v73.size.width = v13;
    v73.size.height = v53;
    [(UIScrollView *)self->_scrollView setContentSize:width, CGRectGetMaxY(v73)];
  }

  PKFloatRoundToPixel();
  UIRectCenteredXInRect();
  v58 = v54;
  v59 = v55;
  v60 = v56;
  v61 = v57;
  if (v4)
  {
    [(UIProgressView *)self->_progressView setFrame:v54, v55, v56, v57];
    v74.origin.x = v58;
    v74.origin.y = v59;
    v74.size.width = v60;
    v74.size.height = v61;
    v62 = CGRectGetMaxY(v74) + 13.0;
    [(UILabel *)self->_progressLabel setFrame:v24, v62, v13, v17];
  }

  else
  {
    v62 = CGRectGetMaxY(*&v54) + 13.0;
  }

  v63 = v17 + v62;
  v64 = width;
  result.height = v63;
  result.width = v64;
  return result;
}

@end