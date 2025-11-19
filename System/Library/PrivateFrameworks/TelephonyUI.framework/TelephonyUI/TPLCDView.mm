@interface TPLCDView
- (BOOL)shouldCenterContentView;
- (CGRect)_imageViewFrame;
- (CGRect)_labelFrame;
- (CGRect)_text1Frame;
- (CGRect)fullSizedContentViewFrame;
- (TPLCDView)initWithDefaultSizeForOrientation:(int64_t)a3;
- (double)_labelVInset;
- (void)_resetContentViewFrame;
- (void)blinkLabel;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setContentsAlpha:(double)a3;
- (void)setLabel:(id)a3 animate:(BOOL)a4;
- (void)setLabelFontSize:(double)a3;
- (void)setLayoutAsLabelled:(BOOL)a3;
- (void)setShadowColor:(id)a3;
- (void)setSubImage:(id)a3;
- (void)setText:(id)a3;
- (void)setTextFontSize:(double)a3;
@end

@implementation TPLCDView

- (CGRect)fullSizedContentViewFrame
{
  [(TPLCDView *)self bounds];
  v3 = v2;
  v5 = v4;
  v6 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v6 bounds];
  v8 = v7;
  v10 = v9;

  if (v8 >= v10)
  {
    v8 = v10;
  }

  [objc_opt_class() defaultHeightForOrientation:4];
  v12 = v11;
  v13 = floor((v3 - v8) * 0.5);
  v14 = floor((v5 - v12) * 0.5);
  v15 = v8;
  result.size.height = v12;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)_resetContentViewFrame
{
  contentView = self->_contentView;
  [(TPLCDView *)self fullSizedContentViewFrame];
  [(UIView *)contentView setFrame:?];

  [(TPLCDView *)self setNeedsLayout];
}

- (TPLCDView)initWithDefaultSizeForOrientation:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = TPLCDView;
  v3 = [(TPLCDBar *)&v8 initWithDefaultSizeForOrientation:a3];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD250]);
    [(TPLCDView *)v3 fullSizedContentViewFrame];
    v5 = [v4 initWithFrame:?];
    contentView = v3->_contentView;
    v3->_contentView = v5;

    [(UIView *)v3->_contentView setAutoresizingMask:45];
    [(TPLCDView *)v3 addSubview:v3->_contentView];
  }

  return v3;
}

- (BOOL)shouldCenterContentView
{
  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  return (v4 & 0xFFFFFFFFFFFFFFFBLL) == 1 && self->_imageView != 0;
}

- (void)setContentsAlpha:(double)a3
{
  [(TPLCDTextView *)self->_textView setAlpha:?];
  [(TPLCDTextView *)self->_labelView setAlpha:a3];
  imageView = self->_imageView;

  [(TPLCDSubImageView *)imageView setAlpha:a3];
}

- (double)_labelVInset
{
  v3 = [(TPLCDView *)self subImage];

  [(UIView *)self->_contentView bounds];
  v4 = floor(CGRectGetMidY(v7));
  v5 = 5.0;
  if (!v3)
  {
    v5 = 18.0;
  }

  return v4 + v5;
}

- (void)setTextFontSize:(double)a3
{
  textView = self->_textView;
  v4 = [MEMORY[0x1E69DB878] _thinSystemFontOfSize:a3];
  [(TPLCDTextView *)textView setFont:v4];
}

- (void)setText:(id)a3
{
  v9 = a3;
  [(TPLCDView *)self _resetContentViewFrame];
  textView = self->_textView;
  if (!textView)
  {
    v5 = MEMORY[0x1E69DB878];
    [objc_opt_class() defaultTextFontSize];
    v6 = [v5 _thinSystemFontOfSize:?];
    v7 = objc_alloc_init(TPLCDTextView);
    v8 = self->_textView;
    self->_textView = v7;

    [(TPLCDTextView *)self->_textView setLCDTextFont:v6];
    [(UIView *)self->_contentView addSubview:self->_textView];

    textView = self->_textView;
  }

  [(TPLCDTextView *)textView setText:v9];
  [(TPLCDView *)self layoutIfNeeded];
}

- (CGRect)_text1Frame
{
  [(TPLCDView *)self _textVInset];
  v4 = v3;
  v5 = v3;
  [(TPLCDView *)self _labelVInset];
  v7 = v6;
  [(UIView *)self->_contentView bounds];
  v9 = v8;
  v10 = v7 - v4;
  if (!self->_labelView && (*(self + 448) & 1) == 0)
  {
    [(TPLCDView *)self _textVInset];
    v5 = v11;
  }

  v12 = v9 + -40.0;
  if (self->_imageView)
  {
    if ([(TPLCDView *)self shouldCenterContentView])
    {
      v13 = 0.0;
    }

    else
    {
      v13 = 20.0;
    }

    if ([(TPLCDView *)self verticallyCenterTextViewIfLabelless]&& !self->_labelView)
    {
      [(TPLCDSubImageView *)self->_imageView frame];
      v24 = v23;
      [(TPLCDSubImageView *)self->_imageView bounds];
      v5 = v24 + v25 * 0.5 - (v10 + 5.0) * 0.5;
    }

    else
    {
      v5 = v4 + -6.0;
    }

    [(TPLCDTextView *)self->_textView sizeToFit];
    if (v12 >= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = v9 + -40.0;
    }

    [(UIView *)self->_contentView bounds];
    v17 = v16;
    [(TPLCDSubImageView *)self->_imageView bounds];
    if (v15 >= v17 - (v18 + 42.0))
    {
      v12 = v17 - (v18 + 42.0);
    }

    else
    {
      v12 = v15;
    }
  }

  else
  {
    v13 = 20.0;
  }

  v19 = v13;
  v20 = v5;
  v21 = v12;
  v22 = v10 + 5.0;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGRect)_labelFrame
{
  [(UIView *)self->_contentView bounds];
  v4 = v3;
  v6 = v5;
  [(TPLCDView *)self _labelVInset];
  v8 = v7;
  v9 = v4 + -40.0;
  if (self->_imageView)
  {
    if ([(TPLCDView *)self shouldCenterContentView])
    {
      v10 = 0.0;
    }

    else
    {
      v10 = 20.0;
    }

    v8 = v8 + -1.0;
    [(TPLCDTextView *)self->_labelView sizeToFit];
    if (v9 >= v11)
    {
      v9 = v11;
    }

    [(TPLCDSubImageView *)self->_imageView bounds];
    if (v9 >= v4 - (v12 + 42.0))
    {
      v9 = v4 - (v12 + 42.0);
    }
  }

  else
  {
    v10 = 20.0;
  }

  v13 = v6 - v8;
  v14 = v10;
  v15 = v8;
  v16 = v9;
  result.size.height = v13;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)_imageViewFrame
{
  imageView = self->_imageView;
  if (imageView)
  {
    [(TPLCDSubImageView *)imageView bounds];
    v5 = v4;
    v7 = v6;
    [(UIView *)self->_contentView bounds];
    v9 = v8 + -20.0 - v5;
    [(UIView *)self->_contentView bounds];
    v11 = (v10 - v7) * 0.5;
    v12 = (roundf(v11) + -4.0);
  }

  else
  {
    v9 = *MEMORY[0x1E695F058];
    v12 = *(MEMORY[0x1E695F058] + 8);
    v5 = *(MEMORY[0x1E695F058] + 16);
    v7 = *(MEMORY[0x1E695F058] + 24);
  }

  v13 = v9;
  v14 = v5;
  v15 = v7;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v12;
  result.origin.x = v13;
  return result;
}

- (void)layoutSubviews
{
  contentView = self->_contentView;
  [(TPLCDView *)self fullSizedContentViewFrame];
  [(UIView *)contentView setFrame:?];
  v4 = [(TPLCDView *)self shouldCenterText];
  [(TPLCDTextView *)self->_textView setCenterText:v4];
  [(TPLCDTextView *)self->_labelView setCenterText:v4];
  v5 = 0.0;
  v6 = 0.0;
  if (self->_imageView)
  {
    [(TPLCDView *)self _imageViewFrame];
    v6 = v7;
    [(TPLCDSubImageView *)self->_imageView setFrame:?];
  }

  if (self->_textView)
  {
    [(TPLCDView *)self textFrame];
    v5 = v8;
    [(TPLCDTextView *)self->_textView setFrame:?];
  }

  if (self->_labelView)
  {
    [(TPLCDView *)self _labelFrame];
    v10 = v9;
    [(TPLCDTextView *)self->_labelView setFrame:?];
  }

  else
  {
    v10 = 0.0;
  }

  if ([(TPLCDView *)self shouldCenterContentView])
  {
    [(UIView *)self->_contentView frame];
    v12 = v11;
    v14 = v13;
    if (v5 >= v10)
    {
      v15 = v5;
    }

    else
    {
      v15 = v10;
    }

    v16 = v6 + v15 + 40.0;
    [(TPLCDView *)self bounds];
    v18 = self->_contentView;
    v19 = floor((v17 - v16) * 0.5);

    [(UIView *)v18 setFrame:v19, v12, v16, v14];
  }
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = TPLCDView;
  [(TPLCDView *)&v3 didMoveToWindow];
  [(TPLCDView *)self setNeedsLayout];
}

- (void)setLabelFontSize:(double)a3
{
  labelView = self->_labelView;
  v4 = [MEMORY[0x1E69DB878] systemFontOfSize:a3];
  [(TPLCDTextView *)labelView setFont:v4];
}

- (void)setLabel:(id)a3 animate:(BOOL)a4
{
  v4 = a4;
  v16 = a3;
  [(TPLCDView *)self _resetContentViewFrame];
  if (v4)
  {
    [MEMORY[0x1E69DD250] beginAnimations:@"lcdViewFadeLabelOut" context:self->_labelView];
    [MEMORY[0x1E69DD250] setAnimationDuration:0.5];
    [MEMORY[0x1E69DD250] setAnimationDelegate:self];
    [MEMORY[0x1E69DD250] setAnimationDidStopSelector:sel_didFinishAnimatingLCDLabelFadeOut_finished_context_];
    [(TPLCDTextView *)self->_labelView setAlpha:0.0];
    [MEMORY[0x1E69DD250] endAnimations];
    labelView = self->_labelView;
    self->_labelView = 0;
  }

  v7 = [v16 length];
  v8 = self->_labelView;
  if (v7)
  {
    if (!v8)
    {
      v9 = objc_alloc_init(TPLCDTextView);
      v10 = self->_labelView;
      self->_labelView = v9;

      v11 = self->_labelView;
      v12 = MEMORY[0x1E69DB878];
      [objc_opt_class() defaultLabelFontSize];
      v13 = [v12 systemFontOfSize:?];
      [(TPLCDTextView *)v11 setLCDTextFont:v13];

      [(TPLCDTextView *)self->_labelView setMinimumFontSize:14.0];
      [(UIView *)self->_contentView addSubview:self->_labelView];
      v8 = self->_labelView;
    }

    [(TPLCDTextView *)v8 setText:v16];
  }

  else if (v8)
  {
    [(TPLCDTextView *)v8 removeFromSuperview];
    v14 = self->_labelView;
    self->_labelView = 0;
  }

  if (v4)
  {
    v15 = self->_labelView;
    if (v15)
    {
      [(TPLCDTextView *)v15 setAlpha:0.0];
      [MEMORY[0x1E69DD250] beginAnimations:@"lcdViewFadeLabelIn"];
      [MEMORY[0x1E69DD250] setAnimationDuration:0.5];
      [(TPLCDTextView *)self->_labelView setAlpha:1.0];
      [MEMORY[0x1E69DD250] endAnimations];
    }
  }

  [(TPLCDView *)self layoutIfNeeded];
}

- (void)blinkLabel
{
  v16 = [MEMORY[0x1E6979390] animation];
  [v16 setKeyPath:@"hidden"];
  v3 = MEMORY[0x1E695DEC8];
  LODWORD(v4) = 1.0;
  v5 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  v6 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
  v7 = [v3 arrayWithObjects:{v5, v6, 0}];
  [v16 setValues:v7];

  v8 = MEMORY[0x1E695DEC8];
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
  LODWORD(v10) = 0.5;
  v11 = [MEMORY[0x1E696AD98] numberWithFloat:v10];
  LODWORD(v12) = 1.0;
  v13 = [MEMORY[0x1E696AD98] numberWithFloat:v12];
  v14 = [v8 arrayWithObjects:{v9, v11, v13, 0}];
  [v16 setKeyTimes:v14];

  [v16 setDuration:0.3];
  [v16 setCalculationMode:*MEMORY[0x1E69795A0]];
  LODWORD(v15) = 3.0;
  [v16 setRepeatCount:v15];
  [(TPLCDTextView *)self->_labelView addAnimation:v16 forKey:@"hidden"];
}

- (void)setSubImage:(id)a3
{
  v8 = a3;
  [(TPLCDView *)self _resetContentViewFrame];
  imageView = self->_imageView;
  if (v8 && !imageView)
  {
    v5 = [[TPLCDSubImageView alloc] initWithDefaultSize];
    v6 = self->_imageView;
    self->_imageView = v5;

    [(UIView *)self->_contentView addSubview:self->_imageView];
    imageView = self->_imageView;
LABEL_5:
    [(TPLCDSubImageView *)imageView setAutoresizingMask:41];
    [(TPLCDSubImageView *)self->_imageView setImage:v8];
    goto LABEL_6;
  }

  if (v8)
  {
    goto LABEL_5;
  }

  if (imageView)
  {
    [(TPLCDSubImageView *)imageView removeFromSuperview];
    v7 = self->_imageView;
    self->_imageView = 0;
  }

LABEL_6:
  [(TPLCDView *)self layoutIfNeeded];
}

- (void)setShadowColor:(id)a3
{
  textView = self->_textView;
  v5 = a3;
  [(TPLCDTextView *)textView setShadowColor:v5];
  [(TPLCDTextView *)self->_labelView setShadowColor:v5];
}

- (void)setLayoutAsLabelled:(BOOL)a3
{
  v7 = *(self + 448);
  if ((v7 & 1) != a3)
  {
    v10 = v3;
    *(self + 448) = v7 & 0xFE | a3;
    if (!a3)
    {
      [(TPLCDTextView *)self->_labelView removeFromSuperview];
      labelView = self->_labelView;
      self->_labelView = 0;
    }

    [(TPLCDView *)self layoutIfNeeded:v4];

    [(TPLCDView *)self setNeedsDisplay];
  }
}

@end