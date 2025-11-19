@interface PGLayerHostView
- (PGLayerHostView)initWithFrame:(CGRect)a3;
- (void)_manageSharingOfTouchesBetweenClientAndHostContext;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setHostedWindowHostingHandle:(id)a3;
- (void)setSceneView:(id)a3;
@end

@implementation PGLayerHostView

- (PGLayerHostView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = PGLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PGLayerHostView initWithFrame:?];
  }

  v10.receiver = self;
  v10.super_class = PGLayerHostView;
  return [(PGLayerHostView *)&v10 initWithFrame:x, y, width, height];
}

- (void)dealloc
{
  v3 = PGLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [PGLayerHostView initWithFrame:?];
  }

  v4.receiver = self;
  v4.super_class = PGLayerHostView;
  [(PGLayerHostView *)&v4 dealloc];
}

- (void)setHostedWindowHostingHandle:(id)a3
{
  v4 = a3;
  if (v4)
  {
    remoteView = self->_remoteView;
    if (remoteView)
    {
      [(_UIRemoteView *)remoteView setHostedWindowHostingHandle:v4];
    }

    else
    {
      v6 = [MEMORY[0x1E69DD660] viewWithHostedWindowHostingHandle:v4];
      v7 = self->_remoteView;
      self->_remoteView = v6;

      [(PGLayerHostView *)self addSubview:self->_remoteView];
    }

    [(PGLayerHostView *)self _manageSharingOfTouchesBetweenClientAndHostContext];
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)setSceneView:(id)a3
{
  v5 = a3;
  sceneView = self->_sceneView;
  if (sceneView != v5)
  {
    v7 = v5;
    [(UIView *)sceneView removeFromSuperview];
    objc_storeStrong(&self->_sceneView, a3);
    if (v7)
    {
      [(PGLayerHostView *)self addSubview:v7];
    }
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PGLayerHostView;
  [(PGLayerHostView *)&v4 layoutSubviews];
  sceneView = self->_sceneView;
  [(PGLayerHostView *)self bounds];
  [(UIView *)sceneView setFrame:?];
}

- (void)_manageSharingOfTouchesBetweenClientAndHostContext
{
  touchDeliveryPolicyAssertion = self->_touchDeliveryPolicyAssertion;
  self->_touchDeliveryPolicyAssertion = 0;

  v4 = [(PGLayerHostView *)self hostedWindowHostingHandle];
  if (v4)
  {
    v5 = v4;
    v6 = [(PGLayerHostView *)self window];

    if (v6)
    {
      v7 = [(_UIRemoteView *)self->_remoteView contextID];
      v8 = [(PGLayerHostView *)self window];
      v9 = [v8 _contextId];

      v10 = objc_alloc_init(MEMORY[0x1E698E440]);
      v11 = [MEMORY[0x1E698E438] policyRequiringSharingOfTouchesDeliveredToChildContextId:v7 withHostContextId:v9];
      v12 = [v10 endpoint];
      [v11 setAssertionEndpoint:v12];

      v13 = v11;
      v14 = BKSTouchDeliveryPolicyServerGetProxyWithErrorHandler();
      if (v14)
      {
        objc_storeStrong(&self->_touchDeliveryPolicyAssertion, v10);
        [v14 ipc_addPolicy:v13];
      }
    }
  }
}

void __69__PGLayerHostView__manageSharingOfTouchesBetweenClientAndHostContext__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PGLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __69__PGLayerHostView__manageSharingOfTouchesBetweenClientAndHostContext__block_invoke_cold_1(a1);
  }
}

- (void)initWithFrame:(void *)a1 .cold.1(void *a1)
{
  v6 = _PGLogMethodProem(a1, 1);
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __69__PGLayerHostView__manageSharingOfTouchesBetweenClientAndHostContext__block_invoke_cold_1(uint64_t a1)
{
  v6 = _PGLogMethodProem(*(a1 + 32), 0);
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);
}

@end