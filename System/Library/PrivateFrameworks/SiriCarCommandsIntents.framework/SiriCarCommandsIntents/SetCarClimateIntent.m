@interface SetCarClimateIntent
- (SetCarClimateIntent)init;
- (SetCarClimateIntent)initWithCoder:(id)a3;
@end

@implementation SetCarClimateIntent

- (SetCarClimateIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SetCarClimateIntent();
  return [(SetCarClimateIntent *)&v3 init];
}

- (SetCarClimateIntent)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SetCarClimateIntent();
  v4 = a3;
  v5 = [(SetCarClimateIntent *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end