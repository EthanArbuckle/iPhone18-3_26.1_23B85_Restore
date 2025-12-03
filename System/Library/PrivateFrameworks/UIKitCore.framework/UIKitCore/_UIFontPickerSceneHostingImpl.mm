@interface _UIFontPickerSceneHostingImpl
- (UIFontPickerViewController)delegateFontPickerViewController;
- (_UIFontPickerSceneHostingImpl)init;
- (void)_pickerDidCancel;
- (void)_pickerDidSelectFont:(id)font;
- (void)clientIsReady;
- (void)setRemoteSelectedFontDescriptors:(id)descriptors scrollToVisible:(BOOL)visible;
- (void)setupRemoteHosting;
@end

@implementation _UIFontPickerSceneHostingImpl

- (UIFontPickerViewController)delegateFontPickerViewController
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setupRemoteHosting
{
  selfCopy = self;
  sub_18917B230();
}

- (void)setRemoteSelectedFontDescriptors:(id)descriptors scrollToVisible:(BOOL)visible
{
  descriptorsCopy = descriptors;
  if (descriptors)
  {
    sub_188A34624(0, &qword_1EA93ECE8);
    descriptorsCopy = sub_18A4A7548();
  }

  selfCopy = self;
  sub_18917B7C8(descriptorsCopy, visible);
}

- (void)_pickerDidSelectFont:(id)font
{
  fontCopy = font;
  selfCopy = self;
  delegateFontPickerViewController = [(_UIFontPickerSceneHostingImpl *)selfCopy delegateFontPickerViewController];
  [(UIFontPickerViewController *)delegateFontPickerViewController _pickerDidSelectFont:fontCopy];
}

- (void)_pickerDidCancel
{
  selfCopy = self;
  delegateFontPickerViewController = [(_UIFontPickerSceneHostingImpl *)selfCopy delegateFontPickerViewController];
  [(UIFontPickerViewController *)delegateFontPickerViewController _pickerDidCancel];
}

- (void)clientIsReady
{
  selfCopy = self;
  delegateFontPickerViewController = [(_UIFontPickerSceneHostingImpl *)selfCopy delegateFontPickerViewController];
  if (delegateFontPickerViewController)
  {
    v3 = delegateFontPickerViewController;
    [(UIViewController *)delegateFontPickerViewController _endDelayingPresentation];
  }
}

- (_UIFontPickerSceneHostingImpl)init
{
  *(self + OBJC_IVAR____UIFontPickerSceneHostingImpl_hostingController) = 0;
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = _UIFontPickerSceneHostingImpl;
  return [(_UIFontPickerSceneHostingImpl *)&v4 init];
}

@end