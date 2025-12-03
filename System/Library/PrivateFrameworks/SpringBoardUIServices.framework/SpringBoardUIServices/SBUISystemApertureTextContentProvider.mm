@interface SBUISystemApertureTextContentProvider
+ (id)_textColorForTextStyle:(int64_t)style;
- (SBUISystemApertureContentViewContaining)contentContainer;
- (id)_initWithText:(id)text attributedText:(id)attributedText style:(int64_t)style font:(id)font textColor:(id)color;
- (id)_providedView;
- (void)setAttributedText:(id)text;
- (void)setFontWeight:(double)weight;
- (void)setText:(id)text;
- (void)setTextAlignment:(int64_t)alignment;
- (void)swapInText:(id)text textColor:(id)color fittingSize:(CGSize)size;
@end

@implementation SBUISystemApertureTextContentProvider

- (id)_initWithText:(id)text attributedText:(id)attributedText style:(int64_t)style font:(id)font textColor:(id)color
{
  textCopy = text;
  attributedTextCopy = attributedText;
  fontCopy = font;
  colorCopy = color;
  v27.receiver = self;
  v27.super_class = SBUISystemApertureTextContentProvider;
  v16 = [(SBUISystemApertureTextContentProvider *)&v27 init];
  if (!v16)
  {
    goto LABEL_2;
  }

  v18 = [SBUISystemApertureLabel alloc];
  v19 = [(SBUISystemApertureLabel *)v18 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v20 = v19;
  if (!textCopy)
  {
    if (!attributedTextCopy)
    {
      goto LABEL_5;
    }

LABEL_8:
    [(SBUISystemApertureLabel *)v20 setAttributedText:attributedTextCopy];
    if (!fontCopy)
    {
      goto LABEL_6;
    }

LABEL_9:
    [(SBUISystemApertureLabel *)v20 setFont:fontCopy];
    goto LABEL_10;
  }

  [(SBUISystemApertureLabel *)v19 setText:textCopy];
  if (attributedTextCopy)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (fontCopy)
  {
    goto LABEL_9;
  }

LABEL_6:
  v21 = [MEMORY[0x1E69DB878] sbui_systemAperturePreferredFontForTextStyle:style];
  [(SBUISystemApertureLabel *)v20 setFont:v21];

LABEL_10:
  [(SBUISystemApertureLabel *)v20 setAdjustsFontForContentSizeCategory:1];
  if (colorCopy)
  {
    [(SBUISystemApertureLabel *)v20 setTextColor:colorCopy];
  }

  else
  {
    v22 = [objc_opt_class() _textColorForTextStyle:style];
    [(SBUISystemApertureLabel *)v20 setTextColor:v22];
  }

  v23 = [[_SBUISystemApertureTextContainerView alloc] initWithContentLabel:v20];
  label = v16->_label;
  v16->_label = v20;
  v25 = v20;

  providedView = v16->_providedView;
  v16->_providedView = v23;

LABEL_2:
  return v16;
}

- (void)setTextAlignment:(int64_t)alignment
{
  alignmentCopy = alignment;
  if ((alignment | 2) == 2)
  {
    v5 = alignment == 0;
    if ([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1)
    {
      alignmentCopy = 2 * v5;
    }
  }

  label = self->_label;

  [(SBUISystemApertureLabel *)label setTextAlignment:alignmentCopy];
}

- (void)setFontWeight:(double)weight
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = self->_label;
  font = [(SBUISystemApertureLabel *)v4 font];
  fontDescriptor = [font fontDescriptor];

  fontAttributes = [fontDescriptor fontAttributes];
  v8 = *MEMORY[0x1E69DB8F0];
  v9 = [fontAttributes objectForKey:*MEMORY[0x1E69DB8F0]];
  v10 = [v9 mutableCopy];

  v11 = [MEMORY[0x1E696AD98] numberWithDouble:weight];
  [v10 setObject:v11 forKey:*MEMORY[0x1E69DB990]];

  v15 = v8;
  v16[0] = v10;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v13 = [fontDescriptor fontDescriptorByAddingAttributes:v12];

  v14 = [MEMORY[0x1E69DB878] fontWithDescriptor:v13 size:0.0];
  [(SBUISystemApertureLabel *)v4 setFont:v14];
}

+ (id)_textColorForTextStyle:(int64_t)style
{
  if (style > 6)
  {
  }

  else
  {
    if (style == 3)
    {
      [MEMORY[0x1E69DC888] secondaryLabelColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] labelColor];
    }
    self = ;
  }

  return self;
}

- (SBUISystemApertureContentViewContaining)contentContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_contentContainer);

  return WeakRetained;
}

- (void)setText:(id)text
{
  [(SBUISystemApertureLabel *)self->_label setText:text];
  _providedView = [(SBUISystemApertureTextContentProvider *)&self->super.isa _providedView];
  v8 = _providedView;
  if (_providedView)
  {
    v5 = *(MEMORY[0x1E695F060] + 8);
    if (*(_providedView + 416) != *MEMORY[0x1E695F060] || *(_providedView + 424) != v5)
    {
      *(_providedView + 416) = *MEMORY[0x1E695F060];
      *(_providedView + 424) = v5;
      [_providedView setNeedsLayout];
      _providedView = v8;
    }
  }

  [_providedView setNeedsLayout];
  contentContainer = [(SBUISystemApertureTextContentProvider *)self contentContainer];
  [contentContainer preferredContentSizeDidInvalidateForContentViewProvider:self];
}

- (id)_providedView
{
  if (self)
  {
    self = self[3];
    v1 = vars8;
  }

  return self;
}

- (void)setAttributedText:(id)text
{
  [(SBUISystemApertureLabel *)self->_label setAttributedText:text];
  _providedView = [(SBUISystemApertureTextContentProvider *)&self->super.isa _providedView];
  [_providedView setNeedsLayout];

  contentContainer = [(SBUISystemApertureTextContentProvider *)self contentContainer];
  [contentContainer preferredContentSizeDidInvalidateForContentViewProvider:self];
}

- (void)swapInText:(id)text textColor:(id)color fittingSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  colorCopy = color;
  textCopy = text;
  _providedView = [(SBUISystemApertureTextContentProvider *)&self->super.isa _providedView];
  label = self->_label;
  ++self->_textSwapTransitionCount;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __74__SBUISystemApertureTextContentProvider_swapInText_textColor_fittingSize___block_invoke;
  v17[3] = &unk_1E789DC80;
  v18 = _providedView;
  selfCopy = self;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __74__SBUISystemApertureTextContentProvider_swapInText_textColor_fittingSize___block_invoke_2;
  v15[3] = &unk_1E789DCA8;
  v15[4] = self;
  v16 = v18;
  v13 = v18;
  v14 = label;
  [(SBUISystemApertureLabel *)v14 performTextSwapAnimationWithText:textCopy textColor:colorCopy fittingSize:v17 sizeWillChangeBlock:v15 didSetPropertiesBlock:width, height];
}

void __74__SBUISystemApertureTextContentProvider_swapInText_textColor_fittingSize___block_invoke(uint64_t a1, double a2, double a3)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    if (v4[52] != a2 || v4[53] != a3)
    {
      v4[52] = a2;
      v4[53] = a3;
      [v4 setNeedsLayout];
    }
  }

  v6 = [*(a1 + 40) contentContainer];
  [v6 preferredContentSizeDidInvalidateForContentViewProvider:*(a1 + 40)];
}

uint64_t __74__SBUISystemApertureTextContentProvider_swapInText_textColor_fittingSize___block_invoke_2(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 16);
  if (!v2 || (*(v1 + 16) = v2 - 1, !*(*(result + 32) + 16)))
  {
    result = *(result + 40);
    if (result)
    {
      v3 = *(MEMORY[0x1E695F060] + 8);
      if (*(result + 416) != *MEMORY[0x1E695F060] || *(result + 424) != v3)
      {
        return OUTLINED_FUNCTION_0(result, (result + 416), *MEMORY[0x1E695F060], v3);
      }
    }
  }

  return result;
}

@end