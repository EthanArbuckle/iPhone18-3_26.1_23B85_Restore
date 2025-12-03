@interface UICollectionViewLayout(PhotosUI)
- (id)pu_layoutAttributesForElementClosestToPoint:()PhotosUI inRect:passingTest:;
@end

@implementation UICollectionViewLayout(PhotosUI)

- (id)pu_layoutAttributesForElementClosestToPoint:()PhotosUI inRect:passingTest:
{
  v32 = *MEMORY[0x1E69E9840];
  v14 = a9;
  v15 = [self layoutAttributesForElementsInRect:{a4, a5, a6, a7}];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v16 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = 0;
    v19 = *v28;
    v20 = 1.79769313e308;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(v15);
        }

        v22 = *(*(&v27 + 1) + 8 * i);
        if (([v22 isHidden] & 1) == 0)
        {
          [v22 frame];
          UIDistanceBetweenPointAndRect();
          if (v23 < v20)
          {
            v24 = v23;
            if (v14[2](v14, v22))
            {
              v25 = v22;

              v20 = v24;
              v18 = v25;
            }
          }
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v17);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

@end