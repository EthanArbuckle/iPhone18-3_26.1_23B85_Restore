@interface UIActivityIndicatorView(Private)
+ (id)smu_activityIndicatorViewForStyleWithLoadingMessage;
@end

@implementation UIActivityIndicatorView(Private)

+ (id)smu_activityIndicatorViewForStyleWithLoadingMessage
{
  v0 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:22];

  return v0;
}

@end