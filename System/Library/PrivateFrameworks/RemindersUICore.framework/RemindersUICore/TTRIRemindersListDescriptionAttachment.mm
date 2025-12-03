@interface TTRIRemindersListDescriptionAttachment
- (_TtC15RemindersUICore38TTRIRemindersListDescriptionAttachment)initWithData:(id)data ofType:(id)type;
- (double)lineLayoutPadding;
- (void)setLineLayoutPadding:(double)padding;
@end

@implementation TTRIRemindersListDescriptionAttachment

- (double)lineLayoutPadding
{
  ObjectType = swift_getObjectType();
  v4 = objc_opt_self();
  selfCopy = self;
  defaultMetrics = [v4 defaultMetrics];
  [defaultMetrics scaledValueForValue:*(&selfCopy->super.super.isa + OBJC_IVAR____TtC15RemindersUICore38TTRIRemindersListDescriptionAttachment_traitCollection) compatibleWithTraitCollection:1.0];
  v8 = v7;

  v12.receiver = selfCopy;
  v12.super_class = ObjectType;
  [(TTRIRemindersListDescriptionAttachment *)&v12 lineLayoutPadding];
  v10 = v9;

  if (v8 > v10)
  {
    return v8;
  }

  else
  {
    return v10;
  }
}

- (void)setLineLayoutPadding:(double)padding
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(TTRIRemindersListDescriptionAttachment *)&v4 setLineLayoutPadding:padding];
}

- (_TtC15RemindersUICore38TTRIRemindersListDescriptionAttachment)initWithData:(id)data ofType:(id)type
{
  if (data)
  {
    dataCopy = data;
    v5 = sub_21DBF551C();
    sub_21D17B8A8(v5, v6);
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end