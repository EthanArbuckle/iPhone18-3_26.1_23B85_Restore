@interface PGPrerollIndicatorView
- (CGAffineTransform)_subviewTransform;
- (CGRect)buttonView:(id)view imageRectForContentRect:(CGRect)rect proposedRect:(CGRect)proposedRect;
- (CGRect)buttonView:(id)view titleRectForContentRect:(CGRect)rect proposedRect:(CGRect)proposedRect;
- (CGSize)labelSize;
- (NSString)labelText;
- (PGPrerollIndicatorView)initWithFrame:(CGRect)frame viewModel:(id)model;
- (UIEdgeInsets)buttonView:(id)view contentEdgeInsetsForProposedInsets:(UIEdgeInsets)insets;
- (double)labelWidth;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_layoutContentTypeLabel;
- (void)_layoutSkipPrerollButton;
- (void)buttonViewDidReceiveTouchUpInside:(id)inside;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setLabelText:(id)text;
- (void)setTimeRemainingText:(id)text;
- (void)updateValues;
@end

@implementation PGPrerollIndicatorView

- (PGPrerollIndicatorView)initWithFrame:(CGRect)frame viewModel:(id)model
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  modelCopy = model;
  v17.receiver = self;
  v17.super_class = PGPrerollIndicatorView;
  height = [(PGPrerollIndicatorView *)&v17 initWithFrame:x, y, width, height];
  v12 = height;
  if (height)
  {
    objc_storeStrong(&height->_viewModel, model);
    values = [modelCopy values];
    v12->_wantsGlassBackground = [values controlsViewWantsGlassBackground];

    v14 = [[PGDisplayLink alloc] initWithOwner:v12 linkFired:&__block_literal_global_4];
    displayLink = v12->_displayLink;
    v12->_displayLink = v14;

    [(PGPrerollIndicatorView *)v12 updateValues];
    [(PGButtonView *)v12->_skipPrerollButtonView sizeToFit];
  }

  return v12;
}

- (void)dealloc
{
  [(PGDisplayLink *)self->_displayLink invalidate];
  v3.receiver = self;
  v3.super_class = PGPrerollIndicatorView;
  [(PGPrerollIndicatorView *)&v3 dealloc];
}

- (void)updateValues
{
  viewModel = [(PGPrerollIndicatorView *)self viewModel];
  values = [viewModel values];
  if (![values isPrerollActive])
  {
    v7 = 0;
    goto LABEL_15;
  }

  prerollAttributes = [values prerollAttributes];
  contentType = [prerollAttributes contentType];
  if (contentType == 2)
  {
    v6 = @"SPONSORED_PREROLL_LABEL";
    goto LABEL_7;
  }

  if (contentType == 1)
  {
    v6 = @"AD_PREROLL_LABEL";
LABEL_7:
    v8 = PGLocalizedString(v6);
    [(PGPrerollIndicatorView *)self setLabelText:v8];
  }

  if ([viewModel secondsUntilPrerollSkippable] == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(PGButtonView *)self->_skipPrerollButtonView setHidden:1];
  }

  else
  {
    secondsUntilPrerollSkippable = [viewModel secondsUntilPrerollSkippable];
    if (secondsUntilPrerollSkippable < 1)
    {
      v13 = PGLocalizedString(@"SKIP_PREROLL");
      v15 = &stru_1F394B800;
      selfCopy2 = self;
    }

    else
    {
      v10 = secondsUntilPrerollSkippable;
      v11 = MEMORY[0x1E696AEC0];
      v12 = PGLocalizedString(@"SKIP_PREROLL_IN_N_SECONDS");
      v13 = [v11 stringWithFormat:v12, v10];

      selfCopy2 = self;
      v15 = v13;
    }

    [(PGPrerollIndicatorView *)selfCopy2 setTimeRemainingText:v15];
    [(PGButtonView *)self->_skipPrerollButtonView setAccessibilityIdentifier:v13];
    [(PGButtonView *)self->_skipPrerollButtonView setHidden:0];
  }

  contentTypeLabel = [(PGPrerollIndicatorView *)self contentTypeLabel];
  prerollTintColor = [values prerollTintColor];
  [contentTypeLabel setBackgroundColor:prerollTintColor];

  v7 = 10;
LABEL_15:
  [(PGDisplayLink *)self->_displayLink setPreferredFramesPerSecond:v7];
}

- (NSString)labelText
{
  contentTypeLabel = [(PGPrerollIndicatorView *)self contentTypeLabel];
  text = [contentTypeLabel text];

  return text;
}

- (void)setLabelText:(id)text
{
  textCopy = text;
  labelText = [(PGPrerollIndicatorView *)self labelText];
  v6 = labelText;
  if (labelText == textCopy)
  {
  }

  else
  {
    labelText2 = [(PGPrerollIndicatorView *)self labelText];
    v8 = [labelText2 isEqualToString:textCopy];

    if ((v8 & 1) == 0)
    {
      if (!self->_contentTypeLabel)
      {
        v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
        contentTypeLabel = self->_contentTypeLabel;
        self->_contentTypeLabel = v9;

        v11 = self->_contentTypeLabel;
        whiteColor = [MEMORY[0x1E69DC888] whiteColor];
        [(UILabel *)v11 setTextColor:whiteColor];

        v13 = self->_contentTypeLabel;
        v14 = [MEMORY[0x1E69DB878] systemFontOfSize:13.0 weight:*MEMORY[0x1E69DB980]];
        [(UILabel *)v13 setFont:v14];

        layer = [(UILabel *)self->_contentTypeLabel layer];
        [layer setCornerCurve:*MEMORY[0x1E69796E8]];

        layer2 = [(UILabel *)self->_contentTypeLabel layer];
        [layer2 setCornerRadius:6.0];

        [(UILabel *)self->_contentTypeLabel setTextAlignment:1];
        [(UILabel *)self->_contentTypeLabel setClipsToBounds:1];
        [(PGPrerollIndicatorView *)self addSubview:self->_contentTypeLabel];
        [(UILabel *)self->_contentTypeLabel setUserInteractionEnabled:0];
        if (!self->_wantsGlassBackground)
        {
          [(UIView *)self PG_recursivelyDisallowGroupBlending];
        }
      }

      contentTypeLabel = [(PGPrerollIndicatorView *)self contentTypeLabel];
      v18 = *(MEMORY[0x1E695EFD0] + 16);
      v24[0] = *MEMORY[0x1E695EFD0];
      v24[1] = v18;
      v24[2] = *(MEMORY[0x1E695EFD0] + 32);
      [contentTypeLabel setTransform:v24];

      contentTypeLabel2 = [(PGPrerollIndicatorView *)self contentTypeLabel];
      [contentTypeLabel2 setText:textCopy];

      contentTypeLabel3 = [(PGPrerollIndicatorView *)self contentTypeLabel];
      [contentTypeLabel3 sizeToFit];

      contentTypeLabel4 = [(PGPrerollIndicatorView *)self contentTypeLabel];
      [contentTypeLabel4 frame];
      [(PGPrerollIndicatorView *)self setLabelSize:v22, v23];

      [(PGPrerollIndicatorView *)self _layoutContentTypeLabel];
    }
  }
}

- (void)setTimeRemainingText:(id)text
{
  v28[1] = *MEMORY[0x1E69E9840];
  textCopy = text;
  timeRemainingText = [(PGPrerollIndicatorView *)self timeRemainingText];
  if ([textCopy isEqualToString:timeRemainingText])
  {
  }

  else
  {
    timeRemainingText2 = [(PGPrerollIndicatorView *)self timeRemainingText];

    if (timeRemainingText2 != textCopy)
    {
      skipPrerollButtonView = self->_skipPrerollButtonView;
      if (!skipPrerollButtonView)
      {
        v8 = [PGButtonView buttonWithDelegate:self wantsGlassBackground:self->_wantsGlassBackground];
        v9 = self->_skipPrerollButtonView;
        self->_skipPrerollButtonView = v8;

        v10 = self->_skipPrerollButtonView;
        v11 = +[PGButtonView disabledTintColor];
        [(PGButtonView *)v10 setTintColor:v11];

        [(PGButtonView *)self->_skipPrerollButtonView setEnabled:0];
        [(PGButtonView *)self->_skipPrerollButtonView setGlyphSize:10.5];
        [(PGMaterialView *)self->_skipPrerollButtonView _setContinuousCornerRadius:6.0];
        [(PGButtonView *)self->_skipPrerollButtonView setSystemImageName:@"forward.end.fill"];
        [(PGMaterialView *)self->_skipPrerollButtonView setBackgroundColor:0];
        v12 = [MEMORY[0x1E69DB878] systemFontOfSize:13.0 weight:*MEMORY[0x1E69DB970]];
        v13 = *MEMORY[0x1E69DB900];
        v26[0] = *MEMORY[0x1E69DB908];
        v26[1] = v13;
        v27[0] = &unk_1F3958ED0;
        v27[1] = &unk_1F3958EE8;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
        v28[0] = v14;
        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];

        fontDescriptor = [v12 fontDescriptor];
        v17 = *MEMORY[0x1E69DB8C0];
        v24[0] = *MEMORY[0x1E69DB8B0];
        v24[1] = v17;
        v25[0] = v15;
        v25[1] = &unk_1F3959140;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
        v19 = [fontDescriptor fontDescriptorByAddingAttributes:v18];

        v20 = [MEMORY[0x1E69DB878] fontWithDescriptor:v19 size:13.0];

        [(PGButtonView *)self->_skipPrerollButtonView setFont:v20];
        [(PGPrerollIndicatorView *)self addSubview:self->_skipPrerollButtonView];
        if (!self->_wantsGlassBackground)
        {
          [(UIView *)self PG_recursivelyDisallowGroupBlending];
        }

        skipPrerollButtonView = self->_skipPrerollButtonView;
      }

      [(PGButtonView *)skipPrerollButtonView setText:textCopy];
      [(PGButtonView *)self->_skipPrerollButtonView sizeToFit];
      isPrerollSkippable = [(PGControlsViewModel *)self->_viewModel isPrerollSkippable];
      [(PGButtonView *)self->_skipPrerollButtonView setEnabled:isPrerollSkippable];
      v22 = self->_skipPrerollButtonView;
      if (isPrerollSkippable)
      {
        [(PGButtonView *)self->_skipPrerollButtonView enabledTintColor];
      }

      else
      {
        +[PGButtonView disabledTintColor];
      }
      v23 = ;
      [(PGButtonView *)v22 setTintColor:v23];

      [(PGPrerollIndicatorView *)self _layoutSkipPrerollButton];
    }
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = PGPrerollIndicatorView;
  v5 = [(PGPrerollIndicatorView *)&v10 hitTest:event withEvent:test.x, test.y];
  v6 = v5;
  if (v5 == self)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v7;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PGPrerollIndicatorView;
  [(PGPrerollIndicatorView *)&v3 layoutSubviews];
  [(PGPrerollIndicatorView *)self _layoutContentTypeLabel];
  [(PGPrerollIndicatorView *)self _layoutSkipPrerollButton];
}

- (double)labelWidth
{
  [(UILabel *)self->_contentTypeLabel frame];

  return CGRectGetWidth(*&v2);
}

- (void)buttonViewDidReceiveTouchUpInside:(id)inside
{
  viewModel = [(PGPrerollIndicatorView *)self viewModel];
  [viewModel handleSkipPrerollButtonTapped];
}

- (CGRect)buttonView:(id)view imageRectForContentRect:(CGRect)rect proposedRect:(CGRect)proposedRect
{
  height = proposedRect.size.height;
  width = proposedRect.size.width;
  y = proposedRect.origin.y;
  x = proposedRect.origin.x;
  MaxX = CGRectGetMaxX(rect);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v10 = MaxX - CGRectGetWidth(v14);
  v11 = y;
  v12 = width;
  v13 = height;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (CGRect)buttonView:(id)view titleRectForContentRect:(CGRect)rect proposedRect:(CGRect)proposedRect
{
  height = proposedRect.size.height;
  width = proposedRect.size.width;
  y = proposedRect.origin.y;
  v8 = 6.0;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = v8;
  return result;
}

- (UIEdgeInsets)buttonView:(id)view contentEdgeInsetsForProposedInsets:(UIEdgeInsets)insets
{
  text = [view text];
  if ([text length])
  {
    v5 = 9.0;
  }

  else
  {
    v5 = 6.0;
  }

  v6 = 0.0;
  v7 = 0.0;
  v8 = 6.0;
  v9 = v5;
  result.right = v8;
  result.bottom = v7;
  result.left = v9;
  result.top = v6;
  return result;
}

- (CGAffineTransform)_subviewTransform
{
  [(PGPrerollIndicatorView *)self bounds];
  Height = CGRectGetHeight(v11);
  result = [objc_opt_class() preferredHeight];
  v7 = Height / v6;
  if (v7 > 1.0)
  {
    v7 = 1.0;
  }

  v8 = MEMORY[0x1E695EFD0];
  v9 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v9;
  *&retstr->tx = *(v8 + 32);
  if (v7 != 1.0)
  {

    return CGAffineTransformMakeScale(retstr, v7, v7);
  }

  return result;
}

- (void)_layoutContentTypeLabel
{
  contentTypeLabel = self->_contentTypeLabel;
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  v12[0] = *MEMORY[0x1E695EFD0];
  v12[1] = v4;
  v12[2] = *(MEMORY[0x1E695EFD0] + 32);
  [(UILabel *)contentTypeLabel setTransform:v12];
  contentTypeLabel = [(PGPrerollIndicatorView *)self contentTypeLabel];
  [contentTypeLabel frame];

  v6 = *MEMORY[0x1E695EFF8];
  v7 = *(MEMORY[0x1E695EFF8] + 8);
  [objc_opt_class() preferredHeight];
  v9 = v8;
  [(PGPrerollIndicatorView *)self labelSize];
  [(UILabel *)self->_contentTypeLabel setFrame:v6, v7, v10 + 12.0, v9];
  v11 = self->_contentTypeLabel;
  [(PGPrerollIndicatorView *)self _subviewTransform];
  [(UILabel *)v11 setTransform:v12];
  [(UILabel *)self->_contentTypeLabel setFrameOrigin:v6, v7];
}

- (void)_layoutSkipPrerollButton
{
  skipPrerollButtonView = self->_skipPrerollButtonView;
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  v19[0] = *MEMORY[0x1E695EFD0];
  v19[1] = v4;
  v19[2] = *(MEMORY[0x1E695EFD0] + 32);
  [(PGButtonView *)skipPrerollButtonView setTransform:v19];
  [(PGButtonView *)self->_skipPrerollButtonView sizeToFit];
  [(PGButtonView *)self->_skipPrerollButtonView frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(PGPrerollIndicatorView *)self bounds];
  MaxX = CGRectGetMaxX(v20);
  v21.origin.x = v6;
  v21.origin.y = v8;
  v21.size.width = v10;
  v21.size.height = v12;
  v14 = MaxX - CGRectGetWidth(v21);
  [objc_opt_class() preferredHeight];
  [(PGButtonView *)self->_skipPrerollButtonView setFrame:v14, 0.0, v10, v15];
  v16 = self->_skipPrerollButtonView;
  [(PGPrerollIndicatorView *)self _subviewTransform];
  [(PGButtonView *)v16 setTransform:v19];
  v17 = self->_skipPrerollButtonView;
  [(PGPrerollIndicatorView *)self bounds];
  v18 = CGRectGetMaxX(v22);
  [(PGButtonView *)self->_skipPrerollButtonView frame];
  [(PGButtonView *)v17 setFrameOrigin:v18 - CGRectGetWidth(v23), 0.0];
}

- (CGSize)labelSize
{
  width = self->_labelSize.width;
  height = self->_labelSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end