@interface PXYearsLayoutGenerator
- (void)updateContentSize:(CGSize *)a3 itemRects:(CGRect *)a4;
@end

@implementation PXYearsLayoutGenerator

- (void)updateContentSize:(CGSize *)a3 itemRects:(CGRect *)a4
{
  v7 = [(PXYearsLayoutGenerator *)self itemCount];
  v40 = +[PXCuratedLibrarySettings sharedInstance];
  v8 = [(PXYearsLayoutGenerator *)self metrics];
  [v8 referenceSize];
  v10 = v9;
  [v8 padding];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [v8 defaultItemAspectRatio];
  v20 = v19;
  [v8 interitemSpacing];
  v22 = v21;
  v23 = [v8 sizeClass] == 1 && objc_msgSend(v8, "orientation") == 2;
  v24 = 1;
  if ([v40 allowsModularLayoutForZoomLevel:1 sizeClass:objc_msgSend(v8 orientation:"sizeClass") layoutStyle:{objc_msgSend(v8, "orientation"), objc_msgSend(v8, "layoutStyle")}])
  {
    if ([v8 orientation] == 2)
    {
      v25 = [v40 useWideModularLayoutInYears];
      v26 = 1;
      if (v7 > 3)
      {
        v26 = 2;
      }

      if (v7 < 9 || v23)
      {
        v27 = v26;
      }

      else
      {
        v27 = 3;
      }

      v28 = 4;
      v29 = 3;
      v30 = 1;
      if (v7 > 1)
      {
        v30 = 2;
      }

      if (v7 <= 7)
      {
        v29 = v30;
      }

      if (v7 <= 11)
      {
        v28 = v29;
      }

      if (v25)
      {
        v24 = v28;
      }

      else
      {
        v24 = v27;
      }
    }

    else if (v7 <= 5)
    {
      v24 = 1;
    }

    else
    {
      v24 = 2;
    }
  }

  if ([v40 forcedNumberOfYearsColumn] >= 1)
  {
    v24 = [v40 forcedNumberOfYearsColumn];
  }

  if (v24 <= 1)
  {
    [v8 referenceSize];
    v33 = fmax((v10 - v14 - v18 + v20 * v32 * -0.8) * 0.5, 0.0);
    v14 = v14 + v33;
    v18 = v18 + v33;
  }

  else
  {
    [v8 multiColumnAspectRatio];
    v20 = v31;
  }

  v34 = (v22 + v10 - (v18 + v14)) / v24 - v22;
  v35 = v34 / v20;
  if (v7 <= 0)
  {
    v37 = v22 + v35;
  }

  else
  {
    v36 = (v24 + v7 / v24 * v24 - v7) % v24;
    v37 = v22 + v35;
    p_size = &a4->size;
    v39 = v7;
    do
    {
      p_size[-1].width = v14 + (v36 % v24) * (v22 + v34);
      p_size[-1].height = v12 + (v36 / v24) * v37;
      p_size->width = v34;
      p_size->height = v35;
      p_size += 2;
      ++v36;
      --v39;
    }

    while (v39);
  }

  a3->width = v10;
  a3->height = v16 + v12 + ((v7 + v24 - 1) / v24) * v37 - v22;
  self->_presentedNumberOfColumns = v24;
}

@end