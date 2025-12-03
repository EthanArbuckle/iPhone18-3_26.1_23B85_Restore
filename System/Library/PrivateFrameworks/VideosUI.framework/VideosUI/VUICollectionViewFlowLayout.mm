@interface VUICollectionViewFlowLayout
- (VUICollectionViewFlowLayout)init;
- (double)contentHeightThatFitsItemCount:(int64_t)count expectedWidth:(double)width;
- (id)invalidationContextForBoundsChange:(CGRect)change;
@end

@implementation VUICollectionViewFlowLayout

- (VUICollectionViewFlowLayout)init
{
  v5.receiver = self;
  v5.super_class = VUICollectionViewFlowLayout;
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
  collectionView = [(VUICollectionViewFlowLayout *)self collectionView];
  numberOfSections = [collectionView numberOfSections];
  [(UICollectionViewFlowLayout *)self itemSize];
  v10 = v9;
  v12 = v11;
  [(UICollectionViewFlowLayout *)self sectionInset];
  v14 = v13;
  v40 = v15;
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
    v39 = v10;
    if (count > 0 || (v24 = 0.0, width > 0.0))
    {
      if (!count)
      {
        if ([(VUICollectionViewFlowLayout *)self isHeterogeneous])
        {
          count = 0;
        }

        else
        {
          count = ((v21 + width - v40 - v19) / (v39 + v21));
        }
      }

      delegate = [collectionView delegate];
      if (count)
      {
        if (numberOfSections < 1)
        {
          v24 = 0.0;
        }

        else
        {
          v26 = 0;
          v24 = 0.0;
          do
          {
            v27 = [collectionView numberOfItemsInSection:v26];
            v24 = v24 + v17 + v14 + v12 * ((count - 1 + v27) / count) + v23 * ((count - 1 + v27) / count - 1);
            ++v26;
          }

          while (numberOfSections != v26);
        }
      }

      else
      {
        v24 = 0.0;
        if ((objc_opt_respondsToSelector() & 1) != 0 && numberOfSections >= 1)
        {
          v28 = 0;
          v29 = v14 + v17;
          do
          {
            v30 = v29 + v24;
            v31 = [collectionView numberOfItemsInSection:v28];
            if (v31 < 1)
            {
              v24 = v29 + v24;
            }

            else
            {
              v32 = v31;
              v33 = 0;
              do
              {
                widthCopy = width;
                while (1)
                {
                  v35 = [MEMORY[0x1E696AC88] indexPathForItem:v33 inSection:v28];
                  [delegate collectionView:collectionView layout:self sizeForItemAtIndexPath:v35];
                  if (widthCopy < v36)
                  {
                    v37 = widthCopy == width;
                    goto LABEL_26;
                  }

                  widthCopy = widthCopy - (v21 + v36);
                  if (widthCopy < 0.0)
                  {
                    break;
                  }

                  if (++v33 >= v32)
                  {
                    goto LABEL_27;
                  }
                }

                v37 = 1;
LABEL_26:
                v33 += v37;

LABEL_27:
                v24 = v12 + v30;
                v30 = v23 + v12 + v30;
              }

              while (v33 < v32);
            }

            ++v28;
          }

          while (v28 != numberOfSections);
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
  v20.super_class = VUICollectionViewFlowLayout;
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
      collectionView = [(VUICollectionViewFlowLayout *)self collectionView];
      [collectionView bounds];
      if (v14 != x)
      {
LABEL_10:

        goto LABEL_11;
      }

      collectionView2 = [(VUICollectionViewFlowLayout *)self collectionView];
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

    collectionView3 = [(VUICollectionViewFlowLayout *)self collectionView];
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

    collectionView4 = [(VUICollectionViewFlowLayout *)self collectionView];
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