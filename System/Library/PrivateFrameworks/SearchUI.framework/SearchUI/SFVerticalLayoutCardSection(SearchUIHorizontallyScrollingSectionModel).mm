@interface SFVerticalLayoutCardSection(SearchUIHorizontallyScrollingSectionModel)
- (double)searchUIHorizontallyScrollingSectionModel_widthDimensionMultiplier;
@end

@implementation SFVerticalLayoutCardSection(SearchUIHorizontallyScrollingSectionModel)

- (double)searchUIHorizontallyScrollingSectionModel_widthDimensionMultiplier
{
  thumbnail = [self thumbnail];
  [thumbnail size];
  v4 = v3;
  v6 = v5;

  title = [self title];
  v8 = [SearchUITLKMultilineTextConverter richTextForSearchUIText:title];
  if ([v8 hasContent])
  {

    goto LABEL_4;
  }

  footnote = [self footnote];
  v10 = [SearchUITLKMultilineTextConverter richTextForSearchUIText:footnote];
  hasContent = [v10 hasContent];

  if (hasContent)
  {
LABEL_4:
    if (v4 <= 200.0)
    {
      v13 = 1.0;
      if (([self contentsLeading] & 1) == 0)
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

      if ([MEMORY[0x1E69D9240] isMacOS] && objc_msgSend(self, "useAppIconMetrics"))
      {
        return v13 * 1.25;
      }
    }

    else
    {
      v19.receiver = self;
      v19.super_class = &off_1F567DC90;
      objc_msgSendSuper2(&v19, sel_searchUIHorizontallyScrollingSectionModel_widthDimensionMultiplier);
      return v12;
    }

    return v13;
  }

  v14 = v4 / v6;
  v15 = roundf(v14);
  isMacOS = [MEMORY[0x1E69D9240] isMacOS];
  v17 = 0.666666667;
  if (!isMacOS)
  {
    v17 = 0.5;
  }

  return v17 * v15;
}

@end