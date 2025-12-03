@interface SetCarPlaySeatSettingsIntent
- (SetCarPlaySeatSettingsIntent)init;
- (SetCarPlaySeatSettingsIntent)initWithCoder:(id)coder;
@end

@implementation SetCarPlaySeatSettingsIntent

- (SetCarPlaySeatSettingsIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SetCarPlaySeatSettingsIntent();
  return [(SetCarPlaySeatSettingsIntent *)&v3 init];
}

- (SetCarPlaySeatSettingsIntent)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SetCarPlaySeatSettingsIntent();
  coderCopy = coder;
  v5 = [(SetCarPlaySeatSettingsIntent *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end