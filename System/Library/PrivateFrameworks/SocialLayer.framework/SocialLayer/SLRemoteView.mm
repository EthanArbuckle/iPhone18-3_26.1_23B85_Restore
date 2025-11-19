@interface SLRemoteView
- (SLRemoteView)initWithServiceProxyClass:(Class)a3 maxWidth:(double)a4;
- (id)_contentProviderForCurrentConfiguration;
- (void)_provideContentForLayerContextID:(unint64_t)a3 style:(id)a4 yield:(id)a5;
- (void)serviceProxyDidConnect:(id)a3;
- (void)serviceProxyDidDisconnect:(id)a3;
- (void)setMaxWidth:(double)a3;
- (void)setRemoteContentIsLoaded:(BOOL)a3;
- (void)setRemoteRenderingEnabled:(BOOL)a3;
@end

@implementation SLRemoteView

- (SLRemoteView)initWithServiceProxyClass:(Class)a3 maxWidth:(double)a4
{
  v43[4] = *MEMORY[0x277D85DE8];
  v42.receiver = self;
  v42.super_class = SLRemoteView;
  v5 = [(SLRemoteView *)&v42 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v6 = v5;
  if (v5)
  {
    v5->_maxWidth = a4;
    v5->_remoteRenderingEnabled = 0;
    v7 = objc_alloc_init(MEMORY[0x277D76260]);
    slotView = v6->_slotView;
    v6->_slotView = v7;

    v9 = [(SLRemoteView *)v6 _contentProviderForCurrentConfiguration];
    [(_UISlotView *)v6->_slotView _setSlotAnyContentProvider:v9];

    [(_UISlotView *)v6->_slotView setUserInteractionEnabled:0];
    [(_UISlotView *)v6->_slotView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SLRemoteView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [(SLRemoteView *)v6 slotView];
    [(SLRemoteView *)v6 addSubview:v10];

    v29 = MEMORY[0x277CCAAD0];
    v38 = [(SLRemoteView *)v6 slotView];
    v37 = [v38 centerXAnchor];
    v36 = [(SLRemoteView *)v6 centerXAnchor];
    v35 = [v37 constraintEqualToAnchor:v36];
    v43[0] = v35;
    v34 = [(SLRemoteView *)v6 slotView];
    v33 = [v34 centerYAnchor];
    v32 = [(SLRemoteView *)v6 centerYAnchor];
    v31 = [v33 constraintEqualToAnchor:v32];
    v43[1] = v31;
    v11 = [(SLRemoteView *)v6 heightAnchor];
    v12 = [(SLRemoteView *)v6 slotView];
    v13 = [v12 heightAnchor];
    v14 = [v11 constraintEqualToAnchor:v13];
    v43[2] = v14;
    v15 = [(SLRemoteView *)v6 widthAnchor];
    v16 = [(SLRemoteView *)v6 slotView];
    v17 = [v16 widthAnchor];
    v18 = [v15 constraintEqualToAnchor:v17];
    v43[3] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:4];
    [v29 activateConstraints:v19];

    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_attr_make_with_qos_class(v20, QOS_CLASS_USER_INTERACTIVE, 0);

    v22 = dispatch_queue_create("com.apple.SocialLayer.SLRemoteView.RemoteRendering", v21);
    remoteRenderingQueue = v6->_remoteRenderingQueue;
    v6->_remoteRenderingQueue = v22;

    v24 = [SLDServiceProxy proxyForServiceClass:a3 targetSerialQueue:v6->_remoteRenderingQueue delegate:v6];
    serviceProxy = v6->_serviceProxy;
    v6->_serviceProxy = v24;

    objc_initWeak(&location, v6);
    v26 = [(SLRemoteView *)v6 remoteRenderingQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__SLRemoteView_initWithServiceProxyClass_maxWidth___block_invoke;
    block[3] = &unk_278925C50;
    objc_copyWeak(&v40, &location);
    dispatch_async(v26, block);

    objc_destroyWeak(&v40);
    objc_destroyWeak(&location);
  }

  v27 = *MEMORY[0x277D85DE8];
  return v6;
}

void __51__SLRemoteView_initWithServiceProxyClass_maxWidth___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained serviceProxy];
  [v1 connect];
}

- (void)setMaxWidth:(double)a3
{
  if (!SL_CGFloatApproximatelyEqualToFloat(a3, self->_maxWidth))
  {
    v5 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(SLRemoteView *)self setMaxWidth:v5, a3];
    }

    self->_maxWidth = a3;
    v6 = [(SLRemoteView *)self slotView];
    [v6 _updateContent];

    [(SLRemoteView *)self invalidateIntrinsicContentSize];
  }
}

- (void)setRemoteContentIsLoaded:(BOOL)a3
{
  if (self->_remoteContentIsLoaded != a3)
  {
    self->_remoteContentIsLoaded = a3;
    [(SLRemoteView *)self remoteContentIsLoadedValueChanged];
  }
}

- (void)setRemoteRenderingEnabled:(BOOL)a3
{
  if (self->_remoteRenderingEnabled != a3)
  {
    self->_remoteRenderingEnabled = a3;
    if (a3)
    {
      v4 = SLFrameworkLogHandle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        [(SLRemoteView *)self setRemoteRenderingEnabled:v4];
      }

      v5 = [(SLRemoteView *)self slotView];
      [v5 _updateContent];
    }
  }
}

- (id)_contentProviderForCurrentConfiguration
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__SLRemoteView__contentProviderForCurrentConfiguration__block_invoke;
  v4[3] = &unk_2789264C8;
  objc_copyWeak(&v5, &location);
  v2 = _Block_copy(v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

void __55__SLRemoteView__contentProviderForCurrentConfiguration__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _provideContentForLayerContextID:a2 style:v8 yield:v7];
}

- (void)_provideContentForLayerContextID:(unint64_t)a3 style:(id)a4 yield:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(SLRemoteView *)self remoteContentIsLoaded];
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__5;
  v36 = __Block_byref_object_dispose__5;
  v37 = [(SLRemoteView *)self _finalSlotStyleForStyle:v8];
  v11 = [(SLRemoteView *)self placeholderSlotContent];
  if ([(SLRemoteView *)self shouldInvalidatePreviousPlaceHolderSlotContent:v11 forStyle:v33[5]])
  {
    v12 = [(SLRemoteView *)self makePlaceholderSlotContentForStyle:v33[5]];
    [(SLRemoteView *)self setPlaceholderSlotContent:v12];
  }

  if (!v10)
  {
    goto LABEL_6;
  }

  [v11 contentSize];
  v14 = v13;
  v16 = v15;
  v17 = [(SLRemoteView *)self placeholderSlotContent];
  [v17 contentSize];
  v19 = v18;
  v21 = v20;

  if (v14 != v19 || v16 != v21)
  {
LABEL_6:
    v22 = [(SLRemoteView *)self placeholderSlotContent];
    v9[2](v9, v22);
  }

  if ([(SLRemoteView *)self remoteRenderingEnabled]&& ([(SLRemoteView *)self maxWidth], v23 <= 0.0))
  {
    v27 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [SLRemoteView _provideContentForLayerContextID:v27 style:? yield:?];
    }
  }

  else if ([(SLRemoteView *)self remoteRenderingEnabled])
  {
    v24 = [(SLRemoteView *)self serviceProxy];
    v25 = [v24 connectionActive];

    if (v25)
    {
      v26 = [(SLRemoteView *)self remoteRenderingQueue];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __61__SLRemoteView__provideContentForLayerContextID_style_yield___block_invoke;
      v28[3] = &unk_2789264F0;
      v28[4] = self;
      v30 = &v32;
      v31 = a3;
      v29 = v9;
      dispatch_async(v26, v28);
    }
  }

  _Block_object_dispose(&v32, 8);
}

- (void)serviceProxyDidConnect:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__SLRemoteView_serviceProxyDidConnect___block_invoke;
  block[3] = &unk_278925D90;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __39__SLRemoteView_serviceProxyDidConnect___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) slotView];
  [v1 _updateContent];
}

- (void)serviceProxyDidDisconnect:(id)a3
{
  [(SLRemoteView *)self setLastRenderedSlotStyle:0];

  [(SLRemoteView *)self setRemoteContentIsLoaded:0];
}

- (void)setMaxWidth:(double)a3 .cold.1(uint64_t a1, NSObject *a2, double a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 134218240;
  v5 = a1;
  v6 = 2048;
  v7 = a3;
  _os_log_debug_impl(&dword_231772000, a2, OS_LOG_TYPE_DEBUG, "[SLRemoteView: %p] Updating remote content with NEW max width: [%f]", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)setRemoteRenderingEnabled:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  [a1 maxWidth];
  v6 = 134218240;
  v7 = a1;
  v8 = 2048;
  v9 = v4;
  _os_log_debug_impl(&dword_231772000, a2, OS_LOG_TYPE_DEBUG, "[SLRemoteView: %p] Remote rendering is now enabled. Updating remote content with max width: [%f]", &v6, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_provideContentForLayerContextID:(uint64_t)a1 style:(NSObject *)a2 yield:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_231772000, a2, OS_LOG_TYPE_ERROR, "[SLRemoteView %p] Remote rendering was enabled, but maxWidth is still zero; this is a bug! We will not render remote content to avoid unexpected behavior.", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end