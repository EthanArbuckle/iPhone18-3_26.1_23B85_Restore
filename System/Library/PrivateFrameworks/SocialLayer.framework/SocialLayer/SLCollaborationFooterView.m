@interface SLCollaborationFooterView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SLCollaborationFooterView)initWithModel:(id)a3 maxWidth:(double)a4;
- (SLCollaborationFooterViewDelegate)delegate;
- (double)expectedHeightForWidth:(double)a3;
- (id)makePlaceholderSlotContentForStyle:(id)a3;
- (void)renderRemoteContentForLayerContextID:(unint64_t)a3 style:(id)a4 yield:(id)a5;
- (void)updateWithNewModel:(id)a3;
@end

@implementation SLCollaborationFooterView

- (SLCollaborationFooterView)initWithModel:(id)a3 maxWidth:(double)a4
{
  v6 = a3;
  v7 = objc_opt_class();
  v11.receiver = self;
  v11.super_class = SLCollaborationFooterView;
  v8 = [(SLRemoteView *)&v11 initWithServiceProxyClass:v7 maxWidth:a4];
  model = v8->_model;
  v8->_model = v6;

  [(SLCollaborationFooterView *)v8 updateRemoteRenderingEnabled];
  return v8;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(SLCollaborationFooterView *)self expectedHeightForWidth:a3.width, a3.height];
  v5 = v4;
  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(SLRemoteView *)self maxWidth];
  v4 = v3;
  [(SLRemoteView *)self maxWidth];
  [(SLCollaborationFooterView *)self expectedHeightForWidth:?];
  v6 = v5;
  v7 = v4;
  result.height = v6;
  result.width = v7;
  return result;
}

- (double)expectedHeightForWidth:(double)a3
{
  [(SLRemoteView *)self maxWidth];
  v6 = SL_CGFloatApproximatelyEqualToFloat(a3, v5);
  v7 = 0.0;
  if (v6)
  {
    v8 = [(SLRemoteView *)self slotView];
    [v8 intrinsicContentSize];
    v7 = v9;
  }

  return v7;
}

- (void)updateWithNewModel:(id)a3
{
  v8 = a3;
  v5 = [(SLCollaborationFooterView *)self model];
  v6 = [v8 isEqual:v5];

  if ((v6 & 1) == 0)
  {
    objc_storeStrong(&self->_model, a3);
    [(SLCollaborationFooterView *)self updateRemoteRenderingEnabled];
    v7 = [(SLRemoteView *)self slotView];
    [v7 _updateContent];
  }
}

- (id)makePlaceholderSlotContentForStyle:(id)a3
{
  v4 = a3;
  v5 = [SLDFooterViewEmptySlotContent alloc];
  [(SLRemoteView *)self maxWidth];
  v6 = [(SLDFooterViewEmptySlotContent *)v5 initWithStyle:v4 maxWidth:0 forRemote:?];

  return v6;
}

- (void)renderRemoteContentForLayerContextID:(unint64_t)a3 style:(id)a4 yield:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(SLRemoteView *)self serviceProxy];
  v11 = [v10 synchronousRemoteService];

  v12 = [(SLCollaborationFooterView *)self model];
  [(SLRemoteView *)self maxWidth];
  v14 = v13;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __78__SLCollaborationFooterView_renderRemoteContentForLayerContextID_style_yield___block_invoke;
  v17[3] = &unk_2789270A8;
  v17[4] = self;
  v18 = v8;
  v19 = v9;
  v15 = v9;
  v16 = v8;
  [v11 footerViewForModel:v12 style:v16 maxWidth:a3 layerContextID:v17 reply:v14];
}

void __78__SLCollaborationFooterView_renderRemoteContentForLayerContextID_style_yield___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __78__SLCollaborationFooterView_renderRemoteContentForLayerContextID_style_yield___block_invoke_2;
  v6[3] = &unk_278926F68;
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v4;
  v8 = v3;
  v9 = *(a1 + 48);
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __78__SLCollaborationFooterView_renderRemoteContentForLayerContextID_style_yield___block_invoke_2(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = [*(a1 + 32) lastRenderedSlotStyle];
  v4 = [v3 isEqual:*(v2 + 8)];

  if ((v4 & 1) == 0)
  {
    [*(a1 + 32) setLastRenderedSlotStyle:*(a1 + 40)];
  }

  [*(a1 + 32) setRemoteContentIsLoaded:*(a1 + 48) != 0];
  if (*(a1 + 48))
  {
    (*(*(a1 + 56) + 16))();
    [*(a1 + 32) invalidateIntrinsicContentSize];
    [*(a1 + 32) setNeedsLayout];
    [*(a1 + 32) layoutIfNeeded];
    v6 = [*(a1 + 32) delegate];
    [v6 footerViewContentsDidChange:*(a1 + 32)];
  }

  else
  {
    v5 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __78__SLCollaborationFooterView_renderRemoteContentForLayerContextID_style_yield___block_invoke_2_cold_1(v2, v5);
    }
  }
}

- (SLCollaborationFooterViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __78__SLCollaborationFooterView_renderRemoteContentForLayerContextID_style_yield___block_invoke_2_cold_1(id *a1, NSObject *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = [*a1 model];
  [*a1 maxWidth];
  v8 = 134218498;
  v9 = v4;
  v10 = 2112;
  v11 = v5;
  v12 = 2048;
  v13 = v6;
  _os_log_error_impl(&dword_231772000, a2, OS_LOG_TYPE_ERROR, "[SLCollaborationFooterView: %p] sociallayerd returned nil remote content for model: [%@], maxWidth: [%f]", &v8, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

@end