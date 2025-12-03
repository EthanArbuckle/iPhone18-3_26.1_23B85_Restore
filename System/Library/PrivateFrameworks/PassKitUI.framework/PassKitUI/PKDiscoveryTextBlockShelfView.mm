@interface PKDiscoveryTextBlockShelfView
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKDiscoveryTextBlockShelfView)initWithShelf:(id)shelf;
- (id)_attributedStringForBody:(id)body lede:(id)lede headerline:(id)headerline;
- (id)_textColorForBody;
- (id)_textColorForHeaderline;
- (id)_textColorForLede;
- (id)_uiFontTextStyle;
- (void)layoutSubviews;
@end

@implementation PKDiscoveryTextBlockShelfView

- (PKDiscoveryTextBlockShelfView)initWithShelf:(id)shelf
{
  shelfCopy = shelf;
  v25.receiver = self;
  v25.super_class = PKDiscoveryTextBlockShelfView;
  v6 = *MEMORY[0x1E695F058];
  v7 = *(MEMORY[0x1E695F058] + 8);
  v8 = *(MEMORY[0x1E695F058] + 16);
  v9 = *(MEMORY[0x1E695F058] + 24);
  v10 = [(PKDiscoveryShelfView *)&v25 initWithFrame:*MEMORY[0x1E695F058], v7, v8, v9];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_shelf, shelf);
    localizedBody = [shelfCopy localizedBody];
    localizedLede = [shelfCopy localizedLede];
    localizedSectionHeaderLine = [shelfCopy localizedSectionHeaderLine];
    v15 = [[PKNoHighlightTextView alloc] initWithFrame:v6, v7, v8, v9];
    textView = v11->_textView;
    v11->_textView = &v15->super;

    [(UITextView *)v11->_textView setTextContainerInset:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
    v17 = v11->_textView;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UITextView *)v17 setBackgroundColor:clearColor];

    v19 = v11->_textView;
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UITextView *)v19 setTextColor:secondaryLabelColor];

    textContainer = [(UITextView *)v11->_textView textContainer];
    [textContainer setLineFragmentPadding:0.0];

    [(UITextView *)v11->_textView setEditable:0];
    [(UITextView *)v11->_textView setScrollEnabled:0];
    [(UITextView *)v11->_textView setDelegate:v11];
    v22 = [(PKDiscoveryTextBlockShelfView *)v11 _attributedStringForBody:localizedBody lede:localizedLede headerline:localizedSectionHeaderLine];
    attributedText = v11->_attributedText;
    v11->_attributedText = v22;

    [(UITextView *)v11->_textView setAttributedText:v11->_attributedText];
    [(PKDiscoveryTextBlockShelfView *)v11 addSubview:v11->_textView];
  }

  return v11;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(PKDiscoveryShelfView *)self contentInsets];
  [(UITextView *)self->_textView sizeThatFits:width - (v6 + v7), height];
  v9 = width;
  result.height = v8;
  result.width = v9;
  return result;
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = PKDiscoveryTextBlockShelfView;
  [(PKDiscoveryTextBlockShelfView *)&v15 layoutSubviews];
  [(PKDiscoveryTextBlockShelfView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PKDiscoveryShelfView *)self contentInsets];
  [(UITextView *)self->_textView setFrame:v4 + v14, v6 + v11, v8 - (v14 + v12), v10 - (v11 + v13)];
}

- (id)_attributedStringForBody:(id)body lede:(id)lede headerline:(id)headerline
{
  v39[2] = *MEMORY[0x1E69E9840];
  bodyCopy = body;
  ledeCopy = lede;
  headerlineCopy = headerline;
  v11 = MEMORY[0x1E69DB650];
  if (bodyCopy)
  {
    v38[0] = *MEMORY[0x1E69DB648];
    _uiFontTextStyle = [(PKDiscoveryTextBlockShelfView *)self _uiFontTextStyle];
    v13 = PKFontForDefaultDesign(_uiFontTextStyle, 0);
    v14 = v11;
    v38[1] = *v11;
    v39[0] = v13;
    _textColorForBody = [(PKDiscoveryTextBlockShelfView *)self _textColorForBody];
    v39[1] = _textColorForBody;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:2];

    v17 = PKAttributedStringByParsingLinksInString();
    v18 = [v17 mutableCopy];
  }

  else
  {
    v14 = MEMORY[0x1E69DB650];
    v18 = 0;
  }

  if (ledeCopy)
  {
    _uiFontTextStyle2 = [(PKDiscoveryTextBlockShelfView *)self _uiFontTextStyle];
    v20 = PKFontForDefaultDesign(_uiFontTextStyle2, 0, 2, 0);

    v21 = *v14;
    v36[0] = *MEMORY[0x1E69DB648];
    v36[1] = v21;
    v37[0] = v20;
    _textColorForLede = [(PKDiscoveryTextBlockShelfView *)self _textColorForLede];
    v37[1] = _textColorForLede;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:2];

    v24 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:ledeCopy attributes:v23];
    if (v18)
    {
      [v18 insertAttributedString:v24 atIndex:0];
    }

    else
    {
      v18 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:v24];
    }
  }

  if (headerlineCopy)
  {
    _uiFontTextStyle3 = [(PKDiscoveryTextBlockShelfView *)self _uiFontTextStyle];
    v26 = PKFontForDefaultDesign(_uiFontTextStyle3, 0, 2, 0);

    v27 = *v14;
    v34[0] = *MEMORY[0x1E69DB648];
    v34[1] = v27;
    v35[0] = v26;
    _textColorForHeaderline = [(PKDiscoveryTextBlockShelfView *)self _textColorForHeaderline];
    v35[1] = _textColorForHeaderline;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2];

    if (v18)
    {
      v30 = objc_alloc(MEMORY[0x1E696AAB0]);
      headerlineCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n", headerlineCopy];
      v32 = [v30 initWithString:headerlineCopy attributes:v29];

      [v18 insertAttributedString:v32 atIndex:0];
    }

    else
    {
      v18 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:headerlineCopy attributes:v29];
    }
  }

  return v18;
}

- (id)_textColorForBody
{
  if ([(PKDiscoveryTextBlockShelf *)self->_shelf style]> 1)
  {
    secondaryLabelColor = 0;
  }

  else
  {
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  }

  return secondaryLabelColor;
}

- (id)_textColorForLede
{
  style = [(PKDiscoveryTextBlockShelf *)self->_shelf style];
  if (style == 1)
  {
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  }

  else if (style)
  {
    secondaryLabelColor = 0;
  }

  else
  {
    secondaryLabelColor = [MEMORY[0x1E69DC888] labelColor];
  }

  return secondaryLabelColor;
}

- (id)_textColorForHeaderline
{
  style = [(PKDiscoveryTextBlockShelf *)self->_shelf style];
  if (style == 1)
  {
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  }

  else if (style)
  {
    secondaryLabelColor = 0;
  }

  else
  {
    secondaryLabelColor = [MEMORY[0x1E69DC888] labelColor];
  }

  return secondaryLabelColor;
}

- (id)_uiFontTextStyle
{
  v3 = *MEMORY[0x1E69DDDC8];
  if ([(PKDiscoveryTextBlockShelf *)self->_shelf style]== 1)
  {
    v4 = *MEMORY[0x1E69DDD10];

    v3 = v4;
  }

  return v3;
}

@end