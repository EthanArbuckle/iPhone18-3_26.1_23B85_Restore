@interface WLTipsVideoView
- (WLTipsVideoView)initWithTips:(id)tips;
- (void)dealloc;
- (void)layoutSublayersOfLayer:(id)layer;
- (void)setTipsImage;
- (void)setTipsVideo;
- (void)userInterfaceStyleDidChange;
@end

@implementation WLTipsVideoView

- (WLTipsVideoView)initWithTips:(id)tips
{
  v20[1] = *MEMORY[0x277D85DE8];
  tipsCopy = tips;
  v19.receiver = self;
  v19.super_class = WLTipsVideoView;
  v5 = [(WLTipsVideoView *)&v19 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_tips, tipsCopy);
    [(WLTipsVideoView *)v6 setContentMode:1];
    [(WLTipsVideoView *)v6 setAutoresizingMask:18];
    [(WLTipsVideoView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(WLTipsVideoView *)v6 setTipsImage];
    [(WLTipsVideoView *)v6 sizeToFit];
    v7 = [objc_alloc(MEMORY[0x277CE65F8]) initWithPlayerItem:0];
    player = v6->_player;
    v6->_player = v7;

    v9 = [MEMORY[0x277CE65D8] playerLayerWithPlayer:v6->_player];
    playerLayer = v6->_playerLayer;
    v6->_playerLayer = v9;

    v11 = v6->_playerLayer;
    [(WLTipsVideoView *)v6 bounds];
    [(AVPlayerLayer *)v11 setFrame:?];
    layer = [(WLTipsVideoView *)v6 layer];
    [layer addSublayer:v6->_playerLayer];

    [(WLTipsVideoView *)v6 setTipsVideo];
    v13 = objc_opt_self();
    v20[0] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    v15 = [(WLTipsVideoView *)v6 registerForTraitChanges:v14 withAction:sel_userInterfaceStyleDidChange];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel_applicationWillEnterForeground name:*MEMORY[0x277D76758] object:0];
  }

  v17 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = WLTipsVideoView;
  [(WLTipsVideoView *)&v4 dealloc];
}

- (void)setTipsImage
{
  window = [(WLTipsVideoView *)self window];
  traitCollection = [window traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  v6 = MEMORY[0x277D755B8];
  WeakRetained = objc_loadWeakRetained(&self->_tips);
  image = [WeakRetained image];
  v9 = image;
  if (userInterfaceStyle == 2)
  {
    [image dark];
  }

  else
  {
    [image light];
  }
  v10 = ;
  localFile = [v10 localFile];
  v12 = [v6 imageNamed:localFile];

  [(WLTipsVideoView *)self setImage:v12];
}

- (void)setTipsVideo
{
  window = [(WLTipsVideoView *)self window];
  traitCollection = [window traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  WeakRetained = objc_loadWeakRetained(&self->_tips);
  video = [WeakRetained video];
  v8 = video;
  if (userInterfaceStyle == 2)
  {
    [video dark];
  }

  else
  {
    [video light];
  }
  v9 = ;
  localFile = [v9 localFile];

  v10 = [MEMORY[0x277CBEBC0] fileURLWithPath:localFile];
  v11 = [objc_alloc(MEMORY[0x277CE65B0]) initWithURL:v10];
  [(AVQueuePlayer *)self->_player pause];
  [(AVPlayerLooper *)self->_playerLooper disableLooping];
  [(AVQueuePlayer *)self->_player removeAllItems];
  [(AVQueuePlayer *)self->_player insertItem:v11 afterItem:0];
  v12 = [MEMORY[0x277CE65E0] playerLooperWithPlayer:self->_player templateItem:v11];
  playerLooper = self->_playerLooper;
  self->_playerLooper = v12;

  [(AVQueuePlayer *)self->_player play];
}

- (void)userInterfaceStyleDidChange
{
  [(WLTipsVideoView *)self setTipsImage];

  [(WLTipsVideoView *)self setTipsVideo];
}

- (void)layoutSublayersOfLayer:(id)layer
{
  playerLayer = self->_playerLayer;
  [(WLTipsVideoView *)self bounds];

  [(AVPlayerLayer *)playerLayer setFrame:?];
}

@end