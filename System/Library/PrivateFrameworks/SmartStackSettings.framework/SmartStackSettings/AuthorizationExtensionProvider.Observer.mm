@interface AuthorizationExtensionProvider.Observer
- (_TtCC18SmartStackSettings30AuthorizationExtensionProvider8Observer)init;
- (void)applicationsDidUninstall:(char *)a1;
- (void)queryControllerDidUpdate:(id)a3;
@end

@implementation AuthorizationExtensionProvider.Observer

- (void)queryControllerDidUpdate:(id)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtCC18SmartStackSettings30AuthorizationExtensionProvider8Observer_queryHandler);
  v4 = *&self->updateHandler[OBJC_IVAR____TtCC18SmartStackSettings30AuthorizationExtensionProvider8Observer_queryHandler];
  v5 = self;
  v3();
}

- (void)applicationsDidUninstall:(char *)a1
{
  v1 = *&a1[OBJC_IVAR____TtCC18SmartStackSettings30AuthorizationExtensionProvider8Observer_updateHandler];
  v2 = *&a1[OBJC_IVAR____TtCC18SmartStackSettings30AuthorizationExtensionProvider8Observer_updateHandler + 8];
  v3 = a1;
  v1();
}

- (_TtCC18SmartStackSettings30AuthorizationExtensionProvider8Observer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end