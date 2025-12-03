@interface PKMultiHyperlinkView
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (CGSize)_layoutWithBounds:(CGRect)bounds isTemplateLayout:(BOOL)layout;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKMultiHyperlinkView)initWithFrame:(CGRect)frame;
- (id)_rangesForTag:(id)tag inText:(id)text;
- (void)_updateText;
- (void)layoutSubviews;
- (void)pk_applyAppearance:(id)appearance;
- (void)setLinkTextColor:(id)color;
- (void)setSources:(id)sources;
- (void)setText:(id)text;
- (void)setTextAlignment:(int64_t)alignment;
- (void)setTextColor:(id)color;
- (void)setTextFont:(id)font;
@end

@implementation PKMultiHyperlinkView

- (void)pk_applyAppearance:(id)appearance
{
  footerHyperlinkColor = [appearance footerHyperlinkColor];
  [(PKMultiHyperlinkView *)self setLinkTextColor:footerHyperlinkColor];
}

- (PKMultiHyperlinkView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = PKMultiHyperlinkView;
  v3 = [(PKMultiHyperlinkView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)setText:(id)text
{
  textCopy = text;
  text = self->_text;
  v9 = textCopy;
  textCopy2 = text;
  if (textCopy2 == v9)
  {

    goto LABEL_9;
  }

  if (!v9 || !textCopy2)
  {

    goto LABEL_8;
  }

  v8 = [(NSString *)v9 isEqualToString:textCopy2];

  if (!v8)
  {
LABEL_8:
    objc_storeStrong(&self->_text, text);
    [(PKMultiHyperlinkView *)self _updateText];
  }

LABEL_9:
}

- (void)setTextAlignment:(int64_t)alignment
{
  if (self->_textAlignment != alignment)
  {
    self->_textAlignment = alignment;
    [(PKMultiHyperlinkView *)self _updateText];
  }
}

- (void)setSources:(id)sources
{
  sourcesCopy = sources;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_sources, sources);
    [(PKMultiHyperlinkView *)self _updateText];
  }
}

- (void)setTextColor:(id)color
{
  colorCopy = color;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_textColor, color);
    [(PKMultiHyperlinkView *)self _updateText];
  }
}

- (void)setLinkTextColor:(id)color
{
  colorCopy = color;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_linkTextColor, color);
    [(PKMultiHyperlinkView *)self _updateText];
  }
}

- (void)setTextFont:(id)font
{
  fontCopy = font;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_textFont, font);
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PKMultiHyperlinkView *)self _layoutWithBounds:1 isTemplateLayout:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)_layoutWithBounds:(CGRect)bounds isTemplateLayout:(BOOL)layout
{
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v9 = [(PKMultiHyperlinkView *)self _shouldReverseLayoutDirection:bounds.origin.x];
  [(UITextView *)self->_textView sizeThatFits:width, 1.79769313e308];
  v11 = v10;
  if (!layout)
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

- (id)_rangesForTag:(id)tag inText:(id)text
{
  tagCopy = tag;
  textCopy = text;
  tagCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@]", tagCopy];
  v21 = tagCopy;
  tagCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[/%@]", tagCopy];
  v9 = [textCopy rangeOfString:tagCopy];
  v11 = v10;
  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    do
    {
      [textCopy replaceCharactersInRange:v9 withString:{v11, &stru_1F3BD7330}];
      v14 = [textCopy rangeOfString:tagCopy2];
      v11 = 0;
      v15 = 0x7FFFFFFFFFFFFFFFLL;
      if (v14 != 0x7FFFFFFFFFFFFFFFLL && v14 > v9)
      {
        v16 = v13;
        v17 = [MEMORY[0x1E696B098] valueWithRange:{v9, v14 - v9}];
        [v12 addObject:v17];

        [textCopy replaceCharactersInRange:v14 withString:{v16, &stru_1F3BD7330}];
        v15 = [textCopy rangeOfString:tagCopy];
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

        rangeValue = [*(*(&v69 + 1) + 8 * i) rangeValue];
        [v15 addAttribute:v21 value:v16 range:{rangeValue, v24}];
      }

      v19 = [v17 countByEnumeratingWithState:&v69 objects:v77 count:16];
    }

    while (v19);
  }

  selfCopy = self;

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
        secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
        rangeValue2 = [v30 rangeValue];
        [v15 addAttribute:v12 value:secondaryLabelColor range:{rangeValue2, v33}];
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
  v34 = selfCopy;
  obj = selfCopy->_sources;
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
        linkText = [v41 linkText];
        linkRange = [v41 linkRange];
        v45 = v44;
        if ([linkText length])
        {
          linkRange = [v60 rangeOfString:linkText];
          v45 = v46;
        }

        if ([(PKMultiHyperlinkView *)v34 _isLinkRangeValid:linkRange, v45])
        {
          v47 = [MEMORY[0x1E695DFF8] URLWithString:&stru_1F3BD7330];
          [v15 addAttribute:v38 value:v47 range:{linkRange, v45}];

          v34 = selfCopy;
          [v15 addAttribute:v39 value:MEMORY[0x1E695E110] range:{linkRange, v45}];
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
  linkColor = linkTextColor;
  if (!linkTextColor)
  {
    linkColor = [MEMORY[0x1E69DC888] linkColor];
  }

  v74 = linkColor;
  v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
  [(UITextView *)textView setLinkTextAttributes:v51];

  if (!linkTextColor)
  {
  }

  [(UITextView *)selfCopy->_textView setTextAlignment:selfCopy->_textAlignment];
  [(PKMultiHyperlinkView *)selfCopy setNeedsLayout];
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  length = range.length;
  location = range.location;
  v30 = *MEMORY[0x1E69E9840];
  viewCopy = view;
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
        linkText = [v13 linkText];
        linkRange = [v13 linkRange];
        v17 = v16;
        if ([linkText length])
        {
          text = [viewCopy text];
          linkRange = [text rangeOfString:linkText];
          v17 = v19;
        }

        v31.location = linkRange;
        v31.length = v17;
        v32.location = location;
        v32.length = length;
        if (NSIntersectionRange(v31, v32).length)
        {
          action = [v13 action];
          v21 = action;
          if (action)
          {
            (*(action + 16))(action);
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