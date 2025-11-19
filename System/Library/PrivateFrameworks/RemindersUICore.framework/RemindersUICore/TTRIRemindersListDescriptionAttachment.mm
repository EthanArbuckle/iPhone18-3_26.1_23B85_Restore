@interface TTRIRemindersListDescriptionAttachment
- (_TtC15RemindersUICore38TTRIRemindersListDescriptionAttachment)initWithData:(id)a3 ofType:(id)a4;
- (double)lineLayoutPadding;
- (void)setLineLayoutPadding:(double)a3;
@end

@implementation TTRIRemindersListDescriptionAttachment

- (double)lineLayoutPadding
{
  ObjectType = swift_getObjectType();
  v4 = objc_opt_self();
  v5 = self;
  v6 = [v4 defaultMetrics];
  [v6 scaledValueForValue:*(&v5->super.super.isa + OBJC_IVAR____TtC15RemindersUICore38TTRIRemindersListDescriptionAttachment_traitCollection) compatibleWithTraitCollection:1.0];
  v8 = v7;

  v12.receiver = v5;
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

- (void)setLineLayoutPadding:(double)a3
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(TTRIRemindersListDescriptionAttachment *)&v4 setLineLayoutPadding:a3];
}

- (_TtC15RemindersUICore38TTRIRemindersListDescriptionAttachment)initWithData:(id)a3 ofType:(id)a4
{
  if (a3)
  {
    v4 = a3;
    v5 = sub_21DBF551C();
    sub_21D17B8A8(v5, v6);
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end