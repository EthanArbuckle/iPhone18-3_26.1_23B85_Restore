@interface TLKEmbossedLabel
- (BOOL)adjustsFontSizeToFitWidth;
- (CGSize)customInsetSize;
- (CGSize)effectiveLayoutSizeFittingSize:(CGSize)size;
- (CGSize)textOffset;
- (TLKEmbossedLabel)init;
- (double)effectiveBaselineOffsetFromBottom;
- (double)effectiveFirstBaselineOffsetFromTop;
- (void)layoutSubviews;
- (void)observedPropertiesChanged;
- (void)setAdjustsFontSizeToFitWidth:(BOOL)width;
- (void)setColor:(id)color;
- (void)setFont:(id)font;
- (void)setShouldBadge:(BOOL)badge;
- (void)setText:(id)text;
- (void)setText:(id)text font:(id)font customInsetSize:(CGSize)size badge:(BOOL)badge;
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

    backgroundView = [(TLKEmbossedLabel *)v2 backgroundView];
    [(TLKEmbossedLabel *)v2 addSubview:backgroundView];

    v5 = objc_opt_new();
    [(TLKEmbossedLabel *)v2 setLabel:v5];

    label = [(TLKEmbossedLabel *)v2 label];
    [label setTextAlignment:1];

    label2 = [(TLKEmbossedLabel *)v2 label];
    [(TLKEmbossedLabel *)v2 addSubview:label2];

    v2->_shouldBadge = 1;
  }

  return v2;
}

- (void)setShouldBadge:(BOOL)badge
{
  if (self->_shouldBadge != badge)
  {
    self->_shouldBadge = badge;
    observer = [(TLKView *)self observer];
    if (observer)
    {
      v5 = observer;
      observer2 = [(TLKView *)self observer];
      batchUpdateCount = [observer2 batchUpdateCount];

      if (!batchUpdateCount)
      {
        observer3 = [(TLKView *)self observer];
        [observer3 propertiesDidChange];
      }
    }
  }
}

- (void)setColor:(id)color
{
  colorCopy = color;
  if (self->_color != colorCopy)
  {
    objc_storeStrong(&self->_color, color);
    observer = [(TLKView *)self observer];
    if (observer)
    {
      v6 = observer;
      observer2 = [(TLKView *)self observer];
      batchUpdateCount = [observer2 batchUpdateCount];

      if (!batchUpdateCount)
      {
        observer3 = [(TLKView *)self observer];
        [observer3 propertiesDidChange];
      }
    }
  }
}

- (void)setFont:(id)font
{
  fontCopy = font;
  if (self->_font != fontCopy)
  {
    objc_storeStrong(&self->_font, font);
    observer = [(TLKView *)self observer];
    if (observer)
    {
      v6 = observer;
      observer2 = [(TLKView *)self observer];
      batchUpdateCount = [observer2 batchUpdateCount];

      if (!batchUpdateCount)
      {
        observer3 = [(TLKView *)self observer];
        [observer3 propertiesDidChange];
      }
    }
  }
}

- (void)setText:(id)text
{
  v34 = *MEMORY[0x1E69E9840];
  textCopy = text;
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_text setObserver:0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = textCopy;
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

      textCopy = v23;
    }
  }

  objc_storeStrong(&self->_text, text);
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

  observer = [(TLKView *)self observer];
  if (observer)
  {
    v19 = observer;
    observer2 = [(TLKView *)self observer];
    batchUpdateCount = [observer2 batchUpdateCount];

    if (!batchUpdateCount)
    {
      observer3 = [(TLKView *)self observer];
      [observer3 propertiesDidChange];
    }
  }
}

- (void)setText:(id)text font:(id)font customInsetSize:(CGSize)size badge:(BOOL)badge
{
  badgeCopy = badge;
  height = size.height;
  width = size.width;
  textCopy = text;
  fontCopy = font;
  text = self->_text;
  v14 = text != textCopy;
  if (text != textCopy)
  {
    objc_storeStrong(&self->_text, text);
  }

  if (self->_font != fontCopy)
  {
    objc_storeStrong(&self->_font, font);
    v14 = 1;
  }

  if (self->_shouldBadge != badgeCopy)
  {
    self->_shouldBadge = badgeCopy;
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
  font = [(TLKEmbossedLabel *)self font];

  if (!font)
  {
    v4 = +[TLKFontUtilities footnoteFont];
    [(TLKEmbossedLabel *)self setFont:v4];
  }

  label = [(TLKEmbossedLabel *)self label];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __45__TLKEmbossedLabel_observedPropertiesChanged__block_invoke;
  v10[3] = &unk_1E7FD8E98;
  v10[4] = self;
  [label performBatchUpdates:v10];

  LODWORD(label) = [(TLKEmbossedLabel *)self shouldBadge];
  backgroundView = [(TLKEmbossedLabel *)self backgroundView];
  [backgroundView setHidden:label ^ 1];

  [(TLKEmbossedLabel *)self effectiveLayoutSizeFittingSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  v8 = v7;
  backgroundView2 = [(TLKEmbossedLabel *)self backgroundView];
  [TLKLayoutUtilities deviceScaledRoundedValue:self forView:v8 * 0.5];
  [backgroundView2 tlks_setCornerRadius:*MEMORY[0x1E69796E0] withStyle:?];

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

- (void)setAdjustsFontSizeToFitWidth:(BOOL)width
{
  widthCopy = width;
  label = [(TLKEmbossedLabel *)self label];
  [label setAdjustsFontSizeToFitWidth:widthCopy];
}

- (BOOL)adjustsFontSizeToFitWidth
{
  label = [(TLKEmbossedLabel *)self label];
  adjustsFontSizeToFitWidth = [label adjustsFontSizeToFitWidth];

  return adjustsFontSizeToFitWidth;
}

- (double)effectiveBaselineOffsetFromBottom
{
  label = [(TLKEmbossedLabel *)self label];
  [label effectiveBaselineOffsetFromBottom];
  v5 = v4 + self->_customInsetSize.height;

  return v5;
}

- (double)effectiveFirstBaselineOffsetFromTop
{
  label = [(TLKEmbossedLabel *)self label];
  [label effectiveFirstBaselineOffsetFromTop];
  v5 = v4 + self->_customInsetSize.height;

  return v5;
}

- (CGSize)effectiveLayoutSizeFittingSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  label = [(TLKEmbossedLabel *)self label];
  [label effectiveLayoutSizeFittingSize:{width, height}];
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
  backgroundView = [(TLKEmbossedLabel *)self backgroundView];
  [backgroundView setFrame:{v4, v6, v8, v10}];

  label = [(TLKEmbossedLabel *)self label];
  [(TLKEmbossedLabel *)self bounds];
  [label effectiveLayoutSizeFittingSize:{v13, v14}];
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
  label2 = [(TLKEmbossedLabel *)self label];
  [label2 setFrame:{v25, v27, v29, v31}];
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