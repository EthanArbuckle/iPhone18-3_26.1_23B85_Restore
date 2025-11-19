@interface TimerDurationFormatter
- (_TtC9WorkoutUI22TimerDurationFormatter)init;
- (_TtC9WorkoutUI22TimerDurationFormatter)initWithCoder:(id)a3;
- (id)stringFromTimeInterval:(double)a3;
@end

@implementation TimerDurationFormatter

- (id)stringFromTimeInterval:(double)a3
{
  v4 = self;
  v5 = TimerDurationFormatter.string(from:)(a3);

  if (v5.value._object)
  {
    v6 = MEMORY[0x20F30BAD0](v5.value._countAndFlagsBits, v5.value._object);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (_TtC9WorkoutUI22TimerDurationFormatter)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TimerDurationFormatter();
  return [(NSDateComponentsFormatter *)&v3 init];
}

- (_TtC9WorkoutUI22TimerDurationFormatter)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TimerDurationFormatter();
  v4 = a3;
  v5 = [(NSDateComponentsFormatter *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end