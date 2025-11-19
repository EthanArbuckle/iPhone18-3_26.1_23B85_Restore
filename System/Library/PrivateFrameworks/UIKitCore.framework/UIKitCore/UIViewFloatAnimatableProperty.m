@interface UIViewFloatAnimatableProperty
- (UIViewFloatAnimatableProperty)init;
- (UIViewFloatAnimatableProperty)initWithView:(id)a3;
- (double)presentationValue;
- (double)value;
- (double)velocity;
- (void)setValue:(double)a3;
- (void)setVelocity:(double)a3;
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
  v2 = [(UIAnimatablePropertyWrapper *)self animatableProperty];
  v3 = [v2 value];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (double)presentationValue
{
  v2 = [(UIAnimatablePropertyWrapper *)self animatableProperty];
  v3 = [v2 presentationValue];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (double)velocity
{
  v2 = [(UIAnimatablePropertyWrapper *)self animatableProperty];
  v3 = [v2 velocity];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (UIViewFloatAnimatableProperty)initWithView:(id)a3
{
  v4 = [UIAnimatablePropertyWrapper makeSwiftFloatAnimatablePropertyWithView:a3];
  v7.receiver = self;
  v7.super_class = UIViewFloatAnimatableProperty;
  v5 = [(UIAnimatablePropertyWrapper *)&v7 initWithAnimatableProperty:v4];

  return v5;
}

- (void)setValue:(double)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v4 = [(UIAnimatablePropertyWrapper *)self animatableProperty];
  [v4 setValue:v5];
}

- (void)setVelocity:(double)a3
{
  v5 = [(UIAnimatablePropertyWrapper *)self animatableProperty];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [v5 setVelocity:v4];
}

@end