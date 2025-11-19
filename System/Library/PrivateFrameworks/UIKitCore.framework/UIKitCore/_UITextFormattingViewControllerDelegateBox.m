@interface _UITextFormattingViewControllerDelegateBox
- (BOOL)textFormattingViewController:(id)a3 shouldPresentColorPicker:(id)a4;
- (BOOL)textFormattingViewController:(id)a3 shouldPresentFontPicker:(id)a4;
- (_TtC5UIKitP33_B50EEBA0FD25BA8C617D8B9D7A7CF9F242_UITextFormattingViewControllerDelegateBox)init;
- (id)_disabledComponentsForTextFormattingViewController:(id)a3;
- (void)_didFinishColorPickingForTextFormattingViewController:(id)a3;
- (void)_didFinishFontPickingForTextFormattingViewController:(id)a3;
- (void)textFormattingDidFinish:(id)a3;
- (void)textFormattingViewController:(id)a3 didChangeValue:(id)a4;
@end

@implementation _UITextFormattingViewControllerDelegateBox

- (void)textFormattingViewController:(id)a3 didChangeValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_189237974(v6, v7);
}

- (BOOL)textFormattingViewController:(id)a3 shouldPresentFontPicker:(id)a4
{
  v7 = self + OBJC_IVAR____TtC5UIKitP33_B50EEBA0FD25BA8C617D8B9D7A7CF9F242_UITextFormattingViewControllerDelegateBox_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 1);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 16);
    v11 = a3;
    v12 = a4;
    v13 = self;
    v14 = v10(v11, v12, ObjectType, v8);
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

- (BOOL)textFormattingViewController:(id)a3 shouldPresentColorPicker:(id)a4
{
  v7 = self + OBJC_IVAR____TtC5UIKitP33_B50EEBA0FD25BA8C617D8B9D7A7CF9F242_UITextFormattingViewControllerDelegateBox_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 1);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 24);
    v11 = a3;
    v12 = a4;
    v13 = self;
    v14 = v10(v11, v12, ObjectType, v8);
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

- (void)textFormattingDidFinish:(id)a3
{
  v5 = self + OBJC_IVAR____TtC5UIKitP33_B50EEBA0FD25BA8C617D8B9D7A7CF9F242_UITextFormattingViewControllerDelegateBox_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 32);
    v9 = a3;
    v10 = self;
    v8(v9, ObjectType, v6);
    swift_unknownObjectRelease();
  }
}

- (id)_disabledComponentsForTextFormattingViewController:(id)a3
{
  v5 = self + OBJC_IVAR____TtC5UIKitP33_B50EEBA0FD25BA8C617D8B9D7A7CF9F242_UITextFormattingViewControllerDelegateBox_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 40);
    v9 = a3;
    v10 = self;
    v8(v9, ObjectType, v6);

    swift_unknownObjectRelease();
  }

  type metadata accessor for ComponentKey(0);
  sub_1892385A4();
  v11 = sub_18A4A7798();

  return v11;
}

- (void)_didFinishFontPickingForTextFormattingViewController:(id)a3
{
  v5 = self + OBJC_IVAR____TtC5UIKitP33_B50EEBA0FD25BA8C617D8B9D7A7CF9F242_UITextFormattingViewControllerDelegateBox_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 48);
    v9 = a3;
    v10 = self;
    v8(v9, ObjectType, v6);
    swift_unknownObjectRelease();
  }
}

- (void)_didFinishColorPickingForTextFormattingViewController:(id)a3
{
  v5 = self + OBJC_IVAR____TtC5UIKitP33_B50EEBA0FD25BA8C617D8B9D7A7CF9F242_UITextFormattingViewControllerDelegateBox_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 56);
    v9 = a3;
    v10 = self;
    v8(v9, ObjectType, v6);
    swift_unknownObjectRelease();
  }
}

- (_TtC5UIKitP33_B50EEBA0FD25BA8C617D8B9D7A7CF9F242_UITextFormattingViewControllerDelegateBox)init
{
  *&self->delegate[OBJC_IVAR____TtC5UIKitP33_B50EEBA0FD25BA8C617D8B9D7A7CF9F242_UITextFormattingViewControllerDelegateBox_delegate] = 0;
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for _UITextFormattingViewControllerDelegateBox();
  return [(_UITextFormattingViewControllerDelegateBox *)&v4 init];
}

@end