@interface UIViewFloatAnimatableProperty
- (UIViewFloatAnimatableProperty)init;
- (UIViewFloatAnimatableProperty)initWithView:(id)view;
- (double)presentationValue;
- (double)value;
- (double)velocity;
- (void)setValue:(double)value;
- (void)setVelocity:(double)velocity;
@end

@implementation UIViewFloatAnimatableProperty

- (UIViewFloatAnimatableProperty)init
{
  v3 = [UIAnimatablePropertyWrapper makeSwiftFloatAnimatablePropertyWithView:0];
  v6.receiver = self;
  v6.super_class = UIViewFloatAnimatableProperty;
  v4 = [(UIAnimatablePropertyWrapper *)&v6 initWithAnimatableProperty:v3];

  return v4;
}

- (double)value
{
  animatableProperty = [(UIAnimatablePropertyWrapper *)self animatableProperty];
  value = [animatableProperty value];
  [value doubleValue];
  v5 = v4;

  return v5;
}

- (double)presentationValue
{
  animatableProperty = [(UIAnimatablePropertyWrapper *)self animatableProperty];
  presentationValue = [animatableProperty presentationValue];
  [presentationValue doubleValue];
  v5 = v4;

  return v5;
}

- (double)velocity
{
  animatableProperty = [(UIAnimatablePropertyWrapper *)self animatableProperty];
  velocity = [animatableProperty velocity];
  [velocity doubleValue];
  v5 = v4;

  return v5;
}

- (UIViewFloatAnimatableProperty)initWithView:(id)view
{
  v4 = [UIAnimatablePropertyWrapper makeSwiftFloatAnimatablePropertyWithView:view];
  v7.receiver = self;
  v7.super_class = UIViewFloatAnimatableProperty;
  v5 = [(UIAnimatablePropertyWrapper *)&v7 initWithAnimatableProperty:v4];

  return v5;
}

- (void)setValue:(double)value
{
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:value];
  animatableProperty = [(UIAnimatablePropertyWrapper *)self animatableProperty];
  [animatableProperty setValue:v5];
}

- (void)setVelocity:(double)velocity
{
  animatableProperty = [(UIAnimatablePropertyWrapper *)self animatableProperty];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:velocity];
  [animatableProperty setVelocity:v4];
}

@end