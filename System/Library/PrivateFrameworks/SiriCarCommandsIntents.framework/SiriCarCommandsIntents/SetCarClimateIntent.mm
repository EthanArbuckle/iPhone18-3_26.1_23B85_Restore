@interface SetCarClimateIntent
- (SetCarClimateIntent)init;
- (SetCarClimateIntent)initWithCoder:(id)coder;
@end

@implementation SetCarClimateIntent

- (SetCarClimateIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SetCarClimateIntent();
  return [(SetCarClimateIntent *)&v3 init];
}

- (SetCarClimateIntent)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SetCarClimateIntent();
  coderCopy = coder;
  v5 = [(SetCarClimateIntent *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end