@interface DefaultSpamFilterSettingsController.Coordinator
- (_TtCV13CallFiltering35DefaultSpamFilterSettingsController11Coordinator)init;
- (void)canEditExtensionsDidChangeForController:(id)controller canEditExtensions:(BOOL)extensions;
@end

@implementation DefaultSpamFilterSettingsController.Coordinator

- (void)canEditExtensionsDidChangeForController:(id)controller canEditExtensions:(BOOL)extensions
{
  v6 = (type metadata accessor for DefaultSpamFilterSettingsController(0) - 8);
  v7 = *(*v6 + 64);
  __chkstk_darwin();
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(&stru_20.maxprot + (swift_isaMask & self->super.isa));
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

  sub_3A78(&qword_10960, &qword_9510);
  sub_808C();

  sub_6734(v9);
}

- (_TtCV13CallFiltering35DefaultSpamFilterSettingsController11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end