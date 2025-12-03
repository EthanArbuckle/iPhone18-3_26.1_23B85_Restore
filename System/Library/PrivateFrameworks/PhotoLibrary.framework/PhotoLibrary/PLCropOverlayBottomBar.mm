@interface PLCropOverlayBottomBar
- (PLCropOverlayBottomBar)initWithCoder:(id)coder;
- (PLCropOverlayBottomBar)initWithFrame:(CGRect)frame;
- (void)_commonPLCropOverlayBottomBarInitialization;
- (void)_updateBottomBars;
- (void)_updatePreviewBottomBarForPlaybackState;
- (void)_updateStyle;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setCameraBottomBar:(id)bar;
- (void)setInPopover:(BOOL)popover;
- (void)setPlayingVideo:(BOOL)video;
- (void)setPreviewBottomBar:(id)bar;
- (void)setStyle:(int64_t)style animated:(BOOL)animated;
- (void)setWallpaperBottomBar:(id)bar;
@end

@implementation PLCropOverlayBottomBar

- (void)_updateStyle
{
  v3 = 0.0;
  if (self->_style)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 1.0;
  }

  if ([(PLCropOverlayBottomBar *)self _isEditingStyle:?])
  {
    v3 = 1.0;
  }

  [(UIView *)self->_cameraBottomBar setAlpha:v4];
  [(PLCropOverlayPreviewBottomBar *)self->_previewBottomBar setAlpha:v3];
  style = self->_style;
  playbackButton = [(PLCropOverlayPreviewBottomBar *)self->_previewBottomBar playbackButton];
  if (style == 2)
  {
    [(UIButton *)playbackButton setHidden:0];

    [(PLCropOverlayBottomBar *)self _updatePreviewBottomBarForPlaybackState];
  }

  else
  {

    [(UIButton *)playbackButton setHidden:1];
  }
}

- (void)_updatePreviewBottomBarForPlaybackState
{
  playbackButton = [(PLCropOverlayPreviewBottomBar *)self->_previewBottomBar playbackButton];
  playingVideo = self->_playingVideo;
  v5 = MEMORY[0x277D755B8];
  v6 = PLPhotoLibraryFrameworkBundle();
  if (playingVideo)
  {
    v7 = @"PLCameraPickerPause.png";
  }

  else
  {
    v7 = @"PLCameraPickerPlay.png";
  }

  -[UIButton setImage:forState:](playbackButton, "setImage:forState:", [v5 imageNamed:v7 inBundle:v6], 0);
  previewBottomBar = self->_previewBottomBar;

  [(PLCropOverlayPreviewBottomBar *)previewBottomBar setNeedsLayout];
}

- (void)_updateBottomBars
{
  [(PLCropOverlayBottomBar *)self _updateStyle];

  [(PLCropOverlayBottomBar *)self setNeedsLayout];
}

- (void)setInPopover:(BOOL)popover
{
  if (self->_inPopover != popover)
  {
    self->_inPopover = popover;
    [(PLCropOverlayBottomBar *)self _updateBottomBars];
  }
}

- (void)setPlayingVideo:(BOOL)video
{
  if (self->_playingVideo != video)
  {
    self->_playingVideo = video;
    [(PLCropOverlayBottomBar *)self _updatePreviewBottomBarForPlaybackState];
  }
}

- (void)setStyle:(int64_t)style animated:(BOOL)animated
{
  if (self->_style != style)
  {
    v6[5] = v4;
    v6[6] = v5;
    self->_style = style;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __44__PLCropOverlayBottomBar_setStyle_animated___block_invoke;
    v6[3] = &unk_2782A2020;
    v6[4] = self;
    if (animated)
    {
      [MEMORY[0x277D75D18] animateWithDuration:v6 animations:0.3];
    }

    else
    {
      [(PLCropOverlayBottomBar *)self _updateStyle];
    }
  }
}

- (void)setWallpaperBottomBar:(id)bar
{
  wallpaperBottomBar = self->_wallpaperBottomBar;
  if (wallpaperBottomBar != bar)
  {
    [(PLCropOverlayWallpaperBottomBar *)wallpaperBottomBar removeFromSuperview];

    barCopy = bar;
    self->_wallpaperBottomBar = barCopy;
    [(PLCropOverlayBottomBar *)self addSubview:barCopy];

    [(PLCropOverlayBottomBar *)self _updateBottomBars];
  }
}

- (void)setPreviewBottomBar:(id)bar
{
  previewBottomBar = self->_previewBottomBar;
  if (previewBottomBar != bar)
  {
    [(PLCropOverlayPreviewBottomBar *)previewBottomBar removeFromSuperview];

    barCopy = bar;
    self->_previewBottomBar = barCopy;
    [(PLCropOverlayBottomBar *)self addSubview:barCopy];

    [(PLCropOverlayBottomBar *)self _updateBottomBars];
  }
}

- (void)setCameraBottomBar:(id)bar
{
  cameraBottomBar = self->_cameraBottomBar;
  if (cameraBottomBar != bar)
  {

    self->_cameraBottomBar = bar;

    [(PLCropOverlayBottomBar *)self _updateBottomBars];
  }
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = PLCropOverlayBottomBar;
  [(PLCropOverlayBottomBar *)&v11 layoutSubviews];
  [(PLCropOverlayBottomBar *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PLCropOverlayPreviewBottomBar *)self->_previewBottomBar setFrame:?];
  [(PLCropOverlayWallpaperBottomBar *)self->_wallpaperBottomBar setFrame:v4, v6, v8, v10];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PLCropOverlayBottomBar;
  [(PLCropOverlayBottomBar *)&v3 dealloc];
}

- (PLCropOverlayBottomBar)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = PLCropOverlayBottomBar;
  v3 = [(PLCropOverlayBottomBar *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(PLCropOverlayBottomBar *)v3 _commonPLCropOverlayBottomBarInitialization];
  }

  return v4;
}

- (PLCropOverlayBottomBar)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PLCropOverlayBottomBar;
  v3 = [(PLCropOverlayBottomBar *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PLCropOverlayBottomBar *)v3 _commonPLCropOverlayBottomBarInitialization];
  }

  return v4;
}

- (void)_commonPLCropOverlayBottomBarInitialization
{
  self->_style = 0;
  self->_inPopover = 0;
  self->_playingVideo = 0;
}

@end