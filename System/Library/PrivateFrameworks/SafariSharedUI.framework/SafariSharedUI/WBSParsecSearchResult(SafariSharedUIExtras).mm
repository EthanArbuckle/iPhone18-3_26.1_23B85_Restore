@interface WBSParsecSearchResult(SafariSharedUIExtras)
- (WBSParsecImageRepresentation)completionIcon;
- (WBSParsecImageRepresentation)icon;
- (id)completionIconWithSession:()SafariSharedUIExtras;
- (id)iconWithSession:()SafariSharedUIExtras;
- (uint64_t)shouldAutocompleteQuery:()SafariSharedUIExtras;
@end

@implementation WBSParsecSearchResult(SafariSharedUIExtras)

- (WBSParsecImageRepresentation)icon
{
  sfSearchResult = [self sfSearchResult];
  icon = [sfSearchResult icon];

  if (icon)
  {
    v3 = [[WBSParsecImageRepresentation alloc] initWithSFImage:icon];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (WBSParsecImageRepresentation)completionIcon
{
  sfSearchResult = [self sfSearchResult];
  completionImage = [sfSearchResult completionImage];

  if (completionImage)
  {
    v3 = [[WBSParsecImageRepresentation alloc] initWithSFImage:completionImage];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)iconWithSession:()SafariSharedUIExtras
{
  v4 = a3;
  icon = [self icon];
  v6 = [icon imageWithSession:v4];

  return v6;
}

- (id)completionIconWithSession:()SafariSharedUIExtras
{
  v4 = a3;
  completionIcon = [self completionIcon];
  v6 = [completionIcon imageWithSession:v4];

  return v6;
}

- (uint64_t)shouldAutocompleteQuery:()SafariSharedUIExtras
{
  v4 = a3;
  if ([self isPredictionFromServerMatchingUserTypedQuery:v4])
  {
    v5 = MEMORY[0x1E69C9038];
    urlString = [self urlString];
    queryString = [v4 queryString];
    query = [self query];
    v9 = [v5 shouldAutocompleteToURL:urlString fromUserTypedString:queryString withPredictedQueryString:query];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end