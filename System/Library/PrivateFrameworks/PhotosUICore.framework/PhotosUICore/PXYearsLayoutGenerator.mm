@interface PXYearsLayoutGenerator
- (void)updateContentSize:(CGSize *)size itemRects:(CGRect *)rects;
@end

@implementation PXYearsLayoutGenerator

- (void)updateContentSize:(CGSize *)size itemRects:(CGRect *)rects
{
  itemCount = [(PXYearsLayoutGenerator *)self itemCount];
  v40 = +[PXCuratedLibrarySettings sharedInstance];
  metrics = [(PXYearsLayoutGenerator *)self metrics];
  [metrics referenceSize];
  v10 = v9;
  [metrics padding];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [metrics defaultItemAspectRatio];
  v20 = v19;
  [metrics interitemSpacing];
  v22 = v21;
  v23 = [metrics sizeClass] == 1 && objc_msgSend(metrics, "orientation") == 2;
  forcedNumberOfYearsColumn = 1;
  if ([v40 allowsModularLayoutForZoomLevel:1 sizeClass:objc_msgSend(metrics orientation:"sizeClass") layoutStyle:{objc_msgSend(metrics, "orientation"), objc_msgSend(metrics, "layoutStyle")}])
  {
    if ([metrics orientation] == 2)
    {
      useWideModularLayoutInYears = [v40 useWideModularLayoutInYears];
      v26 = 1;
      if (itemCount > 3)
      {
        v26 = 2;
      }

      if (itemCount < 9 || v23)
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
      if (itemCount > 1)
      {
        v30 = 2;
      }

      if (itemCount <= 7)
      {
        v29 = v30;
      }

      if (itemCount <= 11)
      {
        v28 = v29;
      }

      if (useWideModularLayoutInYears)
      {
        forcedNumberOfYearsColumn = v28;
      }

      else
      {
        forcedNumberOfYearsColumn = v27;
      }
    }

    else if (itemCount <= 5)
    {
      forcedNumberOfYearsColumn = 1;
    }

    else
    {
      forcedNumberOfYearsColumn = 2;
    }
  }

  if ([v40 forcedNumberOfYearsColumn] >= 1)
  {
    forcedNumberOfYearsColumn = [v40 forcedNumberOfYearsColumn];
  }

  if (forcedNumberOfYearsColumn <= 1)
  {
    [metrics referenceSize];
    v33 = fmax((v10 - v14 - v18 + v20 * v32 * -0.8) * 0.5, 0.0);
    v14 = v14 + v33;
    v18 = v18 + v33;
  }

  else
  {
    [metrics multiColumnAspectRatio];
    v20 = v31;
  }

  v34 = (v22 + v10 - (v18 + v14)) / forcedNumberOfYearsColumn - v22;
  v35 = v34 / v20;
  if (itemCount <= 0)
  {
    v37 = v22 + v35;
  }

  else
  {
    v36 = (forcedNumberOfYearsColumn + itemCount / forcedNumberOfYearsColumn * forcedNumberOfYearsColumn - itemCount) % forcedNumberOfYearsColumn;
    v37 = v22 + v35;
    p_size = &rects->size;
    v39 = itemCount;
    do
    {
      p_size[-1].width = v14 + (v36 % forcedNumberOfYearsColumn) * (v22 + v34);
      p_size[-1].height = v12 + (v36 / forcedNumberOfYearsColumn) * v37;
      p_size->width = v34;
      p_size->height = v35;
      p_size += 2;
      ++v36;
      --v39;
    }

    while (v39);
  }

  size->width = v10;
  size->height = v16 + v12 + ((itemCount + forcedNumberOfYearsColumn - 1) / forcedNumberOfYearsColumn) * v37 - v22;
  self->_presentedNumberOfColumns = forcedNumberOfYearsColumn;
}

@end