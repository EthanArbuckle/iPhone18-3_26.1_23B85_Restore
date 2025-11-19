@interface AsyncOperation
- (_TtC18lighthouse_runtime14AsyncOperation)init;
- (void)cancel;
- (void)dealloc;
- (void)main;
- (void)setExecuting:(BOOL)a3;
- (void)setFinished:(BOOL)a3;
- (void)start;
@end

@implementation AsyncOperation

- (void)dealloc
{
  if (*(&self->super.super.isa + OBJC_IVAR____TtC18lighthouse_runtime14AsyncOperation_task))
  {
    v3 = self;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683D8, &qword_2771CBC90);
    sub_2771CABC4();
  }

  else
  {
    v4 = self;
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for AsyncOperation();
  [(AsyncOperation *)&v5 dealloc];
}

- (void)setExecuting:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  sub_2771C867C(v3, 0x7475636578457369, 0xEB00000000676E69, sub_2771C96C4);
}

- (void)setFinished:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  sub_2771C867C(v3, 0x6873696E69467369, 0xEA00000000006465, sub_2771C96AC);
}

- (void)start
{
  v2 = self;
  if ([(AsyncOperation *)v2 isCancelled])
  {
    [(AsyncOperation *)v2 setExecuting:0];
    [(AsyncOperation *)v2 setFinished:1];
  }

  else
  {
    [(AsyncOperation *)v2 setFinished:0];
    [(AsyncOperation *)v2 setExecuting:1];
    [(AsyncOperation *)v2 main];
  }
}

- (void)main
{
  v2 = self;
  sub_2771C8A48();
}

- (void)cancel
{
  if (*(&self->super.super.isa + OBJC_IVAR____TtC18lighthouse_runtime14AsyncOperation_task))
  {
    v3 = self;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A683D8, &qword_2771CBC90);
    sub_2771CABC4();
  }

  else
  {
    v4 = self;
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