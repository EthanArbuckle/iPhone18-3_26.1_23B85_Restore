@interface PUPickerSuggestionResultFetcherResult
- (BOOL)isFilteredBackdropSuggestions;
- (BOOL)shouldReverseSortOrder;
- (NSArray)allowedColumnsOverride;
- (NSDictionary)suggestionSubtypeByAssetUUID;
- (NSSet)inlinePlaybackDisallowedAssetUUIDs;
- (NSString)analyticsName;
- (id)fetchResult;
- (int64_t)numberOfItemsToPlayInline;
- (unint64_t)posterClassification;
@end

@implementation PUPickerSuggestionResultFetcherResult

- (id)fetchResult
{
  v2 = PickerSuggestionResultFetcher.Result.fetchResult.getter();

  return v2;
}

- (NSDictionary)suggestionSubtypeByAssetUUID
{
  if (PickerSuggestionResultFetcher.Result.suggestionSubtypeByAssetUUID.getter())
  {
    sub_1B3710718(0, &qword_1EB852330);
    v2 = sub_1B3C9C4A8();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (NSSet)inlinePlaybackDisallowedAssetUUIDs
{
  if (PickerSuggestionResultFetcher.Result.inlinePlaybackDisallowedAssetUUIDs.getter())
  {
    v2 = sub_1B3C9C968();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (BOOL)shouldReverseSortOrder
{
  v2 = self;
  v3 = PickerSuggestionResultFetcher.Result.shouldReverseSortOrder.getter();

  return v3 & 1;
}

- (NSString)analyticsName
{
  v2 = self;
  PickerSuggestionResultFetcher.Result.analyticsName.getter();

  v3 = sub_1B3C9C5A8();

  return v3;
}

- (unint64_t)posterClassification
{
  v2 = self;
  v3 = PickerSuggestionResultFetcher.Result.posterClassification.getter();

  return v3;
}

- (int64_t)numberOfItemsToPlayInline
{
  v2 = self;
  v3 = PickerSuggestionResultFetcher.Result.numberOfItemsToPlayInline.getter();

  return v3;
}

- (NSArray)allowedColumnsOverride
{
  if (PickerSuggestionResultFetcher.Result.allowedColumnsOverride.getter())
  {
    v2 = sub_1B3C9C778();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (BOOL)isFilteredBackdropSuggestions
{
  v2 = self;
  v3 = PickerSuggestionResultFetcher.Result.isFilteredBackdropSuggestions.getter();

  return v3 & 1;
}

@end