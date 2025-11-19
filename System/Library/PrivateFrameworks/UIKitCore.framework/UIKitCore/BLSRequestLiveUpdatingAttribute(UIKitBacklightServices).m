@interface BLSRequestLiveUpdatingAttribute(UIKitBacklightServices)
+ (id)requestLiveUpdatingForScene:()UIKitBacklightServices;
@end

@implementation BLSRequestLiveUpdatingAttribute(UIKitBacklightServices)

+ (id)requestLiveUpdatingForScene:()UIKitBacklightServices
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [v4 _FBSScene];

  v7 = [v5 initWithFBSScene:v6];

  return v7;
}

@end