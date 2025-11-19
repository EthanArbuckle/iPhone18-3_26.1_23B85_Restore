@interface PRPosterSceneAttachmentView
- (id)layerHost;
- (void)_teardownContentLayer;
- (void)invalidate;
- (void)layoutSubviews;
- (void)setAttachment:(id)a3;
@end

@implementation PRPosterSceneAttachmentView

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = PRPosterSceneAttachmentView;
  [(PRPosterSceneAttachmentView *)&v6 layoutSubviews];
  v3 = [(PRPosterSceneAttachmentView *)self contentLayer];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 superlayer];
    [v5 bounds];
    [v4 setFrame:?];
  }
}

- (void)setAttachment:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_attachment] & 1) == 0)
  {
    objc_storeStrong(&self->_attachment, a3);
    v6 = [(PRPosterSceneAttachmentView *)self layerHost];
    [v6 setContextId:{objc_msgSend(v5, "contextId")}];
    v7.receiver = self;
    v7.super_class = PRPosterSceneAttachmentView;
    -[PRRenderingView setLevel:](&v7, sel_setLevel_, [v5 level]);
    [(PRPosterSceneAttachmentView *)self setNeedsLayout];
    [(PRPosterSceneAttachmentView *)self layoutIfNeeded];
  }
}

- (void)invalidate
{
  v3.receiver = self;
  v3.super_class = PRPosterSceneAttachmentView;
  [(PRRenderingView *)&v3 invalidate];
  [(PRPosterSceneAttachmentView *)self setAttachment:0];
  [(PRPosterSceneAttachmentView *)self _teardownContentLayer];
}

- (void)_teardownContentLayer
{
  v3 = [(PRPosterSceneAttachmentView *)self contentLayer];
  [v3 removeFromSuperlayer];

  layerHost = self->_layerHost;
  self->_layerHost = 0;
}

- (id)layerHost
{
  layerHost = self->_layerHost;
  if (!layerHost)
  {
    v4 = [MEMORY[0x1E69793A8] layer];
    v5 = self->_layerHost;
    self->_layerHost = v4;

    v6 = self->_layerHost;
    v7 = [(PRPosterSceneAttachmentView *)self layer];
    [v7 bounds];
    [(CALayerHost *)v6 setFrame:?];

    v8 = [(PRPosterSceneAttachmentView *)self layer];
    [v8 addSublayer:self->_layerHost];

    layerHost = self->_layerHost;
  }

  v9 = layerHost;

  return v9;
}

@end