@interface TimerDurationFormatter
- (_TtC9WorkoutUI22TimerDurationFormatter)init;
- (_TtC9WorkoutUI22TimerDurationFormatter)initWithCoder:(id)coder;
- (id)stringFromTimeInterval:(double)interval;
@end

@implementation TimerDurationFormatter

- (id)stringFromTimeInterval:(double)interval
{
  selfCopy = self;
  v5 = TimerDurationFormatter.string(from:)(interval);

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

- (_TtC9WorkoutUI22TimerDurationFormatter)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TimerDurationFormatter();
  coderCopy = coder;
  v5 = [(NSDateComponentsFormatter *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end