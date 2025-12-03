@interface DefaultSpamFilterSettingsController.Coordinator
- (_TtCV20TelephonyPreferences35DefaultSpamFilterSettingsController11Coordinator)init;
- (void)canEditExtensionsDidChangeForController:(id)controller canEditExtensions:(BOOL)extensions;
@end

@implementation DefaultSpamFilterSettingsController.Coordinator

- (void)canEditExtensionsDidChangeForController:(id)controller canEditExtensions:(BOOL)extensions
{
  v6 = (type metadata accessor for DefaultSpamFilterSettingsController(0) - 8);
  v7 = *(*v6 + 64);
  MEMORY[0x28223BE20]();
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x58);
  selfCopy = self;
  v10();
  v12 = &v9[v6[7]];
  v13 = *v12;
  v14 = *(v12 + 1);
  LOBYTE(v12) = v12[16];
  v16 = v13;
  v17 = v14;
  v18 = v12;
  v15[7] = extensions;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9AD30, &qword_21B923740);
  sub_21B91E69C();

  sub_21B91BD48(v9);
}

- (_TtCV20TelephonyPreferences35DefaultSpamFilterSettingsController11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end