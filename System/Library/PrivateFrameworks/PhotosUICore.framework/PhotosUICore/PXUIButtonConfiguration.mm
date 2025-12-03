@interface PXUIButtonConfiguration
+ (id)configurationWithCursorEffect:(int64_t)effect;
- (PXUIButtonConfiguration)init;
- (UIEdgeInsets)hitTestOutset;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PXUIButtonConfiguration

- (UIEdgeInsets)hitTestOutset
{
  top = self->_hitTestOutset.top;
  left = self->_hitTestOutset.left;
  bottom = self->_hitTestOutset.bottom;
  right = self->_hitTestOutset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_opt_class() allocWithZone:zone];
  v5 = *&self->_hitTestOutset.bottom;
  *(result + 1) = *&self->_hitTestOutset.top;
  *(result + 2) = v5;
  *(result + 1) = self->_cursorEffect;
  return result;
}

- (PXUIButtonConfiguration)init
{
  v4.receiver = self;
  v4.super_class = PXUIButtonConfiguration;
  result = [(PXUIButtonConfiguration *)&v4 init];
  if (result)
  {
    v3 = *(off_1E7721FA0 + 1);
    *&result->_hitTestOutset.top = *off_1E7721FA0;
    *&result->_hitTestOutset.bottom = v3;
    result->_cursorEffect = 0;
  }

  return result;
}

+ (id)configurationWithCursorEffect:(int64_t)effect
{
  v4 = objc_alloc_init(self);
  [v4 setHitTestOutset:{*off_1E7721FA8, *(off_1E7721FA8 + 1), *(off_1E7721FA8 + 2), *(off_1E7721FA8 + 3)}];
  [v4 setCursorEffect:effect];

  return v4;
}

@end