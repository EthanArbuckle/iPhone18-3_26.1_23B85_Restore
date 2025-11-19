@interface PKDashboardFooterTextView
- (CGSize)_layoutWithBounds:(CGRect)a3 templateLayout:(BOOL)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKDashboardFooterTextView)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)customContentInsets;
- (id)textView:(id)a3 primaryActionForTextItem:(id)a4 defaultAction:(id)a5;
- (void)_updateText;
- (void)createSubviews;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)resetFonts;
- (void)setAdditionalView:(id)a3;
- (void)setBottomInsetType:(unint64_t)a3;
- (void)setCustomContentInsets:(UIEdgeInsets)a3;
- (void)setFont:(id)a3;
- (void)setFooterText:(id)a3;
- (void)setHorizontalAlignment:(unsigned int)a3;
- (void)setLinkTextColor:(id)a3;
- (void)setMaximumLines:(int64_t)a3;
- (void)setSources:(id)a3;
- (void)setUseCustomContentInsets:(BOOL)a3;
@end

@implementation PKDashboardFooterTextView

- (PKDashboardFooterTextView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PKDashboardFooterTextView;
  v3 = [(PKDashboardCollectionViewCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_horizontalAlignment = 0;
    v3->_bottomInsetType = 1;
    [(PKDashboardFooterTextView *)v3 createSubviews];
    [(PKDashboardCollectionViewCell *)v4 setWantsCustomAppearance:1];
  }

  return v4;
}

- (void)createSubviews
{
  v3 = [MEMORY[0x1E69DD168] pkui_plainNonInteractiveTextViewWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  textView = self->_textView;
  self->_textView = v3;

  [(UITextView *)self->_textView textContainerInset];
  self->_defaultTextContainerInsets.top = v5;
  self->_defaultTextContainerInsets.left = v6;
  self->_defaultTextContainerInsets.bottom = v7;
  self->_defaultTextContainerInsets.right = v8;
  [(UITextView *)self->_textView setDelegate:self];
  [(UITextView *)self->_textView setSelectable:1];
  [(UITextView *)self->_textView setUserInteractionEnabled:1];
  [(UITextView *)self->_textView _setInteractiveTextSelectionDisabled:1];
  v9 = self->_textView;
  v10 = [MEMORY[0x1E69DD050] _defaultTextColorForTableViewStyle:1 isSectionHeader:0];
  [(UITextView *)v9 setTextColor:v10];

  v11 = self->_textView;
  horizontalAlignment = self->_horizontalAlignment;
  v13 = [(PKDashboardFooterTextView *)self _shouldReverseLayoutDirection];
  if (horizontalAlignment <= 1)
  {
    if (horizontalAlignment == 1)
    {
      goto LABEL_13;
    }

LABEL_7:
    if (v13)
    {
      horizontalAlignment = 2;
    }

    else
    {
      horizontalAlignment = 0;
    }

    goto LABEL_13;
  }

  if (horizontalAlignment != 2)
  {
    if (horizontalAlignment == 3)
    {
      horizontalAlignment = 3;
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  if (v13)
  {
    horizontalAlignment = 0;
  }

  else
  {
    horizontalAlignment = 2;
  }

LABEL_13:
  [(UITextView *)v11 setTextAlignment:horizontalAlignment];
  v14 = *MEMORY[0x1E69B9818];
  [(PKDashboardFooterTextView *)self setAccessibilityIdentifier:*MEMORY[0x1E69B9818]];
  v15 = [(PKDashboardFooterTextView *)self contentView];
  [v15 addSubview:self->_textView];

  [(PKDashboardFooterTextView *)self setAccessibilityIdentifier:v14];

  [(PKDashboardFooterTextView *)self resetFonts];
}

- (void)resetFonts
{
  textView = self->_textView;
  if (self->_font)
  {
    v3 = self->_textView;

    [(UITextView *)v3 setFont:?];
  }

  else
  {
    v4 = [(PKDashboardFooterTextView *)self _defaultFont];
    [(UITextView *)textView setFont:v4];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKDashboardFooterTextView;
  [(PKDashboardCollectionViewCell *)&v3 layoutSubviews];
  [(PKDashboardFooterTextView *)self bounds];
  [(PKDashboardFooterTextView *)self _layoutWithBounds:0 templateLayout:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(PKDashboardFooterTextView *)self _layoutWithBounds:1 templateLayout:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = PKDashboardFooterTextView;
  [(PKDashboardCollectionViewCell *)&v3 prepareForReuse];
  [(PKDashboardFooterTextView *)self setHorizontalAlignment:0];
  [(PKDashboardFooterTextView *)self setBottomInsetType:1];
  [(PKDashboardFooterTextView *)self setFont:0];
  [(PKDashboardFooterTextView *)self setFooterText:0];
  [(PKDashboardFooterTextView *)self setUseCustomContentInsets:0];
  [(PKDashboardFooterTextView *)self setMaximumLines:0];
  [(PKDashboardFooterTextView *)self setAdditionalView:0];
}

- (CGSize)_layoutWithBounds:(CGRect)a3 templateLayout:(BOOL)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (self->_useCustomContentInsets)
  {
    p_defaultTextContainerInsets = MEMORY[0x1E69DDCE0];
  }

  else
  {
    p_defaultTextContainerInsets = &self->_defaultTextContainerInsets;
  }

  [(UITextView *)self->_textView setTextContainerInset:p_defaultTextContainerInsets->top, p_defaultTextContainerInsets->left, p_defaultTextContainerInsets->bottom, p_defaultTextContainerInsets->right];
  v11 = [(NSString *)self->_footerText length];
  if (self->_maximumLines)
  {
    v12 = [(UITextView *)self->_textView textContainer];
    [v12 setMaximumNumberOfLines:self->_maximumLines];

    v13 = [(UITextView *)self->_textView textContainer];
    [v13 setLineBreakMode:4];
  }

  if (self->_useCustomContentInsets)
  {
    top = self->_customContentInsets.top;
    left = self->_customContentInsets.left;
    bottom = self->_customContentInsets.bottom;
    right = self->_customContentInsets.right;
  }

  else
  {
    bottomInsetType = self->_bottomInsetType;
    if (bottomInsetType == 2)
    {
      [(UITextView *)self->_textView textContainerInset];
      [(UITextView *)self->_textView setTextContainerInset:?];
      bottom = 26.0;
    }

    else if (bottomInsetType == 1)
    {
      bottom = 10.0;
    }

    else
    {
      bottom = 0.0;
    }

    if (v11)
    {
      top = 0.0;
    }

    else
    {
      top = bottom;
    }

    [(PKDashboardCollectionViewCell *)self horizontalInset];
    left = right;
  }

  v19 = width - left - right;
  v20 = x + left;
  v21 = y + top;
  v22 = width;
  v23 = width - (right + left);
  memset(&slice, 0, sizeof(slice));
  v24 = top;
  v25 = bottom;
  v37 = v24;
  remainder.origin.x = v20;
  remainder.origin.y = v21;
  remainder.size.width = v23;
  v26 = height - (bottom + v24);
  remainder.size.height = v26;
  if (v11)
  {
    [(UITextView *)self->_textView sizeThatFits:v19, 3.40282347e38];
    v28 = v27;
    v41.origin.x = v20;
    v41.origin.y = v21;
    v41.size.width = v23;
    v41.size.height = v26;
    CGRectDivide(v41, &slice, &remainder, v28, CGRectMinYEdge);
    if (!a4)
    {
      textView = self->_textView;
      PKContentAlignmentMake();
      PKSizeAlignedInRect();
      [(UITextView *)textView setFrame:?];
    }
  }

  else
  {
    v28 = *(MEMORY[0x1E695F060] + 8);
  }

  additionalView = self->_additionalView;
  if (additionalView)
  {
    [(UIView *)additionalView sizeThatFits:v19, 3.40282347e38];
    v32 = v31;
    CGRectDivide(remainder, &slice, &remainder, v31, CGRectMinYEdge);
    if (!a4)
    {
      v33 = self->_additionalView;
      PKContentAlignmentMake();
      PKSizeAlignedInRect();
      [(UIView *)v33 setFrame:?];
    }

    CGRectDivide(remainder, &slice, &remainder, 16.0, CGRectMinYEdge);
    v34 = v32 + 0.0 + 16.0;
  }

  else
  {
    v34 = 0.0;
  }

  v35 = v25 + v37 + v28 + v34;
  v36 = v22;
  result.height = v35;
  result.width = v36;
  return result;
}

- (void)setFooterText:(id)a3
{
  v4 = [a3 copy];
  footerText = self->_footerText;
  self->_footerText = v4;

  [(UITextView *)self->_textView setText:self->_footerText];
  linkTextColor = self->_linkTextColor;
  self->_linkTextColor = 0;

  sources = self->_sources;
  self->_sources = 0;

  [(PKDashboardFooterTextView *)self resetFonts];

  [(PKDashboardFooterTextView *)self setNeedsLayout];
}

- (void)setFont:(id)a3
{
  v5 = a3;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_font, a3);
    [(PKDashboardFooterTextView *)self _updateText];
  }
}

- (void)setUseCustomContentInsets:(BOOL)a3
{
  if (self->_useCustomContentInsets != a3)
  {
    self->_useCustomContentInsets = a3;
    [(PKDashboardFooterTextView *)self setNeedsLayout];
  }
}

- (void)setCustomContentInsets:(UIEdgeInsets)a3
{
  if (self->_useCustomContentInsets)
  {
    v3.f64[0] = a3.top;
    v3.f64[1] = a3.left;
    v4.f64[0] = a3.bottom;
    v4.f64[1] = a3.right;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_customContentInsets.top), vceqq_f64(v4, *&self->_customContentInsets.bottom)))) & 1) == 0)
    {
      self->_customContentInsets = a3;
      [(PKDashboardFooterTextView *)self setNeedsLayout];
    }
  }
}

- (void)setMaximumLines:(int64_t)a3
{
  if (self->_maximumLines != a3)
  {
    self->_maximumLines = a3;
    [(PKDashboardFooterTextView *)self setNeedsLayout];
  }
}

- (void)setSources:(id)a3
{
  v5 = a3;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_sources, a3);
    [(PKDashboardFooterTextView *)self _updateText];
  }
}

- (void)setLinkTextColor:(id)a3
{
  v5 = a3;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_linkTextColor, a3);
    [(PKDashboardFooterTextView *)self _updateText];
  }
}

- (void)setBottomInsetType:(unint64_t)a3
{
  if (self->_bottomInsetType != a3)
  {
    self->_bottomInsetType = a3;
    [(PKDashboardFooterTextView *)self setNeedsLayout];
  }
}

- (void)setHorizontalAlignment:(unsigned int)a3
{
  if (self->_horizontalAlignment == a3)
  {
    return;
  }

  self->_horizontalAlignment = a3;
  textView = self->_textView;
  v7 = [(PKDashboardFooterTextView *)self _shouldReverseLayoutDirection];
  if (a3 <= 1)
  {
    if (a3 == 1)
    {
      v8 = 1;
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  if (a3 != 2)
  {
    if (a3 == 3)
    {
      v8 = 3;
      goto LABEL_14;
    }

LABEL_8:
    if (v7)
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_14;
  }

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 2;
  }

LABEL_14:
  [(UITextView *)textView setTextAlignment:v8];

  [(PKDashboardFooterTextView *)self setNeedsLayout];
}

- (void)setAdditionalView:(id)a3
{
  v5 = a3;
  additionalView = self->_additionalView;
  if (additionalView != v5)
  {
    v7 = v5;
    if (additionalView)
    {
      [(UIView *)additionalView removeFromSuperview];
    }

    objc_storeStrong(&self->_additionalView, a3);
    if (v7)
    {
      [(PKDashboardFooterTextView *)self addSubview:v7];
    }

    [(PKDashboardFooterTextView *)self setNeedsLayout];
    v5 = v7;
  }
}

- (void)_updateText
{
  v31 = *MEMORY[0x1E69E9840];
  font = self->_font;
  if (font)
  {
    v4 = font;
  }

  else
  {
    v4 = [(PKDashboardFooterTextView *)self _defaultFont];
  }

  v5 = v4;
  v6 = [MEMORY[0x1E69DD050] _defaultTextColorForTableViewStyle:1 isSectionHeader:0];
  linkTextColor = self->_linkTextColor;
  if (linkTextColor)
  {
    v8 = linkTextColor;
  }

  else
  {
    v8 = [MEMORY[0x1E69DC888] linkColor];
  }

  v24 = v8;
  v9 = [(NSString *)self->_footerText length];
  v10 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:self->_footerText];
  v23 = *MEMORY[0x1E69DB650];
  v20 = v6;
  [v10 addAttribute:? value:? range:?];
  v21 = v5;
  [v10 addAttribute:*MEMORY[0x1E69DB648] value:v5 range:{0, v9}];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = self->_sources;
  v11 = [(NSArray *)obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v27;
    v22 = *MEMORY[0x1E69DE720];
    v14 = *MEMORY[0x1E69DB758];
    do
    {
      v15 = 0;
      do
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v16 = [*(*(&v26 + 1) + 8 * v15) linkText];
        v17 = [(NSString *)self->_footerText rangeOfString:v16];
        v19 = v18;
        if ([(PKDashboardFooterTextView *)self _isLinkRangeValid:v17, v18])
        {
          [v10 addAttribute:v22 value:@"com.apple.passkit.footerItemTextTag" range:{v17, v19}];
          [v10 addAttribute:v23 value:v24 range:{v17, v19}];
          [v10 addAttribute:v14 value:MEMORY[0x1E695E110] range:{v17, v19}];
        }

        ++v15;
      }

      while (v12 != v15);
      v12 = [(NSArray *)obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v12);
  }

  [(UITextView *)self->_textView setAttributedText:v10];
  [(PKDashboardFooterTextView *)self setNeedsLayout];
}

- (id)textView:(id)a3 primaryActionForTextItem:(id)a4 defaultAction:(id)a5
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 contentType] == 2 && ((objc_msgSend(v9, "tagIdentifier"), v11 = objc_claimAutoreleasedReturnValue(), v11 == @"com.apple.passkit.footerItemTextTag") || (v12 = v11) != 0 && (v13 = -[__CFString isEqualToString:](v11, "isEqualToString:", @"com.apple.passkit.footerItemTextTag"), v12, v12, (v13 & 1) != 0)))
  {
    v30 = v10;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = self->_sources;
    v14 = [(NSArray *)obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v35;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v35 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v34 + 1) + 8 * i);
          v19 = [v18 linkText];
          v20 = [v8 text];
          v21 = [v20 rangeOfString:v19];
          v23 = v22;

          v42.location = [v9 range];
          v42.length = v24;
          v41.location = v21;
          v41.length = v23;
          if (NSIntersectionRange(v41, v42).length)
          {
            v25 = [v18 action];
            if (v25)
            {
              v27 = MEMORY[0x1E69DC628];
              v32[0] = MEMORY[0x1E69E9820];
              v32[1] = 3221225472;
              v32[2] = __77__PKDashboardFooterTextView_textView_primaryActionForTextItem_defaultAction___block_invoke;
              v32[3] = &unk_1E8021328;
              v33 = v25;
              v28 = v25;
              v26 = [v27 actionWithHandler:v32];

              goto LABEL_17;
            }
          }
        }

        v15 = [(NSArray *)obj countByEnumeratingWithState:&v34 objects:v38 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v26 = 0;
LABEL_17:
    v10 = v30;
  }

  else
  {
    v26 = v10;
  }

  return v26;
}

- (UIEdgeInsets)customContentInsets
{
  top = self->_customContentInsets.top;
  left = self->_customContentInsets.left;
  bottom = self->_customContentInsets.bottom;
  right = self->_customContentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end