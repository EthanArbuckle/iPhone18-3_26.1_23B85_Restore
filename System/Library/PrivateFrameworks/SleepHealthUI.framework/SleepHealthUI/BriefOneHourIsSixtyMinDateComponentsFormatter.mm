@interface BriefOneHourIsSixtyMinDateComponentsFormatter
- (_TtC13SleepHealthUI45BriefOneHourIsSixtyMinDateComponentsFormatter)init;
- (_TtC13SleepHealthUI45BriefOneHourIsSixtyMinDateComponentsFormatter)initWithCoder:(id)a3;
- (id)stringFromTimeInterval:(double)a3;
@end

@implementation BriefOneHourIsSixtyMinDateComponentsFormatter

- (_TtC13SleepHealthUI45BriefOneHourIsSixtyMinDateComponentsFormatter)init
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for BriefOneHourIsSixtyMinDateComponentsFormatter();
  v2 = [(ForceDoubleZerosDateComponentsFormatter *)&v4 init];
  [(NSDateComponentsFormatter *)v2 setZeroFormattingBehavior:0x10000];
  [(NSDateComponentsFormatter *)v2 setUnitsStyle:5];

  return v2;
}

- (_TtC13SleepHealthUI45BriefOneHourIsSixtyMinDateComponentsFormatter)initWithCoder:(id)a3
{
  result = sub_269D9B100();
  __break(1u);
  return result;
}

- (id)stringFromTimeInterval:(double)a3
{
  if (a3 > 3600.0)
  {
    v4 = 96;
  }

  else
  {
    v4 = 64;
  }

  v5 = self;
  [(NSDateComponentsFormatter *)v5 setAllowedUnits:v4];
  v10.receiver = v5;
  v10.super_class = type metadata accessor for BriefOneHourIsSixtyMinDateComponentsFormatter();
  v6 = [(ForceDoubleZerosDateComponentsFormatter *)&v10 stringFromTimeInterval:a3];
  if (v6)
  {
    v7 = v6;
    sub_269D9A630();

    v8 = sub_269D9A5F0();
  }

  else
  {

    v8 = 0;
  }

  return v8;
}

@end