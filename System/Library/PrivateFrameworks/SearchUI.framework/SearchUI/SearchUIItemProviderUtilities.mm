@interface SearchUIItemProviderUtilities
+ (id)itemProviderForItem:(id)a3;
+ (void)copy:(id)a3;
- (SearchUIItemProviderUtilities)init;
@end

@implementation SearchUIItemProviderUtilities

+ (id)itemProviderForItem:(id)a3
{
  v4 = a3;
  v5 = sub_1DA23094C(a3);

  return v5;
}

+ (void)copy:(id)a3
{
  v4 = a3;
  sub_1DA230A78(a3);
}

- (SearchUIItemProviderUtilities)init
{
  v3.receiver = self;
  v3.super_class = SearchUIItemProviderUtilities;
  return [(SearchUIItemProviderUtilities *)&v3 init];
}

@end