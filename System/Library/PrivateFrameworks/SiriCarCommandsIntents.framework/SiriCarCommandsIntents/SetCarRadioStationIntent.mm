@interface SetCarRadioStationIntent
- (SetCarRadioStationIntent)init;
- (SetCarRadioStationIntent)initWithCoder:(id)coder;
@end

@implementation SetCarRadioStationIntent

- (SetCarRadioStationIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SetCarRadioStationIntent();
  return [(SetCarRadioStationIntent *)&v3 init];
}

- (SetCarRadioStationIntent)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SetCarRadioStationIntent();
  coderCopy = coder;
  v5 = [(SetCarRadioStationIntent *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end