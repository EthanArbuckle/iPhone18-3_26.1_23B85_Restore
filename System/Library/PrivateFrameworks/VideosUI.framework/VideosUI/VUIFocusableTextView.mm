@interface VUIFocusableTextView
+ (id)textViewWithElement:(id)a3 textLayout:(id)a4 titleElement:(id)a5 titleLayout:(id)a6 existingTextView:(id)a7;
+ (id)textViewWithString:(id)a3 textLayout:(id)a4 titleString:(id)a5 titleLayout:(id)a6 existingTextView:(id)a7;
- (VUIFocusableTextView)initWithFrame:(CGRect)a3;
- (double)topMarginToLabel:(id)a3 withBaselineMargin:(double)a4;
- (void)_updateTextColor;
@end

@implementation VUIFocusableTextView

- (VUIFocusableTextView)initWithFrame:(CGRect)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = VUIFocusableTextView;
  v3 = [(TVFocusableTextView *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

+ (id)textViewWithString:(id)a3 textLayout:(id)a4 titleString:(id)a5 titleLayout:(id)a6 existingTextView:(id)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v14;
  }

  else
  {
    v17 = [VUIFocusableTextView alloc];
    v16 = [(VUIFocusableTextView *)v17 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  }

  v18 = v16;
  [(VUIFocusableTextView *)v16 setTextLayout:v11];
  v19 = [(VUIFocusableTextView *)v18 computationLabel];
  v20 = [VUILabel labelWithString:@"Lorem" textLayout:v11 existingLabel:v19];

  [(VUIFocusableTextView *)v18 setComputationLabel:v20];
  v21 = [MEMORY[0x1E69DCEB0] mainScreen];
  v22 = [v21 traitCollection];

  -[TVFocusableTextView setMaximumNumberOfLines:](v18, "setMaximumNumberOfLines:", [v11 numberOfLinesForTraitCollection:v22]);
  [(VUIFocusableTextView *)v18 _updateTextColor];
  v23 = [v11 attributedStringWithString:v15 view:v18];

  if ([v12 length] && v23)
  {
    v24 = [v13 attributedStringWithString:v12 view:v18];
    v25 = [v24 mutableCopy];
    [v25 appendAttributedString:v23];

    v23 = v25;
  }

  [(TVFocusableTextView *)v18 setDescriptionText:v23];
  -[TVFocusableTextView setDescriptionTextAlignment:](v18, "setDescriptionTextAlignment:", [v11 alignment]);
  -[TVFocusableTextView setAlwaysFocusable:](v18, "setAlwaysFocusable:", [v11 alwaysFocusable]);
  [v11 seeMoreHorizontalMargin];
  [(TVFocusableTextView *)v18 setMoreHorizontalMargin:?];

  return v18;
}

+ (id)textViewWithElement:(id)a3 textLayout:(id)a4 titleElement:(id)a5 titleLayout:(id)a6 existingTextView:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = [v12 style];
  v18 = [v17 tv_valueForStyle:*MEMORY[0x1E69D59E0]];

  if (v18)
  {
    v19 = [v12 style];
    v20 = [v19 tv_maxTextLines];

    [v13 setNumberOfLines:v20];
    [v13 setNumberOfLinesAXSmall:v20];
    [v13 setNumberOfLinesAXLarge:v20];
  }

  v21 = [v12 text];
  v22 = [v21 string];

  v23 = [v16 text];

  v24 = [v23 string];

  v25 = [a1 textViewWithString:v22 textLayout:v13 titleString:v24 titleLayout:v15 existingTextView:v14];

  [v25 transferLayoutStylesFromElement:v12];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __97__VUIFocusableTextView_textViewWithElement_textLayout_titleElement_titleLayout_existingTextView___block_invoke;
  v31[3] = &unk_1E8732510;
  v26 = v12;
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

- (double)topMarginToLabel:(id)a3 withBaselineMargin:(double)a4
{
  if (a3)
  {
    [(VUILabel *)self->_computationLabel topMarginToLabel:a4 withBaselineMargin:?];
  }

  else
  {
    [(VUIFocusableTextView *)self topMarginWithBaselineMargin:a4];
  }

  return result;
}

- (void)_updateTextColor
{
  v14 = [(VUITextLayout *)self->_textLayout color];
  v3 = [(VUITextLayout *)self->_textLayout seeMoreTextColor];
  if (!v3)
  {
    v4 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v4 userInterfaceIdiom] == 2)
    {
      [MEMORY[0x1E69DC888] vui_secondaryTextColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] vui_keyColor];
    }
    v3 = ;
  }

  v5 = [(VUITextLayout *)self->_textLayout highlightOrSelectedColor];
  v6 = [(VUIFocusableTextView *)self traitCollection];
  v7 = [v6 userInterfaceStyle];

  if (v7 == 2)
  {
    v8 = [(VUITextLayout *)self->_textLayout darkColor];

    if (v8)
    {
      v9 = [(VUITextLayout *)self->_textLayout darkColor];

      v14 = v9;
    }

    v10 = [(VUITextLayout *)self->_textLayout darkSeeMoreTextColor];

    if (v10)
    {
      v11 = [(VUITextLayout *)self->_textLayout darkSeeMoreTextColor];

      v3 = v11;
    }

    v12 = [(VUITextLayout *)self->_textLayout darkHighlightOrSelectedColor];

    if (v12)
    {
      v13 = [(VUITextLayout *)self->_textLayout darkHighlightOrSelectedColor];

      v5 = v13;
    }
  }

  if (v5)
  {
    if (v3)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = v14;
    if (v3)
    {
      goto LABEL_15;
    }
  }

  v3 = v14;
LABEL_15:
  [(TVFocusableTextView *)self setDescriptionTextColor:v14];
  [(TVFocusableTextView *)self setMoreLabelTextColor:v3];
  [(TVFocusableTextView *)self setDescriptionTextHighlightColor:v5];
}

@end