@interface SetCarPlayClimateIntent
- (SetCarPlayClimateIntent)init;
- (SetCarPlayClimateIntent)initWithCoder:(id)coder;
@end

@implementation SetCarPlayClimateIntent

- (SetCarPlayClimateIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SetCarPlayClimateIntent();
  return [(SetCarPlayClimateIntent *)&v3 init];
}

- (SetCarPlayClimateIntent)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SetCarPlayClimateIntent();
  coderCopy = coder;
  v5 = [(SetCarPlayClimateIntent *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end