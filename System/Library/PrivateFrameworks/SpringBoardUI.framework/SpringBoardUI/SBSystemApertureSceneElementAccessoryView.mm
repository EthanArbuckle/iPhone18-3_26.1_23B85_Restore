@interface SBSystemApertureSceneElementAccessoryView
- (CGSize)preferredSize;
- (void)_configurePortalLayerWithSourceLayerRenderingId:(unint64_t)id contextId:(unsigned int)contextId;
- (void)_configurePortalView;
- (void)layoutSubviews;
- (void)setPreferredSize:(CGSize)size;
- (void)setSourceLayerRenderingId:(unint64_t)id contextId:(unsigned int)contextId;
@end

@implementation SBSystemApertureSceneElementAccessoryView

- (void)setSourceLayerRenderingId:(unint64_t)id contextId:(unsigned int)contextId
{
  if (self->_layerRenderingId != id || self->_sourceContextId != contextId)
  {
    self->_layerRenderingId = id;
    self->_sourceContextId = contextId;
    [(SBSystemApertureSceneElementAccessoryView *)self _configurePortalView];
  }
}

- (void)_configurePortalView
{
  portalLayer = [(SBSystemApertureSceneElementAccessoryPortalView *)self->_portalView portalLayer];
  if ([portalLayer sourceLayerRenderId] == self->_layerRenderingId)
  {
    portalLayer2 = [(SBSystemApertureSceneElementAccessoryPortalView *)self->_portalView portalLayer];
    sourceContextId = [portalLayer2 sourceContextId];
    sourceContextId = self->_sourceContextId;

    if (sourceContextId == sourceContextId)
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
    layer = [(SBSystemApertureSceneElementAccessoryPortalView *)self->_portalView layer];
    [layer setAllowsHitTesting:0];

    [(SBSystemApertureSceneElementAccessoryPortalView *)self->_portalView setUserInteractionEnabled:0];
  }

  layerRenderingId = self->_layerRenderingId;
  v12 = self->_sourceContextId;

  [(SBSystemApertureSceneElementAccessoryView *)self _configurePortalLayerWithSourceLayerRenderingId:layerRenderingId contextId:v12];
}

- (void)_configurePortalLayerWithSourceLayerRenderingId:(unint64_t)id contextId:(unsigned int)contextId
{
  if (id && contextId)
  {
    objc_initWeak(&location, self);
    portalLayer = [(SBSystemApertureSceneElementAccessoryPortalView *)self->_portalView portalLayer];
    objc_initWeak(&from, portalLayer);

    v8 = *MEMORY[0x277D76620];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __103__SBSystemApertureSceneElementAccessoryView__configurePortalLayerWithSourceLayerRenderingId_contextId___block_invoke;
    v11[3] = &unk_27836B4D0;
    objc_copyWeak(&v12, &location);
    objc_copyWeak(v13, &from);
    contextIdCopy = contextId;
    v13[1] = id;
    [v8 sb_performBlockAfterCATransactionSynchronizedCommit:v11];
    objc_destroyWeak(v13);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  else
  {
    portalLayer2 = [(SBSystemApertureSceneElementAccessoryPortalView *)self->_portalView portalLayer];
    [portalLayer2 setSourceLayerRenderId:0];

    portalLayer3 = [(SBSystemApertureSceneElementAccessoryPortalView *)self->_portalView portalLayer];
    [portalLayer3 setSourceContextId:0];
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

- (void)setPreferredSize:(CGSize)size
{
  v3 = fmax(size.width, 0.0);
  v4 = fmax(size.height, 0.0);
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
  portalView = [(SBSystemApertureSceneElementAccessoryView *)self portalView];
  [(SBSystemApertureSceneElementAccessoryView *)self bounds];
  [portalView setFrame:?];

  [(SBSystemApertureSceneElementAccessoryView *)self setUserInteractionEnabled:0];
  layer = [(SBSystemApertureSceneElementAccessoryView *)self layer];
  [layer setAllowsHitTesting:0];
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