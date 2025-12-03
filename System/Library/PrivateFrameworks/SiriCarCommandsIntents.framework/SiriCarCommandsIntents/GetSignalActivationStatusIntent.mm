@interface GetSignalActivationStatusIntent
- (GetSignalActivationStatusIntent)init;
- (GetSignalActivationStatusIntent)initWithCoder:(id)coder;
@end

@implementation GetSignalActivationStatusIntent

- (GetSignalActivationStatusIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for GetSignalActivationStatusIntent();
  return [(GetSignalActivationStatusIntent *)&v3 init];
}

- (GetSignalActivationStatusIntent)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for GetSignalActivationStatusIntent();
  coderCopy = coder;
  v5 = [(GetSignalActivationStatusIntent *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end