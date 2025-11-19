@interface RTIMessageConsumer
- (_TtC16ScreenSharingKit18RTIMessageConsumer)init;
- (void)inputSystemService:(id)a3 didCreateInputSession:(id)a4;
- (void)inputSystemService:(id)a3 inputSession:(id)a4 documentStateDidChange:(id)a5;
- (void)inputSystemService:(id)a3 inputSessionDidBegin:(id)a4;
@end

@implementation RTIMessageConsumer

- (_TtC16ScreenSharingKit18RTIMessageConsumer)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)inputSystemService:(id)a3 didCreateInputSession:(id)a4
{
  v5 = a3;
  v6 = a4;

  sub_264A693FC(a4);
}

- (void)inputSystemService:(id)a3 inputSessionDidBegin:(id)a4
{
  v5 = a3;
  v6 = a4;

  sub_264A69594(v6);
}

- (void)inputSystemService:(id)a3 inputSession:(id)a4 documentStateDidChange:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;

  sub_264A69B10(a4);
}

@end