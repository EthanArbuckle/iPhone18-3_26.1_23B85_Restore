@interface QOSAlertMessageInternal
- (QOSAlertMessageInternal)init;
- (QOSAlertMessageInternal)initWithTitle:(id)title body:(id)body;
@end

@implementation QOSAlertMessageInternal

- (QOSAlertMessageInternal)initWithTitle:(id)title body:(id)body
{
  if (!title)
  {
    v6 = 0;
    v8 = 0;
    if (body)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    v10 = 0;
    goto LABEL_6;
  }

  v6 = sub_261464930();
  v8 = v7;
  if (!body)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = sub_261464930();
LABEL_6:
  v11 = (self + OBJC_IVAR___QOSAlertMessageInternal_title);
  *v11 = v6;
  v11[1] = v8;
  v12 = (self + OBJC_IVAR___QOSAlertMessageInternal_body);
  *v12 = v9;
  v12[1] = v10;
  v14.receiver = self;
  v14.super_class = type metadata accessor for QOSAlertMessage();
  return [(QOSAlertMessageInternal *)&v14 init];
}

- (QOSAlertMessageInternal)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end