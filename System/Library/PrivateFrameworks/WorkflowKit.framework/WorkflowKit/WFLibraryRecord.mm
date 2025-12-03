@interface WFLibraryRecord
+ (int64_t)syncHashFromData:(id)data;
@end

@implementation WFLibraryRecord

+ (int64_t)syncHashFromData:(id)data
{
  dataCopy = data;
  v4 = objc_opt_new();
  v5 = [v4 combineContentsOfPropertyListObject:dataCopy];
  v6 = [v4 finalize];

  return v6;
}

@end