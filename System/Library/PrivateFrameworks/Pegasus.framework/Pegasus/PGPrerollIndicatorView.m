@interface PGPrerollIndicatorView
- (CGAffineTransform)_subviewTransform;
- (CGRect)buttonView:(id)a3 imageRectForContentRect:(CGRect)a4 proposedRect:(CGRect)a5;
- (CGRect)buttonView:(id)a3 titleRectForContentRect:(CGRect)a4 proposedRect:(CGRect)a5;
- (CGSize)labelSize;
- (NSString)labelText;
- (PGPrerollIndicatorView)initWithFrame:(CGRect)a3 viewModel:(id)a4;
- (UIEdgeInsets)buttonView:(id)a3 contentEdgeInsetsForProposedInsets:(UIEdgeInsets)a4;
- (double)labelWidth;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_layoutContentTypeLabel;
- (void)_layoutSkipPrerollButton;
- (void)buttonViewDidReceiveTouchUpInside:(id)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setLabelText:(id)a3;
- (void)setTimeRemainingText:(id)a3;
- (void)updateValues;
@end

@implementation PGPrerollIndicatorView

- (PGPrerollIndicatorView)initWithFrame:(CGRect)a3 viewModel:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v17.receiver = self;
  v17.super_class = PGPrerollIndicatorView;
  v11 = [(PGPrerollIndicatorView *)&v17 initWithFrame:x, y, width, height];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_viewModel, a4);
    v13 = [v10 values];
    v12->_wantsGlassBackground = [v13 controlsViewWantsGlassBackground];

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
  v18 = [(PGPrerollIndicatorView *)self viewModel];
  v3 = [v18 values];
  if (![v3 isPrerollActive])
  {
    v7 = 0;
    goto LABEL_15;
  }

  v4 = [v3 prerollAttributes];
  v5 = [v4 contentType];
  if (v5 == 2)
  {
    v6 = @"SPONSORED_PREROLL_LABEL";
    goto LABEL_7;
  }

  if (v5 == 1)
  {
    v6 = @"AD_PREROLL_LABEL";
LABEL_7:
    v8 = PGLocalizedString(v6);
    [(PGPrerollIndicatorView *)self setLabelText:v8];
  }

  if ([v18 secondsUntilPrerollSkippable] == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(PGButtonView *)self->_skipPrerollButtonView setHidden:1];
  }

  else
  {
    v9 = [v18 secondsUntilPrerollSkippable];
    if (v9 < 1)
    {
      v13 = PGLocalizedString(@"SKIP_PREROLL");
      v15 = &stru_1F394B800;
      v14 = self;
    }

    else
    {
      v10 = v9;
      v11 = MEMORY[0x1E696AEC0];
      v12 = PGLocalizedString(@"SKIP_PREROLL_IN_N_SECONDS");
      v13 = [v11 stringWithFormat:v12, v10];

      v14 = self;
      v15 = v13;
    }

    [(PGPrerollIndicatorView *)v14 setTimeRemainingText:v15];
    [(PGButtonView *)self->_skipPrerollButtonView setAccessibilityIdentifier:v13];
    [(PGButtonView *)self->_skipPrerollButtonView setHidden:0];
  }

  v16 = [(PGPrerollIndicatorView *)self contentTypeLabel];
  v17 = [v3 prerollTintColor];
  [v16 setBackgroundColor:v17];

  v7 = 10;
LABEL_15:
  [(PGDisplayLink *)self->_displayLink setPreferredFramesPerSecond:v7];
}

- (NSString)labelText
{
  v2 = [(PGPrerollIndicatorView *)self contentTypeLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setLabelText:(id)a3
{
  v4 = a3;
  v5 = [(PGPrerollIndicatorView *)self labelText];
  v6 = v5;
  if (v5 == v4)
  {
  }

  else
  {
    v7 = [(PGPrerollIndicatorView *)self labelText];
    v8 = [v7 isEqualToString:v4];

    if ((v8 & 1) == 0)
    {
      if (!self->_contentTypeLabel)
      {
        v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
        contentTypeLabel = self->_contentTypeLabel;
        self->_contentTypeLabel = v9;

        v11 = self->_contentTypeLabel;
        v12 = [MEMORY[0x1E69DC888] whiteColor];
        [(UILabel *)v11 setTextColor:v12];

        v13 = self->_contentTypeLabel;
        v14 = [MEMORY[0x1E69DB878] systemFontOfSize:13.0 weight:*MEMORY[0x1E69DB980]];
        [(UILabel *)v13 setFont:v14];

        v15 = [(UILabel *)self->_contentTypeLabel layer];
        [v15 setCornerCurve:*MEMORY[0x1E69796E8]];

        v16 = [(UILabel *)self->_contentTypeLabel layer];
        [v16 setCornerRadius:6.0];

        [(UILabel *)self->_contentTypeLabel setTextAlignment:1];
        [(UILabel *)self->_contentTypeLabel setClipsToBounds:1];
        [(PGPrerollIndicatorView *)self addSubview:self->_contentTypeLabel];
        [(UILabel *)self->_contentTypeLabel setUserInteractionEnabled:0];
        if (!self->_wantsGlassBackground)
        {
          [(UIView *)self PG_recursivelyDisallowGroupBlending];
        }
      }

      v17 = [(PGPrerollIndicatorView *)self contentTypeLabel];
      v18 = *(MEMORY[0x1E695EFD0] + 16);
      v24[0] = *MEMORY[0x1E695EFD0];
      v24[1] = v18;
      v24[2] = *(MEMORY[0x1E695EFD0] + 32);
      [v17 setTransform:v24];

      v19 = [(PGPrerollIndicatorView *)self contentTypeLabel];
      [v19 setText:v4];

      v20 = [(PGPrerollIndicatorView *)self contentTypeLabel];
      [v20 sizeToFit];

      v21 = [(PGPrerollIndicatorView *)self contentTypeLabel];
      [v21 frame];
      [(PGPrerollIndicatorView *)self setLabelSize:v22, v23];

      [(PGPrerollIndicatorView *)self _layoutContentTypeLabel];
    }
  }
}

- (void)setTimeRemainingText:(id)a3
{
  v28[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PGPrerollIndicatorView *)self timeRemainingText];
  if ([v4 isEqualToString:v5])
  {
  }

  else
  {
    v6 = [(PGPrerollIndicatorView *)self timeRemainingText];

    if (v6 != v4)
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

        v16 = [v12 fontDescriptor];
        v17 = *MEMORY[0x1E69DB8C0];
        v24[0] = *MEMORY[0x1E69DB8B0];
        v24[1] = v17;
        v25[0] = v15;
        v25[1] = &unk_1F3959140;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
        v19 = [v16 fontDescriptorByAddingAttributes:v18];

        v20 = [MEMORY[0x1E69DB878] fontWithDescriptor:v19 size:13.0];

        [(PGButtonView *)self->_skipPrerollButtonView setFont:v20];
        [(PGPrerollIndicatorView *)self addSubview:self->_skipPrerollButtonView];
        if (!self->_wantsGlassBackground)
        {
          [(UIView *)self PG_recursivelyDisallowGroupBlending];
        }

        skipPrerollButtonView = self->_skipPrerollButtonView;
      }

      [(PGButtonView *)skipPrerollButtonView setText:v4];
      [(PGButtonView *)self->_skipPrerollButtonView sizeToFit];
      v21 = [(PGControlsViewModel *)self->_viewModel isPrerollSkippable];
      [(PGButtonView *)self->_skipPrerollButtonView setEnabled:v21];
      v22 = self->_skipPrerollButtonView;
      if (v21)
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

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v10.receiver = self;
  v10.super_class = PGPrerollIndicatorView;
  v5 = [(PGPrerollIndicatorView *)&v10 hitTest:a4 withEvent:a3.x, a3.y];
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

- (void)buttonViewDidReceiveTouchUpInside:(id)a3
{
  v3 = [(PGPrerollIndicatorView *)self viewModel];
  [v3 handleSkipPrerollButtonTapped];
}

- (CGRect)buttonView:(id)a3 imageRectForContentRect:(CGRect)a4 proposedRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  MaxX = CGRectGetMaxX(a4);
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

- (CGRect)buttonView:(id)a3 titleRectForContentRect:(CGRect)a4 proposedRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  v8 = 6.0;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = v8;
  return result;
}

- (UIEdgeInsets)buttonView:(id)a3 contentEdgeInsetsForProposedInsets:(UIEdgeInsets)a4
{
  v4 = [a3 text];
  if ([v4 length])
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
  v5 = [(PGPrerollIndicatorView *)self contentTypeLabel];
  [v5 frame];

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