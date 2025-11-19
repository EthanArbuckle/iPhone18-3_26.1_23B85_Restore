@interface DeactivateSignalIntent
- (DeactivateSignalIntent)init;
- (DeactivateSignalIntent)initWithCoder:(id)a3;
@end

@implementation DeactivateSignalIntent

- (DeactivateSignalIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DeactivateSignalIntent();
  return [(DeactivateSignalIntent *)&v3 init];
}

- (DeactivateSignalIntent)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DeactivateSignalIntent();
  v4 = a3;
  v5 = [(DeactivateSignalIntent *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end