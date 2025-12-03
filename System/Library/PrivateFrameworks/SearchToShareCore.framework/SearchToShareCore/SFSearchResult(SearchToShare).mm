@interface SFSearchResult(SearchToShare)
- (double)sts_providerIconSize;
- (id)_sts_cardSectionWithClass:()SearchToShare;
- (id)sts_appProviderName;
- (id)sts_badge;
- (id)sts_descriptionText;
- (id)sts_providerHostPageURL;
- (id)sts_providerName;
- (id)sts_searchProviderImage;
- (id)sts_userReportRequest;
- (id)sts_videoDuration;
- (void)sts_providerIconWithScale:()SearchToShare completion:;
@end

@implementation SFSearchResult(SearchToShare)

- (id)sts_badge
{
  v1 = [self _sts_cardSectionWithClass:objc_opt_class()];
  badge = [v1 badge];

  return badge;
}

- (id)sts_searchProviderImage
{
  v1 = [self _sts_cardSectionWithClass:objc_opt_class()];
  image = [v1 image];

  return image;
}

- (id)sts_videoDuration
{
  v1 = [self _sts_cardSectionWithClass:objc_opt_class()];
  descriptionText = [v1 descriptionText];
  text = [descriptionText text];

  return text;
}

- (id)sts_providerName
{
  v1 = [self _sts_cardSectionWithClass:objc_opt_class()];
  title = [v1 title];

  return title;
}

- (id)sts_appProviderName
{
  punchout = [self punchout];
  label = [punchout label];

  return label;
}

- (id)sts_providerHostPageURL
{
  v1 = [self _sts_cardSectionWithClass:objc_opt_class()];
  hostPageURL = [v1 hostPageURL];

  return hostPageURL;
}

- (double)sts_providerIconSize
{
  v1 = [self _sts_cardSectionWithClass:objc_opt_class()];
  image = [v1 image];
  [image size];
  v4 = v3;

  return v4;
}

- (id)sts_userReportRequest
{
  v1 = [self _sts_cardSectionWithClass:objc_opt_class()];
  userReportRequest = [v1 userReportRequest];

  return userReportRequest;
}

- (void)sts_providerIconWithScale:()SearchToShare completion:
{
  v6 = a4;
  v7 = [self _sts_cardSectionWithClass:objc_opt_class()];
  v8 = MEMORY[0x277D755B8];
  image = [v7 image];
  imageData = [image imageData];
  v11 = [v8 imageWithData:imageData scale:a2];

  if (v11)
  {
    if (v6)
    {
      v6[2](v6, v11);
    }
  }

  else
  {
    image2 = [v7 image];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __70__SFSearchResult_SearchToShare__sts_providerIconWithScale_completion___block_invoke;
    v13[3] = &unk_279B8AD90;
    v15 = a2;
    v14 = v6;
    [image2 loadImageDataWithCompletionHandler:v13];
  }
}

- (id)sts_descriptionText
{
  v1 = [self _sts_cardSectionWithClass:objc_opt_class()];
  descriptionText = [v1 descriptionText];
  text = [descriptionText text];

  return text;
}

- (id)_sts_cardSectionWithClass:()SearchToShare
{
  if (a3 && ([self inlineCard], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "cardSections"), v6 = objc_claimAutoreleasedReturnValue(), v12[0] = MEMORY[0x277D85DD0], v12[1] = 3221225472, v12[2] = __59__SFSearchResult_SearchToShare___sts_cardSectionWithClass___block_invoke, v12[3] = &__block_descriptor_40_e30_B32__0__SFCardSection_8Q16_B24lu32l8, v12[4] = a3, v7 = objc_msgSend(v6, "indexOfObjectPassingTest:", v12), v6, v5, v7 != 0x7FFFFFFFFFFFFFFFLL))
  {
    inlineCard = [self inlineCard];
    cardSections = [inlineCard cardSections];
    v8 = [cardSections objectAtIndexedSubscript:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end