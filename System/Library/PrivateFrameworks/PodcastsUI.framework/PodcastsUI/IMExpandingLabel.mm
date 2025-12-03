@interface IMExpandingLabel
- (BOOL)isScrollEnabled;
- (IMExpandingLabel)initWithFrame:(CGRect)frame;
- (IMExpandingLabelDelegate)delegate;
- (double)heightForWidth:(double)width;
- (void)layoutSubviews;
- (void)setExpanded:(BOOL)expanded;
- (void)setHasGradient:(BOOL)gradient;
- (void)setMoreButton:(id)button;
- (void)setNumberOfLines:(unint64_t)lines;
- (void)setScrollEnabled:(BOOL)enabled;
- (void)setText:(id)text;
@end

@implementation IMExpandingLabel

- (IMExpandingLabel)initWithFrame:(CGRect)frame
{
  v27.receiver = self;
  v27.super_class = IMExpandingLabel;
  v3 = [(IMExpandingLabel *)&v27 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_numberOfLines = 2;
    v3->_textMode = 8;
    v3->_expanded = 1;
    v3->_fitsWithinLineLimit = 0;
    v3->_hasGradient = 0;
    v3->_gradientHeight = 22.0;
    v3->_languageDirection = 1;
    [(IMExpandingLabel *)v3 setAutoresizingMask:18];
    [(IMExpandingLabel *)v4 setContentMode:5];
    [(IMExpandingLabel *)v4 setAutoresizesSubviews:1];
    v5 = objc_alloc(MEMORY[0x277D75C40]);
    [(IMExpandingLabel *)v4 bounds];
    v6 = [v5 initWithFrame:?];
    textView = v4->_textView;
    v4->_textView = v6;

    [(UITextView *)v4->_textView setAutoresizingMask:18];
    [(UITextView *)v4->_textView setScrollEnabled:0];
    [(UITextView *)v4->_textView setEditable:0];
    textContainer = [(UITextView *)v4->_textView textContainer];
    [textContainer setLineBreakMode:4];

    textContainer2 = [(UITextView *)v4->_textView textContainer];
    [textContainer2 setLineFragmentPadding:0.0];

    v10 = *MEMORY[0x277D768C8];
    v11 = *(MEMORY[0x277D768C8] + 8);
    v12 = *(MEMORY[0x277D768C8] + 16);
    v13 = *(MEMORY[0x277D768C8] + 24);
    [(UITextView *)v4->_textView setTextContainerInset:*MEMORY[0x277D768C8], v11, v12, v13];
    [(UITextView *)v4->_textView setContentInset:v10, v11, v12, v13];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UITextView *)v4->_textView setBackgroundColor:clearColor];

    [(UITextView *)v4->_textView setDataDetectorTypes:7];
    [(UITextView *)v4->_textView setTextAlignment:0];
    layer = [MEMORY[0x277CD9EB0] layer];
    gradientLayer = v4->_gradientLayer;
    v4->_gradientLayer = layer;

    v17 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.100000001];
    cGColor = [v17 CGColor];
    gradientClearColor = v4->_gradientClearColor;
    v4->_gradientClearColor = cGColor;

    v20 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.330000013];
    cGColor2 = [v20 CGColor];
    gradientSemiClearColor = v4->_gradientSemiClearColor;
    v4->_gradientSemiClearColor = cGColor2;

    v23 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:1.0];
    cGColor3 = [v23 CGColor];
    gradientSolidColor = v4->_gradientSolidColor;
    v4->_gradientSolidColor = cGColor3;

    [(IMExpandingLabel *)v4 addSubview:v4->_textView];
  }

  return v4;
}

- (void)layoutSubviews
{
  v74[1] = *MEMORY[0x277D85DE8];
  v70.receiver = self;
  v70.super_class = IMExpandingLabel;
  [(IMExpandingLabel *)&v70 layoutSubviews];
  moreButton = [(IMExpandingLabel *)self moreButton];
  if (moreButton)
  {
    v4 = moreButton;
    isExpanded = [(IMExpandingLabel *)self isExpanded];

    if (!isExpanded)
    {
      textView = [(IMExpandingLabel *)self textView];
      textContainer = [textView textContainer];
      [textContainer setExclusionPaths:MEMORY[0x277CBEBF8]];

      textView2 = [(IMExpandingLabel *)self textView];
      textContainer2 = [textView2 textContainer];
      [textContainer2 setMaximumNumberOfLines:0];

      textView3 = [(IMExpandingLabel *)self textView];
      [(IMExpandingLabel *)self bounds];
      [textView3 sizeThatFits:{v11, 3.40282347e38}];
      v13 = v12;
      v14 = ceilf(v13);

      numberOfLines = [(IMExpandingLabel *)self numberOfLines];
      textView4 = [(IMExpandingLabel *)self textView];
      textContainer3 = [textView4 textContainer];
      [textContainer3 setMaximumNumberOfLines:numberOfLines];

      textView5 = [(IMExpandingLabel *)self textView];
      [(IMExpandingLabel *)self bounds];
      [textView5 sizeThatFits:{v19, 3.40282347e38}];
      v21 = v20;
      v22 = ceilf(v21);

      v23 = vabdd_f64(v14, v22);
      if (v23 < 2.22044605e-16)
      {
        [(IMExpandingLabel *)self setFitsWithinLineLimit:1];
        numberOfLines2 = 0;
LABEL_7:
        textView6 = [(IMExpandingLabel *)self textView];
        textContainer4 = [textView6 textContainer];
        [textContainer4 setMaximumNumberOfLines:numberOfLines2];

        moreButton2 = [(IMExpandingLabel *)self moreButton];
        [moreButton2 setHidden:v23 < 2.22044605e-16];

        goto LABEL_8;
      }

      if ([(IMExpandingLabel *)self fitsWithinLineLimit])
      {
        [(IMExpandingLabel *)self setFitsWithinLineLimit:0];
        numberOfLines2 = [(IMExpandingLabel *)self numberOfLines];
        goto LABEL_7;
      }
    }
  }

LABEL_8:
  moreButton3 = [(IMExpandingLabel *)self moreButton];
  if (!moreButton3 || [(IMExpandingLabel *)self isExpanded])
  {

LABEL_11:
    textView7 = [(IMExpandingLabel *)self textView];
    textContainer5 = [textView7 textContainer];
    [textContainer5 setExclusionPaths:MEMORY[0x277CBEBF8]];
    goto LABEL_12;
  }

  fitsWithinLineLimit = [(IMExpandingLabel *)self fitsWithinLineLimit];

  if (fitsWithinLineLimit)
  {
    goto LABEL_11;
  }

  languageDirection = [(IMExpandingLabel *)self languageDirection];
  if (languageDirection == 2)
  {
    v49 = 0.0;
  }

  else
  {
    [(IMExpandingLabel *)self bounds];
    v53 = v52;
    fitsWithinLineLimit = [(IMExpandingLabel *)self moreButton];
    [fitsWithinLineLimit bounds];
    v49 = v53 - v54;
  }

  [(IMExpandingLabel *)self bounds];
  [(IMExpandingLabel *)self heightForWidth:v55];
  v57 = v56;
  moreButton4 = [(IMExpandingLabel *)self moreButton];
  [moreButton4 bounds];
  v60 = v57 - v59;
  moreButton5 = [(IMExpandingLabel *)self moreButton];
  [moreButton5 bounds];
  v63 = v62;
  moreButton6 = [(IMExpandingLabel *)self moreButton];
  [moreButton6 bounds];
  v66 = v65;

  if (languageDirection != 2)
  {
  }

  moreButton7 = [(IMExpandingLabel *)self moreButton];
  [moreButton7 setFrame:{v49, v60, v63, v66}];

  textView7 = [MEMORY[0x277D75208] bezierPathWithRect:{v49, v60, v63, v66}];
  v74[0] = textView7;
  textContainer5 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:1];
  textView8 = [(IMExpandingLabel *)self textView];
  textContainer6 = [textView8 textContainer];
  [textContainer6 setExclusionPaths:textContainer5];

LABEL_12:
  if ([(IMExpandingLabel *)self hasGradient])
  {
    gradientHeight = self->_gradientHeight;
    [(IMExpandingLabel *)self bounds];
    Height = CGRectGetHeight(v75);
    gradientLayer = self->_gradientLayer;
    v34 = gradientHeight / Height;
    v35 = [MEMORY[0x277CCABB0] numberWithFloat:0.0];
    v73[0] = v35;
    v36 = 1.0 - v34;
    *&v36 = 1.0 - v34;
    v37 = [MEMORY[0x277CCABB0] numberWithFloat:v36];
    v73[1] = v37;
    v38 = v34 / -3.0 + 1.0;
    *&v38 = v38;
    v39 = [MEMORY[0x277CCABB0] numberWithFloat:v38];
    v73[2] = v39;
    v40 = v34 / -12.0 + 1.0;
    *&v40 = v40;
    v41 = [MEMORY[0x277CCABB0] numberWithFloat:v40];
    v73[3] = v41;
    v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:4];
    [(CAGradientLayer *)gradientLayer setLocations:v42];

    isExpanded2 = [(IMExpandingLabel *)self isExpanded];
    v44 = self->_gradientLayer;
    gradientSolidColor = self->_gradientSolidColor;
    if (isExpanded2)
    {
      v72[0] = self->_gradientSolidColor;
      v72[1] = gradientSolidColor;
      v46 = v72;
      v72[2] = gradientSolidColor;
      v72[3] = gradientSolidColor;
    }

    else
    {
      v71[0] = self->_gradientSolidColor;
      v71[1] = gradientSolidColor;
      gradientClearColor = self->_gradientClearColor;
      v71[2] = self->_gradientSemiClearColor;
      v71[3] = gradientClearColor;
      v46 = v71;
    }

    v51 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:4];
    [(CAGradientLayer *)v44 setColors:v51];

    [(IMExpandingLabel *)self bounds];
    [(CAGradientLayer *)self->_gradientLayer setFrame:?];
  }
}

- (void)setMoreButton:(id)button
{
  buttonCopy = button;
  [(UIButton *)self->_moreButton removeTarget:self action:sel_moreButtonTapped_ forControlEvents:64];
  [(UIButton *)self->_moreButton removeFromSuperview];
  moreButton = self->_moreButton;
  self->_moreButton = buttonCopy;
  v6 = buttonCopy;

  [(IMExpandingLabel *)self addSubview:self->_moreButton];
  [(UIButton *)self->_moreButton addTarget:self action:sel_moreButtonTapped_ forControlEvents:64];

  [(IMExpandingLabel *)self setExpanded:0];
}

- (void)setExpanded:(BOOL)expanded
{
  expanded = self->_expanded;
  self->_expanded = expanded;
  if (expanded)
  {
    textView = [(IMExpandingLabel *)self textView];
    textContainer = [textView textContainer];
    [textContainer setMaximumNumberOfLines:0];

    textView2 = [(IMExpandingLabel *)self textView];
    textContainer2 = [textView2 textContainer];
    [textContainer2 setExclusionPaths:MEMORY[0x277CBEBF8]];

    moreButton = [(IMExpandingLabel *)self moreButton];
    [moreButton setHidden:1];

    [(IMExpandingLabel *)self setNeedsLayout];
    if (!expanded)
    {
      delegate = [(IMExpandingLabel *)self delegate];
      [delegate expandingLabelShouldExpand:self];
    }
  }

  else
  {
    numberOfLines = [(IMExpandingLabel *)self numberOfLines];
    textView3 = [(IMExpandingLabel *)self textView];
    textContainer3 = [textView3 textContainer];
    [textContainer3 setMaximumNumberOfLines:numberOfLines];

    moreButton2 = [(IMExpandingLabel *)self moreButton];
    [moreButton2 setHidden:0];

    [(IMExpandingLabel *)self setNeedsLayout];
  }
}

- (void)setHasGradient:(BOOL)gradient
{
  self->_hasGradient = gradient;
  if (gradient)
  {
    gradientLayer = self->_gradientLayer;
  }

  else
  {
    gradientLayer = 0;
  }

  layer = [(UITextView *)self->_textView layer];
  [layer setMask:gradientLayer];

  [(IMExpandingLabel *)self setNeedsLayout];
}

- (void)setText:(id)text
{
  textCopy = text;
  if (([textCopy isEqualToString:self->_text] & 1) == 0)
  {
    objc_storeStrong(&self->_text, text);
    if (textCopy)
    {
      if (-[IMExpandingLabel textMode](self, "textMode") == 2 || ((v11 = -[IMExpandingLabel textMode](self, "textMode"), v12 = -[IMExpandingLabel textMode](self, "textMode"), v11 == 4) || v12 == 8) && [textCopy hasHTML])
      {
        v5 = MEMORY[0x277CCA898];
        textAttributes = [(IMExpandingLabel *)self textAttributes];
        textAttributes2 = [v5 safeAttributedStringWithHTML:textCopy attributes:textAttributes];

        if ([(IMExpandingLabel *)self textMode]== 8)
        {
          attributedStringByTrimmingWhitespaceNewlinesAndObjectReplacementCharacters = [textAttributes2 attributedStringByTrimmingWhitespaceNewlinesAndObjectReplacementCharacters];

          textAttributes2 = attributedStringByTrimmingWhitespaceNewlinesAndObjectReplacementCharacters;
        }

        textView = [(IMExpandingLabel *)self textView];
        [textView setAttributedText:textAttributes2];
      }

      else
      {
        v13 = objc_alloc(MEMORY[0x277CCA898]);
        textAttributes2 = [(IMExpandingLabel *)self textAttributes];
        textView = [v13 initWithString:textCopy attributes:textAttributes2];
        textView2 = [(IMExpandingLabel *)self textView];
        [textView2 setAttributedText:textView];
      }

      textView3 = [(IMExpandingLabel *)self textView];
      text = [textView3 text];
      textView4 = [(IMExpandingLabel *)self textView];
      text2 = [textView4 text];
      v24.length = [text2 length];
      v24.location = 0;
      v19 = CFStringTokenizerCopyBestStringLanguage(text, v24);

      -[IMExpandingLabel setLanguageDirection:](self, "setLanguageDirection:", [MEMORY[0x277CBEAF8] characterDirectionForLanguage:v19]);
    }

    else
    {
      textView5 = [(IMExpandingLabel *)self textView];
      [textView5 setText:0];

      [(IMExpandingLabel *)self setLanguageDirection:1];
    }

    v20 = [(IMExpandingLabel *)self languageDirection]== 2;
    textView6 = [(IMExpandingLabel *)self textView];
    [textView6 setTextAlignment:2 * v20];

    [(IMExpandingLabel *)self setNeedsLayout];
  }
}

- (void)setNumberOfLines:(unint64_t)lines
{
  self->_numberOfLines = lines;
  if (![(IMExpandingLabel *)self isExpanded])
  {
    textView = [(IMExpandingLabel *)self textView];
    textContainer = [textView textContainer];
    [textContainer setMaximumNumberOfLines:lines];

    [(IMExpandingLabel *)self setNeedsLayout];
  }
}

- (double)heightForWidth:(double)width
{
  textView = [(IMExpandingLabel *)self textView];
  [textView sizeThatFits:{width, 3.40282347e38}];
  v6 = v5;
  v7 = ceilf(v6);

  return v7;
}

- (void)setScrollEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  textView = [(IMExpandingLabel *)self textView];
  [textView setScrollEnabled:enabledCopy];
}

- (BOOL)isScrollEnabled
{
  textView = [(IMExpandingLabel *)self textView];
  isScrollEnabled = [textView isScrollEnabled];

  return isScrollEnabled;
}

- (IMExpandingLabelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end