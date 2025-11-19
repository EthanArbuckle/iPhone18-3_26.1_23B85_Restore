@interface UITextFormattingKeyboardSession
- (UITextFormattingKeyboardSession)init;
- (id)_textFormattingResponder;
- (void)setFormattingDescriptor:(id)a3;
@end

@implementation UITextFormattingKeyboardSession

- (void)setFormattingDescriptor:(id)a3
{
  if (a3)
  {
    static UITextFormattingViewController.FormattingDescriptor._unconditionallyBridgeFromObjectiveC(_:)(a3, &v16);
    signpost_c2_entryLock_start(v4, v5);
    v31 = v22;
    v32 = v23;
    v33 = v24;
    v27 = v18;
    v28 = v19;
    v29 = v20;
    v30 = v21;
    v25 = v16;
    v26 = v17;
  }

  else
  {
    sub_189038280(&v25);
  }

  v13 = v31;
  v14 = v32;
  v15 = v33;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  v12 = v30;
  v7 = v25;
  v8 = v26;
  v6 = self;
  sub_189037110(&v7);

  v22 = v13;
  v23 = v14;
  v24 = v15;
  v18 = v9;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v16 = v7;
  v17 = v8;
  sub_188A3F5FC(&v16, &qword_1EA93A748);
}

- (id)_textFormattingResponder
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    Strong = swift_dynamicCastObjCProtocolConditional();
    if (!Strong)
    {

      Strong = 0;
    }
  }

  return Strong;
}

- (UITextFormattingKeyboardSession)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.isa + OBJC_IVAR___UITextFormattingKeyboardSession_textFormattingViewController) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(UISubstituteKeyboardSession *)&v5 init];
}

@end