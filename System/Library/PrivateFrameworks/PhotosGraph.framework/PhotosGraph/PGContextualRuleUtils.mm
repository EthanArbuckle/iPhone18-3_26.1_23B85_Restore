@interface PGContextualRuleUtils
+ (id)dayHighlightContainingAsset:(id)a3;
+ (id)onThisDayLocalDateForYearHighlight:(id)a3 withOptions:(id)a4;
@end

@implementation PGContextualRuleUtils

+ (id)dayHighlightContainingAsset:(id)a3
{
  v3 = a3;
  v4 = [v3 photoLibrary];
  v5 = [v4 librarySpecificFetchOptions];

  v6 = MEMORY[0x277CCAC30];
  v7 = [v3 objectID];

  v8 = [v6 predicateWithFormat:@"assets CONTAINS %@ and kind = %d", v7, 0];
  [v5 setInternalPredicate:v8];

  v9 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:6 subtype:0x7FFFFFFFFFFFFFFFLL options:v5];
  v10 = [v9 firstObject];

  return v10;
}

+ (id)onThisDayLocalDateForYearHighlight:(id)a3 withOptions:(id)a4
{
  v5 = a4;
  v6 = [a3 localDateComponents];
  v7 = [v5 localTodayComponents];

  v8 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v8 setYear:{objc_msgSend(v6, "year")}];
  [v8 setMonth:{objc_msgSend(v7, "month")}];
  [v8 setDay:{objc_msgSend(v7, "day")}];
  [v8 setHour:12];
  [v8 setMinute:0];
  [v8 setSecond:0];
  v9 = [MEMORY[0x277CBEA80] currentCalendar];
  v10 = [v9 dateFromComponents:v8];

  return v10;
}

@end