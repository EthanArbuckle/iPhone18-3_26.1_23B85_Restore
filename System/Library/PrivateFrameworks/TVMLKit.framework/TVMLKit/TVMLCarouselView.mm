@interface TVMLCarouselView
- (void)layoutSubviews;
@end

@implementation TVMLCarouselView

- (void)layoutSubviews
{
  [(TVMLCarouselView *)self bounds];
  v4 = v3;
  v53 = v5;
  headerView = [(TVMLCarouselView *)self headerView];
  [(UIView *)self tv_padding];
  v50 = v7;
  v9 = v8;
  [(UIView *)self tv_padding];
  v11 = v10;
  v13 = v12;
  [headerView tv_margin];
  v51 = v17;
  v52 = v16;
  v18 = v14;
  v19 = v15;
  if (v4 - (v14 + v15) - (v11 + v13) >= 2.22044605e-16)
  {
    v20 = v4 - (v14 + v15) - (v11 + v13);
  }

  else
  {
    v20 = v4;
  }

  effectiveUserInterfaceLayoutDirection = [(TVMLCarouselView *)self effectiveUserInterfaceLayoutDirection];
  [headerView tv_sizeThatFits:{v20, 0.0}];
  v23 = v22;
  v25 = v24;
  v26 = v4 - (v9 + v19 + v22);
  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    v27 = v26;
  }

  else
  {
    v27 = v11 + v18;
  }

  if (v22 < v20)
  {
    tv_alignment = [headerView tv_alignment];
    v29 = floor((v4 - v23) * 0.5);
    if (tv_alignment != 2)
    {
      v29 = v27;
    }

    if (tv_alignment == 3)
    {
      v27 = v26;
    }

    else
    {
      v27 = v29;
    }
  }

  v55.origin.y = v50 + v52;
  v55.origin.x = v27;
  v55.size.width = v23;
  v55.size.height = v25;
  v56 = CGRectIntegral(v55);
  x = v56.origin.x;
  y = v56.origin.y;
  width = v56.size.width;
  height = v56.size.height;
  layer = [headerView layer];
  [layer anchorPoint];
  v36 = v35;
  v38 = v37;

  [headerView setBounds:{0.0, 0.0, width, height}];
  [headerView setCenter:{round(x + width * v36), round(y + height * v38)}];
  v39 = v51 + v52 + height;
  [(TVMLCarouselView *)self showcaseFactor];
  v41 = ceil(v39 * v40);
  [(TVMLCarouselView *)self showcaseFactor];
  v43 = floor(v39 * (1.0 - v42));
  _collectionView = [(TVMLCarouselView *)self _collectionView];
  [_collectionView setFrame:{0.0, v41, v4, v53}];

  v45 = *(MEMORY[0x277D768C8] + 8);
  v46 = *(MEMORY[0x277D768C8] + 16);
  v47 = *(MEMORY[0x277D768C8] + 24);
  v48 = v43 + *MEMORY[0x277D768C8];
  _collectionView2 = [(TVMLCarouselView *)self _collectionView];
  [_collectionView2 setContentInset:{v48, v45, v46, v47}];

  v54.receiver = self;
  v54.super_class = TVMLCarouselView;
  [(TVMLCarouselView *)&v54 layoutSubviews];
}

@end