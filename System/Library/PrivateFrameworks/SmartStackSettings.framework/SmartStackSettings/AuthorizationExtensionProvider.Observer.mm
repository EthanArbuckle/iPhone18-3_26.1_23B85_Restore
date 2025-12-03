@interface AuthorizationExtensionProvider.Observer
- (_TtCC18SmartStackSettings30AuthorizationExtensionProvider8Observer)init;
- (void)applicationsDidUninstall:(char *)uninstall;
- (void)queryControllerDidUpdate:(id)update;
@end

@implementation AuthorizationExtensionProvider.Observer

- (void)queryControllerDidUpdate:(id)update
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtCC18SmartStackSettings30AuthorizationExtensionProvider8Observer_queryHandler);
  v4 = *&self->updateHandler[OBJC_IVAR____TtCC18SmartStackSettings30AuthorizationExtensionProvider8Observer_queryHandler];
  selfCopy = self;
  v3();
}

- (void)applicationsDidUninstall:(char *)uninstall
{
  v1 = *&uninstall[OBJC_IVAR____TtCC18SmartStackSettings30AuthorizationExtensionProvider8Observer_updateHandler];
  v2 = *&uninstall[OBJC_IVAR____TtCC18SmartStackSettings30AuthorizationExtensionProvider8Observer_updateHandler + 8];
  uninstallCopy = uninstall;
  v1();
}

- (_TtCC18SmartStackSettings30AuthorizationExtensionProvider8Observer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end