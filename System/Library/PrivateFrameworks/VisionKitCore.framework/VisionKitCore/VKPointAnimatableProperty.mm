@interface VKPointAnimatableProperty
- (CGPoint)presentationValue;
- (CGPoint)value;
- (VKPointAnimatableProperty)init;
- (void)setValue:(CGPoint)value;
@end

@implementation VKPointAnimatableProperty

- (VKPointAnimatableProperty)init
{
  v8.receiver = self;
  v8.super_class = VKPointAnimatableProperty;
  v2 = [(VKPointAnimatableProperty *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DD268]);
    x = v2->_x;
    v2->_x = v3;

    v5 = objc_alloc_init(MEMORY[0x1E69DD268]);
    y = v2->_y;
    v2->_y = v5;
  }

  return v2;
}

- (void)setValue:(CGPoint)value
{
  y = value.y;
  [(UIViewFloatAnimatableProperty *)self->_x setValue:value.x];
  v5 = self->_y;

  [(UIViewFloatAnimatableProperty *)v5 setValue:y];
}

- (CGPoint)value
{
  [(UIViewFloatAnimatableProperty *)self->_x value];
  v4 = v3;
  [(UIViewFloatAnimatableProperty *)self->_y value];
  v6 = v5;
  v7 = v4;
  result.y = v6;
  result.x = v7;
  return result;
}

- (CGPoint)presentationValue
{
  [(UIViewFloatAnimatableProperty *)self->_x presentationValue];
  v4 = v3;
  [(UIViewFloatAnimatableProperty *)self->_y presentationValue];
  v6 = v5;
  v7 = v4;
  result.y = v6;
  result.x = v7;
  return result;
}

@end