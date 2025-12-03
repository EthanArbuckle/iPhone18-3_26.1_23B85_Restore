@interface ProviderList
- (BOOL)containsWithName:(id)name;
- (BOOL)shouldStartTracingWithConfiguration:(ktrace_config *)configuration error:(id *)error;
- (_TtC6ktrace12ProviderList)init;
- (_TtC6ktrace12ProviderList)initWithMachine:(ktrace_machine *)machine;
- (void)configurePostprocessingWithSession:(void *)session;
- (void)configureWithSession:(void *)session;
- (void)didEndTracingWithFile:(void *)file;
- (void)didStartTracingWithFile:(void *)file;
- (void)postprocessingCompleteWithFile:(void *)file;
- (void)willEndTracingWithFile:(void *)file;
- (void)willFinishWithCatalog:(void *)catalog file:(void *)file;
- (void)willStartTracingWithFile:(void *)file;
@end

@implementation ProviderList

- (void)willEndTracingWithFile:(void *)file
{
  selfCopy = self;
  ProviderList.willEndTracing(file:)(file);
}

- (_TtC6ktrace12ProviderList)initWithMachine:(ktrace_machine *)machine
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC6ktrace12ProviderList_providers) = MEMORY[0x277D84F90];
  *(&self->super.isa + OBJC_IVAR____TtC6ktrace12ProviderList_machine) = machine;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(ProviderList *)&v7 init];
}

- (BOOL)containsWithName:(id)name
{
  v3._countAndFlagsBits = sub_22EE3C124();
  v4 = ProviderList.contains(name:)(v3);

  return v4;
}

- (BOOL)shouldStartTracingWithConfiguration:(ktrace_config *)configuration error:(id *)error
{
  selfCopy = self;
  ProviderList.shouldStartTracing(configuration:)(configuration);

  return 1;
}

- (void)configureWithSession:(void *)session
{
  selfCopy = self;
  ProviderList.configure(session:)(session);
}

- (void)willStartTracingWithFile:(void *)file
{
  selfCopy = self;
  ProviderList.willStartTracing(file:)(file);
}

- (void)didStartTracingWithFile:(void *)file
{
  selfCopy = self;
  ProviderList.didStartTracing(file:)(file);
}

- (void)didEndTracingWithFile:(void *)file
{
  selfCopy = self;
  ProviderList.didEndTracing(file:)(file);
}

- (void)configurePostprocessingWithSession:(void *)session
{
  selfCopy = self;
  ProviderList.configurePostprocessing(session:)(session);
}

- (void)postprocessingCompleteWithFile:(void *)file
{
  selfCopy = self;
  ProviderList.postprocessingComplete(file:)(file);
}

- (void)willFinishWithCatalog:(void *)catalog file:(void *)file
{
  selfCopy = self;
  ProviderList.willFinish(catalog:file:)(catalog, file);
}

- (_TtC6ktrace12ProviderList)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end