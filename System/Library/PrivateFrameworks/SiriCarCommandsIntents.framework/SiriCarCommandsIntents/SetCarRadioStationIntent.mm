@interface SetCarRadioStationIntent
- (SetCarRadioStationIntent)init;
- (SetCarRadioStationIntent)initWithCoder:(id)a3;
@end

@implementation SetCarRadioStationIntent

- (SetCarRadioStationIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SetCarRadioStationIntent();
  return [(SetCarRadioStationIntent *)&v3 init];
}

- (SetCarRadioStationIntent)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SetCarRadioStationIntent();
  v4 = a3;
  v5 = [(SetCarRadioStationIntent *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end