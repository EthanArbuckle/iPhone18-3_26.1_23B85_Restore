@interface PXBarAnimationOptions
- (PXBarAnimationOptions)initWithType:(int64_t)a3;
- (PXBarAnimationOptions)initWithType:(int64_t)a3 duration:(double)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PXBarAnimationOptions

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(PXBarAnimationOptions *)self type];
  [(PXBarAnimationOptions *)self duration];

  return [v4 initWithType:v5 duration:?];
}

- (PXBarAnimationOptions)initWithType:(int64_t)a3 duration:(double)a4
{
  v7.receiver = self;
  v7.super_class = PXBarAnimationOptions;
  result = [(PXBarAnimationOptions *)&v7 init];
  if (result)
  {
    result->_type = a3;
    result->_duration = a4;
  }

  return result;
}

- (PXBarAnimationOptions)initWithType:(int64_t)a3
{
  v3 = *MEMORY[0x1E69DE248];
  if (!a3)
  {
    v3 = 0.0;
  }

  return [(PXBarAnimationOptions *)self initWithType:v3 duration:?];
}

@end