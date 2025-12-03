@interface SearchUIRowCardSectionView
+ (BOOL)hasLeadingImageForCardSection:(id)section;
+ (BOOL)prefersNoSeparatorAboveRowModel:(id)model;
+ (id)dragSubtitleForCardSection:(id)section;
+ (id)dragTitleForCardSection:(id)section;
- (id)leadingTextView;
- (id)setupContentView;
- (void)updateWithRowModel:(id)model;
@end

@implementation SearchUIRowCardSectionView

+ (BOOL)hasLeadingImageForCardSection:(id)section
{
  sectionCopy = section;
  image = [sectionCopy image];
  if (image)
  {
    v5 = [sectionCopy imageIsRightAligned] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

+ (BOOL)prefersNoSeparatorAboveRowModel:(id)model
{
  cardSection = [model cardSection];
  leadingText = [cardSection leadingText];
  if (leadingText)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    leadingSubtitle = [cardSection leadingSubtitle];
    if (leadingSubtitle)
    {
      LOBYTE(v6) = 0;
    }

    else
    {
      v6 = [self hasLeadingImageForCardSection:cardSection] ^ 1;
    }
  }

  return v6;
}

- (id)setupContentView
{
  v2 = objc_opt_new();

  return v2;
}

- (void)updateWithRowModel:(id)model
{
  modelCopy = model;
  cardSection = [modelCopy cardSection];
  v23.receiver = self;
  v23.super_class = SearchUIRowCardSectionView;
  [(SearchUICardSectionView *)&v23 updateWithRowModel:modelCopy];

  punchoutOptions = [cardSection punchoutOptions];
  firstObject = [punchoutOptions firstObject];
  bundleIdentifier = [firstObject bundleIdentifier];

  if ([cardSection imageIsRightAligned] && bundleIdentifier && +[SearchUIUtilities appIsValidForBundleIdentifier:](SearchUIUtilities, "appIsValidForBundleIdentifier:", bundleIdentifier))
  {
    v9 = [SearchUIUtilities bundleIdentifierForApp:14];
    v10 = [bundleIdentifier isEqualToString:v9];

    if (v10)
    {
      v11 = [[SearchUIDefaultBrowserAppIconImage alloc] initWithVariant:2];
      if (!v11)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v11 = [SearchUIAppIconImage appIconForBundleIdentifier:bundleIdentifier variant:2];
      if (!v11)
      {
        goto LABEL_8;
      }
    }

LABEL_11:
    image = v11;
    v13 = image;
    goto LABEL_12;
  }

LABEL_8:
  if (([cardSection imageIsRightAligned] & 1) == 0)
  {
    v11 = 0;
    goto LABEL_11;
  }

  image = [cardSection image];
  v13 = 0;
LABEL_12:
  contentView = [(SearchUICardSectionView *)self contentView];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __49__SearchUIRowCardSectionView_updateWithRowModel___block_invoke;
  v18[3] = &unk_1E85B35B0;
  v19 = contentView;
  v20 = cardSection;
  v21 = image;
  v22 = 2;
  v15 = image;
  v16 = cardSection;
  v17 = contentView;
  [v17 performBatchUpdates:v18];
}

void __49__SearchUIRowCardSectionView_updateWithRowModel___block_invoke(uint64_t a1)
{
  if ([*(a1 + 40) imageIsRightAligned])
  {
    [*(a1 + 32) setLeadingImage:0];
  }

  else
  {
    v2 = [*(a1 + 40) image];
    v3 = [SearchUIImage imageWithSFImage:v2 variantForAppIcon:*(a1 + 56)];
    v4 = [SearchUITLKImageConverter imageForSFImage:v3];
    [*(a1 + 32) setLeadingImage:v4];
  }

  v5 = [*(a1 + 40) leadingText];
  v6 = [SearchUITLKMultilineTextConverter richTextForSearchUIText:v5];
  [*(a1 + 32) setLeadingTitle:v6];

  v7 = [*(a1 + 40) trailingText];
  v8 = [SearchUITLKMultilineTextConverter richTextForSearchUIText:v7];
  [*(a1 + 32) setTrailingTitle:v8];

  v9 = [*(a1 + 40) leadingSubtitle];
  v10 = [SearchUITLKMultilineTextConverter richTextForSearchUIText:v9];
  [*(a1 + 32) setLeadingSubtitle:v10];

  v11 = [*(a1 + 40) trailingSubtitle];
  v12 = [SearchUITLKMultilineTextConverter richTextForSearchUIText:v11];
  [*(a1 + 32) setTrailingSubtitle:v12];

  v14 = [SearchUIImage imageWithSFImage:*(a1 + 48) variantForAppIcon:*(a1 + 56)];
  v13 = [SearchUITLKImageConverter imageForSFImage:v14];
  [*(a1 + 32) setTrailingImage:v13];
}

- (id)leadingTextView
{
  contentView = [(SearchUICardSectionView *)self contentView];
  leadingTextView = [contentView leadingTextView];

  return leadingTextView;
}

+ (id)dragTitleForCardSection:(id)section
{
  sectionCopy = section;
  leadingText = [sectionCopy leadingText];
  v5 = [SearchUIUtilities stringForSFRichText:leadingText];

  leadingSubtitle = [sectionCopy leadingSubtitle];

  if (leadingSubtitle)
  {
    leadingSubtitle2 = [sectionCopy leadingSubtitle];
    v8 = [SearchUIUtilities stringForSFRichText:leadingSubtitle2];
    v9 = [v5 stringByAppendingFormat:@", %@", v8];

    v5 = v9;
  }

  return v5;
}

+ (id)dragSubtitleForCardSection:(id)section
{
  sectionCopy = section;
  trailingText = [sectionCopy trailingText];
  v5 = [SearchUIUtilities stringForSFRichText:trailingText];

  trailingSubtitle = [sectionCopy trailingSubtitle];

  if (trailingSubtitle)
  {
    trailingSubtitle2 = [sectionCopy trailingSubtitle];
    v8 = [SearchUIUtilities stringForSFRichText:trailingSubtitle2];
    v9 = [v5 stringByAppendingFormat:@", %@", v8];

    v5 = v9;
  }

  return v5;
}

@end