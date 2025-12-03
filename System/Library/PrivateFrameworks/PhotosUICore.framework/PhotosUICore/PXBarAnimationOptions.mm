@interface PXBarAnimationOptions
- (PXBarAnimationOptions)initWithType:(int64_t)type;
- (PXBarAnimationOptions)initWithType:(int64_t)type duration:(double)duration;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PXBarAnimationOptions

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  type = [(PXBarAnimationOptions *)self type];
  [(PXBarAnimationOptions *)self duration];

  return [v4 initWithType:type duration:?];
}

- (PXBarAnimationOptions)initWithType:(int64_t)type duration:(double)duration
{
  v7.receiver = self;
  v7.super_class = PXBarAnimationOptions;
  result = [(PXBarAnimationOptions *)&v7 init];
  if (result)
  {
    result->_type = type;
    result->_duration = duration;
  }

  return result;
}

- (PXBarAnimationOptions)initWithType:(int64_t)type
{
  v3 = *MEMORY[0x1E69DE248];
  if (!type)
  {
    v3 = 0.0;
  }

  return [(PXBarAnimationOptions *)self initWithType:v3 duration:?];
}

@end