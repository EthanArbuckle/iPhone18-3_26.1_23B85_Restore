@interface PKPassFaceBadgesCollectionView
- (CGSize)sizeForBoundingSize:(CGSize)size limitedToNumberOfLines:(unint64_t)lines;
- (NSDirectionalEdgeInsets)badgesTextPadding;
- (NSDirectionalEdgeInsets)contentInsets;
- (PKPassFaceBadgesCollectionView)init;
- (void)_updateRowContent;
- (void)layoutSubviews;
- (void)setBadgesBackgroundColor:(id)color;
- (void)setBadgesFont:(id)font;
- (void)setBadgesTextColor:(id)color;
- (void)setBadgesTextPadding:(NSDirectionalEdgeInsets)padding;
- (void)setContentInsets:(NSDirectionalEdgeInsets)insets;
- (void)setFields:(id)fields;
- (void)setLayoutDirection:(int64_t)direction;
- (void)setNumberOfLines:(unint64_t)lines;
@end

@implementation PKPassFaceBadgesCollectionView

- (PKPassFaceBadgesCollectionView)init
{
  v7.receiver = self;
  v7.super_class = PKPassFaceBadgesCollectionView;
  v2 = [(PKPassFaceBadgesCollectionView *)&v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v3 = v2;
  if (v2)
  {
    v2->_numberOfLines = 1;
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    badgeViews = v3->_badgeViews;
    v3->_badgeViews = v4;
  }

  return v3;
}

- (void)layoutSubviews
{
  [(PKPassFaceBadgesCollectionView *)self bounds];
  v37 = v5;
  v38 = v6;
  if (v6 >= 0.0)
  {
    v7 = 0;
    layoutDirection = self->_layoutDirection;
    v39 = 0.0;
    v9 = 1;
    v10 = 0.0;
    v11 = 0.0;
    while (v7 < [(NSMutableArray *)self->_badgeViews count])
    {
      v12 = [(NSMutableArray *)self->_badgeViews objectAtIndexedSubscript:v7];
      [v12 sizeThatFits:{v37, v38}];
      v14 = v13;
      v16 = v15;
      v17.n128_u64[0] = *&self->_contentInsets.trailing;
      v18.n128_f64[0] = v13 + self->_contentInsets.leading + v17.n128_f64[0];
      v19.n128_f64[0] = v15 + self->_contentInsets.top + self->_contentInsets.bottom;
      PKSizeCeilToPixel(v18, v19, v17);
      v21 = v20;
      v23 = v22.n128_f64[0];
      v24.n128_f64[0] = v37 - v10;
      PKFloatCeilToPixel(v24, v22);
      v26 = v25;
      v27.n128_f64[0] = v38 - v39;
      PKFloatCeilToPixel(v27, v28);
      if (v21 > v26 || v23 > v29.n128_f64[0])
      {
        if (v23 > v29.n128_f64[0] || v11 == 0.0)
        {
LABEL_22:

          break;
        }

        v39 = v39 + v11;
        numberOfLines = self->_numberOfLines;
        v11 = 0.0;
        if (numberOfLines)
        {
          ++v9;
          v10 = 0.0;
          if (v9 > numberOfLines)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v10 = 0.0;
        }
      }

      else
      {
        v33 = v10 + self->_contentInsets.leading;
        v34 = v33;
        if (layoutDirection)
        {
          v29.n128_f64[0] = v37 - v33;
          PKFloatCeilToPixel(v29, v30);
        }

        v10 = v33 + v14 + self->_contentInsets.trailing;
        if (v11 <= v23)
        {
          v11 = v23;
        }

        [v12 setFrame:{v34, v39 + self->_contentInsets.top, v14, v16}];
        ++v7;
      }

      v3 = v38;
      v4 = v39;
      if (v39 > v38)
      {
        break;
      }
    }
  }

  v40 = [(NSMutableArray *)self->_badgeViews pk_objectsPassingTest:&__block_literal_global_67, v3, v4];
  v35 = [v40 pk_createArrayByApplyingBlock:&__block_literal_global_16];
  droppedFields = self->_droppedFields;
  self->_droppedFields = v35;
}

- (void)_updateRowContent
{
  v21 = *MEMORY[0x1E69E9840];
  v15 = [(NSMutableArray *)self->_badgeViews pk_createArrayByApplyingBlock:&__block_literal_global_18];
  v3 = [(NSArray *)self->_fields differenceFromArray:?];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        index = [v8 index];
        changeType = [v8 changeType];
        if (changeType)
        {
          if (changeType != 1)
          {
            continue;
          }

          v11 = [(NSMutableArray *)self->_badgeViews objectAtIndexedSubscript:index];
          [(NSMutableArray *)self->_badgeViews removeObjectAtIndex:index];
          [(PKPassFaceBadgeView *)v11 removeFromSuperview];
        }

        else
        {
          v11 = objc_alloc_init(PKPassFaceBadgeView);
          [(NSMutableArray *)self->_badgeViews insertObject:v11 atIndex:index];
          [(PKPassFaceBadgesCollectionView *)self insertSubview:v11 atIndex:0];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  if ([(NSMutableArray *)self->_badgeViews count])
  {
    v12 = 0;
    do
    {
      v13 = [(NSMutableArray *)self->_badgeViews objectAtIndexedSubscript:v12];
      [v13 setBackgroundColor:self->_badgesBackgroundColor];
      [v13 setTextColor:self->_badgesTextColor];
      [v13 setFont:self->_badgesFont];
      [v13 setTextPadding:{self->_badgesTextPadding.top, self->_badgesTextPadding.leading, self->_badgesTextPadding.bottom, self->_badgesTextPadding.trailing}];
      v14 = [(NSArray *)self->_fields objectAtIndexedSubscript:v12];
      [v13 setField:v14];

      ++v12;
    }

    while (v12 < [(NSMutableArray *)self->_badgeViews count]);
  }

  [(PKPassFaceBadgesCollectionView *)self setNeedsLayout];
}

- (CGSize)sizeForBoundingSize:(CGSize)size limitedToNumberOfLines:(unint64_t)lines
{
  height = size.height;
  width = size.width;
  numberOfLines = self->_numberOfLines;
  if (lines && numberOfLines)
  {
    if (numberOfLines >= lines)
    {
      linesCopy2 = lines;
    }

    else
    {
      linesCopy2 = self->_numberOfLines;
    }
  }

  else if (numberOfLines <= lines)
  {
    linesCopy2 = lines;
  }

  else
  {
    linesCopy2 = self->_numberOfLines;
  }

  v10 = *(MEMORY[0x1E695F060] + 8);
  v36 = *MEMORY[0x1E695F060];
  if (v10 <= size.height)
  {
    v11 = 0;
    v12 = 0.0;
    v13 = 1;
    v14 = 0.0;
    while (v11 < [(NSMutableArray *)self->_badgeViews count])
    {
      v15 = [(NSMutableArray *)self->_badgeViews objectAtIndexedSubscript:v11];
      [v15 sizeThatFits:{width, height}];
      v17.n128_u64[0] = *&self->_contentInsets.trailing;
      v18.n128_f64[0] = v16 + self->_contentInsets.leading + v17.n128_f64[0];
      v20.n128_f64[0] = v19 + self->_contentInsets.top + self->_contentInsets.bottom;
      PKSizeCeilToPixel(v18, v20, v17);
      v22 = v21;
      v24 = v23.n128_f64[0];
      v25.n128_f64[0] = width - v12;
      PKFloatCeilToPixel(v25, v23);
      v27 = v26;
      v28.n128_f64[0] = height - v10;
      PKFloatCeilToPixel(v28, v29);
      if (v22 > v27 || v24 > v30)
      {
        if (v24 > v30 || v14 == 0.0)
        {
LABEL_33:

          goto LABEL_34;
        }

        v32 = v36;
        if (v36 <= v12)
        {
          v32 = v12;
        }

        v36 = v32;
        v10 = v10 + v14;
        v14 = 0.0;
        if (linesCopy2)
        {
          ++v13;
          v12 = 0.0;
          if (v13 > linesCopy2)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v12 = 0.0;
        }
      }

      else
      {
        v12 = v12 + v22;
        if (v14 <= v24)
        {
          v14 = v24;
        }

        ++v11;
      }

      if (v10 > height)
      {
        goto LABEL_34;
      }
    }

    v33 = v36;
    if (v36 <= v12)
    {
      v33 = v12;
    }

    v36 = v33;
    v10 = v10 + v14;
  }

LABEL_34:
  size.width = v36;
  size.height = v10;

  PKSizeCeilToPixel(size, *&size.height, v4);
  result.height = v35;
  result.width = v34;
  return result;
}

- (void)setLayoutDirection:(int64_t)direction
{
  if (self->_layoutDirection != direction)
  {
    self->_layoutDirection = direction;
    [(PKPassFaceBadgesCollectionView *)self setNeedsLayout];
  }
}

- (void)setContentInsets:(NSDirectionalEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.leading;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.trailing;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInsets.top, v3), vceqq_f64(*&self->_contentInsets.bottom, v4)))) & 1) == 0)
  {
    self->_contentInsets = insets;
    [(PKPassFaceBadgesCollectionView *)self setNeedsLayout];
  }
}

- (void)setNumberOfLines:(unint64_t)lines
{
  if (self->_numberOfLines != lines)
  {
    self->_numberOfLines = lines;
    [(PKPassFaceBadgesCollectionView *)self setNeedsLayout];
  }
}

- (void)setFields:(id)fields
{
  fieldsCopy = fields;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_fields, fields);
    [(PKPassFaceBadgesCollectionView *)self _updateRowContent];
  }
}

- (void)setBadgesBackgroundColor:(id)color
{
  v16 = *MEMORY[0x1E69E9840];
  colorCopy = color;
  if (!CGColorEqualToColor(-[UIColor CGColor](self->_badgesBackgroundColor, "CGColor"), [colorCopy CGColor]))
  {
    objc_storeStrong(&self->_badgesBackgroundColor, color);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = self->_badgeViews;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v10++) setBackgroundColor:{colorCopy, v11}];
        }

        while (v8 != v10);
        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)setBadgesTextColor:(id)color
{
  v16 = *MEMORY[0x1E69E9840];
  colorCopy = color;
  if (!CGColorEqualToColor(-[UIColor CGColor](self->_badgesTextColor, "CGColor"), [colorCopy CGColor]))
  {
    objc_storeStrong(&self->_badgesTextColor, color);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = self->_badgeViews;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v10++) setTextColor:{colorCopy, v11}];
        }

        while (v8 != v10);
        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)setBadgesFont:(id)font
{
  v16 = *MEMORY[0x1E69E9840];
  fontCopy = font;
  if (self->_badgesFont != fontCopy)
  {
    objc_storeStrong(&self->_badgesFont, font);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = self->_badgeViews;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v10++) setFont:{fontCopy, v11}];
        }

        while (v8 != v10);
        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }

    [(PKPassFaceBadgesCollectionView *)self setNeedsLayout];
  }
}

- (void)setBadgesTextPadding:(NSDirectionalEdgeInsets)padding
{
  v20 = *MEMORY[0x1E69E9840];
  v3.f64[0] = padding.top;
  v3.f64[1] = padding.leading;
  v4.f64[0] = padding.bottom;
  v4.f64[1] = padding.trailing;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_badgesTextPadding.top, v3), vceqq_f64(*&self->_badgesTextPadding.bottom, v4)))) & 1) == 0)
  {
    v11 = *&padding.top;
    v12 = *&padding.leading;
    self->_badgesTextPadding = padding;
    v13 = *&padding.bottom;
    v14 = *&padding.trailing;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = self->_badgeViews;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v15 + 1) + 8 * i) setTextPadding:{*&v11, *&v12, *&v13, *&v14, v11, v12, v13, v14, v15}];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    [(PKPassFaceBadgesCollectionView *)self setNeedsLayout];
  }
}

- (NSDirectionalEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  leading = self->_contentInsets.leading;
  bottom = self->_contentInsets.bottom;
  trailing = self->_contentInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (NSDirectionalEdgeInsets)badgesTextPadding
{
  top = self->_badgesTextPadding.top;
  leading = self->_badgesTextPadding.leading;
  bottom = self->_badgesTextPadding.bottom;
  trailing = self->_badgesTextPadding.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

@end