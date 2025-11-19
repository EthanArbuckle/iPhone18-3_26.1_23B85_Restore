@interface SFVerticalLayoutCardSection(SearchUIHorizontallyScrollingSectionModel)
- (double)searchUIHorizontallyScrollingSectionModel_widthDimensionMultiplier;
@end

@implementation SFVerticalLayoutCardSection(SearchUIHorizontallyScrollingSectionModel)

- (double)searchUIHorizontallyScrollingSectionModel_widthDimensionMultiplier
{
  v2 = [a1 thumbnail];
  [v2 size];
  v4 = v3;
  v6 = v5;

  v7 = [a1 title];
  v8 = [SearchUITLKMultilineTextConverter richTextForSearchUIText:v7];
  if ([v8 hasContent])
  {

    goto LABEL_4;
  }

  v9 = [a1 footnote];
  v10 = [SearchUITLKMultilineTextConverter richTextForSearchUIText:v9];
  v11 = [v10 hasContent];

  if (v11)
  {
LABEL_4:
    if (v4 <= 200.0)
    {
      v13 = 1.0;
      if (([a1 contentsLeading] & 1) == 0)
      {
        if ([MEMORY[0x1E69D9240] isMacOS])
        {
          v13 = 0.8;
        }

        else
        {
          v13 = 0.666666667;
        }
      }

      if ([MEMORY[0x1E69D9240] isMacOS] && objc_msgSend(a1, "useAppIconMetrics"))
      {
        return v13 * 1.25;
      }
    }

    else
    {
      v19.receiver = a1;
      v19.super_class = &off_1F567DC90;
      objc_msgSendSuper2(&v19, sel_searchUIHorizontallyScrollingSectionModel_widthDimensionMultiplier);
      return v12;
    }

    return v13;
  }

  v14 = v4 / v6;
  v15 = roundf(v14);
  v16 = [MEMORY[0x1E69D9240] isMacOS];
  v17 = 0.666666667;
  if (!v16)
  {
    v17 = 0.5;
  }

  return v17 * v15;
}

@end