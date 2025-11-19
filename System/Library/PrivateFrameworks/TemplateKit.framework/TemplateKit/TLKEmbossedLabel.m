@interface TLKEmbossedLabel
- (BOOL)adjustsFontSizeToFitWidth;
- (CGSize)customInsetSize;
- (CGSize)effectiveLayoutSizeFittingSize:(CGSize)a3;
- (CGSize)textOffset;
- (TLKEmbossedLabel)init;
- (double)effectiveBaselineOffsetFromBottom;
- (double)effectiveFirstBaselineOffsetFromTop;
- (void)layoutSubviews;
- (void)observedPropertiesChanged;
- (void)setAdjustsFontSizeToFitWidth:(BOOL)a3;
- (void)setColor:(id)a3;
- (void)setFont:(id)a3;
- (void)setShouldBadge:(BOOL)a3;
- (void)setText:(id)a3;
- (void)setText:(id)a3 font:(id)a4 customInsetSize:(CGSize)a5 badge:(BOOL)a6;
@end

@implementation TLKEmbossedLabel

- (TLKEmbossedLabel)init
{
  v9.receiver = self;
  v9.super_class = TLKEmbossedLabel;
  v2 = [(TLKView *)&v9 init];
  if (v2)
  {
    v3 = [TLKProminenceView viewWithProminence:3];
    [(TLKEmbossedLabel *)v2 setBackgroundView:v3];

    v4 = [(TLKEmbossedLabel *)v2 backgroundView];
    [(TLKEmbossedLabel *)v2 addSubview:v4];

    v5 = objc_opt_new();
    [(TLKEmbossedLabel *)v2 setLabel:v5];

    v6 = [(TLKEmbossedLabel *)v2 label];
    [v6 setTextAlignment:1];

    v7 = [(TLKEmbossedLabel *)v2 label];
    [(TLKEmbossedLabel *)v2 addSubview:v7];

    v2->_shouldBadge = 1;
  }

  return v2;
}

- (void)setShouldBadge:(BOOL)a3
{
  if (self->_shouldBadge != a3)
  {
    self->_shouldBadge = a3;
    v4 = [(TLKView *)self observer];
    if (v4)
    {
      v5 = v4;
      v6 = [(TLKView *)self observer];
      v7 = [v6 batchUpdateCount];

      if (!v7)
      {
        v8 = [(TLKView *)self observer];
        [v8 propertiesDidChange];
      }
    }
  }
}

- (void)setColor:(id)a3
{
  v10 = a3;
  if (self->_color != v10)
  {
    objc_storeStrong(&self->_color, a3);
    v5 = [(TLKView *)self observer];
    if (v5)
    {
      v6 = v5;
      v7 = [(TLKView *)self observer];
      v8 = [v7 batchUpdateCount];

      if (!v8)
      {
        v9 = [(TLKView *)self observer];
        [v9 propertiesDidChange];
      }
    }
  }
}

- (void)setFont:(id)a3
{
  v10 = a3;
  if (self->_font != v10)
  {
    objc_storeStrong(&self->_font, a3);
    v5 = [(TLKView *)self observer];
    if (v5)
    {
      v6 = v5;
      v7 = [(TLKView *)self observer];
      v8 = [v7 batchUpdateCount];

      if (!v8)
      {
        v9 = [(TLKView *)self observer];
        [v9 propertiesDidChange];
      }
    }
  }
}

- (void)setText:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_text setObserver:0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v5;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v6 = self->_text;
      v7 = [(TLKMultilineText *)v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v29;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v29 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v28 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v11 setObserver:0];
            }
          }

          v8 = [(TLKMultilineText *)v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v8);
      }

      v5 = v23;
    }
  }

  objc_storeStrong(&self->_text, a3);
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_text setObserver:self];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v12 = self->_text;
      v13 = [(TLKMultilineText *)v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v25;
        do
        {
          for (j = 0; j != v14; ++j)
          {
            if (*v25 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v24 + 1) + 8 * j);
            if (objc_opt_respondsToSelector())
            {
              [v17 setObserver:self];
            }
          }

          v14 = [(TLKMultilineText *)v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
        }

        while (v14);
      }
    }
  }

  v18 = [(TLKView *)self observer];
  if (v18)
  {
    v19 = v18;
    v20 = [(TLKView *)self observer];
    v21 = [v20 batchUpdateCount];

    if (!v21)
    {
      v22 = [(TLKView *)self observer];
      [v22 propertiesDidChange];
    }
  }
}

- (void)setText:(id)a3 font:(id)a4 customInsetSize:(CGSize)a5 badge:(BOOL)a6
{
  v6 = a6;
  height = a5.height;
  width = a5.width;
  v15 = a3;
  v12 = a4;
  text = self->_text;
  v14 = text != v15;
  if (text != v15)
  {
    objc_storeStrong(&self->_text, a3);
  }

  if (self->_font != v12)
  {
    objc_storeStrong(&self->_font, a4);
    v14 = 1;
  }

  if (self->_shouldBadge != v6)
  {
    self->_shouldBadge = v6;
    v14 = 1;
  }

  if (self->_customInsetSize.width != width || self->_customInsetSize.height != height)
  {
    self->_customInsetSize.width = width;
    self->_customInsetSize.height = height;
LABEL_10:
    [(TLKEmbossedLabel *)self observedPropertiesChanged];
    goto LABEL_11;
  }

  if (v14)
  {
    goto LABEL_10;
  }

LABEL_11:
}

- (void)observedPropertiesChanged
{
  v3 = [(TLKEmbossedLabel *)self font];

  if (!v3)
  {
    v4 = +[TLKFontUtilities footnoteFont];
    [(TLKEmbossedLabel *)self setFont:v4];
  }

  v5 = [(TLKEmbossedLabel *)self label];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __45__TLKEmbossedLabel_observedPropertiesChanged__block_invoke;
  v10[3] = &unk_1E7FD8E98;
  v10[4] = self;
  [v5 performBatchUpdates:v10];

  LODWORD(v5) = [(TLKEmbossedLabel *)self shouldBadge];
  v6 = [(TLKEmbossedLabel *)self backgroundView];
  [v6 setHidden:v5 ^ 1];

  [(TLKEmbossedLabel *)self effectiveLayoutSizeFittingSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  v8 = v7;
  v9 = [(TLKEmbossedLabel *)self backgroundView];
  [TLKLayoutUtilities deviceScaledRoundedValue:self forView:v8 * 0.5];
  [v9 tlks_setCornerRadius:*MEMORY[0x1E69796E0] withStyle:?];

  [(TLKEmbossedLabel *)self invalidateIntrinsicContentSize];
}

void __45__TLKEmbossedLabel_observedPropertiesChanged__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) text];
  v3 = [*(a1 + 32) label];
  [v3 setMultilineText:v2];

  v4 = [*(a1 + 32) font];
  v5 = [*(a1 + 32) label];
  [v5 setFont:v4];

  v6 = [*(a1 + 32) color];
  v7 = [*(a1 + 32) label];
  [v7 setTextColor:v6];

  v8 = [*(a1 + 32) shouldBadge] ^ 1;
  v9 = [*(a1 + 32) label];
  [v9 setProminence:v8];
}

- (void)setAdjustsFontSizeToFitWidth:(BOOL)a3
{
  v3 = a3;
  v4 = [(TLKEmbossedLabel *)self label];
  [v4 setAdjustsFontSizeToFitWidth:v3];
}

- (BOOL)adjustsFontSizeToFitWidth
{
  v2 = [(TLKEmbossedLabel *)self label];
  v3 = [v2 adjustsFontSizeToFitWidth];

  return v3;
}

- (double)effectiveBaselineOffsetFromBottom
{
  v3 = [(TLKEmbossedLabel *)self label];
  [v3 effectiveBaselineOffsetFromBottom];
  v5 = v4 + self->_customInsetSize.height;

  return v5;
}

- (double)effectiveFirstBaselineOffsetFromTop
{
  v3 = [(TLKEmbossedLabel *)self label];
  [v3 effectiveFirstBaselineOffsetFromTop];
  v5 = v4 + self->_customInsetSize.height;

  return v5;
}

- (CGSize)effectiveLayoutSizeFittingSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(TLKEmbossedLabel *)self label];
  [v6 effectiveLayoutSizeFittingSize:{width, height}];
  v8 = v7;
  v10 = v9;

  [TLKLayoutUtilities deviceScaledRoundedValue:self forView:self->_customInsetSize.width + self->_customInsetSize.width];
  v12 = v8 + v11;
  [TLKLayoutUtilities deviceScaledRoundedValue:self forView:self->_customInsetSize.height + self->_customInsetSize.height];
  v14 = v10 + v13;
  v15 = v12;
  result.height = v14;
  result.width = v15;
  return result;
}

- (void)layoutSubviews
{
  v33.receiver = self;
  v33.super_class = TLKEmbossedLabel;
  [(TLKView *)&v33 layoutSubviews];
  [(TLKEmbossedLabel *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(TLKEmbossedLabel *)self backgroundView];
  [v11 setFrame:{v4, v6, v8, v10}];

  v12 = [(TLKEmbossedLabel *)self label];
  [(TLKEmbossedLabel *)self bounds];
  [v12 effectiveLayoutSizeFittingSize:{v13, v14}];
  v16 = v15;

  [(TLKEmbossedLabel *)self textOffset];
  v18 = v17;
  [(TLKEmbossedLabel *)self textOffset];
  v20 = v19;
  [(TLKEmbossedLabel *)self bounds];
  v21 = v20 + (CGRectGetHeight(v34) - v16) * 0.5;
  [(TLKEmbossedLabel *)self bounds];
  Width = CGRectGetWidth(v35);
  [(TLKEmbossedLabel *)self textOffset];
  [TLKLayoutUtilities deviceScaledRoundedRect:self forView:v18, v21, Width + v23 * -2.0, v16];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = [(TLKEmbossedLabel *)self label];
  [v32 setFrame:{v25, v27, v29, v31}];
}

- (CGSize)textOffset
{
  width = self->_textOffset.width;
  height = self->_textOffset.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)customInsetSize
{
  width = self->_customInsetSize.width;
  height = self->_customInsetSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end