@interface TTRIReminderTitleTextView
- (BOOL)canBecomeFocused;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (NSString)accessibilityValue;
- (UITextInputDelegate)inputDelegate;
- (void)beginSelectionChange;
- (void)convertTextToHashtag:(id)a3;
- (void)deleteBackward;
- (void)endSelectionChange;
- (void)insertTextSuggestion:(id)a3;
- (void)layoutSubviews;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)setInputDelegate:(id)a3;
- (void)toggleBoldface:(id)a3;
- (void)toggleItalics:(id)a3;
- (void)toggleUnderline:(id)a3;
- (void)validateCommand:(id)a3;
@end

@implementation TTRIReminderTitleTextView

- (UITextInputDelegate)inputDelegate
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for TTRIReminderTitleTextView();
  v2 = [(TTRIReminderTitleTextView *)&v4 inputDelegate];

  return v2;
}

- (void)setInputDelegate:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for TTRIReminderTitleTextView();
  swift_unknownObjectRetain();
  v4 = v5.receiver;
  [(TTRIReminderTitleTextView *)&v5 setInputDelegate:a3];
  sub_21D6C6CB4();
  swift_unknownObjectRelease();
}

- (void)deleteBackward
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for TTRIReminderTitleTextView();
  v2 = v5.receiver;
  [(TTRIReminderTitleTextView *)&v5 deleteBackward];
  if ([v2 delegate])
  {
    ObjectType = swift_getObjectType();
    v4 = swift_conformsToProtocol2();
    if (v4)
    {
      (*(v4 + 80))(v2, ObjectType, v4);
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

- (void)insertTextSuggestion:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_21D6C71A8(a3);
}

- (void)toggleBoldface:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
    v5 = self;
  }

  v6 = [(TTRIReminderTitleTextView *)self selectedRange:v11];
  v8 = v7;
  if ([(TTRIReminderTitleTextView *)self delegate])
  {
    ObjectType = swift_getObjectType();
    v10 = swift_conformsToProtocol2();
    if (v10)
    {
      (*(v10 + 48))(self, v6, v8, ObjectType, v10);
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_21D0CF7E0(&v11, &qword_27CE5C690);
}

- (void)toggleItalics:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
    v5 = self;
  }

  v6 = [(TTRIReminderTitleTextView *)self selectedRange:v11];
  v8 = v7;
  if ([(TTRIReminderTitleTextView *)self delegate])
  {
    ObjectType = swift_getObjectType();
    v10 = swift_conformsToProtocol2();
    if (v10)
    {
      (*(v10 + 56))(self, v6, v8, ObjectType, v10);
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_21D0CF7E0(&v11, &qword_27CE5C690);
}

- (void)toggleUnderline:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
    v5 = self;
  }

  v6 = [(TTRIReminderTitleTextView *)self selectedRange:v11];
  v8 = v7;
  if ([(TTRIReminderTitleTextView *)self delegate])
  {
    ObjectType = swift_getObjectType();
    v10 = swift_conformsToProtocol2();
    if (v10)
    {
      (*(v10 + 64))(self, v6, v8, ObjectType, v10);
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_21D0CF7E0(&v11, &qword_27CE5C690);
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
  {
    v6 = self;
    swift_unknownObjectRetain();
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = self;
  }

  v8 = sub_21D6C7D64(a3, v10);

  sub_21D0CF7E0(v10, &qword_27CE5C690);
  return v8 & 1;
}

- (void)validateCommand:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21D6C8338(v4);
}

- (void)beginSelectionChange
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for TTRIReminderTitleTextView();
  v2 = v4.receiver;
  [(TTRIReminderTitleTextView *)&v4 beginSelectionChange];
  v3 = OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_isChangingSelection;
  swift_beginAccess();
  v2[v3] = 1;
}

- (void)endSelectionChange
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for TTRIReminderTitleTextView();
  v2 = v4.receiver;
  [(TTRIReminderTitleTextView *)&v4 endSelectionChange];
  v3 = OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_isChangingSelection;
  swift_beginAccess();
  v2[v3] = 0;
  v2[OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_needsAdjustSelectionToSelectToken] = 1;
  [v2 setNeedsLayout];
  v2[OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_needsAdjustInternalTypingAttributes] = 1;
  [v2 setNeedsLayout];
}

- (void)layoutSubviews
{
  v2 = self;
  sub_21D6C85A0();
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  sub_21D0D8CF0(0, &unk_27CE60080);
  sub_21D6AEE84();
  v6 = sub_21DBFAAAC();
  v7 = self;
  v8 = a4;
  if (![(TTRIReminderTitleTextView *)v7 delegate])
  {
    goto LABEL_8;
  }

  ObjectType = swift_getObjectType();
  v10 = swift_conformsToProtocol2();
  if (!v10)
  {
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v11 = (*(v10 + 88))(v7, v6, ObjectType, v10);
  swift_unknownObjectRelease();
  if ((v11 & 1) == 0)
  {
LABEL_8:
    v12 = sub_21DBFAA9C();

    v13.receiver = v7;
    v13.super_class = type metadata accessor for TTRIReminderTitleTextView();
    [(TTRIReminderTitleTextView *)&v13 pressesBegan:v12 withEvent:v8];

    return;
  }
}

- (NSString)accessibilityValue
{
  v2 = self;
  v3 = [(TTRIReminderTitleTextView *)v2 text];
  if (v3)
  {
    v4 = v3;
    sub_21DBFA16C();

    v5 = sub_21DBFA12C();
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (BOOL)canBecomeFocused
{
  v2 = self;
  if ([(TTRIReminderTitleTextView *)v2 isEditing])
  {

    return 1;
  }

  else if (_AXSFullKeyboardAccessEnabled())
  {
    IsHardwareKeyboardAttached = GSEventIsHardwareKeyboardAttached();

    return IsHardwareKeyboardAttached != 0;
  }

  else
  {

    return 0;
  }
}

- (void)convertTextToHashtag:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
    v5 = self;
  }

  if ([(TTRIReminderTitleTextView *)self delegate:v11])
  {
    ObjectType = swift_getObjectType();
    v7 = swift_conformsToProtocol2();
    if (v7)
    {
      v8 = v7;
      v9 = [(TTRIReminderTitleTextView *)self selectedRange];
      (*(v8 + 40))(self, v9, v10, ObjectType, v8);
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_21D0CF7E0(&v11, &qword_27CE5C690);
}

@end