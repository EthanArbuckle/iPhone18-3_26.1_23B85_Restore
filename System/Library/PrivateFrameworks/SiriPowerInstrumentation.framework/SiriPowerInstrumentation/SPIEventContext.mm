@interface SPIEventContext
+ (id)context;
@end

@implementation SPIEventContext

+ (id)context
{
  v2 = objc_alloc_init(self);

  return v2;
}

@end