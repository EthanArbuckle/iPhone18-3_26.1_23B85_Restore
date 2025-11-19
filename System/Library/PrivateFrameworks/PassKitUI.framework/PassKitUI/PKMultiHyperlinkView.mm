@interface PKMultiHyperlinkView
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (CGSize)_layoutWithBounds:(CGRect)a3 isTemplateLayout:(BOOL)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKMultiHyperlinkView)initWithFrame:(CGRect)a3;
- (id)_rangesForTag:(id)a3 inText:(id)a4;
- (void)_updateText;
- (void)layoutSubviews;
- (void)pk_applyAppearance:(id)a3;
- (void)setLinkTextColor:(id)a3;
- (void)setSources:(id)a3;
- (void)setText:(id)a3;
- (void)setTextAlignment:(int64_t)a3;
- (void)setTextColor:(id)a3;
- (void)setTextFont:(id)a3;
@end

@implementation PKMultiHyperlinkView

- (void)pk_applyAppearance:(id)a3
{
  v4 = [a3 footerHyperlinkColor];
  [(PKMultiHyperlinkView *)self setLinkTextColor:v4];
}

- (PKMultiHyperlinkView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = PKMultiHyperlinkView;
  v3 = [(PKMultiHyperlinkView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DD168] pkui_plainNonInteractiveTextViewWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    textView = v3->_textView;
    v3->_textView = v4;

    [(UITextView *)v3->_textView setDelegate:v3];
    [(UITextView *)v3->_textView setSelectable:1];
    [(UITextView *)v3->_textView setUserInteractionEnabled:1];
    [(UITextView *)v3->_textView _setInteractiveTextSelectionDisabled:1];
    v3->_textAlignment = [(UITextView *)v3->_textView textAlignment];
    [(PKMultiHyperlinkView *)v3 addSubview:v3->_textView];
    [(PKMultiHyperlinkView *)v3 setAccessibilityIdentifier:*MEMORY[0x1E69B98F8]];
  }

  return v3;
}

- (void)setText:(id)a3
{
  v5 = a3;
  text = self->_text;
  v9 = v5;
  v7 = text;
  if (v7 == v9)
  {

    goto LABEL_9;
  }

  if (!v9 || !v7)
  {

    goto LABEL_8;
  }

  v8 = [(NSString *)v9 isEqualToString:v7];

  if (!v8)
  {
LABEL_8:
    objc_storeStrong(&self->_text, a3);
    [(PKMultiHyperlinkView *)self _updateText];
  }

LABEL_9:
}

- (void)setTextAlignment:(int64_t)a3
{
  if (self->_textAlignment != a3)
  {
    self->_textAlignment = a3;
    [(PKMultiHyperlinkView *)self _updateText];
  }
}

- (void)setSources:(id)a3
{
  v5 = a3;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_sources, a3);
    [(PKMultiHyperlinkView *)self _updateText];
  }
}

- (void)setTextColor:(id)a3
{
  v5 = a3;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_textColor, a3);
    [(PKMultiHyperlinkView *)self _updateText];
  }
}

- (void)setLinkTextColor:(id)a3
{
  v5 = a3;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_linkTextColor, a3);
    [(PKMultiHyperlinkView *)self _updateText];
  }
}

- (void)setTextFont:(id)a3
{
  v5 = a3;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_textFont, a3);
    [(PKMultiHyperlinkView *)self _updateText];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKMultiHyperlinkView;
  [(PKMultiHyperlinkView *)&v3 layoutSubviews];
  [(PKMultiHyperlinkView *)self bounds];
  [(PKMultiHyperlinkView *)self _layoutWithBounds:0 isTemplateLayout:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(PKMultiHyperlinkView *)self _layoutWithBounds:1 isTemplateLayout:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)_layoutWithBounds:(CGRect)a3 isTemplateLayout:(BOOL)a4
{
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = [(PKMultiHyperlinkView *)self _shouldReverseLayoutDirection:a3.origin.x];
  [(UITextView *)self->_textView sizeThatFits:width, 1.79769313e308];
  v11 = v10;
  if (!a4)
  {
    v12 = x + width - width;
    if (!v9)
    {
      v12 = x;
    }

    [(UITextView *)self->_textView setFrame:v12, y, width, v10];
  }

  v13 = width;
  v14 = v11;
  result.height = v14;
  result.width = v13;
  return result;
}

- (id)_rangesForTag:(id)a3 inText:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@]", v5];
  v21 = v5;
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[/%@]", v5];
  v9 = [v6 rangeOfString:v7];
  v11 = v10;
  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    do
    {
      [v6 replaceCharactersInRange:v9 withString:{v11, &stru_1F3BD7330}];
      v14 = [v6 rangeOfString:v8];
      v11 = 0;
      v15 = 0x7FFFFFFFFFFFFFFFLL;
      if (v14 != 0x7FFFFFFFFFFFFFFFLL && v14 > v9)
      {
        v16 = v13;
        v17 = [MEMORY[0x1E696B098] valueWithRange:{v9, v14 - v9}];
        [v12 addObject:v17];

        [v6 replaceCharactersInRange:v14 withString:{v16, &stru_1F3BD7330}];
        v15 = [v6 rangeOfString:v7];
        v11 = v18;
      }

      v9 = v15;
    }

    while (v15 != 0x7FFFFFFFFFFFFFFFLL);
  }

  v19 = [v12 copy];

  return v19;
}

- (void)_updateText
{
  v79[1] = *MEMORY[0x1E69E9840];
  textFont = self->_textFont;
  if (textFont)
  {
    v4 = textFont;
  }

  else
  {
    v4 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD28], *MEMORY[0x1E69DDC40], 0x8000, 0);
  }

  v5 = v4;
  textColor = self->_textColor;
  if (textColor)
  {
    v7 = textColor;
  }

  else
  {
    v7 = [MEMORY[0x1E69DD050] _defaultTextColorForTableViewStyle:1 isSectionHeader:0];
  }

  v8 = v7;
  v9 = [(NSString *)self->_text mutableCopy];
  v10 = [(PKMultiHyperlinkView *)self _rangesForTag:@"indent" inText:v9];
  v11 = [(PKMultiHyperlinkView *)self _rangesForTag:@"secondary" inText:v9];
  v12 = *MEMORY[0x1E69DB650];
  v78 = *MEMORY[0x1E69DB650];
  v79[0] = v8;
  v56 = v8;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v79 forKeys:&v78 count:1];
  v60 = v9;
  v57 = v5;
  v14 = PKAttributedStringByParsingEmphasisInString(v9, v5, v13);
  v15 = [v14 mutableCopy];

  v16 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v16 setHeadIndent:15.0];
  [v16 setFirstLineHeadIndent:0.0];
  [v16 setParagraphSpacing:2.0];
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v17 = v10;
  v18 = [v17 countByEnumeratingWithState:&v69 objects:v77 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v70;
    v21 = *MEMORY[0x1E69DB688];
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v70 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v23 = [*(*(&v69 + 1) + 8 * i) rangeValue];
        [v15 addAttribute:v21 value:v16 range:{v23, v24}];
      }

      v19 = [v17 countByEnumeratingWithState:&v69 objects:v77 count:16];
    }

    while (v19);
  }

  v58 = self;

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v25 = v11;
  v26 = [v25 countByEnumeratingWithState:&v65 objects:v76 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v66;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v66 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v65 + 1) + 8 * j);
        v31 = [MEMORY[0x1E69DC888] secondaryLabelColor];
        v32 = [v30 rangeValue];
        [v15 addAttribute:v12 value:v31 range:{v32, v33}];
      }

      v27 = [v25 countByEnumeratingWithState:&v65 objects:v76 count:16];
    }

    while (v27);
  }

  v53 = v12;
  v54 = v17;
  v55 = v16;
  v52 = v25;

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v34 = v58;
  obj = v58->_sources;
  v35 = [(NSArray *)obj countByEnumeratingWithState:&v61 objects:v75 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v62;
    v38 = *MEMORY[0x1E69DB670];
    v39 = *MEMORY[0x1E69DB758];
    do
    {
      for (k = 0; k != v36; ++k)
      {
        if (*v62 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v41 = *(*(&v61 + 1) + 8 * k);
        v42 = [v41 linkText];
        v43 = [v41 linkRange];
        v45 = v44;
        if ([v42 length])
        {
          v43 = [v60 rangeOfString:v42];
          v45 = v46;
        }

        if ([(PKMultiHyperlinkView *)v34 _isLinkRangeValid:v43, v45])
        {
          v47 = [MEMORY[0x1E695DFF8] URLWithString:&stru_1F3BD7330];
          [v15 addAttribute:v38 value:v47 range:{v43, v45}];

          v34 = v58;
          [v15 addAttribute:v39 value:MEMORY[0x1E695E110] range:{v43, v45}];
        }
      }

      v36 = [(NSArray *)obj countByEnumeratingWithState:&v61 objects:v75 count:16];
    }

    while (v36);
  }

  [(UITextView *)v34->_textView setAttributedText:v15];
  textView = v34->_textView;
  v73 = v53;
  linkTextColor = v34->_linkTextColor;
  v50 = linkTextColor;
  if (!linkTextColor)
  {
    v50 = [MEMORY[0x1E69DC888] linkColor];
  }

  v74 = v50;
  v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
  [(UITextView *)textView setLinkTextAttributes:v51];

  if (!linkTextColor)
  {
  }

  [(UITextView *)v58->_textView setTextAlignment:v58->_textAlignment];
  [(PKMultiHyperlinkView *)v58 setNeedsLayout];
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  length = a5.length;
  location = a5.location;
  v30 = *MEMORY[0x1E69E9840];
  v24 = a3;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = self->_sources;
  v9 = [(NSArray *)obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        v14 = [v13 linkText];
        v15 = [v13 linkRange];
        v17 = v16;
        if ([v14 length])
        {
          v18 = [v24 text];
          v15 = [v18 rangeOfString:v14];
          v17 = v19;
        }

        v31.location = v15;
        v31.length = v17;
        v32.location = location;
        v32.length = length;
        if (NSIntersectionRange(v31, v32).length)
        {
          v20 = [v13 action];
          v21 = v20;
          if (v20)
          {
            (*(v20 + 16))(v20);
          }
        }
      }

      v10 = [(NSArray *)obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v10);
  }

  return 0;
}

@end