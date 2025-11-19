@interface WFLibraryRecord
+ (int64_t)syncHashFromData:(id)a3;
@end

@implementation WFLibraryRecord

+ (int64_t)syncHashFromData:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v4 combineContentsOfPropertyListObject:v3];
  v6 = [v4 finalize];

  return v6;
}

@end