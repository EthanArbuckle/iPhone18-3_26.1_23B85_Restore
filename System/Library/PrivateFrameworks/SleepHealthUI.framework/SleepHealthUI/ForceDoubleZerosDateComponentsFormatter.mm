@interface ForceDoubleZerosDateComponentsFormatter
- (_TtC13SleepHealthUI39ForceDoubleZerosDateComponentsFormatter)init;
- (_TtC13SleepHealthUI39ForceDoubleZerosDateComponentsFormatter)initWithCoder:(id)coder;
@end

@implementation ForceDoubleZerosDateComponentsFormatter

- (_TtC13SleepHealthUI39ForceDoubleZerosDateComponentsFormatter)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ForceDoubleZerosDateComponentsFormatter();
  return [(NSDateComponentsFormatter *)&v3 init];
}

- (_TtC13SleepHealthUI39ForceDoubleZerosDateComponentsFormatter)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ForceDoubleZerosDateComponentsFormatter();
  coderCopy = coder;
  v5 = [(NSDateComponentsFormatter *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end