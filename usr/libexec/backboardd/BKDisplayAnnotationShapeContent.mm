@interface BKDisplayAnnotationShapeContent
+ (id)contentWithSize:(CGSize)a3;
- (BOOL)isEqual:(id)a3;
- (CGSize)shapeSize;
- (NSString)description;
@end

@implementation BKDisplayAnnotationShapeContent

+ (id)contentWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = objc_alloc_init(a1);
  [v5 setShapeSize:{width, height}];

  return v5;
}

- (CGSize)shapeSize
{
  width = self->_shapeSize.width;
  height = self->_shapeSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v4 shapeSize];
    v7 = self->_shapeSize.height == v6 && self->_shapeSize.width == v5;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  v4 = [v3 appendSize:@"shapeSize" withName:{self->_shapeSize.width, self->_shapeSize.height}];
  v5 = [v3 build];

  return v5;
}

@end