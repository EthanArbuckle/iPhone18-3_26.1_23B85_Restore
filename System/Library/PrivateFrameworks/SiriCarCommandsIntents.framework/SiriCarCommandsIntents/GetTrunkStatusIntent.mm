@interface GetTrunkStatusIntent
- (GetTrunkStatusIntent)init;
- (GetTrunkStatusIntent)initWithCoder:(id)coder;
@end

@implementation GetTrunkStatusIntent

- (GetTrunkStatusIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for GetTrunkStatusIntent();
  return [(GetTrunkStatusIntent *)&v3 init];
}

- (GetTrunkStatusIntent)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for GetTrunkStatusIntent();
  coderCopy = coder;
  v5 = [(GetTrunkStatusIntent *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end