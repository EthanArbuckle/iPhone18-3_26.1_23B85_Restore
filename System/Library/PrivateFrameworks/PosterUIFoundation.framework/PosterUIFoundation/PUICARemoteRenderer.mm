@interface PUICARemoteRenderer
+ (BOOL)shouldUseXPCServiceForRendering;
+ (NSSet)secureCodableRequestClasses;
+ (PUIRenderer)remoteRendererIfPossible;
- (BOOL)supportsRequest:(id)request orError:(id *)error;
- (PUICARemoteRenderer)init;
- (PUICARemoteRenderer)initWithUnderlyingConnection:(id)connection;
- (id)renderRequest:(id)request error:(id *)error;
- (void)dealloc;
- (void)renderRequest:(id)request completionHandler:(id)handler;
@end

@implementation PUICARemoteRenderer

+ (NSSet)secureCodableRequestClasses
{
  if (secureCodableRequestClasses_onceToken != -1)
  {
    +[PUICARemoteRenderer secureCodableRequestClasses];
  }

  v3 = secureCodableRequestClasses_result;

  return v3;
}

void __50__PUICARemoteRenderer_secureCodableRequestClasses__block_invoke()
{
  v4[1] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4[0] = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  v2 = [v0 setWithArray:v1];
  v3 = secureCodableRequestClasses_result;
  secureCodableRequestClasses_result = v2;
}

- (PUICARemoteRenderer)init
{
  v3 = +[PUIServiceConnection defaultConnection];
  v4 = [(PUICARemoteRenderer *)self initWithUnderlyingConnection:v3];

  return v4;
}

- (PUICARemoteRenderer)initWithUnderlyingConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = PUICARemoteRenderer;
  v6 = [(PUICARemoteRenderer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingConnection, connection);
    v7->_colorSpace = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  }

  return v7;
}

- (void)dealloc
{
  CGColorSpaceRelease(self->_colorSpace);
  v3.receiver = self;
  v3.super_class = PUICARemoteRenderer;
  [(PUICARemoteRenderer *)&v3 dealloc];
}

+ (PUIRenderer)remoteRendererIfPossible
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__PUICARemoteRenderer_remoteRendererIfPossible__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (remoteRendererIfPossible_onceToken != -1)
  {
    dispatch_once(&remoteRendererIfPossible_onceToken, block);
  }

  v2 = remoteRendererIfPossible___renderer;

  return v2;
}

uint64_t __47__PUICARemoteRenderer_remoteRendererIfPossible__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) shouldUseXPCServiceForRendering])
  {
    v1 = objc_alloc_init(PUICARemoteRenderer);
  }

  else
  {
    v1 = [[PUICALocalRenderer alloc] initWithColorSpace:0];
  }

  remoteRendererIfPossible___renderer = v1;

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)supportsRequest:(id)request orError:(id *)error
{
  v12[2] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  objc_opt_class();
  if (objc_opt_respondsToSelector() & 1) != 0 && ([objc_opt_class() supportsSecureCoding])
  {
    LOBYTE(error) = 1;
  }

  else if (error)
  {
    v6 = MEMORY[0x1E696ABC0];
    v11[0] = *MEMORY[0x1E696A580];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request cannot be rendered remotely."];
    v12[0] = v7;
    v8 = v11[1] = *MEMORY[0x1E696A588];
    v12[1] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
    *error = [v6 errorWithDomain:@"com.apple.PosterUIFoundation.PUIRenderer" code:1 userInfo:v9];

    LOBYTE(error) = 0;
  }

  return error;
}

- (id)renderRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v31 = 0;
  v7 = [(PUICARemoteRenderer *)self supportsRequest:requestCopy orError:&v31];
  v8 = v31;
  v9 = v8;
  if (v7)
  {
    v10 = requestCopy;
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy_;
    v29 = __Block_byref_object_dispose_;
    v30 = 0;
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy_;
    v23 = __Block_byref_object_dispose_;
    v24 = 0;
    underlyingConnection = [(PUICARemoteRenderer *)self underlyingConnection];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __43__PUICARemoteRenderer_renderRequest_error___block_invoke;
    v18[3] = &unk_1E78549A8;
    v18[4] = &v19;
    v12 = [underlyingConnection synchronousRemoteObjectProxyWithErrorHandler:v18];

    if (v12)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __43__PUICARemoteRenderer_renderRequest_error___block_invoke_2;
      v17[3] = &unk_1E78549D0;
      v17[4] = &v19;
      v17[5] = &v25;
      [v12 renderRequest:v10 reply:v17];
    }

    if (error)
    {
      v13 = v20[5];
      if (v13)
      {
        *error = v13;
      }
    }

    v14 = v26[5];

    _Block_object_dispose(&v19, 8);
    _Block_object_dispose(&v25, 8);
  }

  else if (error)
  {
    v15 = v8;
    v14 = 0;
    *error = v9;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __43__PUICARemoteRenderer_renderRequest_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)renderRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v18 = 0;
  v8 = [(PUICARemoteRenderer *)self supportsRequest:requestCopy orError:&v18];
  v9 = v18;
  if (v8)
  {
    v10 = requestCopy;
    underlyingConnection = [(PUICARemoteRenderer *)self underlyingConnection];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __55__PUICARemoteRenderer_renderRequest_completionHandler___block_invoke;
    v16[3] = &unk_1E78549F8;
    v12 = handlerCopy;
    v17 = v12;
    v13 = [underlyingConnection remoteObjectProxyWithErrorHandler:v16];

    if (v13)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __55__PUICARemoteRenderer_renderRequest_completionHandler___block_invoke_2;
      v14[3] = &unk_1E7854A20;
      v15 = v12;
      [v13 renderRequest:v10 reply:v14];
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, v9);
  }
}

+ (BOOL)shouldUseXPCServiceForRendering
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  isFrontBoard = [mEMORY[0x1E69DC668] isFrontBoard];

  return isFrontBoard;
}

@end