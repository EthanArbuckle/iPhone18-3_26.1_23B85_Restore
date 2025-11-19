@interface _UIColorSampler
- (_UIColorSampler)init;
- (_UIColorSampler)initWithSettings:(id)a3;
- (void)_createServerProxyIfNeeded;
- (void)dismissEyedropper;
- (void)eyedropperDidSelectColor:(id)a3;
- (void)floatEyedropper;
- (void)invokeEyedropper;
- (void)showSamplerWithSelectionHandler:(id)a3;
@end

@implementation _UIColorSampler

- (_UIColorSampler)initWithSettings:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _UIColorSampler;
  v6 = [(_UIColorSampler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_settings, a3);
    v7->_floatEyedropperOnStart = 1;
  }

  return v7;
}

- (_UIColorSampler)init
{
  v3 = [[_UIColorSamplerSettings alloc] initWithHeadroomMode:0];
  v4 = [(_UIColorSampler *)self initWithSettings:v3];

  return v4;
}

- (void)showSamplerWithSelectionHandler:(id)a3
{
  v4 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51___UIColorSampler_showSamplerWithSelectionHandler___block_invoke;
  aBlock[3] = &unk_1E7123098;
  v5 = v4;
  v9 = v5;
  v6 = _Block_copy(aBlock);
  eyeDropperSelectionBlock = self->_eyeDropperSelectionBlock;
  self->_eyeDropperSelectionBlock = v6;

  [(_UIColorSampler *)self invokeEyedropper];
  if ([(_UIColorSampler *)self floatEyedropperOnStart])
  {
    [(_UIColorSampler *)self floatEyedropper];
  }
}

- (void)_createServerProxyIfNeeded
{
  if (!self->_eyeDropperServerProxy)
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.uikit.eyedropperd.service" options:0];
    objc_storeStrong(&self->_eyeDropperConnection, v3);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __45___UIColorSampler__createServerProxyIfNeeded__block_invoke;
    v12[3] = &unk_1E70F3590;
    v4 = v3;
    v13 = v4;
    [(NSXPCConnection *)self->_eyeDropperConnection setInterruptionHandler:v12];
    objc_initWeak(&location, self);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __45___UIColorSampler__createServerProxyIfNeeded__block_invoke_2;
    v9[3] = &unk_1E70F5A28;
    objc_copyWeak(&v10, &location);
    [(NSXPCConnection *)self->_eyeDropperConnection setInvalidationHandler:v9];
    v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F016DC50];
    [(NSXPCConnection *)self->_eyeDropperConnection setRemoteObjectInterface:v5];

    v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F016DCB0];
    [(NSXPCConnection *)self->_eyeDropperConnection setExportedInterface:v6];

    [(NSXPCConnection *)self->_eyeDropperConnection setExportedObject:self];
    [(NSXPCConnection *)self->_eyeDropperConnection resume];
    v7 = [(NSXPCConnection *)self->_eyeDropperConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_62_1];
    eyeDropperServerProxy = self->_eyeDropperServerProxy;
    self->_eyeDropperServerProxy = v7;

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

- (void)invokeEyedropper
{
  [(_UIColorSampler *)self _createServerProxyIfNeeded];
  eyeDropperServerProxy = self->_eyeDropperServerProxy;
  v6 = [objc_opt_self() mainScreen];
  v4 = [v6 displayConfiguration];
  v5 = [v4 hardwareIdentifier];
  [(EDServiceServer *)eyeDropperServerProxy beginShowingEyeDropper:v5 settings:self->_settings];
}

- (void)floatEyedropper
{
  [(_UIColorSampler *)self _createServerProxyIfNeeded];
  eyeDropperServerProxy = self->_eyeDropperServerProxy;

  [(EDServiceServer *)eyeDropperServerProxy floatEyeDropper];
}

- (void)dismissEyedropper
{
  [(_UIColorSampler *)self _createServerProxyIfNeeded];
  eyeDropperServerProxy = self->_eyeDropperServerProxy;

  [(EDServiceServer *)eyeDropperServerProxy cancelShowingEyeDropper];
}

- (void)eyedropperDidSelectColor:(id)a3
{
  eyeDropperSelectionBlock = self->_eyeDropperSelectionBlock;
  if (eyeDropperSelectionBlock)
  {
    eyeDropperSelectionBlock[2](eyeDropperSelectionBlock, a3);
  }
}

@end