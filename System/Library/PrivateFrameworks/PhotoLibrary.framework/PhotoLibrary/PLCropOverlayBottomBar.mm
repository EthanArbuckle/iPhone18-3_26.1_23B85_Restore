@interface PLCropOverlayBottomBar
- (PLCropOverlayBottomBar)initWithCoder:(id)a3;
- (PLCropOverlayBottomBar)initWithFrame:(CGRect)a3;
- (void)_commonPLCropOverlayBottomBarInitialization;
- (void)_updateBottomBars;
- (void)_updatePreviewBottomBarForPlaybackState;
- (void)_updateStyle;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setCameraBottomBar:(id)a3;
- (void)setInPopover:(BOOL)a3;
- (void)setPlayingVideo:(BOOL)a3;
- (void)setPreviewBottomBar:(id)a3;
- (void)setStyle:(int64_t)a3 animated:(BOOL)a4;
- (void)setWallpaperBottomBar:(id)a3;
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
  v6 = [(PLCropOverlayPreviewBottomBar *)self->_previewBottomBar playbackButton];
  if (style == 2)
  {
    [(UIButton *)v6 setHidden:0];

    [(PLCropOverlayBottomBar *)self _updatePreviewBottomBarForPlaybackState];
  }

  else
  {

    [(UIButton *)v6 setHidden:1];
  }
}

- (void)_updatePreviewBottomBarForPlaybackState
{
  v3 = [(PLCropOverlayPreviewBottomBar *)self->_previewBottomBar playbackButton];
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

  -[UIButton setImage:forState:](v3, "setImage:forState:", [v5 imageNamed:v7 inBundle:v6], 0);
  previewBottomBar = self->_previewBottomBar;

  [(PLCropOverlayPreviewBottomBar *)previewBottomBar setNeedsLayout];
}

- (void)_updateBottomBars
{
  [(PLCropOverlayBottomBar *)self _updateStyle];

  [(PLCropOverlayBottomBar *)self setNeedsLayout];
}

- (void)setInPopover:(BOOL)a3
{
  if (self->_inPopover != a3)
  {
    self->_inPopover = a3;
    [(PLCropOverlayBottomBar *)self _updateBottomBars];
  }
}

- (void)setPlayingVideo:(BOOL)a3
{
  if (self->_playingVideo != a3)
  {
    self->_playingVideo = a3;
    [(PLCropOverlayBottomBar *)self _updatePreviewBottomBarForPlaybackState];
  }
}

- (void)setStyle:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_style != a3)
  {
    v6[5] = v4;
    v6[6] = v5;
    self->_style = a3;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __44__PLCropOverlayBottomBar_setStyle_animated___block_invoke;
    v6[3] = &unk_2782A2020;
    v6[4] = self;
    if (a4)
    {
      [MEMORY[0x277D75D18] animateWithDuration:v6 animations:0.3];
    }

    else
    {
      [(PLCropOverlayBottomBar *)self _updateStyle];
    }
  }
}

- (void)setWallpaperBottomBar:(id)a3
{
  wallpaperBottomBar = self->_wallpaperBottomBar;
  if (wallpaperBottomBar != a3)
  {
    [(PLCropOverlayWallpaperBottomBar *)wallpaperBottomBar removeFromSuperview];

    v6 = a3;
    self->_wallpaperBottomBar = v6;
    [(PLCropOverlayBottomBar *)self addSubview:v6];

    [(PLCropOverlayBottomBar *)self _updateBottomBars];
  }
}

- (void)setPreviewBottomBar:(id)a3
{
  previewBottomBar = self->_previewBottomBar;
  if (previewBottomBar != a3)
  {
    [(PLCropOverlayPreviewBottomBar *)previewBottomBar removeFromSuperview];

    v6 = a3;
    self->_previewBottomBar = v6;
    [(PLCropOverlayBottomBar *)self addSubview:v6];

    [(PLCropOverlayBottomBar *)self _updateBottomBars];
  }
}

- (void)setCameraBottomBar:(id)a3
{
  cameraBottomBar = self->_cameraBottomBar;
  if (cameraBottomBar != a3)
  {

    self->_cameraBottomBar = a3;

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

- (PLCropOverlayBottomBar)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = PLCropOverlayBottomBar;
  v3 = [(PLCropOverlayBottomBar *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(PLCropOverlayBottomBar *)v3 _commonPLCropOverlayBottomBarInitialization];
  }

  return v4;
}

- (PLCropOverlayBottomBar)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PLCropOverlayBottomBar;
  v3 = [(PLCropOverlayBottomBar *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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