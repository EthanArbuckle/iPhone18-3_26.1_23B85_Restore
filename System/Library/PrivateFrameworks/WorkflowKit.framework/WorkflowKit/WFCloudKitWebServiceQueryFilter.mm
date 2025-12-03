@interface WFCloudKitWebServiceQueryFilter
+ (id)filterWithCombinationOf:(id)of by:(unint64_t)by;
+ (id)filterWithComparisonOf:(id)of toInt:(int64_t)int by:(unint64_t)by;
+ (id)filterWithComparisonOf:(id)of toString:(id)string by:(unint64_t)by;
+ (id)filterWithComparisonOf:(id)of toStringArray:(id)array by:(unint64_t)by;
- (id)stringRepresentationWithRecordType:(id)type;
@end

@implementation WFCloudKitWebServiceQueryFilter

- (id)stringRepresentationWithRecordType:(id)type
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"WFCloudKitWebServiceQueryFilter.m" lineNumber:65 description:@"-[WFCloudKitWebServiceQueryFilter stringRepresentationWithRecordType:] should be overridden by subclass"];

  return 0;
}

+ (id)filterWithComparisonOf:(id)of toStringArray:(id)array by:(unint64_t)by
{
  arrayCopy = array;
  ofCopy = of;
  v9 = objc_opt_new();
  [v9 setRecordKey:ofCopy];

  v10 = [arrayCopy if_map:&__block_literal_global_45754];

  v11 = [v10 componentsJoinedByString:{@", "}];
  [v9 setValue:v11];

  [v9 setType:by];

  return v9;
}

+ (id)filterWithComparisonOf:(id)of toInt:(int64_t)int by:(unint64_t)by
{
  ofCopy = of;
  v8 = objc_opt_new();
  [v8 setRecordKey:ofCopy];

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", int];
  [v8 setValue:v9];

  [v8 setType:by];

  return v8;
}

+ (id)filterWithComparisonOf:(id)of toString:(id)string by:(unint64_t)by
{
  stringCopy = string;
  ofCopy = of;
  v9 = objc_opt_new();
  [v9 setRecordKey:ofCopy];

  stringCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"'%@'", stringCopy];

  [v9 setValue:stringCopy];
  [v9 setType:by];

  return v9;
}

+ (id)filterWithCombinationOf:(id)of by:(unint64_t)by
{
  ofCopy = of;
  v6 = objc_opt_new();
  [v6 setFilters:ofCopy];

  [v6 setType:by];

  return v6;
}

@end