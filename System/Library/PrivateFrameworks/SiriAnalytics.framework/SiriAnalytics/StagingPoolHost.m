@interface StagingPoolHost
- (void)dataPoolUrlWithCompletionHandler:(id)a3;
- (void)vendStagingAccessWithAuditToken:(id *)a3 completionHandler:(id)a4;
@end

@implementation StagingPoolHost

- (void)vendStagingAccessWithAuditToken:(id *)a3 completionHandler:(id)a4
{
  v8 = *&a3->var0[4];
  v9 = *a3->var0;
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v9;
  *(v6 + 32) = v8;
  *(v6 + 48) = v5;
  *(v6 + 56) = self;
  v7 = self;

  sub_1D9905654(&unk_1D99331E0, v6);
}

- (void)dataPoolUrlWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  v6 = self;

  sub_1D9905654(&unk_1D99331D0, v5);
}

@end