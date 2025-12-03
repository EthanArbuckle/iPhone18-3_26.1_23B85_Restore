@interface PRPosterSceneAttachmentView
- (id)layerHost;
- (void)_teardownContentLayer;
- (void)invalidate;
- (void)layoutSubviews;
- (void)setAttachment:(id)attachment;
@end

@implementation PRPosterSceneAttachmentView

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = PRPosterSceneAttachmentView;
  [(PRPosterSceneAttachmentView *)&v6 layoutSubviews];
  contentLayer = [(PRPosterSceneAttachmentView *)self contentLayer];
  v4 = contentLayer;
  if (contentLayer)
  {
    superlayer = [contentLayer superlayer];
    [superlayer bounds];
    [v4 setFrame:?];
  }
}

- (void)setAttachment:(id)attachment
{
  attachmentCopy = attachment;
  if (([attachmentCopy isEqual:self->_attachment] & 1) == 0)
  {
    objc_storeStrong(&self->_attachment, attachment);
    layerHost = [(PRPosterSceneAttachmentView *)self layerHost];
    [layerHost setContextId:{objc_msgSend(attachmentCopy, "contextId")}];
    v7.receiver = self;
    v7.super_class = PRPosterSceneAttachmentView;
    -[PRRenderingView setLevel:](&v7, sel_setLevel_, [attachmentCopy level]);
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
  contentLayer = [(PRPosterSceneAttachmentView *)self contentLayer];
  [contentLayer removeFromSuperlayer];

  layerHost = self->_layerHost;
  self->_layerHost = 0;
}

- (id)layerHost
{
  layerHost = self->_layerHost;
  if (!layerHost)
  {
    layer = [MEMORY[0x1E69793A8] layer];
    v5 = self->_layerHost;
    self->_layerHost = layer;

    v6 = self->_layerHost;
    layer2 = [(PRPosterSceneAttachmentView *)self layer];
    [layer2 bounds];
    [(CALayerHost *)v6 setFrame:?];

    layer3 = [(PRPosterSceneAttachmentView *)self layer];
    [layer3 addSublayer:self->_layerHost];

    layerHost = self->_layerHost;
  }

  v9 = layerHost;

  return v9;
}

@end