@interface SecureCaptureSceneExtension
+ (id)clientSettingsExtensions;
+ (id)hostComponents;
@end

@implementation SecureCaptureSceneExtension

+ (id)clientSettingsExtensions
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFBDCB0, &qword_264F15228);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_264F14DF0;
  *(v2 + 32) = type metadata accessor for SecureCaptureSessionPathSettingsExtension();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDCA8, &qword_264F15220);
  v3 = sub_264F13284();

  return v3;
}

+ (id)hostComponents
{
  if (sub_264F03C80())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDCA8, &qword_264F15220);
    v2 = sub_264F13284();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end