@interface SetCarPlayClimateIntent
- (SetCarPlayClimateIntent)init;
- (SetCarPlayClimateIntent)initWithCoder:(id)a3;
@end

@implementation SetCarPlayClimateIntent

- (SetCarPlayClimateIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SetCarPlayClimateIntent();
  return [(SetCarPlayClimateIntent *)&v3 init];
}

- (SetCarPlayClimateIntent)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SetCarPlayClimateIntent();
  v4 = a3;
  v5 = [(SetCarPlayClimateIntent *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end