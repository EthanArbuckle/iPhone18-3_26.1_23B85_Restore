@interface PMCredentialRequestPaneHeader
- (PMCredentialRequestPaneHeader)initWithView:(id)a3;
- (void)updateWithConfiguration:(id)a3;
@end

@implementation PMCredentialRequestPaneHeader

- (void)updateWithConfiguration:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR___PMCredentialRequestPaneHeader_model);
  v5 = a3;
  v6 = self;
  sub_21C815F84(v5);
}

- (PMCredentialRequestPaneHeader)initWithView:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end