@interface SearchUIFocusStyleUtilities
+ (int64_t)bestFocusStyleForBackgroundStyle:(int64_t)a3;
+ (int64_t)bestFocusStyleForCell:(id)a3;
@end

@implementation SearchUIFocusStyleUtilities

+ (int64_t)bestFocusStyleForCell:(id)a3
{
  v4 = a3;
  v5 = [v4 rowModel];
  v6 = [v5 cardSection];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [v4 rowModel];
    v9 = [v8 cardSection];

    if ([v9 useAppIconMetrics])
    {
      v10 = [v9 command];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {

LABEL_19:
        v18 = 7;
        goto LABEL_20;
      }

      v25 = [v9 command];
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

  v11 = [v4 rowModel];
  v12 = [v11 cardSection];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    goto LABEL_9;
  }

  v13 = [v4 rowModel];
  v14 = [v13 cardSection];
  objc_opt_class();
  v15 = objc_opt_isKindOfClass();

  if (v15)
  {
LABEL_9:
    v16 = [v4 rowModel];
    v17 = [v16 fillsBackgroundWithContent];

    if (v17)
    {
      goto LABEL_10;
    }
  }

  v19 = [v4 rowModel];
  v20 = [v19 cardSection];
  objc_opt_class();
  v21 = objc_opt_isKindOfClass();

  if (v21)
  {
    v18 = 1;
    goto LABEL_20;
  }

  if ([v4 needsInternalFocus])
  {
    v18 = 6;
    goto LABEL_20;
  }

  v22 = [v4 highlightReferenceView];
  if (!v22 || (v23 = v22, v24 = [v4 sectionBackgroundStyle], v23, !v24))
  {
    v18 = [a1 bestFocusStyleForBackgroundStyle:{objc_msgSend(v4, "sectionBackgroundStyle")}];
    goto LABEL_20;
  }

LABEL_10:
  v18 = 3;
LABEL_20:

  return v18;
}

+ (int64_t)bestFocusStyleForBackgroundStyle:(int64_t)a3
{
  if ((a3 - 1) >= 3)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

@end