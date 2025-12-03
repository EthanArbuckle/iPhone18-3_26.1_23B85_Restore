@interface _PLKDontAllowGroupOpacityOrGroupBlendingLayer
+ (BOOL)needsDisplayForKey:(id)key;
- (_PLKDontAllowGroupOpacityOrGroupBlendingLayer)init;
@end

@implementation _PLKDontAllowGroupOpacityOrGroupBlendingLayer

- (_PLKDontAllowGroupOpacityOrGroupBlendingLayer)init
{
  v7.receiver = self;
  v7.super_class = _PLKDontAllowGroupOpacityOrGroupBlendingLayer;
  v2 = [(_PLKDontAllowGroupOpacityOrGroupBlendingLayer *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v6.receiver = v2;
    v6.super_class = _PLKDontAllowGroupOpacityOrGroupBlendingLayer;
    [(_PLKDontAllowGroupOpacityOrGroupBlendingLayer *)&v6 setAllowsGroupOpacity:0];
    v5.receiver = v3;
    v5.super_class = _PLKDontAllowGroupOpacityOrGroupBlendingLayer;
    [(_PLKDontAllowGroupOpacityOrGroupBlendingLayer *)&v5 setAllowsGroupBlending:0];
  }

  return v3;
}

+ (BOOL)needsDisplayForKey:(id)key
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS____PLKDontAllowGroupOpacityOrGroupBlendingLayer;
  return objc_msgSendSuper2(&v4, sel_needsDisplayForKey_, key);
}

@end