@interface GetSignalActivationStatusIntent
- (GetSignalActivationStatusIntent)init;
- (GetSignalActivationStatusIntent)initWithCoder:(id)a3;
@end

@implementation GetSignalActivationStatusIntent

- (GetSignalActivationStatusIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for GetSignalActivationStatusIntent();
  return [(GetSignalActivationStatusIntent *)&v3 init];
}

- (GetSignalActivationStatusIntent)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for GetSignalActivationStatusIntent();
  v4 = a3;
  v5 = [(GetSignalActivationStatusIntent *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end