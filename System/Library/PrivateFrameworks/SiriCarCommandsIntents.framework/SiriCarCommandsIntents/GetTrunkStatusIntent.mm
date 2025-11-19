@interface GetTrunkStatusIntent
- (GetTrunkStatusIntent)init;
- (GetTrunkStatusIntent)initWithCoder:(id)a3;
@end

@implementation GetTrunkStatusIntent

- (GetTrunkStatusIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for GetTrunkStatusIntent();
  return [(GetTrunkStatusIntent *)&v3 init];
}

- (GetTrunkStatusIntent)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for GetTrunkStatusIntent();
  v4 = a3;
  v5 = [(GetTrunkStatusIntent *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end