@interface SetCarPlaySeatSettingsIntent
- (SetCarPlaySeatSettingsIntent)init;
- (SetCarPlaySeatSettingsIntent)initWithCoder:(id)a3;
@end

@implementation SetCarPlaySeatSettingsIntent

- (SetCarPlaySeatSettingsIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SetCarPlaySeatSettingsIntent();
  return [(SetCarPlaySeatSettingsIntent *)&v3 init];
}

- (SetCarPlaySeatSettingsIntent)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SetCarPlaySeatSettingsIntent();
  v4 = a3;
  v5 = [(SetCarPlaySeatSettingsIntent *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end