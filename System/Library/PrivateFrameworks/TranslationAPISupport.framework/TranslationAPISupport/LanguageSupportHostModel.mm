@interface LanguageSupportHostModel
- (BOOL)shouldAcceptWithConnection:(id)connection;
- (_TtC21TranslationAPISupport24LanguageSupportHostModel)init;
- (void)didFinishWithFinalConfiguration:(id)configuration error:(id)error;
@end

@implementation LanguageSupportHostModel

- (void)didFinishWithFinalConfiguration:(id)configuration error:(id)error
{
  configurationCopy = configuration;
  errorCopy = error;
  selfCopy = self;
  sub_26F371EC8(configuration, error);
}

- (BOOL)shouldAcceptWithConnection:(id)connection
{
  connectionCopy = connection;
  selfCopy = self;
  sub_26F372B10(connectionCopy);

  return 1;
}

- (_TtC21TranslationAPISupport24LanguageSupportHostModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end