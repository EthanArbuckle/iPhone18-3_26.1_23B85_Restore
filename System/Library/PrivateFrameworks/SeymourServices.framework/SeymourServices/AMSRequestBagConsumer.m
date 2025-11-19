@interface AMSRequestBagConsumer
- (_TtC15SeymourServices21AMSRequestBagConsumer)init;
- (void)AMSURLSession:(id)a3 task:(id)a4 handleAuthenticateRequest:(id)a5 completion:(id)a6;
@end

@implementation AMSRequestBagConsumer

- (_TtC15SeymourServices21AMSRequestBagConsumer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)AMSURLSession:(id)a3 task:(id)a4 handleAuthenticateRequest:(id)a5 completion:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = self;
  sub_2273D1898(v14, sub_2273D1890, v11);
}

@end