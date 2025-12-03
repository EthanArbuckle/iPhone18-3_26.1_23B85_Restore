@interface TonePicker.Delegate
- (_TtCV16_ToneKit_SwiftUI10TonePicker8Delegate)init;
- (void)tonePickerController:(id)controller selectedToneWithIdentifier:(id)identifier;
- (void)tonePickerControllerDidReloadTones:(id)tones;
@end

@implementation TonePicker.Delegate

- (void)tonePickerControllerDidReloadTones:(id)tones
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtCV16_ToneKit_SwiftUI10TonePicker8Delegate_onTonesReload);
  if (v3)
  {
    v4 = *&self->onTonesReload[OBJC_IVAR____TtCV16_ToneKit_SwiftUI10TonePicker8Delegate_onTonesReload];
    selfCopy = self;
    v6 = sub_275497154(v3);
    v3(v6);

    sub_275496B70(v3);
  }
}

- (void)tonePickerController:(id)controller selectedToneWithIdentifier:(id)identifier
{
  if (identifier)
  {
    v5 = sub_2754983D8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = *(&self->super.isa + OBJC_IVAR____TtCV16_ToneKit_SwiftUI10TonePicker8Delegate_onToneSelected);
  if (v8)
  {
    v9 = *&self->onTonesReload[OBJC_IVAR____TtCV16_ToneKit_SwiftUI10TonePicker8Delegate_onToneSelected];
    selfCopy = self;
    sub_275497154(v8);
    v8(v5, v7);

    sub_275496B70(v8);
  }

  else
  {
  }
}

- (_TtCV16_ToneKit_SwiftUI10TonePicker8Delegate)init
{
  v3 = (&self->super.isa + OBJC_IVAR____TtCV16_ToneKit_SwiftUI10TonePicker8Delegate_onTonesReload);
  *v3 = 0;
  v3[1] = 0;
  v4 = (&self->super.isa + OBJC_IVAR____TtCV16_ToneKit_SwiftUI10TonePicker8Delegate_onToneUpdatedCheckedStatus);
  *v4 = 0;
  v4[1] = 0;
  v5 = (&self->super.isa + OBJC_IVAR____TtCV16_ToneKit_SwiftUI10TonePicker8Delegate_onToneSelected);
  v6 = _s8DelegateCMa();
  *v5 = 0;
  v5[1] = 0;
  v8.receiver = self;
  v8.super_class = v6;
  return [(TonePicker.Delegate *)&v8 init];
}

@end