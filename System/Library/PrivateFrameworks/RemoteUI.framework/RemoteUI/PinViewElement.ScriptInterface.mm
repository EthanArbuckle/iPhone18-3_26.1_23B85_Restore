@interface PinViewElement.ScriptInterface
- (NSString)id;
- (NSString)value;
- (_TtCV8RemoteUI14PinViewElement15ScriptInterface)init;
- (id)getAttribute:(id)attribute;
@end

@implementation PinViewElement.ScriptInterface

- (NSString)id
{

  v2 = sub_21BA87C8C();

  return v2;
}

- (NSString)value
{
  v3 = *&self->valueBinding[OBJC_IVAR____TtCV8RemoteUI14PinViewElement15ScriptInterface_valueBinding];
  v2 = *&self->valueBinding[OBJC_IVAR____TtCV8RemoteUI14PinViewElement15ScriptInterface_valueBinding + 8];
  v8 = *(&self->super.isa + OBJC_IVAR____TtCV8RemoteUI14PinViewElement15ScriptInterface_valueBinding);
  v9 = v3;
  v10 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD9D190);
  MEMORY[0x21CEFCD90](&v7, v4);
  v5 = sub_21BA87C8C();

  return v5;
}

- (id)getAttribute:(id)attribute
{
  v4 = sub_21BA87CBC();
  v6 = v5;
  selfCopy = self;
  sub_21B9F4914(v4, v6);
  v9 = v8;

  if (v9)
  {
    v10 = sub_21BA87C8C();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (_TtCV8RemoteUI14PinViewElement15ScriptInterface)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end