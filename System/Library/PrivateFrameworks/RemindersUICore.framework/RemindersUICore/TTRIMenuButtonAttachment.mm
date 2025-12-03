@interface TTRIMenuButtonAttachment
- (_TtC15RemindersUICore24TTRIMenuButtonAttachment)init;
- (_TtC15RemindersUICore24TTRIMenuButtonAttachment)initWithData:(id)data ofType:(id)type;
- (double)lineLayoutPadding;
- (void)setLineLayoutPadding:(double)padding;
@end

@implementation TTRIMenuButtonAttachment

- (_TtC15RemindersUICore24TTRIMenuButtonAttachment)init
{
  swift_beginAccess();
  sub_21DBF8E0C();
  v3 = sub_21DBFA12C();

  v4 = [(TTRIMenuButtonAttachment *)self initWithData:0 ofType:v3];

  return v4;
}

- (_TtC15RemindersUICore24TTRIMenuButtonAttachment)initWithData:(id)data ofType:(id)type
{
  dataCopy = data;
  if (!data)
  {
    typeCopy = type;
    v9 = 0xF000000000000000;
    if (type)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    v12 = 0;
    return TTRIMenuButtonAttachment.init(data:ofType:)(dataCopy, v9, v10, v12);
  }

  typeCopy2 = type;
  v7 = dataCopy;
  dataCopy = sub_21DBF551C();
  v9 = v8;

  if (!type)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = sub_21DBFA16C();
  v12 = v11;

  return TTRIMenuButtonAttachment.init(data:ofType:)(dataCopy, v9, v10, v12);
}

- (double)lineLayoutPadding
{
  ObjectType = swift_getObjectType();
  v4 = objc_opt_self();
  selfCopy = self;
  defaultMetrics = [v4 defaultMetrics];
  v7 = OBJC_IVAR____TtC15RemindersUICore24TTRIMenuButtonAttachment_traitCollection;
  swift_beginAccess();
  [defaultMetrics scaledValueForValue:*(&selfCopy->super.super.isa + v7) compatibleWithTraitCollection:2.0];
  v9 = v8;

  v13.receiver = selfCopy;
  v13.super_class = ObjectType;
  [(TTRIMenuButtonAttachment *)&v13 lineLayoutPadding];
  v11 = v10;

  if (v9 > v11)
  {
    return v9;
  }

  else
  {
    return v11;
  }
}

- (void)setLineLayoutPadding:(double)padding
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(TTRIMenuButtonAttachment *)&v4 setLineLayoutPadding:padding];
}

@end