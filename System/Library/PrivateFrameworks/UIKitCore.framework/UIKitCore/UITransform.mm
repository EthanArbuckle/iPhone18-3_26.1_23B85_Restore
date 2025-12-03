@interface UITransform
+ (id)identity;
+ (id)rotationWithDegrees:(int64_t)degrees;
+ (id)rotationWithRadians:(double)radians;
+ (id)scale:(double)scale;
+ (id)scaleX:(double)x scaleY:(double)y;
+ (id)transformWithCGAffineTransform:(CGAffineTransform *)transform;
+ (id)translation:(CGPoint)translation;
- (BOOL)isEqual:(id)equal;
- (CGAffineTransform)transform;
- (UITransform)init;
- (id)_initWithTransform:(CGAffineTransform *)transform;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation UITransform

- (UITransform)init
{
  v2 = *(MEMORY[0x1E695EFD0] + 16);
  v4[0] = *MEMORY[0x1E695EFD0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x1E695EFD0] + 32);
  return [(UITransform *)self _initWithTransform:v4];
}

- (id)_initWithTransform:(CGAffineTransform *)transform
{
  v7.receiver = self;
  v7.super_class = UITransform;
  result = [(UITransform *)&v7 init];
  if (result)
  {
    v5 = *&transform->a;
    v6 = *&transform->c;
    *(result + 40) = *&transform->tx;
    *(result + 24) = v6;
    *(result + 8) = v5;
  }

  return result;
}

+ (id)identity
{
  v2 = objc_alloc_init(UITransform);

  return v2;
}

+ (id)transformWithCGAffineTransform:(CGAffineTransform *)transform
{
  v4 = [UITransform alloc];
  v5 = *&transform->c;
  v8[0] = *&transform->a;
  v8[1] = v5;
  v8[2] = *&transform->tx;
  v6 = [(UITransform *)v4 _initWithTransform:v8];

  return v6;
}

+ (id)rotationWithDegrees:(int64_t)degrees
{
  BSDegreesToRadians();

  return [self rotationWithRadians:?];
}

+ (id)rotationWithRadians:(double)radians
{
  v4 = [UITransform alloc];
  CGAffineTransformMakeRotation(&v7, radians);
  v5 = [(UITransform *)v4 _initWithTransform:&v7];

  return v5;
}

+ (id)translation:(CGPoint)translation
{
  y = translation.y;
  x = translation.x;
  v5 = [UITransform alloc];
  CGAffineTransformMakeTranslation(&v8, x, y);
  v6 = [(UITransform *)v5 _initWithTransform:&v8];

  return v6;
}

+ (id)scaleX:(double)x scaleY:(double)y
{
  v6 = [UITransform alloc];
  CGAffineTransformMakeScale(&v9, x, y);
  v7 = [(UITransform *)v6 _initWithTransform:&v9];

  return v7;
}

+ (id)scale:(double)scale
{
  v4 = [UITransform alloc];
  CGAffineTransformMakeScale(&v7, scale, scale);
  v5 = [(UITransform *)v4 _initWithTransform:&v7];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_5;
  }

  if (self == equalCopy)
  {
    v6 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UITransform *)self transform];
    [(UITransform *)v5 transform];
    v6 = CGAffineTransformEqualToTransform(&t1, &v8);
  }

  else
  {
LABEL_5:
    v6 = 0;
  }

LABEL_7:

  return v6;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(UITransform *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__UITransform_succinctDescriptionBuilder__block_invoke;
  v8[3] = &unk_1E70F35B8;
  v4 = v3;
  v9 = v4;
  selfCopy = self;
  v5 = [v4 modifyProem:v8];
  v6 = v4;

  return v4;
}

void __41__UITransform_succinctDescriptionBuilder__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v4 = *(v1 + 8);
  v3 = BSNSStringFromCGAffineTransform();
  [v2 appendString:v3 withName:{@"transform", v4, v5, v6}];
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(UITransform *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (CGAffineTransform)transform
{
  v3 = *&self->d;
  *&retstr->a = *&self->b;
  *&retstr->c = v3;
  *&retstr->tx = *&self->ty;
  return self;
}

@end