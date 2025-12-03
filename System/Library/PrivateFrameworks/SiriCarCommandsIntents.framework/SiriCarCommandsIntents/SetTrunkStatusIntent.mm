@interface SetTrunkStatusIntent
- (SetTrunkStatusIntent)init;
- (SetTrunkStatusIntent)initWithCoder:(id)coder;
@end

@implementation SetTrunkStatusIntent

- (SetTrunkStatusIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SetTrunkStatusIntent();
  return [(SetTrunkStatusIntent *)&v3 init];
}

- (SetTrunkStatusIntent)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SetTrunkStatusIntent();
  coderCopy = coder;
  v5 = [(SetTrunkStatusIntent *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end