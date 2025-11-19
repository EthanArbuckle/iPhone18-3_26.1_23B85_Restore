@interface SBSystemApertureSceneElementAccessoryView
- (CGSize)preferredSize;
- (void)_configurePortalLayerWithSourceLayerRenderingId:(unint64_t)a3 contextId:(unsigned int)a4;
- (void)_configurePortalView;
- (void)layoutSubviews;
- (void)setPreferredSize:(CGSize)a3;
- (void)setSourceLayerRenderingId:(unint64_t)a3 contextId:(unsigned int)a4;
@end

@implementation SBSystemApertureSceneElementAccessoryView

- (void)setSourceLayerRenderingId:(unint64_t)a3 contextId:(unsigned int)a4
{
  if (self->_layerRenderingId != a3 || self->_sourceContextId != a4)
  {
    self->_layerRenderingId = a3;
    self->_sourceContextId = a4;
    [(SBSystemApertureSceneElementAccessoryView *)self _configurePortalView];
  }
}

- (void)_configurePortalView
{
  v3 = [(SBSystemApertureSceneElementAccessoryPortalView *)self->_portalView portalLayer];
  if ([v3 sourceLayerRenderId] == self->_layerRenderingId)
  {
    v4 = [(SBSystemApertureSceneElementAccessoryPortalView *)self->_portalView portalLayer];
    v5 = [v4 sourceContextId];
    sourceContextId = self->_sourceContextId;

    if (v5 == sourceContextId)
    {
      return;
    }
  }

  else
  {
  }

  if (!self->_portalView)
  {
    v7 = [SBSystemApertureSceneElementAccessoryPortalView alloc];
    [(SBSystemApertureSceneElementAccessoryView *)self bounds];
    v8 = [(SBSystemApertureSceneElementAccessoryPortalView *)v7 initWithFrame:?];
    portalView = self->_portalView;
    self->_portalView = v8;

    [(SBSystemApertureSceneElementAccessoryView *)self addSubview:self->_portalView];
    v10 = [(SBSystemApertureSceneElementAccessoryPortalView *)self->_portalView layer];
    [v10 setAllowsHitTesting:0];

    [(SBSystemApertureSceneElementAccessoryPortalView *)self->_portalView setUserInteractionEnabled:0];
  }

  layerRenderingId = self->_layerRenderingId;
  v12 = self->_sourceContextId;

  [(SBSystemApertureSceneElementAccessoryView *)self _configurePortalLayerWithSourceLayerRenderingId:layerRenderingId contextId:v12];
}

- (void)_configurePortalLayerWithSourceLayerRenderingId:(unint64_t)a3 contextId:(unsigned int)a4
{
  if (a3 && a4)
  {
    objc_initWeak(&location, self);
    v7 = [(SBSystemApertureSceneElementAccessoryPortalView *)self->_portalView portalLayer];
    objc_initWeak(&from, v7);

    v8 = *MEMORY[0x277D76620];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __103__SBSystemApertureSceneElementAccessoryView__configurePortalLayerWithSourceLayerRenderingId_contextId___block_invoke;
    v11[3] = &unk_27836B4D0;
    objc_copyWeak(&v12, &location);
    objc_copyWeak(v13, &from);
    v14 = a4;
    v13[1] = a3;
    [v8 sb_performBlockAfterCATransactionSynchronizedCommit:v11];
    objc_destroyWeak(v13);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  else
  {
    v9 = [(SBSystemApertureSceneElementAccessoryPortalView *)self->_portalView portalLayer];
    [v9 setSourceLayerRenderId:0];

    v10 = [(SBSystemApertureSceneElementAccessoryPortalView *)self->_portalView portalLayer];
    [v10 setSourceContextId:0];
  }
}

void __103__SBSystemApertureSceneElementAccessoryView__configurePortalLayerWithSourceLayerRenderingId_contextId___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  if (v2)
  {
    v3 = *(a1 + 56);
    if (v3 == [WeakRetained sourceContextId])
    {
      v4 = *(a1 + 48);
      if (v4 == [WeakRetained layerRenderingId])
      {
        [v2 setSourceLayerRenderId:*(a1 + 48)];
        [v2 setSourceContextId:*(a1 + 56)];
      }
    }
  }
}

- (void)setPreferredSize:(CGSize)a3
{
  v3 = fmax(a3.width, 0.0);
  v4 = fmax(a3.height, 0.0);
  if (self->_preferredSize.width != v3 || self->_preferredSize.height != v4)
  {
    self->_preferredSize.width = v3;
    self->_preferredSize.height = v4;
    [(SBSystemApertureSceneElementAccessoryView *)self invalidateIntrinsicContentSize];
  }
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = SBSystemApertureSceneElementAccessoryView;
  [(SBSystemApertureSceneElementAccessoryView *)&v5 layoutSubviews];
  v3 = [(SBSystemApertureSceneElementAccessoryView *)self portalView];
  [(SBSystemApertureSceneElementAccessoryView *)self bounds];
  [v3 setFrame:?];

  [(SBSystemApertureSceneElementAccessoryView *)self setUserInteractionEnabled:0];
  v4 = [(SBSystemApertureSceneElementAccessoryView *)self layer];
  [v4 setAllowsHitTesting:0];
}

- (CGSize)preferredSize
{
  width = self->_preferredSize.width;
  height = self->_preferredSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end