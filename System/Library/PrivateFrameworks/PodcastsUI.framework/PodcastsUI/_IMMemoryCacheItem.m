@interface _IMMemoryCacheItem
+ (id)cacheItemWithItem:(id)a3 key:(id)a4 cost:(unint64_t)a5;
@end

@implementation _IMMemoryCacheItem

+ (id)cacheItemWithItem:(id)a3 key:(id)a4 cost:(unint64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = objc_opt_new();
  if (!a5)
  {
    NSLog(&cfstr_AddingCostZero.isa, v7);
  }

  [v9 setItem:v8];
  [v9 setCost:a5];
  [v9 setTimeStamp:mach_absolute_time()];
  [v9 setKey:v7];
  v10 = [v8 conformsToProtocol:&unk_282D11098];

  [v9 setConformsToProtocol:v10];

  return v9;
}

@end