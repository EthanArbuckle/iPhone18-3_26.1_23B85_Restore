@interface LSApplicationRecord
+ (id)sr_applicationRecordWithIdentifier:(id)a3 error:(id *)a4;
@end

@implementation LSApplicationRecord

+ (id)sr_applicationRecordWithIdentifier:(id)a3 error:(id *)a4
{
  v4 = [LSApplicationRecord bundleRecordWithApplicationIdentifier:a3 error:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

@end