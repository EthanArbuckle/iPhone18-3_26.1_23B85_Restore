@interface STAppExceptionsController
- (NSError)connectionError;
- (STAppExceptionsController)init;
- (STExceptionClientProtocol)client;
- (id)appsAboveAgeRating;
- (id)exceptionsListChangedHandler;
- (void)deleteAppException:(id)exception completion:(id)completion;
- (void)fetchAppExceptionsWithCompletion:(id)completion;
- (void)setClient:(id)client;
- (void)setConnectionError:(id)error;
- (void)setExceptionsListChangedHandler:(id)handler;
@end

@implementation STAppExceptionsController

- (id)exceptionsListChangedHandler
{
  if (*(self + OBJC_IVAR___STAppExceptionsController_exceptionsListChangedHandler))
  {
    v2 = *(self + OBJC_IVAR___STAppExceptionsController_exceptionsListChangedHandler + 8);
    v5[4] = *(self + OBJC_IVAR___STAppExceptionsController_exceptionsListChangedHandler);
    v5[5] = v2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 1107296256;
    v5[2] = sub_264C89FD8;
    v5[3] = &block_descriptor_34;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setExceptionsListChangedHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_264CAE17C;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___STAppExceptionsController_exceptionsListChangedHandler);
  v8 = *(self + OBJC_IVAR___STAppExceptionsController_exceptionsListChangedHandler);
  *v7 = v6;
  v7[1] = v4;
  selfCopy = self;
  sub_264C88B98(v8);
}

- (NSError)connectionError
{
  v2 = *(self + OBJC_IVAR___STAppExceptionsController_connectionError);
  if (v2)
  {
    v3 = v2;
    v4 = sub_264CC2F0C();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setConnectionError:(id)error
{
  v4 = *(self + OBJC_IVAR___STAppExceptionsController_connectionError);
  *(self + OBJC_IVAR___STAppExceptionsController_connectionError) = error;
  selfCopy = self;
  errorCopy = error;
}

- (STExceptionClientProtocol)client
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setClient:(id)client
{
  *(self + OBJC_IVAR___STAppExceptionsController_client) = client;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)fetchAppExceptionsWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  _Block_copy(v4);
  selfCopy = self;
  sub_264CADB70(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)deleteAppException:(id)exception completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  exceptionCopy = exception;
  selfCopy = self;
  sub_264CADD78(exception, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (id)appsAboveAgeRating
{
  sub_264CADF90();
  sub_264C8A740(0, &qword_27FFAA250);
  v2 = sub_264CC468C();

  return v2;
}

- (STAppExceptionsController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end