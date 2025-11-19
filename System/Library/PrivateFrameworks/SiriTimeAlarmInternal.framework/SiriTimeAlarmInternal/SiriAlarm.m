@interface SiriAlarm
- (BOOL)isEqual:(id)a3;
- (SiriAlarm)initWithCoder:(id)a3;
- (SiriAlarm)initWithIdentifier:(id)a3 displayString:(id)a4 pronunciationHint:(id)a5;
@end

@implementation SiriAlarm

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_2692C7AD0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = SiriAlarm.isEqual(_:)(v8);

  sub_26927CEA8(v8, &qword_280302CD0, &unk_2692CAE00);
  return v6 & 1;
}

- (SiriAlarm)initWithIdentifier:(id)a3 displayString:(id)a4 pronunciationHint:(id)a5
{
  if (a3)
  {
    v6 = sub_2692C7830();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = sub_2692C7830();
  v11 = v10;
  if (a5)
  {
    v12 = sub_2692C7830();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  return SiriAlarm.init(identifier:display:pronunciationHint:)(v6, v8, v9, v11, v12, v14);
}

- (SiriAlarm)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SiriAlarm();
  v4 = a3;
  v5 = [(SiriAlarm *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end