@interface SKUICarouselCollectionViewLayout
- (CGPoint)_collectionViewBoundsCenter;
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3 withScrollingVelocity:(CGPoint)a4;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (void)_panGestureRecognized:(id)a3;
- (void)prepareForTransitionToLayout:(id)a3;
- (void)prepareLayout;
@end

@implementation SKUICarouselCollectionViewLayout

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v31 = *MEMORY[0x277D85DE8];
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        [(SKUICarouselCollectionViewLayout *)v8 layoutAttributesForElementsInRect:v9, v10, v11, v12, v13, v14, v15];
      }
    }
  }

  v29.receiver = self;
  v29.super_class = SKUICarouselCollectionViewLayout;
  v16 = [(UICollectionViewFlowLayout *)&v29 layoutAttributesForElementsInRect:x, y, width, height];
  v17 = [(SKUICarouselCollectionViewLayout *)self collectionView];
  v18 = [v17 delegate];
  if (objc_opt_respondsToSelector())
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v19 = v16;
    v20 = [v19 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v26;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v26 != v22)
          {
            objc_enumerationMutation(v19);
          }

          [v18 collectionView:v17 carouselLayout:self willApplyLayoutAttributes:{*(*(&v25 + 1) + 8 * i), v25}];
        }

        v21 = [v19 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v21);
    }
  }

  return v16;
}

- (void)prepareLayout
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUICarouselCollectionViewLayout *)v3 prepareLayout:v4];
      }
    }
  }

  v15.receiver = self;
  v15.super_class = SKUICarouselCollectionViewLayout;
  [(UICollectionViewFlowLayout *)&v15 prepareLayout];
  v11 = [(SKUICarouselCollectionViewLayout *)self collectionView];
  v12 = [v11 panGestureRecognizer];
  [v12 removeTarget:self action:0];

  v13 = [(SKUICarouselCollectionViewLayout *)self collectionView];
  v14 = [v13 panGestureRecognizer];
  [v14 addTarget:self action:sel__panGestureRecognized_];
}

- (void)prepareForTransitionToLayout:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUICarouselCollectionViewLayout *)v5 prepareForTransitionToLayout:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v15.receiver = self;
  v15.super_class = SKUICarouselCollectionViewLayout;
  [(SKUICarouselCollectionViewLayout *)&v15 prepareForTransitionToLayout:v4];
  v13 = [(SKUICarouselCollectionViewLayout *)self collectionView];
  v14 = [v13 panGestureRecognizer];
  [v14 removeTarget:self action:0];
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3 withScrollingVelocity:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3.y;
  v7 = a3.x;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v9)
      {
        [(SKUICarouselCollectionViewLayout *)v9 targetContentOffsetForProposedContentOffset:v10 withScrollingVelocity:v11, v12, v13, v14, v15, v16];
      }
    }
  }

  v53.receiver = self;
  v53.super_class = SKUICarouselCollectionViewLayout;
  [(SKUICarouselCollectionViewLayout *)&v53 targetContentOffsetForProposedContentOffset:v7 withScrollingVelocity:v6, x, y];
  v18 = v17;
  v19 = [(SKUICarouselCollectionViewLayout *)self collectionView];
  [v19 bounds];
  v21 = v20;
  [(UICollectionViewFlowLayout *)self itemSize];
  v23 = v22;
  [(UICollectionViewFlowLayout *)self minimumInteritemSpacing];
  v25 = v23 + v24;
  v26 = [(SKUICarouselCollectionViewLayout *)self startScrollingIndexPath];
  [(SKUICarouselCollectionViewLayout *)self _collectionViewBoundsCenter];
  v28 = v27;
  v30 = v29;
  v31 = [(SKUICarouselCollectionViewLayout *)self collectionView];
  v32 = [v31 indexPathForItemAtPoint:{v28, v30}];

  v33 = (v21 - v25) * 0.5;
  v34 = floorf(v33);
  ShouldReverseLayoutDirection = storeShouldReverseLayoutDirection();
  v36 = ShouldReverseLayoutDirection;
  if (ShouldReverseLayoutDirection)
  {
    v37 = x > 0.0;
  }

  else
  {
    v37 = x < 0.0;
  }

  if (v37)
  {
    v38 = [v26 item] - 1;
  }

  else
  {
    if (ShouldReverseLayoutDirection)
    {
      v39 = x < 0.0;
    }

    else
    {
      v39 = x > 0.0;
    }

    if (v39)
    {
      v38 = [v26 item] + 1;
    }

    else
    {
      v40 = [v32 item];
      if (v40 == [v26 item])
      {
        v41 = v26;
      }

      else
      {
        v41 = v32;
      }

      v38 = [v41 item];
    }
  }

  v42 = -(v34 - v38 * v25);
  if (v36)
  {
    [v19 contentSize];
    v44 = v43;
    [v19 bounds];
    v42 = v44 - CGRectGetWidth(v55) - v42;
  }

  [v19 contentSize];
  v46 = v45;
  [v19 contentInset];
  v48 = v46 + v47;
  [v19 bounds];
  if (v42 >= v48 - v49)
  {
    v50 = v48 - v49;
  }

  else
  {
    v50 = v42;
  }

  v51 = v50;
  v52 = v18;
  result.y = v52;
  result.x = v51;
  return result;
}

- (CGPoint)_collectionViewBoundsCenter
{
  v2 = [(SKUICarouselCollectionViewLayout *)self collectionView];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v15.origin.x = v4;
  v15.origin.y = v6;
  v15.size.width = v8;
  v15.size.height = v10;
  MidX = CGRectGetMidX(v15);
  v16.origin.x = v4;
  v16.origin.y = v6;
  v16.size.width = v8;
  v16.size.height = v10;
  MidY = CGRectGetMidY(v16);
  v13 = MidX;
  result.y = MidY;
  result.x = v13;
  return result;
}

- (void)_panGestureRecognized:(id)a3
{
  if ([a3 state] == 1)
  {
    [(SKUICarouselCollectionViewLayout *)self _collectionViewBoundsCenter];
    v5 = v4;
    v7 = v6;
    v8 = [(SKUICarouselCollectionViewLayout *)self collectionView];
    v9 = [v8 indexPathForItemAtPoint:{v5, v7}];

    [(SKUICarouselCollectionViewLayout *)self setStartScrollingIndexPath:v9];
  }
}

@end