@interface OFPropertyAnimationLayer
+ (BOOL)needsDisplayForKey:(id)key;
- (OFPropertyAnimationLayer)init;
- (OFPropertyAnimationLayer)initWithLayer:(id)layer;
- (void)dealloc;
@end

@implementation OFPropertyAnimationLayer

- (OFPropertyAnimationLayer)init
{
  v3.receiver = self;
  v3.super_class = OFPropertyAnimationLayer;
  return [(OFPropertyAnimationLayer *)&v3 init];
}

- (OFPropertyAnimationLayer)initWithLayer:(id)layer
{
  v5.receiver = self;
  v5.super_class = OFPropertyAnimationLayer;
  v3 = [(OFPropertyAnimationLayer *)&v5 initWithLayer:?];
  if (v3)
  {
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  return v3;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = OFPropertyAnimationLayer;
  [(OFPropertyAnimationLayer *)&v2 dealloc];
}

+ (BOOL)needsDisplayForKey:(id)key
{
  if ([key isEqualToString:@"animatedPoint"] & 1) != 0 || (objc_msgSend(key, "isEqualToString:", @"animatedFloat"))
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___OFPropertyAnimationLayer;
  return objc_msgSendSuper2(&v6, sel_needsDisplayForKey_, key);
}

@end