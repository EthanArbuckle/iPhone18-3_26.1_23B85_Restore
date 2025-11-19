@interface VUICollectionViewFlowLayout
- (VUICollectionViewFlowLayout)init;
- (double)contentHeightThatFitsItemCount:(int64_t)a3 expectedWidth:(double)a4;
- (id)invalidationContextForBoundsChange:(CGRect)a3;
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

- (double)contentHeightThatFitsItemCount:(int64_t)a3 expectedWidth:(double)a4
{
  v7 = [(VUICollectionViewFlowLayout *)self collectionView];
  v8 = [v7 numberOfSections];
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
    v24 = v17 + v14 + v12 * a3 + v21 * (a3 - 1);
  }

  else
  {
    v39 = v10;
    if (a3 > 0 || (v24 = 0.0, a4 > 0.0))
    {
      if (!a3)
      {
        if ([(VUICollectionViewFlowLayout *)self isHeterogeneous])
        {
          a3 = 0;
        }

        else
        {
          a3 = ((v21 + a4 - v40 - v19) / (v39 + v21));
        }
      }

      v25 = [v7 delegate];
      if (a3)
      {
        if (v8 < 1)
        {
          v24 = 0.0;
        }

        else
        {
          v26 = 0;
          v24 = 0.0;
          do
          {
            v27 = [v7 numberOfItemsInSection:v26];
            v24 = v24 + v17 + v14 + v12 * ((a3 - 1 + v27) / a3) + v23 * ((a3 - 1 + v27) / a3 - 1);
            ++v26;
          }

          while (v8 != v26);
        }
      }

      else
      {
        v24 = 0.0;
        if ((objc_opt_respondsToSelector() & 1) != 0 && v8 >= 1)
        {
          v28 = 0;
          v29 = v14 + v17;
          do
          {
            v30 = v29 + v24;
            v31 = [v7 numberOfItemsInSection:v28];
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
                v34 = a4;
                while (1)
                {
                  v35 = [MEMORY[0x1E696AC88] indexPathForItem:v33 inSection:v28];
                  [v25 collectionView:v7 layout:self sizeForItemAtIndexPath:v35];
                  if (v34 < v36)
                  {
                    v37 = v34 == a4;
                    goto LABEL_26;
                  }

                  v34 = v34 - (v21 + v36);
                  if (v34 < 0.0)
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

          while (v28 != v8);
        }
      }
    }
  }

  return v24;
}

- (id)invalidationContextForBoundsChange:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v20.receiver = self;
  v20.super_class = VUICollectionViewFlowLayout;
  v10 = [(UICollectionViewFlowLayout *)&v20 invalidationContextForBoundsChange:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [(UICollectionViewFlowLayout *)self scrollDirection];
    if (v11)
    {
      if ([(UICollectionViewFlowLayout *)self scrollDirection]!= 1)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v3 = [(VUICollectionViewFlowLayout *)self collectionView];
      [v3 bounds];
      if (v14 != x)
      {
LABEL_10:

        goto LABEL_11;
      }

      v4 = [(VUICollectionViewFlowLayout *)self collectionView];
      [v4 bounds];
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

    v12 = [(VUICollectionViewFlowLayout *)self collectionView];
    [v12 bounds];
    if (v13 != y)
    {

      if (v11)
      {
LABEL_11:
        [v10 setInvalidateFlowLayoutDelegateMetrics:1];
        goto LABEL_12;
      }

      goto LABEL_9;
    }

    v17 = [(VUICollectionViewFlowLayout *)self collectionView];
    [v17 bounds];
    v19 = v18;

    if (!v11)
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