@interface _LinkActionExecutorDelegate
- (_TtC26VisualActionPredictionCoreP33_610E6787A62CF717964A8E858C6CA80327_LinkActionExecutorDelegate)init;
- (void)executor:(id)executor didCompleteExecutionWithResult:(id)result error:(id)error;
- (void)executor:(id)executor needsConfirmationWithRequest:(id)request;
- (void)executor:(id)executor needsDisambiguationWithRequest:(id)request;
- (void)executor:(id)executor needsValueWithRequest:(id)request;
@end

@implementation _LinkActionExecutorDelegate

- (_TtC26VisualActionPredictionCoreP33_610E6787A62CF717964A8E858C6CA80327_LinkActionExecutorDelegate)init
{
  ObjectType = swift_getObjectType();
  sub_22634F99C();
  v4 = OBJC_IVAR____TtC26VisualActionPredictionCoreP33_610E6787A62CF717964A8E858C6CA80327_LinkActionExecutorDelegate_continuation;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793960, &qword_226354820);
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(_LinkActionExecutorDelegate *)&v7 init];
}

- (void)executor:(id)executor didCompleteExecutionWithResult:(id)result error:(id)error
{
  executorCopy = executor;
  resultCopy = result;
  selfCopy = self;
  errorCopy = error;
  sub_226315894(result, error);
}

- (void)executor:(id)executor needsValueWithRequest:(id)request
{
  executorCopy = executor;
  requestCopy = request;
  selfCopy = self;
  sub_226315ACC(requestCopy, 2);
}

- (void)executor:(id)executor needsDisambiguationWithRequest:(id)request
{
  executorCopy = executor;
  requestCopy = request;
  selfCopy = self;
  sub_226315ACC(requestCopy, 3);
}

- (void)executor:(id)executor needsConfirmationWithRequest:(id)request
{
  executorCopy = executor;
  requestCopy = request;
  selfCopy = self;
  sub_226315ACC(requestCopy, 4);
}

@end