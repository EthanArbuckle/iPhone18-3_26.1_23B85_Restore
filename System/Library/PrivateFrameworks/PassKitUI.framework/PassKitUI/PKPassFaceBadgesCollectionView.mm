@interface PKPassFaceBadgesCollectionView
- (CGSize)sizeForBoundingSize:(CGSize)a3 limitedToNumberOfLines:(unint64_t)a4;
- (NSDirectionalEdgeInsets)badgesTextPadding;
- (NSDirectionalEdgeInsets)contentInsets;
- (PKPassFaceBadgesCollectionView)init;
- (void)_updateRowContent;
- (void)layoutSubviews;
- (void)setBadgesBackgroundColor:(id)a3;
- (void)setBadgesFont:(id)a3;
- (void)setBadgesTextColor:(id)a3;
- (void)setBadgesTextPadding:(NSDirectionalEdgeInsets)a3;
- (void)setContentInsets:(NSDirectionalEdgeInsets)a3;
- (void)setFields:(id)a3;
- (void)setLayoutDirection:(int64_t)a3;
- (void)setNumberOfLines:(unint64_t)a3;
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
        v9 = [v8 index];
        v10 = [v8 changeType];
        if (v10)
        {
          if (v10 != 1)
          {
            continue;
          }

          v11 = [(NSMutableArray *)self->_badgeViews objectAtIndexedSubscript:v9];
          [(NSMutableArray *)self->_badgeViews removeObjectAtIndex:v9];
          [(PKPassFaceBadgeView *)v11 removeFromSuperview];
        }

        else
        {
          v11 = objc_alloc_init(PKPassFaceBadgeView);
          [(NSMutableArray *)self->_badgeViews insertObject:v11 atIndex:v9];
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

- (CGSize)sizeForBoundingSize:(CGSize)a3 limitedToNumberOfLines:(unint64_t)a4
{
  height = a3.height;
  width = a3.width;
  numberOfLines = self->_numberOfLines;
  if (a4 && numberOfLines)
  {
    if (numberOfLines >= a4)
    {
      v9 = a4;
    }

    else
    {
      v9 = self->_numberOfLines;
    }
  }

  else if (numberOfLines <= a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = self->_numberOfLines;
  }

  v10 = *(MEMORY[0x1E695F060] + 8);
  v36 = *MEMORY[0x1E695F060];
  if (v10 <= a3.height)
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
        if (v9)
        {
          ++v13;
          v12 = 0.0;
          if (v13 > v9)
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
  a3.width = v36;
  a3.height = v10;

  PKSizeCeilToPixel(a3, *&a3.height, v4);
  result.height = v35;
  result.width = v34;
  return result;
}

- (void)setLayoutDirection:(int64_t)a3
{
  if (self->_layoutDirection != a3)
  {
    self->_layoutDirection = a3;
    [(PKPassFaceBadgesCollectionView *)self setNeedsLayout];
  }
}

- (void)setContentInsets:(NSDirectionalEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.leading;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.trailing;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInsets.top, v3), vceqq_f64(*&self->_contentInsets.bottom, v4)))) & 1) == 0)
  {
    self->_contentInsets = a3;
    [(PKPassFaceBadgesCollectionView *)self setNeedsLayout];
  }
}

- (void)setNumberOfLines:(unint64_t)a3
{
  if (self->_numberOfLines != a3)
  {
    self->_numberOfLines = a3;
    [(PKPassFaceBadgesCollectionView *)self setNeedsLayout];
  }
}

- (void)setFields:(id)a3
{
  v5 = a3;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_fields, a3);
    [(PKPassFaceBadgesCollectionView *)self _updateRowContent];
  }
}

- (void)setBadgesBackgroundColor:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!CGColorEqualToColor(-[UIColor CGColor](self->_badgesBackgroundColor, "CGColor"), [v5 CGColor]))
  {
    objc_storeStrong(&self->_badgesBackgroundColor, a3);
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

          [*(*(&v11 + 1) + 8 * v10++) setBackgroundColor:{v5, v11}];
        }

        while (v8 != v10);
        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)setBadgesTextColor:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!CGColorEqualToColor(-[UIColor CGColor](self->_badgesTextColor, "CGColor"), [v5 CGColor]))
  {
    objc_storeStrong(&self->_badgesTextColor, a3);
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

          [*(*(&v11 + 1) + 8 * v10++) setTextColor:{v5, v11}];
        }

        while (v8 != v10);
        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)setBadgesFont:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_badgesFont != v5)
  {
    objc_storeStrong(&self->_badgesFont, a3);
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

          [*(*(&v11 + 1) + 8 * v10++) setFont:{v5, v11}];
        }

        while (v8 != v10);
        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }

    [(PKPassFaceBadgesCollectionView *)self setNeedsLayout];
  }
}

- (void)setBadgesTextPadding:(NSDirectionalEdgeInsets)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.leading;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.trailing;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_badgesTextPadding.top, v3), vceqq_f64(*&self->_badgesTextPadding.bottom, v4)))) & 1) == 0)
  {
    v11 = *&a3.top;
    v12 = *&a3.leading;
    self->_badgesTextPadding = a3;
    v13 = *&a3.bottom;
    v14 = *&a3.trailing;
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