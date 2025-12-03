@interface SearchUIFocusStyleUtilities
+ (int64_t)bestFocusStyleForBackgroundStyle:(int64_t)style;
+ (int64_t)bestFocusStyleForCell:(id)cell;
@end

@implementation SearchUIFocusStyleUtilities

+ (int64_t)bestFocusStyleForCell:(id)cell
{
  cellCopy = cell;
  rowModel = [cellCopy rowModel];
  cardSection = [rowModel cardSection];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    rowModel2 = [cellCopy rowModel];
    cardSection2 = [rowModel2 cardSection];

    if ([cardSection2 useAppIconMetrics])
    {
      command = [cardSection2 command];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {

LABEL_19:
        v18 = 7;
        goto LABEL_20;
      }

      command2 = [cardSection2 command];
      objc_opt_class();
      v26 = objc_opt_isKindOfClass();

      if (v26)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }
  }

  rowModel3 = [cellCopy rowModel];
  cardSection3 = [rowModel3 cardSection];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    goto LABEL_9;
  }

  rowModel4 = [cellCopy rowModel];
  cardSection4 = [rowModel4 cardSection];
  objc_opt_class();
  v15 = objc_opt_isKindOfClass();

  if (v15)
  {
LABEL_9:
    rowModel5 = [cellCopy rowModel];
    fillsBackgroundWithContent = [rowModel5 fillsBackgroundWithContent];

    if (fillsBackgroundWithContent)
    {
      goto LABEL_10;
    }
  }

  rowModel6 = [cellCopy rowModel];
  cardSection5 = [rowModel6 cardSection];
  objc_opt_class();
  v21 = objc_opt_isKindOfClass();

  if (v21)
  {
    v18 = 1;
    goto LABEL_20;
  }

  if ([cellCopy needsInternalFocus])
  {
    v18 = 6;
    goto LABEL_20;
  }

  highlightReferenceView = [cellCopy highlightReferenceView];
  if (!highlightReferenceView || (v23 = highlightReferenceView, v24 = [cellCopy sectionBackgroundStyle], v23, !v24))
  {
    v18 = [self bestFocusStyleForBackgroundStyle:{objc_msgSend(cellCopy, "sectionBackgroundStyle")}];
    goto LABEL_20;
  }

LABEL_10:
  v18 = 3;
LABEL_20:

  return v18;
}

+ (int64_t)bestFocusStyleForBackgroundStyle:(int64_t)style
{
  if ((style - 1) >= 3)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

@end