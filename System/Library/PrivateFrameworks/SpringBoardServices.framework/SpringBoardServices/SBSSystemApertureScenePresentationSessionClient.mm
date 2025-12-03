@interface SBSSystemApertureScenePresentationSessionClient
- (void)dealloc;
- (void)destroyScene;
- (void)requestScene;
@end

@implementation SBSSystemApertureScenePresentationSessionClient

- (void)dealloc
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SBSSystemApertureScenePresentationSessionClient.m" lineNumber:45 description:@"Client must be invalidated before deallocating session"];
}

- (void)destroyScene
{
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  identityToken = [(SBSSystemApertureScenePresentationSessionClient *)self identityToken];
  [remoteTarget requestSystemApertureSceneInvalidationWithIdentityToken:identityToken];
}

- (void)requestScene
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SBSSystemApertureScenePresentationSessionClient.m" lineNumber:80 description:@"In-process Jindo Presentations are not supported"];
}

void __63__SBSSystemApertureScenePresentationSessionClient_requestScene__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = +[SBSSystemApertureScenePresentationSessionServer interface];
  [v4 setInterface:v2];

  v3 = +[SBSSystemApertureScenePresentationSessionServer serviceQuality];
  [v4 setServiceQuality:v3];

  [v4 setInvalidationHandler:&__block_literal_global_13];
}

void __63__SBSSystemApertureScenePresentationSessionClient_requestScene__block_invoke_2()
{
  v0 = SBLogSystemApertureHosting();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __59__SBSSpotlightActivationRequest_requestSpotlightActivation__block_invoke_2_cold_1(v0);
  }
}

void __63__SBSSystemApertureScenePresentationSessionClient_requestScene__block_invoke_14(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_copyWeak(&v9, (a1 + 40));
  v7 = v5;
  v8 = *(a1 + 32);
  BSDispatchMain();

  objc_destroyWeak(&v9);
}

void __63__SBSSystemApertureScenePresentationSessionClient_requestScene__block_invoke_2_15(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v3 = WeakRetained;
    objc_storeStrong(WeakRetained + 1, a1[4]);
    objc_storeStrong(v3 + 2, a1[5]);
    WeakRetained = v3;
  }
}

@end