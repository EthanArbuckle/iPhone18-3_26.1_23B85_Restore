@interface _TVCollectionViewFlowLayout
- (_TVCollectionViewFlowLayout)init;
- (double)contentHeightThatFitsItemCount:(int64_t)a3 expectedWidth:(double)a4;
- (id)invalidationContextForBoundsChange:(CGRect)a3;
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

- (double)contentHeightThatFitsItemCount:(int64_t)a3 expectedWidth:(double)a4
{
  v7 = [(_TVCollectionViewFlowLayout *)self collectionView];
  v8 = [v7 numberOfSections];
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
    v24 = v17 + v14 + v12 * a3 + v21 * (a3 - 1);
  }

  else
  {
    v42 = v10;
    v24 = 0.0;
    if (a3 > 0 || a4 > 0.0)
    {
      if (a3 || ![(_TVCollectionViewFlowLayout *)self isHeterogeneous]&& (a3 = ((v21 + a4 - v43 - v19) / (v42 + v21))) != 0)
      {
        if (v8 >= 1)
        {
          for (i = 0; i != v8; ++i)
          {
            v26 = [v7 numberOfItemsInSection:{i, *&v42}];
            v24 = v24 + v17 + v14 + v12 * ((a3 - 1 + v26) / a3) + v23 * ((a3 - 1 + v26) / a3 - 1);
          }
        }
      }

      else
      {
        v27 = [v7 delegate];
        v28 = objc_opt_respondsToSelector();

        if ((v28 & 1) != 0 && v8 >= 1)
        {
          v29 = 0;
          v30 = v14 + v17;
          do
          {
            v31 = v30 + v24;
            v32 = [v7 numberOfItemsInSection:v29];
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
                v35 = a4;
                while (1)
                {
                  v36 = [MEMORY[0x277CCAA70] indexPathForItem:v34 inSection:v29];
                  v37 = [v7 delegate];
                  [v37 collectionView:v7 layout:self sizeForItemAtIndexPath:v36];
                  v39 = v38;

                  if (v35 < v39)
                  {
                    v40 = v35 == a4;
                    goto LABEL_24;
                  }

                  v35 = v35 - (v21 + v39);
                  if (v35 < 0.0)
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

          while (v29 != v8);
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
  v20.super_class = _TVCollectionViewFlowLayout;
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
      v3 = [(_TVCollectionViewFlowLayout *)self collectionView];
      [v3 bounds];
      if (v14 != x)
      {
LABEL_10:

        goto LABEL_11;
      }

      v4 = [(_TVCollectionViewFlowLayout *)self collectionView];
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

    v12 = [(_TVCollectionViewFlowLayout *)self collectionView];
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

    v17 = [(_TVCollectionViewFlowLayout *)self collectionView];
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