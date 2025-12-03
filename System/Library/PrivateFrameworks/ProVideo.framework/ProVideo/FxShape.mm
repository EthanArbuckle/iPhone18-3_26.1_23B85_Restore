@interface FxShape
+ (id)infiniteShape;
+ (id)shapeWithRect:(CGRect)rect;
- (CGRect)extent;
- (FxShape)initWithInfiniteBounds;
- (FxShape)initWithRect:(CGRect)rect;
- (id)intersectWithShape:(id)shape;
- (void)dealloc;
@end

@implementation FxShape

+ (id)infiniteShape
{
  initWithInfiniteBounds = [objc_alloc(objc_opt_class()) initWithInfiniteBounds];

  return initWithInfiniteBounds;
}

+ (id)shapeWithRect:(CGRect)rect
{
  v3 = [objc_alloc(objc_opt_class()) initWithRect:{rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];

  return v3;
}

- (FxShape)initWithRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v10.receiver = self;
  v10.super_class = FxShape;
  v7 = [(FxShape *)&v10 init];
  if (v7)
  {
    v8 = malloc_type_calloc(1uLL, 0x28uLL, 0x100004074F221ECuLL);
    v7->_priv = v8;
    if (v8)
    {
      v8->var0.origin.x = x;
      v8->var0.origin.y = y;
      v8->var0.size.width = width;
      v8->var0.size.height = height;
      v8->var1 = 0;
    }
  }

  return v7;
}

- (FxShape)initWithInfiniteBounds
{
  v6.receiver = self;
  v6.super_class = FxShape;
  v2 = [(FxShape *)&v6 init];
  if (v2)
  {
    v3 = malloc_type_calloc(1uLL, 0x28uLL, 0x100004074F221ECuLL);
    v2->_priv = v3;
    if (v3)
    {
      v4 = *(MEMORY[0x277CBF398] + 16);
      v3->var0.origin = *MEMORY[0x277CBF398];
      v3->var0.size = v4;
      v2->_priv->var1 = 1;
    }
  }

  return v2;
}

- (void)dealloc
{
  FxDebugAssert(self->_priv != 0, &cfstr_PrivNull.isa, v2, v3, v4, v5, v6, v7, v9.receiver);
  free(self->_priv);
  v9.receiver = self;
  v9.super_class = FxShape;
  [(FxShape *)&v9 dealloc];
}

- (CGRect)extent
{
  priv = self->_priv;
  if (priv->var1)
  {
    width = 3.40282347e38;
    y = -1.70141173e38;
    x = -1.70141173e38;
    height = 3.40282347e38;
  }

  else
  {
    x = priv->var0.origin.x;
    y = priv->var0.origin.y;
    width = priv->var0.size.width;
    height = priv->var0.size.height;
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)intersectWithShape:(id)shape
{
  if (shape)
  {
    v3 = *(self + 1);
    [shape extent];
    v10.origin.x = v4;
    v10.origin.y = v5;
    v10.size.width = v6;
    v10.size.height = v7;
    v9 = CGRectIntersection(*v3, v10);

    return [FxShape shapeWithRect:v9.origin.x, v9.origin.y, v9.size.width, v9.size.height];
  }

  return self;
}

@end