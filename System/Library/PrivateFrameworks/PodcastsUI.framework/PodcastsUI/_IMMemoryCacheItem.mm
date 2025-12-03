@interface _IMMemoryCacheItem
+ (id)cacheItemWithItem:(id)item key:(id)key cost:(unint64_t)cost;
@end

@implementation _IMMemoryCacheItem

+ (id)cacheItemWithItem:(id)item key:(id)key cost:(unint64_t)cost
{
  keyCopy = key;
  itemCopy = item;
  v9 = objc_opt_new();
  if (!cost)
  {
    NSLog(&cfstr_AddingCostZero.isa, keyCopy);
  }

  [v9 setItem:itemCopy];
  [v9 setCost:cost];
  [v9 setTimeStamp:mach_absolute_time()];
  [v9 setKey:keyCopy];
  v10 = [itemCopy conformsToProtocol:&unk_282D11098];

  [v9 setConformsToProtocol:v10];

  return v9;
}

@end