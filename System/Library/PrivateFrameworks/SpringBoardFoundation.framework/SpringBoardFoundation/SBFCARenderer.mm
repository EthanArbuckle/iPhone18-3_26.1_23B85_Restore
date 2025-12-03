@interface SBFCARenderer
+ (BOOL)shouldUseXPCServiceForRendering;
+ (id)sharedInstance;
- (id)_remoteObjectProxy;
- (void)_createConnection;
- (void)warmup;
@end

@implementation SBFCARenderer

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_5 != -1)
  {
    +[SBFCARenderer sharedInstance];
  }

  v3 = sharedInstance_renderer;

  return v3;
}

uint64_t __31__SBFCARenderer_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SBFCARenderer);
  v1 = sharedInstance_renderer;
  sharedInstance_renderer = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)_createConnection
{
  v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.springboard.SBRendererService"];
  rendererServiceConnection = self->_rendererServiceConnection;
  self->_rendererServiceConnection = v3;

  [(NSXPCConnection *)self->_rendererServiceConnection setInterruptionHandler:&__block_literal_global_4_0];
  v5 = self->_rendererServiceConnection;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__SBFCARenderer__createConnection__block_invoke_5;
  v7[3] = &unk_1E807F178;
  v7[4] = self;
  [(NSXPCConnection *)v5 setInvalidationHandler:v7];
  v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3D874A0];
  [(NSXPCConnection *)self->_rendererServiceConnection setRemoteObjectInterface:v6];
  [(NSXPCConnection *)self->_rendererServiceConnection resume];
}

void __34__SBFCARenderer__createConnection__block_invoke()
{
  v0 = SBLogWallpaper();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1BEA11000, v0, OS_LOG_TYPE_DEFAULT, "SBRendererService connection interrupted", v1, 2u);
  }
}

void __34__SBFCARenderer__createConnection__block_invoke_5(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__SBFCARenderer__createConnection__block_invoke_2;
  block[3] = &unk_1E807F178;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v1 = SBLogWallpaper();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1BEA11000, v1, OS_LOG_TYPE_DEFAULT, "SBRendererService connection invalidated", v2, 2u);
  }
}

void __34__SBFCARenderer__createConnection__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  *(v1 + 8) = 0;
}

- (id)_remoteObjectProxy
{
  rendererServiceConnection = self->_rendererServiceConnection;
  if (!rendererServiceConnection)
  {
    [(SBFCARenderer *)self _createConnection];
    rendererServiceConnection = self->_rendererServiceConnection;
  }

  return [(NSXPCConnection *)rendererServiceConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_19_0];
}

void __35__SBFCARenderer__remoteObjectProxy__block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = SBLogWallpaper();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_1BEA11000, v3, OS_LOG_TYPE_DEFAULT, " SBRenderer's syncRemoteObjectProxy encountered an error %@", &v4, 0xCu);
  }
}

- (void)warmup
{
  if (+[SBFCARenderer shouldUseXPCServiceForRendering])
  {
    v3 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __23__SBFCARenderer_warmup__block_invoke;
    block[3] = &unk_1E807F178;
    block[4] = self;
    dispatch_async(v3, block);
  }
}

void __23__SBFCARenderer_warmup__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _remoteObjectProxy];
  [v1 service_warmup:&__block_literal_global_22_2];
}

void __23__SBFCARenderer_warmup__block_invoke_2()
{
  v0 = SBLogWallpaper();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1BEA11000, v0, OS_LOG_TYPE_DEFAULT, "Renderer Service Launched successfully", v1, 2u);
  }
}

+ (BOOL)shouldUseXPCServiceForRendering
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  isFrontBoard = [mEMORY[0x1E69DC668] isFrontBoard];

  return isFrontBoard;
}

@end