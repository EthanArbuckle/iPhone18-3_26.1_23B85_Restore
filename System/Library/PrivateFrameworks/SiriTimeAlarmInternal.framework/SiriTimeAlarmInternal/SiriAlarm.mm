@interface SiriAlarm
- (BOOL)isEqual:(id)equal;
- (SiriAlarm)initWithCoder:(id)coder;
- (SiriAlarm)initWithIdentifier:(id)identifier displayString:(id)string pronunciationHint:(id)hint;
@end

@implementation SiriAlarm

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_2692C7AD0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = SiriAlarm.isEqual(_:)(v8);

  sub_26927CEA8(v8, &qword_280302CD0, &unk_2692CAE00);
  return v6 & 1;
}

- (SiriAlarm)initWithIdentifier:(id)identifier displayString:(id)string pronunciationHint:(id)hint
{
  if (identifier)
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
  if (hint)
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

- (SiriAlarm)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SiriAlarm();
  coderCopy = coder;
  v5 = [(SiriAlarm *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end