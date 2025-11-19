@interface ProviderList
- (BOOL)containsWithName:(id)a3;
- (BOOL)shouldStartTracingWithConfiguration:(ktrace_config *)a3 error:(id *)a4;
- (_TtC6ktrace12ProviderList)init;
- (_TtC6ktrace12ProviderList)initWithMachine:(ktrace_machine *)a3;
- (void)configurePostprocessingWithSession:(void *)a3;
- (void)configureWithSession:(void *)a3;
- (void)didEndTracingWithFile:(void *)a3;
- (void)didStartTracingWithFile:(void *)a3;
- (void)postprocessingCompleteWithFile:(void *)a3;
- (void)willEndTracingWithFile:(void *)a3;
- (void)willFinishWithCatalog:(void *)a3 file:(void *)a4;
- (void)willStartTracingWithFile:(void *)a3;
@end

@implementation ProviderList

- (void)willEndTracingWithFile:(void *)a3
{
  v4 = self;
  ProviderList.willEndTracing(file:)(a3);
}

- (_TtC6ktrace12ProviderList)initWithMachine:(ktrace_machine *)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC6ktrace12ProviderList_providers) = MEMORY[0x277D84F90];
  *(&self->super.isa + OBJC_IVAR____TtC6ktrace12ProviderList_machine) = a3;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(ProviderList *)&v7 init];
}

- (BOOL)containsWithName:(id)a3
{
  v3._countAndFlagsBits = sub_22EE3C124();
  v4 = ProviderList.contains(name:)(v3);

  return v4;
}

- (BOOL)shouldStartTracingWithConfiguration:(ktrace_config *)a3 error:(id *)a4
{
  v5 = self;
  ProviderList.shouldStartTracing(configuration:)(a3);

  return 1;
}

- (void)configureWithSession:(void *)a3
{
  v4 = self;
  ProviderList.configure(session:)(a3);
}

- (void)willStartTracingWithFile:(void *)a3
{
  v4 = self;
  ProviderList.willStartTracing(file:)(a3);
}

- (void)didStartTracingWithFile:(void *)a3
{
  v4 = self;
  ProviderList.didStartTracing(file:)(a3);
}

- (void)didEndTracingWithFile:(void *)a3
{
  v4 = self;
  ProviderList.didEndTracing(file:)(a3);
}

- (void)configurePostprocessingWithSession:(void *)a3
{
  v4 = self;
  ProviderList.configurePostprocessing(session:)(a3);
}

- (void)postprocessingCompleteWithFile:(void *)a3
{
  v4 = self;
  ProviderList.postprocessingComplete(file:)(a3);
}

- (void)willFinishWithCatalog:(void *)a3 file:(void *)a4
{
  v6 = self;
  ProviderList.willFinish(catalog:file:)(a3, a4);
}

- (_TtC6ktrace12ProviderList)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end