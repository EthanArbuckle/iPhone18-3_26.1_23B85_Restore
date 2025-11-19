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
  v1 = [a1 sfSearchResult];
  v2 = [v1 icon];

  if (v2)
  {
    v3 = [[WBSParsecImageRepresentation alloc] initWithSFImage:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (WBSParsecImageRepresentation)completionIcon
{
  v1 = [a1 sfSearchResult];
  v2 = [v1 completionImage];

  if (v2)
  {
    v3 = [[WBSParsecImageRepresentation alloc] initWithSFImage:v2];
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
  v5 = [a1 icon];
  v6 = [v5 imageWithSession:v4];

  return v6;
}

- (id)completionIconWithSession:()SafariSharedUIExtras
{
  v4 = a3;
  v5 = [a1 completionIcon];
  v6 = [v5 imageWithSession:v4];

  return v6;
}

- (uint64_t)shouldAutocompleteQuery:()SafariSharedUIExtras
{
  v4 = a3;
  if ([a1 isPredictionFromServerMatchingUserTypedQuery:v4])
  {
    v5 = MEMORY[0x1E69C9038];
    v6 = [a1 urlString];
    v7 = [v4 queryString];
    v8 = [a1 query];
    v9 = [v5 shouldAutocompleteToURL:v6 fromUserTypedString:v7 withPredictedQueryString:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end