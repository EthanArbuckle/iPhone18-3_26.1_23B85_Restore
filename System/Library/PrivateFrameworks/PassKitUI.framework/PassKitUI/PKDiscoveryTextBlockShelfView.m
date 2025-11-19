@interface PKDiscoveryTextBlockShelfView
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKDiscoveryTextBlockShelfView)initWithShelf:(id)a3;
- (id)_attributedStringForBody:(id)a3 lede:(id)a4 headerline:(id)a5;
- (id)_textColorForBody;
- (id)_textColorForHeaderline;
- (id)_textColorForLede;
- (id)_uiFontTextStyle;
- (void)layoutSubviews;
@end

@implementation PKDiscoveryTextBlockShelfView

- (PKDiscoveryTextBlockShelfView)initWithShelf:(id)a3
{
  v5 = a3;
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
    objc_storeStrong(&v10->_shelf, a3);
    v12 = [v5 localizedBody];
    v13 = [v5 localizedLede];
    v14 = [v5 localizedSectionHeaderLine];
    v15 = [[PKNoHighlightTextView alloc] initWithFrame:v6, v7, v8, v9];
    textView = v11->_textView;
    v11->_textView = &v15->super;

    [(UITextView *)v11->_textView setTextContainerInset:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
    v17 = v11->_textView;
    v18 = [MEMORY[0x1E69DC888] clearColor];
    [(UITextView *)v17 setBackgroundColor:v18];

    v19 = v11->_textView;
    v20 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UITextView *)v19 setTextColor:v20];

    v21 = [(UITextView *)v11->_textView textContainer];
    [v21 setLineFragmentPadding:0.0];

    [(UITextView *)v11->_textView setEditable:0];
    [(UITextView *)v11->_textView setScrollEnabled:0];
    [(UITextView *)v11->_textView setDelegate:v11];
    v22 = [(PKDiscoveryTextBlockShelfView *)v11 _attributedStringForBody:v12 lede:v13 headerline:v14];
    attributedText = v11->_attributedText;
    v11->_attributedText = v22;

    [(UITextView *)v11->_textView setAttributedText:v11->_attributedText];
    [(PKDiscoveryTextBlockShelfView *)v11 addSubview:v11->_textView];
  }

  return v11;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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

- (id)_attributedStringForBody:(id)a3 lede:(id)a4 headerline:(id)a5
{
  v39[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MEMORY[0x1E69DB650];
  if (v8)
  {
    v38[0] = *MEMORY[0x1E69DB648];
    v12 = [(PKDiscoveryTextBlockShelfView *)self _uiFontTextStyle];
    v13 = PKFontForDefaultDesign(v12, 0);
    v14 = v11;
    v38[1] = *v11;
    v39[0] = v13;
    v15 = [(PKDiscoveryTextBlockShelfView *)self _textColorForBody];
    v39[1] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:2];

    v17 = PKAttributedStringByParsingLinksInString();
    v18 = [v17 mutableCopy];
  }

  else
  {
    v14 = MEMORY[0x1E69DB650];
    v18 = 0;
  }

  if (v9)
  {
    v19 = [(PKDiscoveryTextBlockShelfView *)self _uiFontTextStyle];
    v20 = PKFontForDefaultDesign(v19, 0, 2, 0);

    v21 = *v14;
    v36[0] = *MEMORY[0x1E69DB648];
    v36[1] = v21;
    v37[0] = v20;
    v22 = [(PKDiscoveryTextBlockShelfView *)self _textColorForLede];
    v37[1] = v22;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:2];

    v24 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v9 attributes:v23];
    if (v18)
    {
      [v18 insertAttributedString:v24 atIndex:0];
    }

    else
    {
      v18 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:v24];
    }
  }

  if (v10)
  {
    v25 = [(PKDiscoveryTextBlockShelfView *)self _uiFontTextStyle];
    v26 = PKFontForDefaultDesign(v25, 0, 2, 0);

    v27 = *v14;
    v34[0] = *MEMORY[0x1E69DB648];
    v34[1] = v27;
    v35[0] = v26;
    v28 = [(PKDiscoveryTextBlockShelfView *)self _textColorForHeaderline];
    v35[1] = v28;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2];

    if (v18)
    {
      v30 = objc_alloc(MEMORY[0x1E696AAB0]);
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n", v10];
      v32 = [v30 initWithString:v31 attributes:v29];

      [v18 insertAttributedString:v32 atIndex:0];
    }

    else
    {
      v18 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v10 attributes:v29];
    }
  }

  return v18;
}

- (id)_textColorForBody
{
  if ([(PKDiscoveryTextBlockShelf *)self->_shelf style]> 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  }

  return v2;
}

- (id)_textColorForLede
{
  v2 = [(PKDiscoveryTextBlockShelf *)self->_shelf style];
  if (v2 == 1)
  {
    v3 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  }

  else if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x1E69DC888] labelColor];
  }

  return v3;
}

- (id)_textColorForHeaderline
{
  v2 = [(PKDiscoveryTextBlockShelf *)self->_shelf style];
  if (v2 == 1)
  {
    v3 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  }

  else if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x1E69DC888] labelColor];
  }

  return v3;
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