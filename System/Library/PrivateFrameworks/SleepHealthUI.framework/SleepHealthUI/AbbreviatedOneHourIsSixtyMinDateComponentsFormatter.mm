@interface AbbreviatedOneHourIsSixtyMinDateComponentsFormatter
- (_TtC13SleepHealthUI51AbbreviatedOneHourIsSixtyMinDateComponentsFormatter)init;
@end

@implementation AbbreviatedOneHourIsSixtyMinDateComponentsFormatter

- (_TtC13SleepHealthUI51AbbreviatedOneHourIsSixtyMinDateComponentsFormatter)init
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for AbbreviatedOneHourIsSixtyMinDateComponentsFormatter();
  v2 = [(BriefOneHourIsSixtyMinDateComponentsFormatter *)&v4 init];
  [(NSDateComponentsFormatter *)v2 setUnitsStyle:1];
  [(NSDateComponentsFormatter *)v2 setAllowedUnits:96];

  return v2;
}

@end