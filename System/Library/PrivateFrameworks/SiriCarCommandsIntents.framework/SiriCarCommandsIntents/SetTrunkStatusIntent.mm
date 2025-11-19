@interface SetTrunkStatusIntent
- (SetTrunkStatusIntent)init;
- (SetTrunkStatusIntent)initWithCoder:(id)a3;
@end

@implementation SetTrunkStatusIntent

- (SetTrunkStatusIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SetTrunkStatusIntent();
  return [(SetTrunkStatusIntent *)&v3 init];
}

- (SetTrunkStatusIntent)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SetTrunkStatusIntent();
  v4 = a3;
  v5 = [(SetTrunkStatusIntent *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end