@interface AMSRequestBagConsumer
- (_TtC15SeymourServices21AMSRequestBagConsumer)init;
- (void)AMSURLSession:(id)session task:(id)task handleAuthenticateRequest:(id)request completion:(id)completion;
@end

@implementation AMSRequestBagConsumer

- (_TtC15SeymourServices21AMSRequestBagConsumer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)AMSURLSession:(id)session task:(id)task handleAuthenticateRequest:(id)request completion:(id)completion
{
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  sessionCopy = session;
  taskCopy = task;
  requestCopy = request;
  selfCopy = self;
  sub_2273D1898(requestCopy, sub_2273D1890, v11);
}

@end