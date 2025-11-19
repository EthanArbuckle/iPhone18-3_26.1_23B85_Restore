@interface UICollectionView(VideosUICore)
+ (id)collectionViewWithFrame:()VideosUICore parentView:collectionViewLayout:;
- (BOOL)vui_isIndexPathValid:()VideosUICore;
- (id)_preciseIndexPathsForVisibleItems:()VideosUICore;
- (void)vui_scrollToItemAtIndexPath:()VideosUICore atScrollPosition:animated:completionHandler:;
@end

@implementation UICollectionView(VideosUICore)

+ (id)collectionViewWithFrame:()VideosUICore parentView:collectionViewLayout:
{
  v14 = a7;
  v31.receiver = a1;
  v31.super_class = &OBJC_METACLASS___UICollectionView_0;
  v15 = a8;
  v16 = objc_msgSendSuper2(&v31, sel_alloc);
  v17 = [v16 initWithFrame:v15 collectionViewLayout:{a2, a3, a4, a5, v31.receiver, v31.super_class}];

  if (v17)
  {
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v14 addSubview:v17];
    v18 = [v17 topAnchor];
    v19 = [v14 topAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
    [v20 setActive:1];

    v21 = [v17 bottomAnchor];
    v22 = [v14 bottomAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];
    [v23 setActive:1];

    v24 = [v17 leftAnchor];
    v25 = [v14 leftAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];
    [v26 setActive:1];

    v27 = [v17 rightAnchor];
    v28 = [v14 rightAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];
    [v29 setActive:1];
  }

  return v17;
}

- (void)vui_scrollToItemAtIndexPath:()VideosUICore atScrollPosition:animated:completionHandler:
{
  v8 = a3;
  if ([a1 vui_isIndexPathValid:?])
  {
    [a1 scrollToItemAtIndexPath:v8 atScrollPosition:a4 animated:a5];
  }
}

- (id)_preciseIndexPathsForVisibleItems:()VideosUICore
{
  v52 = *MEMORY[0x1E69E9840];
  v46 = [a1 vuiIndexPathsForVisibleItems];
  v5 = [v46 sortedArrayUsingComparator:&__block_literal_global_17];
  v6 = objc_opt_new();
  [a1 contentOffset];
  v8 = v7;
  v10 = v9;
  [a1 bounds];
  v12 = v11;
  v14 = v13;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v15 = v5;
  v16 = [v15 countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v48;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v48 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v47 + 1) + 8 * i);
        v21 = [a1 cellForItemAtIndexPath:v20];
        v22 = v21;
        if (v21)
        {
          [v21 frame];
          v24 = v23;
          v26 = v25;
          v28 = v27;
          v30 = v29;
          v31 = [v22 superview];
          [a1 convertRect:v31 fromView:{v24, v26, v28, v30}];
          v33 = v32;
          v35 = v34;
          v37 = v36;
          v39 = v38;
          v40 = v8;
          v41 = v10;
          v42 = v12;
          v43 = v14;
          if (a3)
          {
            if (!CGRectContainsRect(*&v40, *&v33))
            {
              goto LABEL_12;
            }

LABEL_11:
            [v6 addObject:v20];
          }

          else if (CGRectIntersectsRect(*&v40, *&v33))
          {
            goto LABEL_11;
          }

LABEL_12:
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v47 objects:v51 count:16];
    }

    while (v17);
  }

  v44 = [v6 copy];

  return v44;
}

- (BOOL)vui_isIndexPathValid:()VideosUICore
{
  v4 = a3;
  v5 = [v4 section];
  if (v5 >= [a1 numberOfSections])
  {
    v7 = 0;
  }

  else
  {
    v6 = [v4 item];
    v7 = v6 < [a1 numberOfItemsInSection:{objc_msgSend(v4, "section")}];
  }

  return v7;
}

@end