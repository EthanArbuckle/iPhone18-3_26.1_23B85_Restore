@interface PMCredentialRequestPaneHeader
- (PMCredentialRequestPaneHeader)initWithView:(id)view;
- (void)updateWithConfiguration:(id)configuration;
@end

@implementation PMCredentialRequestPaneHeader

- (void)updateWithConfiguration:(id)configuration
{
  v4 = *(&self->super.super.isa + OBJC_IVAR___PMCredentialRequestPaneHeader_model);
  configurationCopy = configuration;
  selfCopy = self;
  sub_21C815F84(configurationCopy);
}

- (PMCredentialRequestPaneHeader)initWithView:(id)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end