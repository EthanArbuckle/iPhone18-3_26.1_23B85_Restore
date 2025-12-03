@interface DeactivateSignalIntent
- (DeactivateSignalIntent)init;
- (DeactivateSignalIntent)initWithCoder:(id)coder;
@end

@implementation DeactivateSignalIntent

- (DeactivateSignalIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DeactivateSignalIntent();
  return [(DeactivateSignalIntent *)&v3 init];
}

- (DeactivateSignalIntent)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DeactivateSignalIntent();
  coderCopy = coder;
  v5 = [(DeactivateSignalIntent *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end