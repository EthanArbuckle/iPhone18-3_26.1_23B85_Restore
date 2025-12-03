@interface VUITopAlignedCollectionViewFlowLayout
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
@end

@implementation VUITopAlignedCollectionViewFlowLayout

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  v5 = [(VUITopAlignedCollectionViewFlowLayout *)self collectionView:change.origin.x];
  [v5 bounds];
  v7 = v6;
  v9 = v8;

  return v9 != height || v7 != width;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  v35 = *MEMORY[0x1E69E9840];
  v33.receiver = self;
  v33.super_class = VUITopAlignedCollectionViewFlowLayout;
  v3 = [(UICollectionViewFlowLayout *)&v33 layoutAttributesForElementsInRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  firstObject = [v3 firstObject];
  [firstObject frame];
  MidY = CGRectGetMidY(v37);

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *MEMORY[0x1E695F058];
    v25 = *(MEMORY[0x1E695F058] + 8);
    v26 = *(MEMORY[0x1E695F058] + 16);
    rect = *(MEMORY[0x1E695F058] + 24);
    v11 = *v30;
    v12 = 1.0;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v29 + 1) + 8 * i);
        if (![v14 representedElementCategory])
        {
          [v14 frame];
          x = v38.origin.x;
          y = v38.origin.y;
          width = v38.size.width;
          height = v38.size.height;
          v19 = CGRectGetMidY(v38);
          v20 = v19 - MidY;
          if (v19 - MidY < 0.0)
          {
            v20 = -v20;
          }

          if (v20 >= v12)
          {
            goto LABEL_13;
          }

          v21 = MidY;
          [v6 addObject:v14];
          v39.origin.x = x;
          v39.origin.y = y;
          v39.size.width = width;
          v39.size.height = height;
          v22 = CGRectGetHeight(v39);
          v40.origin.x = v10;
          v40.origin.y = v25;
          v40.size.width = v26;
          v40.size.height = rect;
          if (v22 > CGRectGetHeight(v40))
          {
            v26 = width;
            rect = height;
            v25 = y;
            v10 = x;
          }

          lastObject = [v7 lastObject];

          MidY = v21;
          v12 = 1.0;
          if (v14 == lastObject)
          {
LABEL_13:
            v28[0] = MEMORY[0x1E69E9820];
            v28[1] = 3221225472;
            v28[2] = __75__VUITopAlignedCollectionViewFlowLayout_layoutAttributesForElementsInRect___block_invoke;
            v28[3] = &__block_descriptor_64_e49_v32__0__UICollectionViewLayoutAttributes_8Q16_B24l;
            *&v28[4] = v10;
            *&v28[5] = v25;
            *&v28[6] = v26;
            *&v28[7] = rect;
            [v6 enumerateObjectsUsingBlock:v28];
            [v6 removeAllObjects];
            [v6 addObject:v14];
            v26 = width;
            rect = height;
            v25 = y;
            v10 = x;
            MidY = v19;
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v9);
  }

  return v7;
}

void __75__VUITopAlignedCollectionViewFlowLayout_layoutAttributesForElementsInRect___block_invoke(uint64_t a1, void *a2)
{
  v14 = a2;
  [v14 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = *(a1 + 40);
  [v14 frame];
  v13 = v11 - v12;
  v16.origin.x = v4;
  v16.origin.y = v6;
  v16.size.width = v8;
  v16.size.height = v10;
  v17 = CGRectOffset(v16, 0.0, v13);
  [v14 setFrame:{v17.origin.x, v17.origin.y, v17.size.width, v17.size.height}];
}

@end