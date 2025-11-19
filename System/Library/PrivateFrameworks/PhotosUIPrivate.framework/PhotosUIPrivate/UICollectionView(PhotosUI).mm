@interface UICollectionView(PhotosUI)
- (id)next:()PhotosUI indexPathFromIndexPath:;
- (uint64_t)pu_scrollToItemAtIndexPath:()PhotosUI atScrollPosition:animated:;
- (uint64_t)pu_scrollToRect:()PhotosUI atScrollPosition:animated:;
- (void)pu_animateUpdateOfCollectionViewSubview:()PhotosUI animations:completion:;
@end

@implementation UICollectionView(PhotosUI)

- (void)pu_animateUpdateOfCollectionViewSubview:()PhotosUI animations:completion:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [v8 bounds];
  [a1 convertRect:v8 fromView:?];
  v11 = [a1 resizableSnapshotViewFromRect:0 afterScreenUpdates:? withCapInsets:?];
  v12 = [a1 backgroundColor];
  [v11 setBackgroundColor:v12];

  [v8 bounds];
  [v11 setFrame:?];
  if (v9)
  {
    v9[2](v9);
  }

  [v8 addSubview:v11];
  v13 = MEMORY[0x1E69DD250];
  v14 = *MEMORY[0x1E69DE248];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __92__UICollectionView_PhotosUI__pu_animateUpdateOfCollectionViewSubview_animations_completion___block_invoke;
  v20[3] = &unk_1E7B80DD0;
  v21 = v11;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __92__UICollectionView_PhotosUI__pu_animateUpdateOfCollectionViewSubview_animations_completion___block_invoke_2;
  v17[3] = &unk_1E7B80A18;
  v18 = v21;
  v19 = v10;
  v15 = v10;
  v16 = v21;
  [v13 animateWithDuration:v20 animations:v17 completion:v14];
}

- (id)next:()PhotosUI indexPathFromIndexPath:
{
  v6 = a4;
  v20 = v6;
  if (a3)
  {
    v7 = v6;
    if (a3 < 0)
    {
      v8 = -1;
    }

    else
    {
      v8 = 1;
    }

    v9 = [a1 numberOfSections];
    v10 = [v7 section];
    v11 = [v7 item];
    v12 = 0;
    if ((v10 & 0x8000000000000000) == 0 && v10 < v9)
    {
      v12 = 0;
      v13 = v11 + v8;
      if (a3 >= 0)
      {
        v14 = a3;
      }

      else
      {
        v14 = -a3;
      }

      do
      {
        v15 = a1;
        v16 = [a1 numberOfItemsInSection:v10];
        if (v13 == 0x8000000000000000)
        {
          v13 = (v16 - 1) & (a3 >> 63);
        }

        if ((v13 & 0x8000000000000000) == 0)
        {
          v17 = v16;
          do
          {
            if (v13 >= v17)
            {
              break;
            }

            if (v14 == 1)
            {
              v18 = [MEMORY[0x1E696AC88] indexPathForItem:v13 inSection:v10];

              v12 = v18;
            }

            if (!--v14)
            {
              break;
            }

            v13 += v8;
          }

          while ((v13 & 0x8000000000000000) == 0);
        }

        if (!v14)
        {
          break;
        }

        v10 += v8;
        if (v10 < 0)
        {
          break;
        }

        v13 = 0x8000000000000000;
        a1 = v15;
      }

      while (v10 < v9);
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (uint64_t)pu_scrollToItemAtIndexPath:()PhotosUI atScrollPosition:animated:
{
  v8 = [a1 layoutAttributesForItemAtIndexPath:?];
  [v8 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  return [a1 pu_scrollToRect:a4 atScrollPosition:a5 animated:{v10, v12, v14, v16}];
}

- (uint64_t)pu_scrollToRect:()PhotosUI atScrollPosition:animated:
{
  [a1 bounds];
  v16 = v15;
  v18 = v17;
  v44 = v19;
  v45 = v20;
  [a1 contentInset];
  v42 = v23;
  v43 = v22;
  v25 = v24;
  if ((a7 & 8) != 0)
  {
    v48.origin.x = a2;
    v48.origin.y = a3;
    v48.size.width = a4;
    v48.size.height = a5;
    v31 = CGRectGetMinX(v48) - v25;
  }

  else
  {
    v26 = v21;
    v27 = a2;
    v28 = a3;
    v29 = a4;
    v30 = a5;
    if ((a7 & 0x20) != 0)
    {
      MaxX = CGRectGetMaxX(*&v27);
      v49.origin.x = v16;
      v49.origin.y = v18;
      v49.size.width = v44;
      v49.size.height = v45;
      v31 = MaxX - (CGRectGetWidth(v49) - v26);
    }

    else
    {
      MidX = CGRectGetMidX(*&v27);
      v47.origin.x = v16;
      v47.origin.y = v18;
      v47.size.width = v44;
      v47.size.height = v45;
      v31 = MidX + (v25 + CGRectGetWidth(v47) - v26) * -0.5;
    }
  }

  v33 = a2;
  v34 = a3;
  v35 = a4;
  v36 = a5;
  if (a7)
  {
    v38 = CGRectGetMinY(*&v33) - v43;
  }

  else if ((a7 & 4) != 0)
  {
    MaxY = CGRectGetMaxY(*&v33);
    v51.origin.x = v16;
    v51.origin.y = v18;
    v51.size.width = v44;
    v51.size.height = v45;
    v38 = MaxY - (CGRectGetHeight(v51) - v42);
  }

  else
  {
    MidY = CGRectGetMidY(*&v33);
    v50.origin.x = v16;
    v50.origin.y = v18;
    v50.size.width = v44;
    v50.size.height = v45;
    v38 = MidY + (v43 + CGRectGetHeight(v50) - v42) * -0.5;
  }

  return [a1 px_scrollToContentOffset:a8 animated:{v31, v38}];
}

@end