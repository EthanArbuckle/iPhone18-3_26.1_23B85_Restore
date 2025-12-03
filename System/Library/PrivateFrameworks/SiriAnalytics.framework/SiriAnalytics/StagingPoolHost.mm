@interface StagingPoolHost
- (void)dataPoolUrlWithCompletionHandler:(id)handler;
- (void)vendStagingAccessWithAuditToken:(id *)token completionHandler:(id)handler;
@end

@implementation StagingPoolHost

- (void)vendStagingAccessWithAuditToken:(id *)token completionHandler:(id)handler
{
  v8 = *&token->var0[4];
  v9 = *token->var0;
  v5 = _Block_copy(handler);
  v6 = swift_allocObject();
  *(v6 + 16) = v9;
  *(v6 + 32) = v8;
  *(v6 + 48) = v5;
  *(v6 + 56) = self;
  selfCopy = self;

  sub_1D9905654(&unk_1D99331E0, v6);
}

- (void)dataPoolUrlWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  selfCopy = self;

  sub_1D9905654(&unk_1D99331D0, v5);
}

@end