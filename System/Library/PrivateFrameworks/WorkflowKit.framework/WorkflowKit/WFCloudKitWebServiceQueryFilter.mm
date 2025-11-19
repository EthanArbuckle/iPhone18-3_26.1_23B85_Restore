@interface WFCloudKitWebServiceQueryFilter
+ (id)filterWithCombinationOf:(id)a3 by:(unint64_t)a4;
+ (id)filterWithComparisonOf:(id)a3 toInt:(int64_t)a4 by:(unint64_t)a5;
+ (id)filterWithComparisonOf:(id)a3 toString:(id)a4 by:(unint64_t)a5;
+ (id)filterWithComparisonOf:(id)a3 toStringArray:(id)a4 by:(unint64_t)a5;
- (id)stringRepresentationWithRecordType:(id)a3;
@end

@implementation WFCloudKitWebServiceQueryFilter

- (id)stringRepresentationWithRecordType:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"WFCloudKitWebServiceQueryFilter.m" lineNumber:65 description:@"-[WFCloudKitWebServiceQueryFilter stringRepresentationWithRecordType:] should be overridden by subclass"];

  return 0;
}

+ (id)filterWithComparisonOf:(id)a3 toStringArray:(id)a4 by:(unint64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = objc_opt_new();
  [v9 setRecordKey:v8];

  v10 = [v7 if_map:&__block_literal_global_45754];

  v11 = [v10 componentsJoinedByString:{@", "}];
  [v9 setValue:v11];

  [v9 setType:a5];

  return v9;
}

+ (id)filterWithComparisonOf:(id)a3 toInt:(int64_t)a4 by:(unint64_t)a5
{
  v7 = a3;
  v8 = objc_opt_new();
  [v8 setRecordKey:v7];

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", a4];
  [v8 setValue:v9];

  [v8 setType:a5];

  return v8;
}

+ (id)filterWithComparisonOf:(id)a3 toString:(id)a4 by:(unint64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = objc_opt_new();
  [v9 setRecordKey:v8];

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"'%@'", v7];

  [v9 setValue:v10];
  [v9 setType:a5];

  return v9;
}

+ (id)filterWithCombinationOf:(id)a3 by:(unint64_t)a4
{
  v5 = a3;
  v6 = objc_opt_new();
  [v6 setFilters:v5];

  [v6 setType:a4];

  return v6;
}

@end