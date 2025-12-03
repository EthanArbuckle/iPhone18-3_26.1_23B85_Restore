@interface BKDisplayAnnotationShapeContent
+ (id)contentWithSize:(CGSize)size;
- (BOOL)isEqual:(id)equal;
- (CGSize)shapeSize;
- (NSString)description;
@end

@implementation BKDisplayAnnotationShapeContent

+ (id)contentWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v5 = objc_alloc_init(self);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [equalCopy shapeSize];
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
  build = [v3 build];

  return build;
}

@end