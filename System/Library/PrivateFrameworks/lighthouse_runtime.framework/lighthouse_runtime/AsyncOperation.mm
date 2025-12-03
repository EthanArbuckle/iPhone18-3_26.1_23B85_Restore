@interface AsyncOperation
- (_TtC18lighthouse_runtime14AsyncOperation)init;
- (void)cancel;
- (void)dealloc;
- (void)main;
- (void)setExecuting:(BOOL)executing;
- (void)setFinished:(BOOL)finished;
- (void)start;
@end

@implementation AsyncOperation

- (void)dealloc
{
  if (*(&self->super.super.isa + OBJC_IVAR____TtC18lighthouse_runtime14AsyncOperation_task))
  {
    selfCopy = self;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683D8, &qword_2771CBC90);
    sub_2771CABC4();
  }

  else
  {
    selfCopy2 = self;
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for AsyncOperation();
  [(AsyncOperation *)&v5 dealloc];
}

- (void)setExecuting:(BOOL)executing
{
  executingCopy = executing;
  selfCopy = self;
  sub_2771C867C(executingCopy, 0x7475636578457369, 0xEB00000000676E69, sub_2771C96C4);
}

- (void)setFinished:(BOOL)finished
{
  finishedCopy = finished;
  selfCopy = self;
  sub_2771C867C(finishedCopy, 0x6873696E69467369, 0xEA00000000006465, sub_2771C96AC);
}

- (void)start
{
  selfCopy = self;
  if ([(AsyncOperation *)selfCopy isCancelled])
  {
    [(AsyncOperation *)selfCopy setExecuting:0];
    [(AsyncOperation *)selfCopy setFinished:1];
  }

  else
  {
    [(AsyncOperation *)selfCopy setFinished:0];
    [(AsyncOperation *)selfCopy setExecuting:1];
    [(AsyncOperation *)selfCopy main];
  }
}

- (void)main
{
  selfCopy = self;
  sub_2771C8A48();
}

- (void)cancel
{
  if (*(&self->super.super.isa + OBJC_IVAR____TtC18lighthouse_runtime14AsyncOperation_task))
  {
    selfCopy = self;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683D8, &qword_2771CBC90);
    sub_2771CABC4();
  }

  else
  {
    selfCopy2 = self;
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for AsyncOperation();
  [(AsyncOperation *)&v5 cancel];
}

- (_TtC18lighthouse_runtime14AsyncOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end