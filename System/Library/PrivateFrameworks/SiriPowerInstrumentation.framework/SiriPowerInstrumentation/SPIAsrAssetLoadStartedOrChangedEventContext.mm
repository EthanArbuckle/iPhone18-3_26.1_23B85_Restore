@interface SPIAsrAssetLoadStartedOrChangedEventContext
+ (id)context;
@end

@implementation SPIAsrAssetLoadStartedOrChangedEventContext

+ (id)context
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___SPIAsrAssetLoadStartedOrChangedEventContext;
  v2 = objc_msgSendSuper2(&v4, sel_context);

  return v2;
}

@end