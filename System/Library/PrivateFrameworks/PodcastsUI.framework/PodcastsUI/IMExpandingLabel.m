@interface IMExpandingLabel
- (BOOL)isScrollEnabled;
- (IMExpandingLabel)initWithFrame:(CGRect)a3;
- (IMExpandingLabelDelegate)delegate;
- (double)heightForWidth:(double)a3;
- (void)layoutSubviews;
- (void)setExpanded:(BOOL)a3;
- (void)setHasGradient:(BOOL)a3;
- (void)setMoreButton:(id)a3;
- (void)setNumberOfLines:(unint64_t)a3;
- (void)setScrollEnabled:(BOOL)a3;
- (void)setText:(id)a3;
@end

@implementation IMExpandingLabel

- (IMExpandingLabel)initWithFrame:(CGRect)a3
{
  v27.receiver = self;
  v27.super_class = IMExpandingLabel;
  v3 = [(IMExpandingLabel *)&v27 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v8 = [(UITextView *)v4->_textView textContainer];
    [v8 setLineBreakMode:4];

    v9 = [(UITextView *)v4->_textView textContainer];
    [v9 setLineFragmentPadding:0.0];

    v10 = *MEMORY[0x277D768C8];
    v11 = *(MEMORY[0x277D768C8] + 8);
    v12 = *(MEMORY[0x277D768C8] + 16);
    v13 = *(MEMORY[0x277D768C8] + 24);
    [(UITextView *)v4->_textView setTextContainerInset:*MEMORY[0x277D768C8], v11, v12, v13];
    [(UITextView *)v4->_textView setContentInset:v10, v11, v12, v13];
    v14 = [MEMORY[0x277D75348] clearColor];
    [(UITextView *)v4->_textView setBackgroundColor:v14];

    [(UITextView *)v4->_textView setDataDetectorTypes:7];
    [(UITextView *)v4->_textView setTextAlignment:0];
    v15 = [MEMORY[0x277CD9EB0] layer];
    gradientLayer = v4->_gradientLayer;
    v4->_gradientLayer = v15;

    v17 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.100000001];
    v18 = [v17 CGColor];
    gradientClearColor = v4->_gradientClearColor;
    v4->_gradientClearColor = v18;

    v20 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.330000013];
    v21 = [v20 CGColor];
    gradientSemiClearColor = v4->_gradientSemiClearColor;
    v4->_gradientSemiClearColor = v21;

    v23 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:1.0];
    v24 = [v23 CGColor];
    gradientSolidColor = v4->_gradientSolidColor;
    v4->_gradientSolidColor = v24;

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
  v3 = [(IMExpandingLabel *)self moreButton];
  if (v3)
  {
    v4 = v3;
    v5 = [(IMExpandingLabel *)self isExpanded];

    if (!v5)
    {
      v6 = [(IMExpandingLabel *)self textView];
      v7 = [v6 textContainer];
      [v7 setExclusionPaths:MEMORY[0x277CBEBF8]];

      v8 = [(IMExpandingLabel *)self textView];
      v9 = [v8 textContainer];
      [v9 setMaximumNumberOfLines:0];

      v10 = [(IMExpandingLabel *)self textView];
      [(IMExpandingLabel *)self bounds];
      [v10 sizeThatFits:{v11, 3.40282347e38}];
      v13 = v12;
      v14 = ceilf(v13);

      v15 = [(IMExpandingLabel *)self numberOfLines];
      v16 = [(IMExpandingLabel *)self textView];
      v17 = [v16 textContainer];
      [v17 setMaximumNumberOfLines:v15];

      v18 = [(IMExpandingLabel *)self textView];
      [(IMExpandingLabel *)self bounds];
      [v18 sizeThatFits:{v19, 3.40282347e38}];
      v21 = v20;
      v22 = ceilf(v21);

      v23 = vabdd_f64(v14, v22);
      if (v23 < 2.22044605e-16)
      {
        [(IMExpandingLabel *)self setFitsWithinLineLimit:1];
        v24 = 0;
LABEL_7:
        v25 = [(IMExpandingLabel *)self textView];
        v26 = [v25 textContainer];
        [v26 setMaximumNumberOfLines:v24];

        v27 = [(IMExpandingLabel *)self moreButton];
        [v27 setHidden:v23 < 2.22044605e-16];

        goto LABEL_8;
      }

      if ([(IMExpandingLabel *)self fitsWithinLineLimit])
      {
        [(IMExpandingLabel *)self setFitsWithinLineLimit:0];
        v24 = [(IMExpandingLabel *)self numberOfLines];
        goto LABEL_7;
      }
    }
  }

LABEL_8:
  v28 = [(IMExpandingLabel *)self moreButton];
  if (!v28 || [(IMExpandingLabel *)self isExpanded])
  {

LABEL_11:
    v29 = [(IMExpandingLabel *)self textView];
    v30 = [v29 textContainer];
    [v30 setExclusionPaths:MEMORY[0x277CBEBF8]];
    goto LABEL_12;
  }

  v47 = [(IMExpandingLabel *)self fitsWithinLineLimit];

  if (v47)
  {
    goto LABEL_11;
  }

  v48 = [(IMExpandingLabel *)self languageDirection];
  if (v48 == 2)
  {
    v49 = 0.0;
  }

  else
  {
    [(IMExpandingLabel *)self bounds];
    v53 = v52;
    v47 = [(IMExpandingLabel *)self moreButton];
    [v47 bounds];
    v49 = v53 - v54;
  }

  [(IMExpandingLabel *)self bounds];
  [(IMExpandingLabel *)self heightForWidth:v55];
  v57 = v56;
  v58 = [(IMExpandingLabel *)self moreButton];
  [v58 bounds];
  v60 = v57 - v59;
  v61 = [(IMExpandingLabel *)self moreButton];
  [v61 bounds];
  v63 = v62;
  v64 = [(IMExpandingLabel *)self moreButton];
  [v64 bounds];
  v66 = v65;

  if (v48 != 2)
  {
  }

  v67 = [(IMExpandingLabel *)self moreButton];
  [v67 setFrame:{v49, v60, v63, v66}];

  v29 = [MEMORY[0x277D75208] bezierPathWithRect:{v49, v60, v63, v66}];
  v74[0] = v29;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:1];
  v68 = [(IMExpandingLabel *)self textView];
  v69 = [v68 textContainer];
  [v69 setExclusionPaths:v30];

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

    v43 = [(IMExpandingLabel *)self isExpanded];
    v44 = self->_gradientLayer;
    gradientSolidColor = self->_gradientSolidColor;
    if (v43)
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

- (void)setMoreButton:(id)a3
{
  v4 = a3;
  [(UIButton *)self->_moreButton removeTarget:self action:sel_moreButtonTapped_ forControlEvents:64];
  [(UIButton *)self->_moreButton removeFromSuperview];
  moreButton = self->_moreButton;
  self->_moreButton = v4;
  v6 = v4;

  [(IMExpandingLabel *)self addSubview:self->_moreButton];
  [(UIButton *)self->_moreButton addTarget:self action:sel_moreButtonTapped_ forControlEvents:64];

  [(IMExpandingLabel *)self setExpanded:0];
}

- (void)setExpanded:(BOOL)a3
{
  expanded = self->_expanded;
  self->_expanded = a3;
  if (a3)
  {
    v5 = [(IMExpandingLabel *)self textView];
    v6 = [v5 textContainer];
    [v6 setMaximumNumberOfLines:0];

    v7 = [(IMExpandingLabel *)self textView];
    v8 = [v7 textContainer];
    [v8 setExclusionPaths:MEMORY[0x277CBEBF8]];

    v9 = [(IMExpandingLabel *)self moreButton];
    [v9 setHidden:1];

    [(IMExpandingLabel *)self setNeedsLayout];
    if (!expanded)
    {
      v14 = [(IMExpandingLabel *)self delegate];
      [v14 expandingLabelShouldExpand:self];
    }
  }

  else
  {
    v10 = [(IMExpandingLabel *)self numberOfLines];
    v11 = [(IMExpandingLabel *)self textView];
    v12 = [v11 textContainer];
    [v12 setMaximumNumberOfLines:v10];

    v13 = [(IMExpandingLabel *)self moreButton];
    [v13 setHidden:0];

    [(IMExpandingLabel *)self setNeedsLayout];
  }
}

- (void)setHasGradient:(BOOL)a3
{
  self->_hasGradient = a3;
  if (a3)
  {
    gradientLayer = self->_gradientLayer;
  }

  else
  {
    gradientLayer = 0;
  }

  v5 = [(UITextView *)self->_textView layer];
  [v5 setMask:gradientLayer];

  [(IMExpandingLabel *)self setNeedsLayout];
}

- (void)setText:(id)a3
{
  v22 = a3;
  if (([v22 isEqualToString:self->_text] & 1) == 0)
  {
    objc_storeStrong(&self->_text, a3);
    if (v22)
    {
      if (-[IMExpandingLabel textMode](self, "textMode") == 2 || ((v11 = -[IMExpandingLabel textMode](self, "textMode"), v12 = -[IMExpandingLabel textMode](self, "textMode"), v11 == 4) || v12 == 8) && [v22 hasHTML])
      {
        v5 = MEMORY[0x277CCA898];
        v6 = [(IMExpandingLabel *)self textAttributes];
        v7 = [v5 safeAttributedStringWithHTML:v22 attributes:v6];

        if ([(IMExpandingLabel *)self textMode]== 8)
        {
          v8 = [v7 attributedStringByTrimmingWhitespaceNewlinesAndObjectReplacementCharacters];

          v7 = v8;
        }

        v9 = [(IMExpandingLabel *)self textView];
        [v9 setAttributedText:v7];
      }

      else
      {
        v13 = objc_alloc(MEMORY[0x277CCA898]);
        v7 = [(IMExpandingLabel *)self textAttributes];
        v9 = [v13 initWithString:v22 attributes:v7];
        v14 = [(IMExpandingLabel *)self textView];
        [v14 setAttributedText:v9];
      }

      v15 = [(IMExpandingLabel *)self textView];
      v16 = [v15 text];
      v17 = [(IMExpandingLabel *)self textView];
      v18 = [v17 text];
      v24.length = [v18 length];
      v24.location = 0;
      v19 = CFStringTokenizerCopyBestStringLanguage(v16, v24);

      -[IMExpandingLabel setLanguageDirection:](self, "setLanguageDirection:", [MEMORY[0x277CBEAF8] characterDirectionForLanguage:v19]);
    }

    else
    {
      v10 = [(IMExpandingLabel *)self textView];
      [v10 setText:0];

      [(IMExpandingLabel *)self setLanguageDirection:1];
    }

    v20 = [(IMExpandingLabel *)self languageDirection]== 2;
    v21 = [(IMExpandingLabel *)self textView];
    [v21 setTextAlignment:2 * v20];

    [(IMExpandingLabel *)self setNeedsLayout];
  }
}

- (void)setNumberOfLines:(unint64_t)a3
{
  self->_numberOfLines = a3;
  if (![(IMExpandingLabel *)self isExpanded])
  {
    v5 = [(IMExpandingLabel *)self textView];
    v6 = [v5 textContainer];
    [v6 setMaximumNumberOfLines:a3];

    [(IMExpandingLabel *)self setNeedsLayout];
  }
}

- (double)heightForWidth:(double)a3
{
  v4 = [(IMExpandingLabel *)self textView];
  [v4 sizeThatFits:{a3, 3.40282347e38}];
  v6 = v5;
  v7 = ceilf(v6);

  return v7;
}

- (void)setScrollEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(IMExpandingLabel *)self textView];
  [v4 setScrollEnabled:v3];
}

- (BOOL)isScrollEnabled
{
  v2 = [(IMExpandingLabel *)self textView];
  v3 = [v2 isScrollEnabled];

  return v3;
}

- (IMExpandingLabelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end