@interface SBUISystemApertureTextContentProvider
+ (id)_textColorForTextStyle:(int64_t)a3;
- (SBUISystemApertureContentViewContaining)contentContainer;
- (id)_initWithText:(id)a3 attributedText:(id)a4 style:(int64_t)a5 font:(id)a6 textColor:(id)a7;
- (id)_providedView;
- (void)setAttributedText:(id)a3;
- (void)setFontWeight:(double)a3;
- (void)setText:(id)a3;
- (void)setTextAlignment:(int64_t)a3;
- (void)swapInText:(id)a3 textColor:(id)a4 fittingSize:(CGSize)a5;
@end

@implementation SBUISystemApertureTextContentProvider

- (id)_initWithText:(id)a3 attributedText:(id)a4 style:(int64_t)a5 font:(id)a6 textColor:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
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
  if (!v12)
  {
    if (!v13)
    {
      goto LABEL_5;
    }

LABEL_8:
    [(SBUISystemApertureLabel *)v20 setAttributedText:v13];
    if (!v14)
    {
      goto LABEL_6;
    }

LABEL_9:
    [(SBUISystemApertureLabel *)v20 setFont:v14];
    goto LABEL_10;
  }

  [(SBUISystemApertureLabel *)v19 setText:v12];
  if (v13)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v14)
  {
    goto LABEL_9;
  }

LABEL_6:
  v21 = [MEMORY[0x1E69DB878] sbui_systemAperturePreferredFontForTextStyle:a5];
  [(SBUISystemApertureLabel *)v20 setFont:v21];

LABEL_10:
  [(SBUISystemApertureLabel *)v20 setAdjustsFontForContentSizeCategory:1];
  if (v15)
  {
    [(SBUISystemApertureLabel *)v20 setTextColor:v15];
  }

  else
  {
    v22 = [objc_opt_class() _textColorForTextStyle:a5];
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

- (void)setTextAlignment:(int64_t)a3
{
  v3 = a3;
  if ((a3 | 2) == 2)
  {
    v5 = a3 == 0;
    if ([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1)
    {
      v3 = 2 * v5;
    }
  }

  label = self->_label;

  [(SBUISystemApertureLabel *)label setTextAlignment:v3];
}

- (void)setFontWeight:(double)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = self->_label;
  v5 = [(SBUISystemApertureLabel *)v4 font];
  v6 = [v5 fontDescriptor];

  v7 = [v6 fontAttributes];
  v8 = *MEMORY[0x1E69DB8F0];
  v9 = [v7 objectForKey:*MEMORY[0x1E69DB8F0]];
  v10 = [v9 mutableCopy];

  v11 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [v10 setObject:v11 forKey:*MEMORY[0x1E69DB990]];

  v15 = v8;
  v16[0] = v10;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v13 = [v6 fontDescriptorByAddingAttributes:v12];

  v14 = [MEMORY[0x1E69DB878] fontWithDescriptor:v13 size:0.0];
  [(SBUISystemApertureLabel *)v4 setFont:v14];
}

+ (id)_textColorForTextStyle:(int64_t)a3
{
  if (a3 > 6)
  {
  }

  else
  {
    if (a3 == 3)
    {
      [MEMORY[0x1E69DC888] secondaryLabelColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] labelColor];
    }
    a1 = ;
  }

  return a1;
}

- (SBUISystemApertureContentViewContaining)contentContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_contentContainer);

  return WeakRetained;
}

- (void)setText:(id)a3
{
  [(SBUISystemApertureLabel *)self->_label setText:a3];
  v4 = [(SBUISystemApertureTextContentProvider *)&self->super.isa _providedView];
  v8 = v4;
  if (v4)
  {
    v5 = *(MEMORY[0x1E695F060] + 8);
    if (*(v4 + 416) != *MEMORY[0x1E695F060] || *(v4 + 424) != v5)
    {
      *(v4 + 416) = *MEMORY[0x1E695F060];
      *(v4 + 424) = v5;
      [v4 setNeedsLayout];
      v4 = v8;
    }
  }

  [v4 setNeedsLayout];
  v7 = [(SBUISystemApertureTextContentProvider *)self contentContainer];
  [v7 preferredContentSizeDidInvalidateForContentViewProvider:self];
}

- (id)_providedView
{
  if (a1)
  {
    a1 = a1[3];
    v1 = vars8;
  }

  return a1;
}

- (void)setAttributedText:(id)a3
{
  [(SBUISystemApertureLabel *)self->_label setAttributedText:a3];
  v4 = [(SBUISystemApertureTextContentProvider *)&self->super.isa _providedView];
  [v4 setNeedsLayout];

  v5 = [(SBUISystemApertureTextContentProvider *)self contentContainer];
  [v5 preferredContentSizeDidInvalidateForContentViewProvider:self];
}

- (void)swapInText:(id)a3 textColor:(id)a4 fittingSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v9 = a4;
  v10 = a3;
  v11 = [(SBUISystemApertureTextContentProvider *)&self->super.isa _providedView];
  label = self->_label;
  ++self->_textSwapTransitionCount;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __74__SBUISystemApertureTextContentProvider_swapInText_textColor_fittingSize___block_invoke;
  v17[3] = &unk_1E789DC80;
  v18 = v11;
  v19 = self;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __74__SBUISystemApertureTextContentProvider_swapInText_textColor_fittingSize___block_invoke_2;
  v15[3] = &unk_1E789DCA8;
  v15[4] = self;
  v16 = v18;
  v13 = v18;
  v14 = label;
  [(SBUISystemApertureLabel *)v14 performTextSwapAnimationWithText:v10 textColor:v9 fittingSize:v17 sizeWillChangeBlock:v15 didSetPropertiesBlock:width, height];
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