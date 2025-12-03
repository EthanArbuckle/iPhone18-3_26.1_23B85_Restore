@interface SearchUIItemProviderUtilities
+ (id)itemProviderForItem:(id)item;
+ (void)copy:(id)copy;
- (SearchUIItemProviderUtilities)init;
@end

@implementation SearchUIItemProviderUtilities

+ (id)itemProviderForItem:(id)item
{
  itemCopy = item;
  v5 = sub_1DA23094C(item);

  return v5;
}

+ (void)copy:(id)copy
{
  copyCopy = copy;
  sub_1DA230A78(copy);
}

- (SearchUIItemProviderUtilities)init
{
  v3.receiver = self;
  v3.super_class = SearchUIItemProviderUtilities;
  return [(SearchUIItemProviderUtilities *)&v3 init];
}

@end