@interface SKUICarouselCollectionViewLayout
- (CGPoint)_collectionViewBoundsCenter;
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset withScrollingVelocity:(CGPoint)velocity;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (void)_panGestureRecognized:(id)recognized;
- (void)prepareForTransitionToLayout:(id)layout;
- (void)prepareLayout;
@end

@implementation SKUICarouselCollectionViewLayout

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
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
  height = [(UICollectionViewFlowLayout *)&v29 layoutAttributesForElementsInRect:x, y, width, height];
  collectionView = [(SKUICarouselCollectionViewLayout *)self collectionView];
  delegate = [collectionView delegate];
  if (objc_opt_respondsToSelector())
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v19 = height;
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

          [delegate collectionView:collectionView carouselLayout:self willApplyLayoutAttributes:{*(*(&v25 + 1) + 8 * i), v25}];
        }

        v21 = [v19 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v21);
    }
  }

  return height;
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
  collectionView = [(SKUICarouselCollectionViewLayout *)self collectionView];
  panGestureRecognizer = [collectionView panGestureRecognizer];
  [panGestureRecognizer removeTarget:self action:0];

  collectionView2 = [(SKUICarouselCollectionViewLayout *)self collectionView];
  panGestureRecognizer2 = [collectionView2 panGestureRecognizer];
  [panGestureRecognizer2 addTarget:self action:sel__panGestureRecognized_];
}

- (void)prepareForTransitionToLayout:(id)layout
{
  layoutCopy = layout;
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
  [(SKUICarouselCollectionViewLayout *)&v15 prepareForTransitionToLayout:layoutCopy];
  collectionView = [(SKUICarouselCollectionViewLayout *)self collectionView];
  panGestureRecognizer = [collectionView panGestureRecognizer];
  [panGestureRecognizer removeTarget:self action:0];
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset withScrollingVelocity:(CGPoint)velocity
{
  y = velocity.y;
  x = velocity.x;
  v6 = offset.y;
  v7 = offset.x;
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
  collectionView = [(SKUICarouselCollectionViewLayout *)self collectionView];
  [collectionView bounds];
  v21 = v20;
  [(UICollectionViewFlowLayout *)self itemSize];
  v23 = v22;
  [(UICollectionViewFlowLayout *)self minimumInteritemSpacing];
  v25 = v23 + v24;
  startScrollingIndexPath = [(SKUICarouselCollectionViewLayout *)self startScrollingIndexPath];
  [(SKUICarouselCollectionViewLayout *)self _collectionViewBoundsCenter];
  v28 = v27;
  v30 = v29;
  collectionView2 = [(SKUICarouselCollectionViewLayout *)self collectionView];
  v32 = [collectionView2 indexPathForItemAtPoint:{v28, v30}];

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
    item2 = [startScrollingIndexPath item] - 1;
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
      item2 = [startScrollingIndexPath item] + 1;
    }

    else
    {
      item = [v32 item];
      if (item == [startScrollingIndexPath item])
      {
        v41 = startScrollingIndexPath;
      }

      else
      {
        v41 = v32;
      }

      item2 = [v41 item];
    }
  }

  v42 = -(v34 - item2 * v25);
  if (v36)
  {
    [collectionView contentSize];
    v44 = v43;
    [collectionView bounds];
    v42 = v44 - CGRectGetWidth(v55) - v42;
  }

  [collectionView contentSize];
  v46 = v45;
  [collectionView contentInset];
  v48 = v46 + v47;
  [collectionView bounds];
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
  collectionView = [(SKUICarouselCollectionViewLayout *)self collectionView];
  [collectionView bounds];
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

- (void)_panGestureRecognized:(id)recognized
{
  if ([recognized state] == 1)
  {
    [(SKUICarouselCollectionViewLayout *)self _collectionViewBoundsCenter];
    v5 = v4;
    v7 = v6;
    collectionView = [(SKUICarouselCollectionViewLayout *)self collectionView];
    v9 = [collectionView indexPathForItemAtPoint:{v5, v7}];

    [(SKUICarouselCollectionViewLayout *)self setStartScrollingIndexPath:v9];
  }
}

@end