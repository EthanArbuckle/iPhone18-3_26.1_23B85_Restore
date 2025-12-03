@interface GetCarClimateIntent
- (GetCarClimateIntent)init;
- (GetCarClimateIntent)initWithCoder:(id)coder;
@end

@implementation GetCarClimateIntent

- (GetCarClimateIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for GetCarClimateIntent();
  return [(GetCarClimateIntent *)&v3 init];
}

- (GetCarClimateIntent)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for GetCarClimateIntent();
  coderCopy = coder;
  v5 = [(GetCarClimateIntent *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end