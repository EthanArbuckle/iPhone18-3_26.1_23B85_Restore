@interface VUIFocusableTextView
+ (id)textViewWithElement:(id)element textLayout:(id)layout titleElement:(id)titleElement titleLayout:(id)titleLayout existingTextView:(id)view;
+ (id)textViewWithString:(id)string textLayout:(id)layout titleString:(id)titleString titleLayout:(id)titleLayout existingTextView:(id)view;
- (VUIFocusableTextView)initWithFrame:(CGRect)frame;
- (double)topMarginToLabel:(id)label withBaselineMargin:(double)margin;
- (void)_updateTextColor;
@end

@implementation VUIFocusableTextView

- (VUIFocusableTextView)initWithFrame:(CGRect)frame
{
  v14[1] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = VUIFocusableTextView;
  v3 = [(TVFocusableTextView *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    objc_initWeak(&location, v3);
    v14[0] = objc_opt_class();
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __38__VUIFocusableTextView_initWithFrame___block_invoke;
    v9[3] = &unk_1E872E760;
    objc_copyWeak(&v10, &location);
    [(VUIFocusableTextView *)v3 vui_registerForTraitChanges:v4 withHandler:v9];

    v13 = objc_opt_class();
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __38__VUIFocusableTextView_initWithFrame___block_invoke_2;
    v7[3] = &unk_1E872E760;
    objc_copyWeak(&v8, &location);
    [(VUIFocusableTextView *)v3 vui_registerForTraitChanges:v5 withHandler:v7];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __38__VUIFocusableTextView_initWithFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained textLayout];
  v2 = [WeakRetained traitCollection];
  v3 = [v1 numberOfLinesForTraitCollection:v2];

  [WeakRetained setMaximumNumberOfLines:v3];
}

void __38__VUIFocusableTextView_initWithFrame___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateTextColor];
}

+ (id)textViewWithString:(id)string textLayout:(id)layout titleString:(id)titleString titleLayout:(id)titleLayout existingTextView:(id)view
{
  layoutCopy = layout;
  titleStringCopy = titleString;
  titleLayoutCopy = titleLayout;
  viewCopy = view;
  stringCopy = string;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = viewCopy;
  }

  else
  {
    v17 = [VUIFocusableTextView alloc];
    v16 = [(VUIFocusableTextView *)v17 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  }

  v18 = v16;
  [(VUIFocusableTextView *)v16 setTextLayout:layoutCopy];
  computationLabel = [(VUIFocusableTextView *)v18 computationLabel];
  v20 = [VUILabel labelWithString:@"Lorem" textLayout:layoutCopy existingLabel:computationLabel];

  [(VUIFocusableTextView *)v18 setComputationLabel:v20];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  traitCollection = [mainScreen traitCollection];

  -[TVFocusableTextView setMaximumNumberOfLines:](v18, "setMaximumNumberOfLines:", [layoutCopy numberOfLinesForTraitCollection:traitCollection]);
  [(VUIFocusableTextView *)v18 _updateTextColor];
  v23 = [layoutCopy attributedStringWithString:stringCopy view:v18];

  if ([titleStringCopy length] && v23)
  {
    v24 = [titleLayoutCopy attributedStringWithString:titleStringCopy view:v18];
    v25 = [v24 mutableCopy];
    [v25 appendAttributedString:v23];

    v23 = v25;
  }

  [(TVFocusableTextView *)v18 setDescriptionText:v23];
  -[TVFocusableTextView setDescriptionTextAlignment:](v18, "setDescriptionTextAlignment:", [layoutCopy alignment]);
  -[TVFocusableTextView setAlwaysFocusable:](v18, "setAlwaysFocusable:", [layoutCopy alwaysFocusable]);
  [layoutCopy seeMoreHorizontalMargin];
  [(TVFocusableTextView *)v18 setMoreHorizontalMargin:?];

  return v18;
}

+ (id)textViewWithElement:(id)element textLayout:(id)layout titleElement:(id)titleElement titleLayout:(id)titleLayout existingTextView:(id)view
{
  elementCopy = element;
  layoutCopy = layout;
  viewCopy = view;
  titleLayoutCopy = titleLayout;
  titleElementCopy = titleElement;
  style = [elementCopy style];
  v18 = [style tv_valueForStyle:*MEMORY[0x1E69D59E0]];

  if (v18)
  {
    style2 = [elementCopy style];
    tv_maxTextLines = [style2 tv_maxTextLines];

    [layoutCopy setNumberOfLines:tv_maxTextLines];
    [layoutCopy setNumberOfLinesAXSmall:tv_maxTextLines];
    [layoutCopy setNumberOfLinesAXLarge:tv_maxTextLines];
  }

  text = [elementCopy text];
  string = [text string];

  text2 = [titleElementCopy text];

  string2 = [text2 string];

  v25 = [self textViewWithString:string textLayout:layoutCopy titleString:string2 titleLayout:titleLayoutCopy existingTextView:viewCopy];

  [v25 transferLayoutStylesFromElement:elementCopy];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __97__VUIFocusableTextView_textViewWithElement_textLayout_titleElement_titleLayout_existingTextView___block_invoke;
  v31[3] = &unk_1E8732510;
  v26 = elementCopy;
  v32 = v26;
  [v25 setSelectionHandler:v31];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __97__VUIFocusableTextView_textViewWithElement_textLayout_titleElement_titleLayout_existingTextView___block_invoke_2;
  v29[3] = &unk_1E8732510;
  v30 = v26;
  v27 = v26;
  [v25 setPlayHandler:v29];

  return v25;
}

- (double)topMarginToLabel:(id)label withBaselineMargin:(double)margin
{
  if (label)
  {
    [(VUILabel *)self->_computationLabel topMarginToLabel:margin withBaselineMargin:?];
  }

  else
  {
    [(VUIFocusableTextView *)self topMarginWithBaselineMargin:margin];
  }

  return result;
}

- (void)_updateTextColor
{
  color = [(VUITextLayout *)self->_textLayout color];
  seeMoreTextColor = [(VUITextLayout *)self->_textLayout seeMoreTextColor];
  if (!seeMoreTextColor)
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice userInterfaceIdiom] == 2)
    {
      [MEMORY[0x1E69DC888] vui_secondaryTextColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] vui_keyColor];
    }
    seeMoreTextColor = ;
  }

  highlightOrSelectedColor = [(VUITextLayout *)self->_textLayout highlightOrSelectedColor];
  traitCollection = [(VUIFocusableTextView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 2)
  {
    darkColor = [(VUITextLayout *)self->_textLayout darkColor];

    if (darkColor)
    {
      darkColor2 = [(VUITextLayout *)self->_textLayout darkColor];

      color = darkColor2;
    }

    darkSeeMoreTextColor = [(VUITextLayout *)self->_textLayout darkSeeMoreTextColor];

    if (darkSeeMoreTextColor)
    {
      darkSeeMoreTextColor2 = [(VUITextLayout *)self->_textLayout darkSeeMoreTextColor];

      seeMoreTextColor = darkSeeMoreTextColor2;
    }

    darkHighlightOrSelectedColor = [(VUITextLayout *)self->_textLayout darkHighlightOrSelectedColor];

    if (darkHighlightOrSelectedColor)
    {
      darkHighlightOrSelectedColor2 = [(VUITextLayout *)self->_textLayout darkHighlightOrSelectedColor];

      highlightOrSelectedColor = darkHighlightOrSelectedColor2;
    }
  }

  if (highlightOrSelectedColor)
  {
    if (seeMoreTextColor)
    {
      goto LABEL_15;
    }
  }

  else
  {
    highlightOrSelectedColor = color;
    if (seeMoreTextColor)
    {
      goto LABEL_15;
    }
  }

  seeMoreTextColor = color;
LABEL_15:
  [(TVFocusableTextView *)self setDescriptionTextColor:color];
  [(TVFocusableTextView *)self setMoreLabelTextColor:seeMoreTextColor];
  [(TVFocusableTextView *)self setDescriptionTextHighlightColor:highlightOrSelectedColor];
}

@end