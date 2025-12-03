@interface _UITextFormattingViewControllerDelegateBox
- (BOOL)textFormattingViewController:(id)controller shouldPresentColorPicker:(id)picker;
- (BOOL)textFormattingViewController:(id)controller shouldPresentFontPicker:(id)picker;
- (_TtC5UIKitP33_B50EEBA0FD25BA8C617D8B9D7A7CF9F242_UITextFormattingViewControllerDelegateBox)init;
- (id)_disabledComponentsForTextFormattingViewController:(id)controller;
- (void)_didFinishColorPickingForTextFormattingViewController:(id)controller;
- (void)_didFinishFontPickingForTextFormattingViewController:(id)controller;
- (void)textFormattingDidFinish:(id)finish;
- (void)textFormattingViewController:(id)controller didChangeValue:(id)value;
@end

@implementation _UITextFormattingViewControllerDelegateBox

- (void)textFormattingViewController:(id)controller didChangeValue:(id)value
{
  controllerCopy = controller;
  valueCopy = value;
  selfCopy = self;
  sub_189237974(controllerCopy, valueCopy);
}

- (BOOL)textFormattingViewController:(id)controller shouldPresentFontPicker:(id)picker
{
  v7 = self + OBJC_IVAR____TtC5UIKitP33_B50EEBA0FD25BA8C617D8B9D7A7CF9F242_UITextFormattingViewControllerDelegateBox_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 1);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 16);
    controllerCopy = controller;
    pickerCopy = picker;
    selfCopy = self;
    v14 = v10(controllerCopy, pickerCopy, ObjectType, v8);
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

- (BOOL)textFormattingViewController:(id)controller shouldPresentColorPicker:(id)picker
{
  v7 = self + OBJC_IVAR____TtC5UIKitP33_B50EEBA0FD25BA8C617D8B9D7A7CF9F242_UITextFormattingViewControllerDelegateBox_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 1);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 24);
    controllerCopy = controller;
    pickerCopy = picker;
    selfCopy = self;
    v14 = v10(controllerCopy, pickerCopy, ObjectType, v8);
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

- (void)textFormattingDidFinish:(id)finish
{
  v5 = self + OBJC_IVAR____TtC5UIKitP33_B50EEBA0FD25BA8C617D8B9D7A7CF9F242_UITextFormattingViewControllerDelegateBox_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 32);
    finishCopy = finish;
    selfCopy = self;
    v8(finishCopy, ObjectType, v6);
    swift_unknownObjectRelease();
  }
}

- (id)_disabledComponentsForTextFormattingViewController:(id)controller
{
  v5 = self + OBJC_IVAR____TtC5UIKitP33_B50EEBA0FD25BA8C617D8B9D7A7CF9F242_UITextFormattingViewControllerDelegateBox_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 40);
    controllerCopy = controller;
    selfCopy = self;
    v8(controllerCopy, ObjectType, v6);

    swift_unknownObjectRelease();
  }

  type metadata accessor for ComponentKey(0);
  sub_1892385A4();
  v11 = sub_18A4A7798();

  return v11;
}

- (void)_didFinishFontPickingForTextFormattingViewController:(id)controller
{
  v5 = self + OBJC_IVAR____TtC5UIKitP33_B50EEBA0FD25BA8C617D8B9D7A7CF9F242_UITextFormattingViewControllerDelegateBox_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 48);
    controllerCopy = controller;
    selfCopy = self;
    v8(controllerCopy, ObjectType, v6);
    swift_unknownObjectRelease();
  }
}

- (void)_didFinishColorPickingForTextFormattingViewController:(id)controller
{
  v5 = self + OBJC_IVAR____TtC5UIKitP33_B50EEBA0FD25BA8C617D8B9D7A7CF9F242_UITextFormattingViewControllerDelegateBox_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 56);
    controllerCopy = controller;
    selfCopy = self;
    v8(controllerCopy, ObjectType, v6);
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