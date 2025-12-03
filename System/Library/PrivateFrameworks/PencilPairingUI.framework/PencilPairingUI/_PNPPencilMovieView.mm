@interface _PNPPencilMovieView
- (_PNPPencilMovieView)initWithDeviceType:(int64_t)type;
- (id)assetName;
- (void)_applyFilterToLayer;
- (void)_playbackEnded;
- (void)completeRevolutionWithCompletionBlock:(id)block;
- (void)prepare;
- (void)teardown;
@end

@implementation _PNPPencilMovieView

- (_PNPPencilMovieView)initWithDeviceType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = _PNPPencilMovieView;
  result = [(_PNPPencilMovieView *)&v5 init];
  if (result)
  {
    result->_deviceType = type;
  }

  return result;
}

- (void)_playbackEnded
{
  if (self->_repeat)
  {
    v10 = v2;
    v11 = v3;
    player = self->_player;
    v8 = *MEMORY[0x277CC08F0];
    v9 = *(MEMORY[0x277CC08F0] + 16);
    [(AVPlayer *)player seekToTime:&v8];
    v6 = self->_player;
    [objc_opt_class() _playbackRate];
    *&v7 = v7;
    [(AVPlayer *)v6 setRate:v7];
  }
}

- (void)teardown
{
  _playerLayer = [(_PNPPencilMovieView *)self _playerLayer];
  [_playerLayer setPlayer:0];
}

- (id)assetName
{
  if (self->_deviceType == 4)
  {
    return @"apple_pencil-B532";
  }

  else
  {
    return @"apple_pencil_2";
  }
}

- (void)prepare
{
  self->_repeat = 1;
  [(_PNPPencilMovieView *)self _applyFilterToLayer];
  if (!self->_player)
  {
    assetName = [(_PNPPencilMovieView *)self assetName];
    v4 = PencilPairingUIBundle();
    v5 = [v4 URLForResource:assetName withExtension:@"mov"];

    v6 = [MEMORY[0x277CE6598] playerWithURL:v5];
    player = self->_player;
    self->_player = v6;

    [(AVPlayer *)self->_player setAllowsExternalPlayback:0];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v9 = *MEMORY[0x277CE60C0];
    currentItem = [(AVPlayer *)self->_player currentItem];
    [defaultCenter addObserver:self selector:sel__playbackEnded name:v9 object:currentItem];
  }

  _playerLayer = [(_PNPPencilMovieView *)self _playerLayer];
  [_playerLayer setPlayer:self->_player];

  v12 = self->_player;
  [objc_opt_class() _playbackRate];
  *&v13 = v13;
  [(AVPlayer *)v12 setRate:v13];
  mEMORY[0x277CB83F8] = [MEMORY[0x277CB83F8] sharedInstance];
  [mEMORY[0x277CB83F8] setCategory:*MEMORY[0x277CB8020] error:0];
}

- (void)_applyFilterToLayer
{
  v25[2] = *MEMORY[0x277D85DE8];
  traitCollection = [(_PNPPencilMovieView *)self traitCollection];
  v4 = [traitCollection userInterfaceStyle] == 1;

  traitCollection2 = [(_PNPPencilMovieView *)self traitCollection];
  if ([traitCollection2 userInterfaceStyle] == 1)
  {
    v6 = 0.5;
  }

  else
  {
    v6 = 0.19;
  }

  if (self->_deviceType == 4)
  {
    traitCollection3 = [(_PNPPencilMovieView *)self traitCollection];
    if ([traitCollection3 userInterfaceStyle] == 1)
    {
      v8 = 1.0;
    }

    else
    {
      v8 = 0.98;
    }

    traitCollection4 = [(_PNPPencilMovieView *)self traitCollection];
    if ([traitCollection4 userInterfaceStyle] == 1)
    {
      v6 = 0.5;
    }

    else
    {
      v6 = 0.41;
    }
  }

  else
  {
    v8 = dbl_25E1EAA30[v4];
  }

  v10 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA2C0]];
  v11 = v8;
  v17 = v11;
  v18 = *(MEMORY[0x277CD9DA0] + 4);
  v19 = *(MEMORY[0x277CD9DA0] + 20);
  v20 = v11;
  v21 = *(MEMORY[0x277CD9DA0] + 28);
  v22 = *(MEMORY[0x277CD9DA0] + 44);
  v23 = v11;
  *v24 = *(MEMORY[0x277CD9DA0] + 52);
  *&v24[12] = *(MEMORY[0x277CD9DA0] + 64);
  v12 = [MEMORY[0x277CCAE60] valueWithCAColorMatrix:&v17];
  [v10 setValue:v12 forKey:@"inputColorMatrix"];

  v13 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA270]];
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:v6];
  [v13 setValue:v14 forKey:@"inputAmount"];

  layer = [(_PNPPencilMovieView *)self layer];
  v25[0] = v10;
  v25[1] = v13;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  [layer setFilters:v16];
}

- (void)completeRevolutionWithCompletionBlock:(id)block
{
  blockCopy = block;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__0;
  v18 = __Block_byref_object_dispose__0;
  currentItem = [(AVPlayer *)self->_player currentItem];
  [(AVPlayer *)self->_player rate];
  v6 = v15[5];
  if (v6)
  {
    v7 = v5;
    asset = [v6 asset];

    if (asset)
    {
      asset2 = [v15[5] asset];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __61___PNPPencilMovieView_completeRevolutionWithCompletionBlock___block_invoke;
      v10[3] = &unk_279A0A808;
      v12 = &v14;
      v13 = v7;
      v11 = blockCopy;
      [asset2 loadValuesAsynchronouslyForKeys:&unk_286FED428 completionHandler:v10];
    }
  }

  _Block_object_dispose(&v14, 8);
}

@end