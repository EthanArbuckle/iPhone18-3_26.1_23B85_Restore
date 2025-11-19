@interface NLActivityRingsRelevanceEngineBundleConfiguration
- (Class)dataSourceClassForKey:(id)a3;
@end

@implementation NLActivityRingsRelevanceEngineBundleConfiguration

- (Class)dataSourceClassForKey:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:RESampleDataSourceKey])
  {
    v4 = &off_81C0;
LABEL_5:
    v5 = *v4;
    v6 = objc_opt_class();
    goto LABEL_7;
  }

  if ([v3 isEqualToString:REPrimaryDataSourceKey])
  {
    v4 = off_81B8;
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

@end