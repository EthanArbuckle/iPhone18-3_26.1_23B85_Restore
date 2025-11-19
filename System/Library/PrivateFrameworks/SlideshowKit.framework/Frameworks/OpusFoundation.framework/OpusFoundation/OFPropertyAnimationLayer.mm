@interface OFPropertyAnimationLayer
+ (BOOL)needsDisplayForKey:(id)a3;
- (OFPropertyAnimationLayer)init;
- (OFPropertyAnimationLayer)initWithLayer:(id)a3;
- (void)dealloc;
@end

@implementation OFPropertyAnimationLayer

- (OFPropertyAnimationLayer)init
{
  v3.receiver = self;
  v3.super_class = OFPropertyAnimationLayer;
  return [(OFPropertyAnimationLayer *)&v3 init];
}

- (OFPropertyAnimationLayer)initWithLayer:(id)a3
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

+ (BOOL)needsDisplayForKey:(id)a3
{
  if ([a3 isEqualToString:@"animatedPoint"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"animatedFloat"))
  {
    return 1;
  }

  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___OFPropertyAnimationLayer;
  return objc_msgSendSuper2(&v6, sel_needsDisplayForKey_, a3);
}

@end