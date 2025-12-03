@interface _TVCollectionViewFlowLayout
- (_TVCollectionViewFlowLayout)init;
- (double)contentHeightThatFitsItemCount:(int64_t)count expectedWidth:(double)width;
- (id)invalidationContextForBoundsChange:(CGRect)change;
@end

@implementation _TVCollectionViewFlowLayout

- (_TVCollectionViewFlowLayout)init
{
  v5.receiver = self;
  v5.super_class = _TVCollectionViewFlowLayout;
  v2 = [(UICollectionViewFlowLayout *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(UICollectionViewFlowLayout *)v2 setSectionInsetReference:0];
  }

  return v3;
}

- (double)contentHeightThatFitsItemCount:(int64_t)count expectedWidth:(double)width
{
  collectionView = [(_TVCollectionViewFlowLayout *)self collectionView];
  numberOfSections = [collectionView numberOfSections];
  [(UICollectionViewFlowLayout *)self itemSize];
  v10 = v9;
  v12 = v11;
  [(UICollectionViewFlowLayout *)self sectionInset];
  v14 = v13;
  v43 = v15;
  v17 = v16;
  v19 = v18;
  [(UICollectionViewFlowLayout *)self minimumInteritemSpacing];
  v21 = v20;
  [(UICollectionViewFlowLayout *)self minimumLineSpacing];
  v23 = v22;
  if ([(UICollectionViewFlowLayout *)self scrollDirection]== 1)
  {
    v24 = v17 + v14 + v12 * count + v21 * (count - 1);
  }

  else
  {
    v42 = v10;
    v24 = 0.0;
    if (count > 0 || width > 0.0)
    {
      if (count || ![(_TVCollectionViewFlowLayout *)self isHeterogeneous]&& (count = ((v21 + width - v43 - v19) / (v42 + v21))) != 0)
      {
        if (numberOfSections >= 1)
        {
          for (i = 0; i != numberOfSections; ++i)
          {
            v26 = [collectionView numberOfItemsInSection:{i, *&v42}];
            v24 = v24 + v17 + v14 + v12 * ((count - 1 + v26) / count) + v23 * ((count - 1 + v26) / count - 1);
          }
        }
      }

      else
      {
        delegate = [collectionView delegate];
        v28 = objc_opt_respondsToSelector();

        if ((v28 & 1) != 0 && numberOfSections >= 1)
        {
          v29 = 0;
          v30 = v14 + v17;
          do
          {
            v31 = v30 + v24;
            v32 = [collectionView numberOfItemsInSection:v29];
            if (v32 < 1)
            {
              v24 = v30 + v24;
            }

            else
            {
              v33 = v32;
              v34 = 0;
              do
              {
                widthCopy = width;
                while (1)
                {
                  v36 = [MEMORY[0x277CCAA70] indexPathForItem:v34 inSection:v29];
                  delegate2 = [collectionView delegate];
                  [delegate2 collectionView:collectionView layout:self sizeForItemAtIndexPath:v36];
                  v39 = v38;

                  if (widthCopy < v39)
                  {
                    v40 = widthCopy == width;
                    goto LABEL_24;
                  }

                  widthCopy = widthCopy - (v21 + v39);
                  if (widthCopy < 0.0)
                  {
                    break;
                  }

                  if (++v34 >= v33)
                  {
                    goto LABEL_25;
                  }
                }

                v40 = 1;
LABEL_24:
                v34 += v40;

LABEL_25:
                v24 = v12 + v31;
                v31 = v23 + v12 + v31;
              }

              while (v34 < v33);
            }

            ++v29;
          }

          while (v29 != numberOfSections);
        }
      }
    }
  }

  return v24;
}

- (id)invalidationContextForBoundsChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  y = change.origin.y;
  x = change.origin.x;
  v20.receiver = self;
  v20.super_class = _TVCollectionViewFlowLayout;
  v10 = [(UICollectionViewFlowLayout *)&v20 invalidationContextForBoundsChange:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    scrollDirection = [(UICollectionViewFlowLayout *)self scrollDirection];
    if (scrollDirection)
    {
      if ([(UICollectionViewFlowLayout *)self scrollDirection]!= 1)
      {
        goto LABEL_12;
      }
    }

    else
    {
      collectionView = [(_TVCollectionViewFlowLayout *)self collectionView];
      [collectionView bounds];
      if (v14 != x)
      {
LABEL_10:

        goto LABEL_11;
      }

      collectionView2 = [(_TVCollectionViewFlowLayout *)self collectionView];
      [collectionView2 bounds];
      if (v15 != width)
      {
LABEL_9:

        goto LABEL_10;
      }

      if ([(UICollectionViewFlowLayout *)self scrollDirection]!= 1)
      {

        goto LABEL_12;
      }
    }

    collectionView3 = [(_TVCollectionViewFlowLayout *)self collectionView];
    [collectionView3 bounds];
    if (v13 != y)
    {

      if (scrollDirection)
      {
LABEL_11:
        [v10 setInvalidateFlowLayoutDelegateMetrics:1];
        goto LABEL_12;
      }

      goto LABEL_9;
    }

    collectionView4 = [(_TVCollectionViewFlowLayout *)self collectionView];
    [collectionView4 bounds];
    v19 = v18;

    if (!scrollDirection)
    {
    }

    if (v19 != height)
    {
      goto LABEL_11;
    }
  }

LABEL_12:

  return v10;
}

@end