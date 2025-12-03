@interface SmartStackSuggestionSettingsWidgetProvider
- (void)extensionsDidChangeForExtensionProvider:(id)provider;
@end

@implementation SmartStackSuggestionSettingsWidgetProvider

- (void)extensionsDidChangeForExtensionProvider:(id)provider
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036BCE8, &qword_26A0AF0C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v9 - v5;
  v7 = sub_26A0AE9E4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = self;

  sub_26A0AB2EC(0, 0, v6, &unk_26A0AF188, v8);
}

@end