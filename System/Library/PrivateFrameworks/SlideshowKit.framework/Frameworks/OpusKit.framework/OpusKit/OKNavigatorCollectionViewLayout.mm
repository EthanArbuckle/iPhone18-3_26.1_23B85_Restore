@interface OKNavigatorCollectionViewLayout
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change;
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset withScrollingVelocity:(CGPoint)velocity;
- (OKNavigatorCollectionViewLayout)init;
- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)path;
- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)path;
- (id)itemClosestToCenter;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (void)dealloc;
- (void)finalizeAnimatedBoundsChange;
- (void)handlePanGesture:(id)gesture;
- (void)prepareForAnimatedBoundsChange:(CGRect)change;
- (void)prepareLayout;
@end

@implementation OKNavigatorCollectionViewLayout

- (OKNavigatorCollectionViewLayout)init
{
  v6.receiver = self;
  v6.super_class = OKNavigatorCollectionViewLayout;
  v2 = [(UICollectionViewFlowLayout *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeWeak(&v2->_collectionViewController, 0);
    v3->_transitionStyle = 1;
    v3->_sourceItemIndexPath = 0;
    [(UICollectionViewFlowLayout *)v3 setMinimumLineSpacing:0.0];
    [(UICollectionViewFlowLayout *)v3 setMinimumInteritemSpacing:0.0];
    [(UICollectionViewFlowLayout *)v3 setSectionInset:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
    v4 = *(MEMORY[0x277CBF3A0] + 16);
    v3->_oldBounds.origin = *MEMORY[0x277CBF3A0];
    v3->_oldBounds.size = v4;
  }

  return v3;
}

- (void)dealloc
{
  objc_storeWeak(&self->_collectionViewController, 0);
  sourceItemIndexPath = self->_sourceItemIndexPath;
  if (sourceItemIndexPath)
  {

    self->_sourceItemIndexPath = 0;
  }

  panGestureRecognizer = self->_panGestureRecognizer;
  if (panGestureRecognizer)
  {
    [-[UIPanGestureRecognizer view](panGestureRecognizer "view")];

    self->_panGestureRecognizer = 0;
  }

  v5.receiver = self;
  v5.super_class = OKNavigatorCollectionViewLayout;
  [(OKNavigatorCollectionViewLayout *)&v5 dealloc];
}

- (void)prepareLayout
{
  v5.receiver = self;
  v5.super_class = OKNavigatorCollectionViewLayout;
  [(UICollectionViewFlowLayout *)&v5 prepareLayout];
  panGestureRecognizer = self->_panGestureRecognizer;
  if (panGestureRecognizer)
  {
    [-[UIPanGestureRecognizer view](panGestureRecognizer "view")];

    self->_panGestureRecognizer = 0;
  }

  v4 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:self action:sel_handlePanGesture_];
  self->_panGestureRecognizer = v4;
  [(UIPanGestureRecognizer *)v4 setDelegate:self];
  [-[OKNavigatorCollectionViewLayout collectionView](self "collectionView")];
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change
{
  if (self->_transitionStyle == 2)
  {
    return 1;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = OKNavigatorCollectionViewLayout;
  return [(UICollectionViewFlowLayout *)&v6 shouldInvalidateLayoutForBoundsChange:change.origin.x, change.origin.y, change.size.width, change.size.height];
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  v55 = *MEMORY[0x277D85DE8];
  v53.receiver = self;
  v53.super_class = OKNavigatorCollectionViewLayout;
  rect2[0] = *&rect.origin.x;
  y = rect.origin.y;
  width = rect.size.width;
  height = rect.size.height;
  v7 = [MEMORY[0x277CBEB18] arrayWithArray:{-[UICollectionViewFlowLayout layoutAttributesForElementsInRect:](&v53, sel_layoutAttributesForElementsInRect_)}];
  if (self->_transitionStyle == 2)
  {
    [-[OKNavigatorCollectionViewLayout collectionView](self "collectionView")];
    v9 = v8;
    rect = v10;
    [-[OKNavigatorCollectionViewLayout collectionView](self "collectionView")];
    v12 = v11;
    v14 = v13;
    memset(&rect2[1], 0, 32);
    v51 = 0u;
    v52 = 0u;
    v15 = [v7 countByEnumeratingWithState:&rect2[1] objects:v54 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *rect2[3];
      v48 = y;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*rect2[3] != v17)
          {
            objc_enumerationMutation(v7);
          }

          v19 = *(rect2[2] + 8 * i);
          [v19 frame];
          *&v57.origin.x = rect2[0];
          v57.origin.y = y;
          v57.size.width = width;
          v57.size.height = height;
          if (CGRectIntersectsRect(v56, v57))
          {
            scrollDirection = [(UICollectionViewFlowLayout *)self scrollDirection];
            v21 = v9;
            rectCopy = rect;
            v23 = v12;
            v24 = v14;
            if (scrollDirection == 1)
            {
              MidX = CGRectGetMidX(*&v21);
              [v19 center];
              v27 = MidX - v26;
            }

            else
            {
              MidY = CGRectGetMidY(*&v21);
              [v19 center];
              v27 = MidY - v30;
            }

            if (-[NSIndexPath isEqual:](-[OKNavigatorCollectionViewLayout sourceItemIndexPath](self, "sourceItemIndexPath"), "isEqual:", [v19 indexPath]))
            {
              v28 = 100;
            }

            else
            {
              v31 = width;
              v32 = v27 * 0.75;
              [v19 center];
              v34 = v33;
              v35 = v12;
              v36 = v9;
              v38 = v37;
              scrollDirection2 = [(UICollectionViewFlowLayout *)self scrollDirection];
              v40 = v32 + v34;
              v41 = v32 + v38;
              width = v31;
              y = v48;
              if (scrollDirection2 == 1)
              {
                v41 = v38;
              }

              else
              {
                v40 = v34;
              }

              v9 = v36;
              v12 = v35;
              [v19 setCenter:{v40, v41}];
              item = [(NSIndexPath *)[(OKNavigatorCollectionViewLayout *)self sourceItemIndexPath] item];
              v43 = [objc_msgSend(v19 "indexPath")];
              item2 = [(NSIndexPath *)[(OKNavigatorCollectionViewLayout *)self sourceItemIndexPath] item];
              v45 = [objc_msgSend(v19 "indexPath")];
              v46 = item2 - v45;
              if (item >= v43)
              {
                v46 = v45 - item2;
              }

              v28 = v46 + 100;
            }
          }

          else
          {
            v28 = 0;
          }

          [v19 setZIndex:v28];
        }

        v16 = [v7 countByEnumeratingWithState:&rect2[1] objects:v54 count:16];
      }

      while (v16);
    }
  }

  return v7;
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset withScrollingVelocity:(CGPoint)velocity
{
  y = offset.y;
  x = offset.x;
  if (self->_transitionStyle == 2)
  {
    v6 = velocity.y;
    v7 = velocity.x;
    sourceItemIndexPath = [(OKNavigatorCollectionViewLayout *)self sourceItemIndexPath];
    v33.receiver = self;
    v33.super_class = OKNavigatorCollectionViewLayout;
    v10 = [(UICollectionViewFlowLayout *)&v33 layoutAttributesForItemAtIndexPath:[(OKNavigatorCollectionViewLayout *)self sourceItemIndexPath]];
    [-[OKNavigatorCollectionViewLayout collectionView](self "collectionView")];
    v12 = v11;
    v14 = v13;
    scrollDirection = [(UICollectionViewFlowLayout *)self scrollDirection];
    [-[OKNavigatorCollectionViewLayout collectionView](self "collectionView")];
    if (scrollDirection == 1)
    {
      v20 = v12 + CGRectGetWidth(*&v16) * 0.5;
      [v10 center];
      v22 = v21 - v20;
      if (v7 > 0.5 || ([-[OKNavigatorCollectionViewLayout collectionView](self "collectionView")], v22 < CGRectGetWidth(v35) * -0.5))
      {
        sourceItemIndexPath = [MEMORY[0x277CCAA70] indexPathForItem:-[NSIndexPath item](-[OKNavigatorCollectionViewLayout sourceItemIndexPath](self inSection:{"sourceItemIndexPath"), "item") + 1, -[NSIndexPath section](-[OKNavigatorCollectionViewLayout sourceItemIndexPath](self, "sourceItemIndexPath"), "section")}];
      }

      if (v7 < -0.5 || ([-[OKNavigatorCollectionViewLayout collectionView](self "collectionView")], v22 > CGRectGetWidth(v36) * 0.5))
      {
        sourceItemIndexPath = [MEMORY[0x277CCAA70] indexPathForItem:-[NSIndexPath item](-[OKNavigatorCollectionViewLayout sourceItemIndexPath](self inSection:{"sourceItemIndexPath"), "item") - 1, -[NSIndexPath section](-[OKNavigatorCollectionViewLayout sourceItemIndexPath](self, "sourceItemIndexPath"), "section")}];
      }

      v32.receiver = self;
      v32.super_class = OKNavigatorCollectionViewLayout;
      [-[UICollectionViewFlowLayout layoutAttributesForItemAtIndexPath:](&v32 layoutAttributesForItemAtIndexPath_];
      v24 = v12 + v23 - v20;
      if (v24 >= 0.0)
      {
        x = v24;
      }

      else
      {
        x = 0.0;
      }
    }

    else
    {
      v25 = v14 + CGRectGetHeight(*&v16) * 0.5;
      [v10 center];
      v27 = v26 - v25;
      if (v6 > 0.5 || ([-[OKNavigatorCollectionViewLayout collectionView](self "collectionView")], v27 < CGRectGetHeight(v37) * -0.5))
      {
        sourceItemIndexPath = [MEMORY[0x277CCAA70] indexPathForItem:-[NSIndexPath item](-[OKNavigatorCollectionViewLayout sourceItemIndexPath](self inSection:{"sourceItemIndexPath"), "item") + 1, -[NSIndexPath section](-[OKNavigatorCollectionViewLayout sourceItemIndexPath](self, "sourceItemIndexPath"), "section")}];
      }

      if (v6 < -0.5 || ([-[OKNavigatorCollectionViewLayout collectionView](self "collectionView")], v27 > CGRectGetHeight(v38) * 0.5))
      {
        sourceItemIndexPath = [MEMORY[0x277CCAA70] indexPathForItem:-[NSIndexPath item](-[OKNavigatorCollectionViewLayout sourceItemIndexPath](self inSection:{"sourceItemIndexPath"), "item") - 1, -[NSIndexPath section](-[OKNavigatorCollectionViewLayout sourceItemIndexPath](self, "sourceItemIndexPath"), "section")}];
      }

      v31.receiver = self;
      v31.super_class = OKNavigatorCollectionViewLayout;
      [-[UICollectionViewFlowLayout layoutAttributesForItemAtIndexPath:](&v31 layoutAttributesForItemAtIndexPath_];
      if (v14 + v28 - v25 >= 0.0)
      {
        y = v14 + v28 - v25;
      }

      else
      {
        y = 0.0;
      }
    }
  }

  v29 = x;
  v30 = y;
  result.y = v30;
  result.x = v29;
  return result;
}

- (void)prepareForAnimatedBoundsChange:(CGRect)change
{
  self->_oldBounds = change;
  currentPageViewControllerIndexPath = [(OKNavigatorCollectionViewControllerProxy *)[(OKNavigatorCollectionViewLayout *)self collectionViewController] currentPageViewControllerIndexPath];
  if ([(UICollectionViewFlowLayout *)self scrollDirection]== 1)
  {
    item = [currentPageViewControllerIndexPath item];
    [(UICollectionViewFlowLayout *)self itemSize];
    v7 = v6 * item;
    [-[OKNavigatorCollectionViewLayout collectionView](self "collectionView")];
    v9 = v8;
  }

  else
  {
    [-[OKNavigatorCollectionViewLayout collectionView](self "collectionView")];
    v7 = v10;
    item2 = [currentPageViewControllerIndexPath item];
    [(UICollectionViewFlowLayout *)self itemSize];
    v9 = v12 * item2;
  }

  collectionView = [(OKNavigatorCollectionViewLayout *)self collectionView];

  [collectionView setContentOffset:{v7, v9}];
}

- (void)finalizeAnimatedBoundsChange
{
  v2 = *(MEMORY[0x277CBF3A0] + 16);
  self->_oldBounds.origin = *MEMORY[0x277CBF3A0];
  self->_oldBounds.size = v2;
}

- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)path
{
  v13.receiver = self;
  v13.super_class = OKNavigatorCollectionViewLayout;
  v4 = [(OKNavigatorCollectionViewLayout *)&v13 initialLayoutAttributesForAppearingItemAtIndexPath:path];
  p_oldBounds = &self->_oldBounds;
  if (!CGRectIsEmpty(self->_oldBounds))
  {
    scrollDirection = [(UICollectionViewFlowLayout *)self scrollDirection];
    v7 = [objc_msgSend(v4 "indexPath")];
    width = p_oldBounds->size.width;
    height = p_oldBounds->size.height;
    if (scrollDirection == 1)
    {
      v10 = width * v7;
      v11 = 0.0;
    }

    else
    {
      v11 = height * v7;
      v10 = 0.0;
    }

    [v4 setFrame:{v10, v11, width, height}];
    [v4 setAlpha:1.0];
  }

  return v4;
}

- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)path
{
  v18.receiver = self;
  v18.super_class = OKNavigatorCollectionViewLayout;
  v4 = [(OKNavigatorCollectionViewLayout *)&v18 finalLayoutAttributesForDisappearingItemAtIndexPath:path];
  scrollDirection = [(UICollectionViewFlowLayout *)self scrollDirection];
  v6 = [objc_msgSend(v4 "indexPath")];
  [(UICollectionViewFlowLayout *)self itemSize];
  v8 = v7;
  v10 = v9;
  [(UICollectionViewFlowLayout *)self itemSize];
  v12 = v11;
  [(UICollectionViewFlowLayout *)self itemSize];
  v14 = v13;
  v15 = v10 * v6;
  v16 = v8 * v6;
  if (scrollDirection == 1)
  {
    v15 = 0.0;
  }

  else
  {
    v16 = 0.0;
  }

  [v4 setFrame:{v16, v15, v12, v14}];
  [v4 setAlpha:1.0];
  return v4;
}

- (id)itemClosestToCenter
{
  v31 = *MEMORY[0x277D85DE8];
  [-[OKNavigatorCollectionViewLayout collectionView](self "collectionView")];
  v4 = v3;
  [-[OKNavigatorCollectionViewLayout collectionView](self "collectionView")];
  v6 = v5;
  [-[OKNavigatorCollectionViewLayout collectionView](self "collectionView")];
  v8 = v7;
  v10 = v9;
  [-[OKNavigatorCollectionViewLayout collectionView](self "collectionView")];
  v29.receiver = self;
  v29.super_class = OKNavigatorCollectionViewLayout;
  v11 = [(UICollectionViewFlowLayout *)&v29 layoutAttributesForElementsInRect:v8, v10];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  indexPath = 0;
  v15 = v4 + v6 * 0.5;
  v16 = *v26;
  v17 = 3.40282347e38;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v26 != v16)
      {
        objc_enumerationMutation(v11);
      }

      v19 = *(*(&v25 + 1) + 8 * i);
      [v19 center];
      v21 = v20 - v15;
      v22 = -(v20 - v15);
      if (v21 >= 0.0)
      {
        v22 = v21;
      }

      v23 = -v17;
      if (v17 >= 0.0)
      {
        v23 = v17;
      }

      if (v22 < v23)
      {
        indexPath = [v19 indexPath];
        v17 = v21;
      }
    }

    v13 = [v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
  }

  while (v13);
  return indexPath;
}

- (void)handlePanGesture:(id)gesture
{
  if ([gesture state] == 1)
  {
    if (self->_transitionStyle == 2)
    {
      itemClosestToCenter = [(OKNavigatorCollectionViewLayout *)self itemClosestToCenter];

      [(OKNavigatorCollectionViewLayout *)self setSourceItemIndexPath:itemClosestToCenter];
    }
  }

  else if ([gesture state] != 4 && objc_msgSend(gesture, "state") != 3)
  {

    [gesture state];
  }
}

@end