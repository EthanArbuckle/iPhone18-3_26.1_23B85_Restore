@interface AccountModel
- (_TtC9PassKitUI12AccountModel)init;
- (void)dealloc;
- (void)foregroundActiveArbiter:(id)a3 didUpdateForegroundActiveState:(id)a4;
@end

@implementation AccountModel

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC9PassKitUI12AccountModel_accountService);
  if (v4)
  {
    [v4 unregisterObserver_];
  }

  else
  {
    v5 = self;
  }

  v6.receiver = self;
  v6.super_class = ObjectType;
  [(AccountModel *)&v6 dealloc];
}

- (void)foregroundActiveArbiter:(id)a3 didUpdateForegroundActiveState:(id)a4
{
  swift_unknownObjectRetain();
  v6 = self;
  sub_1BD1E1538(*&a4 & 0x101);
  swift_unknownObjectRelease();
}

- (_TtC9PassKitUI12AccountModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end