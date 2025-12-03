@interface PGContextualRuleUtils
+ (id)dayHighlightContainingAsset:(id)asset;
+ (id)onThisDayLocalDateForYearHighlight:(id)highlight withOptions:(id)options;
@end

@implementation PGContextualRuleUtils

+ (id)dayHighlightContainingAsset:(id)asset
{
  assetCopy = asset;
  photoLibrary = [assetCopy photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v6 = MEMORY[0x277CCAC30];
  objectID = [assetCopy objectID];

  v8 = [v6 predicateWithFormat:@"assets CONTAINS %@ and kind = %d", objectID, 0];
  [librarySpecificFetchOptions setInternalPredicate:v8];

  v9 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:6 subtype:0x7FFFFFFFFFFFFFFFLL options:librarySpecificFetchOptions];
  firstObject = [v9 firstObject];

  return firstObject;
}

+ (id)onThisDayLocalDateForYearHighlight:(id)highlight withOptions:(id)options
{
  optionsCopy = options;
  localDateComponents = [highlight localDateComponents];
  localTodayComponents = [optionsCopy localTodayComponents];

  v8 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v8 setYear:{objc_msgSend(localDateComponents, "year")}];
  [v8 setMonth:{objc_msgSend(localTodayComponents, "month")}];
  [v8 setDay:{objc_msgSend(localTodayComponents, "day")}];
  [v8 setHour:12];
  [v8 setMinute:0];
  [v8 setSecond:0];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v10 = [currentCalendar dateFromComponents:v8];

  return v10;
}

@end