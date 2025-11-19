@interface MarketingControllerHandler
- (_TtC9SeymourUI26MarketingControllerHandler)init;
- (void)messageViewController:(id)a3 didSelectActionWithDialogResult:(id)a4;
- (void)messageViewController:(id)a3 enqueueEventWithFields:(id)a4 inTopic:(id)a5;
@end

@implementation MarketingControllerHandler

- (_TtC9SeymourUI26MarketingControllerHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)messageViewController:(id)a3 didSelectActionWithDialogResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_20BDE88F8(v6, v7);
}

- (void)messageViewController:(id)a3 enqueueEventWithFields:(id)a4 inTopic:(id)a5
{
  v8 = sub_20C13C754();
  if (a5)
  {
    v9 = sub_20C13C954();
    a5 = v10;
  }

  else
  {
    v9 = 0;
  }

  v11 = a3;
  v12 = self;
  sub_20BDE9978(v8, v9, a5);
}

@end