@interface _UIFontPickerSceneHostingImpl
- (UIFontPickerViewController)delegateFontPickerViewController;
- (_UIFontPickerSceneHostingImpl)init;
- (void)_pickerDidCancel;
- (void)_pickerDidSelectFont:(id)a3;
- (void)clientIsReady;
- (void)setRemoteSelectedFontDescriptors:(id)a3 scrollToVisible:(BOOL)a4;
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
  v2 = self;
  sub_18917B230();
}

- (void)setRemoteSelectedFontDescriptors:(id)a3 scrollToVisible:(BOOL)a4
{
  v5 = a3;
  if (a3)
  {
    sub_188A34624(0, &qword_1EA93ECE8);
    v5 = sub_18A4A7548();
  }

  v7 = self;
  sub_18917B7C8(v5, a4);
}

- (void)_pickerDidSelectFont:(id)a3
{
  v4 = a3;
  v6 = self;
  v5 = [(_UIFontPickerSceneHostingImpl *)v6 delegateFontPickerViewController];
  [(UIFontPickerViewController *)v5 _pickerDidSelectFont:v4];
}

- (void)_pickerDidCancel
{
  v3 = self;
  v2 = [(_UIFontPickerSceneHostingImpl *)v3 delegateFontPickerViewController];
  [(UIFontPickerViewController *)v2 _pickerDidCancel];
}

- (void)clientIsReady
{
  v4 = self;
  v2 = [(_UIFontPickerSceneHostingImpl *)v4 delegateFontPickerViewController];
  if (v2)
  {
    v3 = v2;
    [(UIViewController *)v2 _endDelayingPresentation];
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