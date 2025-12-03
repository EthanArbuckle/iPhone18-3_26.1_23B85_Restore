@interface PUParallaxVideoLayerView
- (AVPlayer)player;
- (PUParallaxVideoLayerView)initWithParallaxVideoLayer:(id)layer;
- (id)snapshotViewAfterScreenUpdates:(BOOL)updates;
- (void)_layoutWithCurrentLayoutInfo;
- (void)_updateParallaxVideoLayerProperties;
- (void)layoutWithInfo:(id)info;
- (void)setCurrentLayoutInfo:(id)info;
- (void)setParallaxVideoLayer:(id)layer;
@end

@implementation PUParallaxVideoLayerView

- (id)snapshotViewAfterScreenUpdates:(BOOL)updates
{
  updatesCopy = updates;
  v28.receiver = self;
  v28.super_class = PUParallaxVideoLayerView;
  v5 = [(PUParallaxVideoLayerView *)&v28 snapshotViewAfterScreenUpdates:?];
  contentView = [(PUParallaxVideoLayerView *)self contentView];
  v7 = [contentView snapshotViewAfterScreenUpdates:updatesCopy];

  [v5 addSubview:v7];
  currentLayoutInfo = [(PUParallaxVideoLayerView *)self currentLayoutInfo];
  parallaxVideoLayer = [(PUParallaxVideoLayerView *)self parallaxVideoLayer];
  [parallaxVideoLayer frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  [currentLayoutInfo viewFrameForLayerFrame:{v11, v13, v15, v17}];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  if (currentLayoutInfo)
  {
    [currentLayoutInfo additionalContentTransform];
  }

  else
  {
    memset(&v27, 0, sizeof(v27));
  }

  v30.origin.x = v19;
  v30.origin.y = v21;
  v30.size.width = v23;
  v30.size.height = v25;
  v31 = CGRectApplyAffineTransform(v30, &v27);
  [v7 setFrame:{v31.origin.x, v31.origin.y, v31.size.width, v31.size.height}];

  return v5;
}

- (void)_layoutWithCurrentLayoutInfo
{
  currentLayoutInfo = [(PUParallaxVideoLayerView *)self currentLayoutInfo];
  v4 = currentLayoutInfo;
  if (currentLayoutInfo)
  {
    [currentLayoutInfo containerFrame];
    parallaxVideoLayer = [(PUParallaxVideoLayerView *)self parallaxVideoLayer];
    [parallaxVideoLayer frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    [v4 viewFrameForLayerFrame:{v7, v9, v11, v13}];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    [v4 additionalContentTransform];
    v29.origin.x = v15;
    v29.origin.y = v17;
    v29.size.width = v19;
    v29.size.height = v21;
    v30 = CGRectApplyAffineTransform(v29, &v28);
    x = v30.origin.x;
    y = v30.origin.y;
    width = v30.size.width;
    height = v30.size.height;
    contentView = [(PUParallaxVideoLayerView *)self contentView];
    [contentView setFrame:{x, y, width, height}];

    [v4 additionalTransform];
    v28 = v27;
    [(PUParallaxVideoLayerView *)self setTransform:&v28];
    PXRectWithSize();
    [(PUParallaxVideoLayerView *)self setBounds:?];
    PXRectGetCenter();
    [(PUParallaxVideoLayerView *)self setCenter:?];
  }
}

- (void)setCurrentLayoutInfo:(id)info
{
  infoCopy = info;
  v5 = self->_currentLayoutInfo;
  v6 = v5;
  if (v5 == infoCopy)
  {
  }

  else
  {
    v7 = [(PUParallaxLayerLayoutInfo *)v5 isEqual:?];

    if (!v7)
    {
      objc_storeStrong(&self->_currentLayoutInfo, info);
      [(PUParallaxVideoLayerView *)self _layoutWithCurrentLayoutInfo];
    }
  }
}

- (void)_updateParallaxVideoLayerProperties
{
  parallaxVideoLayer = [(PUParallaxVideoLayerView *)self parallaxVideoLayer];
  video = [parallaxVideoLayer video];

  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = __Block_byref_object_copy__25155;
  v11[4] = __Block_byref_object_dispose__25156;
  player = [(PUParallaxVideoLayerView *)self player];
  v5 = MEMORY[0x1E69DD250];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__PUParallaxVideoLayerView__updateParallaxVideoLayerProperties__block_invoke;
  v7[3] = &unk_1E7B7FFC0;
  v10 = v11;
  v6 = video;
  v8 = v6;
  selfCopy = self;
  [v5 performWithoutAnimation:v7];

  _Block_object_dispose(v11, 8);
}

uint64_t __63__PUParallaxVideoLayerView__updateParallaxVideoLayerProperties__block_invoke(uint64_t a1)
{
  v2 = [*(*(*(a1 + 48) + 8) + 40) currentItem];
  v3 = [v2 asset];
  v4 = *(a1 + 32);

  if (v3 != v4)
  {
    if (!*(*(a1 + 40) + 432))
    {
      v5 = [PUParallaxVideoLayerContentView alloc];
      v6 = [(PUParallaxVideoLayerContentView *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      v7 = *(a1 + 40);
      v8 = *(v7 + 432);
      *(v7 + 432) = v6;

      [*(a1 + 40) addSubview:*(*(a1 + 40) + 432)];
    }

    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      v9 = [MEMORY[0x1E6988098] playerWithPlayerItem:0];
      v10 = *(*(a1 + 48) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      [*(*(*(a1 + 48) + 8) + 40) setMuted:1];
      [*(*(*(a1 + 48) + 8) + 40) setActionAtItemEnd:1];
      [*(*(*(a1 + 48) + 8) + 40) setPreventsDisplaySleepDuringVideoPlayback:0];
      [*(*(*(a1 + 48) + 8) + 40) setAllowsExternalPlayback:0];
      [*(*(*(a1 + 48) + 8) + 40) _setDisallowsVideoLayerDisplayCompositing:1];
      [*(*(*(a1 + 48) + 8) + 40) _setParticipatesInAudioSession:0];
      v12 = *(*(*(a1 + 48) + 8) + 40);
      v13 = [*(a1 + 40) contentView];
      v14 = [v13 _playerLayer];
      [v14 setPlayer:v12];
    }

    v15 = [MEMORY[0x1E69880B0] playerItemWithAsset:*(a1 + 32)];
    [*(*(*(a1 + 48) + 8) + 40) replaceCurrentItemWithPlayerItem:v15];
  }

  v16 = *(a1 + 40);

  return [v16 _layoutWithCurrentLayoutInfo];
}

- (void)layoutWithInfo:(id)info
{
  v5.receiver = self;
  v5.super_class = PUParallaxVideoLayerView;
  infoCopy = info;
  [(PUParallaxLayerView *)&v5 layoutWithInfo:infoCopy];
  [(PUParallaxVideoLayerView *)self setCurrentLayoutInfo:infoCopy, v5.receiver, v5.super_class];
}

- (void)setParallaxVideoLayer:(id)layer
{
  layerCopy = layer;
  v5 = self->_parallaxVideoLayer;
  v6 = v5;
  if (v5 == layerCopy)
  {
  }

  else
  {
    v7 = [(PFParallaxVideoLayer *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_parallaxVideoLayer, layer);
      [(PUParallaxVideoLayerView *)self _updateParallaxVideoLayerProperties];
    }
  }
}

- (AVPlayer)player
{
  contentView = [(PUParallaxVideoLayerView *)self contentView];
  _playerLayer = [contentView _playerLayer];
  player = [_playerLayer player];

  return player;
}

- (PUParallaxVideoLayerView)initWithParallaxVideoLayer:(id)layer
{
  layerCopy = layer;
  v9.receiver = self;
  v9.super_class = PUParallaxVideoLayerView;
  v6 = [(PUParallaxVideoLayerView *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_parallaxVideoLayer, layer);
    [(PUParallaxVideoLayerView *)v7 _updateParallaxVideoLayerProperties];
  }

  return v7;
}

@end