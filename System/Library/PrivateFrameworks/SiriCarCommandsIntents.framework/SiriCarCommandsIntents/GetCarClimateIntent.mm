@interface GetCarClimateIntent
- (GetCarClimateIntent)init;
- (GetCarClimateIntent)initWithCoder:(id)a3;
@end

@implementation GetCarClimateIntent

- (GetCarClimateIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for GetCarClimateIntent();
  return [(GetCarClimateIntent *)&v3 init];
}

- (GetCarClimateIntent)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for GetCarClimateIntent();
  v4 = a3;
  v5 = [(GetCarClimateIntent *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end