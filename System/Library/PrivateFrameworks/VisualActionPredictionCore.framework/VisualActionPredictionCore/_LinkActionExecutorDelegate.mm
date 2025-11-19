@interface _LinkActionExecutorDelegate
- (_TtC26VisualActionPredictionCoreP33_610E6787A62CF717964A8E858C6CA80327_LinkActionExecutorDelegate)init;
- (void)executor:(id)a3 didCompleteExecutionWithResult:(id)a4 error:(id)a5;
- (void)executor:(id)a3 needsConfirmationWithRequest:(id)a4;
- (void)executor:(id)a3 needsDisambiguationWithRequest:(id)a4;
- (void)executor:(id)a3 needsValueWithRequest:(id)a4;
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

- (void)executor:(id)a3 didCompleteExecutionWithResult:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  sub_226315894(a4, a5);
}

- (void)executor:(id)a3 needsValueWithRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_226315ACC(v7, 2);
}

- (void)executor:(id)a3 needsDisambiguationWithRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_226315ACC(v7, 3);
}

- (void)executor:(id)a3 needsConfirmationWithRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_226315ACC(v7, 4);
}

@end