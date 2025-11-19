@interface UIInputViewSetPlacementOffScreenDownForFloatingAssistant
+ (id)placement;
- (CGRect)remoteIntrinsicContentSizeForInputViewInSet:(id)a3 includingIAV:(BOOL)a4;
@end

@implementation UIInputViewSetPlacementOffScreenDownForFloatingAssistant

+ (id)placement
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (CGRect)remoteIntrinsicContentSizeForInputViewInSet:(id)a3 includingIAV:(BOOL)a4
{
  v8.receiver = self;
  v8.super_class = UIInputViewSetPlacementOffScreenDownForFloatingAssistant;
  [(UIInputViewSetPlacement *)&v8 remoteIntrinsicContentSizeForInputViewInSet:a3 includingIAV:a4];
  v6 = 1.0;
  v7 = 0.0;
  result.size.height = v7;
  result.size.width = v5;
  result.origin.y = v6;
  result.origin.x = v4;
  return result;
}

@end