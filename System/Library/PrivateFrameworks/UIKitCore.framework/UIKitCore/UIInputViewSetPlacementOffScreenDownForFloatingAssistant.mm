@interface UIInputViewSetPlacementOffScreenDownForFloatingAssistant
+ (id)placement;
- (CGRect)remoteIntrinsicContentSizeForInputViewInSet:(id)set includingIAV:(BOOL)v;
@end

@implementation UIInputViewSetPlacementOffScreenDownForFloatingAssistant

+ (id)placement
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (CGRect)remoteIntrinsicContentSizeForInputViewInSet:(id)set includingIAV:(BOOL)v
{
  v8.receiver = self;
  v8.super_class = UIInputViewSetPlacementOffScreenDownForFloatingAssistant;
  [(UIInputViewSetPlacement *)&v8 remoteIntrinsicContentSizeForInputViewInSet:set includingIAV:v];
  v6 = 1.0;
  v7 = 0.0;
  result.size.height = v7;
  result.size.width = v5;
  result.origin.y = v6;
  result.origin.x = v4;
  return result;
}

@end