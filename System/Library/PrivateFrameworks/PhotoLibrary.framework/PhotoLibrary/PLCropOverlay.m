@interface PLCropOverlay
- (BOOL)motionToggleHidden;
- (CGRect)bottomBarFrame;
- (CGRect)cropRect;
- (CGRect)titleRect;
- (PLCropOverlay)initWithFrame:(CGRect)a3 mode:(int)a4 offsettingStatusBar:(BOOL)a5;
- (id)_bottomBarFileSizeMenu;
- (id)_bottomBarFileSizeMenuActions;
- (id)_fileResizingButton;
- (id)_newOverlayViewWithFrame:(CGRect)a3 lighterEdgeOnTop:(BOOL)a4;
- (id)bottomBar;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)overlayContainerView;
- (void)_backgroundSavePhoto:(id)a3 cropRect:(CGRect)a4 minimalCropDimension:(double)a5;
- (void)_createCropView;
- (void)_fadeOutCompleted:(id)a3;
- (void)_savePhotoFinished:(id)a3;
- (void)_setMode:(int)a3;
- (void)_tappedBottomBarCancelButton:(id)a3;
- (void)_tappedBottomBarDoneButton:(id)a3;
- (void)_tappedBottomBarMotionToggle;
- (void)_tappedBottomBarPlaybackButton:(id)a3;
- (void)_tappedBottomBarSetBothButton;
- (void)_tappedBottomBarSetHomeButton;
- (void)_tappedBottomBarSetLockButton;
- (void)_updateCropRectInRect:(CGRect)a3;
- (void)_updateEditImageCancelButtonTitle;
- (void)_updateEditImageDoneButtonTitle;
- (void)_updateMotionToggle;
- (void)_updateTitle;
- (void)_updateToolbarItems:(BOOL)a3;
- (void)_updateWallpaperBottomBarSettingButtons;
- (void)beginBackgroundSaveWithTile:(id)a3 progressTitle:(id)a4 completionCallbackTarget:(id)a5 options:(int)a6;
- (void)cancelButtonClicked:(id)a3;
- (void)cropOverlayBottomBarPauseButtonClicked:(id)a3;
- (void)cropOverlayBottomBarPlayButtonClicked:(id)a3;
- (void)dealloc;
- (void)didCapturePhoto;
- (void)didCaptureVideo;
- (void)didPauseVideo;
- (void)didPlayVideo;
- (void)dismiss;
- (void)insertIrisView:(id)a3;
- (void)layoutSubviews;
- (void)removeProgress;
- (void)setCameraBottomBar:(id)a3;
- (void)setCancelButtonTitle:(id)a3;
- (void)setControlsAreVisible:(BOOL)a3;
- (void)setCropRectVisible:(BOOL)a3 duration:(float)a4;
- (void)setDefaultCancelButtonTitle:(id)a3;
- (void)setDefaultOKButtonTitle:(id)a3;
- (void)setDisplayedInPopover:(BOOL)a3;
- (void)setFileResizingHidden:(BOOL)a3;
- (void)setFileResizingTitle:(id)a3;
- (void)setIsEditingHomeScreen:(BOOL)a3;
- (void)setIsEditingLockScreen:(BOOL)a3;
- (void)setMotionToggleHidden:(BOOL)a3;
- (void)setMotionToggleIsOn:(BOOL)a3;
- (void)setOKButtonShowsCamera:(BOOL)a3;
- (void)setOKButtonTitle:(id)a3;
- (void)setOverlayContainerView:(id)a3;
- (void)setPreviewMode:(BOOL)a3;
- (void)setShowProgress:(BOOL)a3 title:(id)a4;
- (void)setShowsCropRegion:(BOOL)a3;
- (void)setTitle:(id)a3;
- (void)setTitle:(id)a3 okButtonTitle:(id)a4;
- (void)setTitleHidden:(BOOL)a3 animationDuration:(double)a4;
- (void)setUserInteractionEnabled:(BOOL)a3;
- (void)statusBarHeightDidChange:(id)a3;
@end

@implementation PLCropOverlay

- (id)_newOverlayViewWithFrame:(CGRect)a3 lighterEdgeOnTop:(BOOL)a4
{
  v4 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v17.width = 1.0;
  v17.height = 5.0;
  UIGraphicsBeginImageContext(v17);
  [objc_msgSend(MEMORY[0x277D75348] colorWithWhite:0.098 alpha:{0.62), "set"}];
  v18.origin.x = 0.0;
  v18.origin.y = 0.0;
  v18.size.width = 1.0;
  v18.size.height = 5.0;
  UIRectFillUsingBlendMode(v18, kCGBlendModeNormal);
  [objc_msgSend(MEMORY[0x277D75348] colorWithWhite:1.0 alpha:{0.37), "set"}];
  if (v4)
  {
    v9 = 1.0;
  }

  else
  {
    v9 = 3.0;
  }

  v10 = 0;
  v11 = 1.0;
  v12 = 1.0;
  UIRectFillUsingBlendMode(*(&v9 - 1), kCGBlendModeCopy);
  ImageFromCurrentImageContext = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v14 = [(UIImage *)ImageFromCurrentImageContext resizableImageWithCapInsets:1 resizingMode:2.0, 0.0, 2.0, 0.0];
  v15 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{x, y, width, height}];
  [v15 setImage:v14];
  return v15;
}

- (void)_updateCropRectInRect:(CGRect)a3
{
  p_cropRect = &self->_cropRect;
  self->_cropRect.origin.x = 0.0;
  self->_cropRect.origin.y = 0.0;
  if (a3.size.width >= a3.size.height)
  {
    a3.size.width = a3.size.height;
  }

  self->_cropRect.size.width = a3.size.width;
  self->_cropRect.size.height = a3.size.width;
  UIRectCenteredIntegralRect();
  p_cropRect->origin.x = v4;
  p_cropRect->origin.y = v5;
  p_cropRect->size.width = v6;
  p_cropRect->size.height = v7;
}

- (void)_updateToolbarItems:(BOOL)a3
{
  v3 = a3;
  v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:5 target:0 action:0];
  v6 = objc_alloc(MEMORY[0x277D751E0]);
  if (v3)
  {
    v7 = 17;
  }

  else
  {
    v7 = 18;
  }

  v8 = &selRef__playButtonPressed_;
  if (!v3)
  {
    v8 = &selRef__pauseButtonPressed_;
  }

  v9 = [v6 initWithBarButtonSystemItem:v7 target:self action:*v8];
  -[UIToolbar setItems:](self->_customToolbar, "setItems:", [MEMORY[0x277CBEA60] arrayWithObjects:{v5, v9, v5, 0}]);
}

- (void)_updateEditImageCancelButtonTitle
{
  v3 = [(PLCropOverlayPreviewBottomBar *)[(PLCropOverlayBottomBar *)[(PLCropOverlay *)self _bottomBar] previewBottomBar] cancelButton];
  v4 = [(PLCropOverlay *)self defaultCancelButtonTitle];
  if (![(NSString *)v4 length])
  {
    v4 = PLLocalizedFrameworkString();
  }

  [(UIButton *)v3 setTitle:v4 forState:0];
}

- (void)_updateEditImageDoneButtonTitle
{
  mode = self->_mode;
  v4 = mode > 7;
  v5 = (1 << mode) & 0x92;
  if (!v4 && v5 != 0)
  {
    v8 = [(PLCropOverlayPreviewBottomBar *)[(PLCropOverlayBottomBar *)[(PLCropOverlay *)self _bottomBar] previewBottomBar] doneButton];
    v9 = [(PLCropOverlay *)self defaultOKButtonTitle];
    if (![(NSString *)v9 length])
    {
      v9 = PLLocalizedFrameworkString();
    }

    [(UIButton *)v8 setTitle:v9 forState:0];
  }
}

- (void)_updateTitle
{
  v3 = PLLocalizedFrameworkString();

  [(PLCropOverlay *)self setTitle:v3];
}

- (void)setFileResizingHidden:(BOOL)a3
{
  v3 = a3;
  v4 = [(PLCropOverlay *)self _fileResizingButton];

  [v4 setHidden:v3];
}

- (void)setFileResizingTitle:(id)a3
{
  v4 = [(PLCropOverlay *)self _fileResizingButton];

  [v4 setTitle:a3 forState:0];
}

- (id)_fileResizingButton
{
  v2 = [(PLCropOverlayBottomBar *)[(PLCropOverlay *)self _bottomBar] previewBottomBar];

  return [(PLCropOverlayPreviewBottomBar *)v2 fileResizingButton];
}

- (void)setPreviewMode:(BOOL)a3
{
  v3 = *(self + 504);
  if ((v3 & 1) != a3)
  {
    *(self + 504) = v3 & 0xFE | a3;
    [(PLCropOverlay *)self _updateTitle];
    [(UIView *)self->_wildcatPickerTopView setHidden:*(self + 504) & 1];
    [(UIView *)self->_wildcatPickerBottomView setHidden:*(self + 504) & 1];
    v5 = (*(self + 504) & 1) == 0;

    [(PLCropOverlay *)self setCropRectVisible:v5 duration:0.0];
  }
}

- (void)setTitleHidden:(BOOL)a3 animationDuration:(double)a4
{
  v6 = 1.0;
  if (a3)
  {
    v6 = 0.0;
  }

  if (a4 <= 0.0)
  {
    titleLabel = self->_titleLabel;

    [(UILabel *)titleLabel setAlpha:v6];
  }

  else
  {
    v8[6] = v4;
    v8[7] = v5;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __50__PLCropOverlay_setTitleHidden_animationDuration___block_invoke;
    v8[3] = &unk_2782A22F0;
    v8[4] = self;
    *&v8[5] = v6;
    [MEMORY[0x277D75D18] animateWithDuration:v8 animations:?];
  }
}

- (void)setShowsCropRegion:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 504) = *(self + 504) & 0xEF | v3;
}

- (void)removeProgress
{
  [(PLProgressHUD *)self->_hud removeFromSuperview];

  self->_hud = 0;
}

- (void)setShowProgress:(BOOL)a3 title:(id)a4
{
  if (a3 && ([(PLCropOverlay *)self isTelephonyUIMode:self->_mode]|| [(PLCropOverlay *)self isWallpaperUIMode:self->_mode]))
  {

    v6 = objc_alloc_init(PLProgressHUD);
    self->_hud = v6;
    [(PLProgressHUD *)v6 setText:a4];
    hud = self->_hud;

    [(PLProgressHUD *)hud showInView:self];
  }

  else
  {
    v8 = self->_hud;

    [(PLProgressHUD *)v8 hide];
  }
}

- (void)setCancelButtonTitle:(id)a3
{
  if (![(PLCropOverlay *)self isTelephonyUIMode:self->_mode])
  {
    [(UIButton *)[(PLCropOverlayPreviewBottomBar *)[(PLCropOverlayBottomBar *)self->__bottomBar previewBottomBar] cancelButton] setTitle:a3 forState:0];
    bottomBar = self->__bottomBar;

    [(PLCropOverlayBottomBar *)bottomBar setNeedsLayout];
  }
}

- (void)setOKButtonShowsCamera:(BOOL)a3
{
  if (![(PLCropOverlay *)self isTelephonyUIMode:self->_mode])
  {
    bottomBar = self->__bottomBar;

    [(PLCropOverlayBottomBar *)bottomBar setStyle:0];
  }
}

- (void)setDefaultCancelButtonTitle:(id)a3
{
  if (self->_defaultCancelButtonTitle != a3 && ([a3 isEqualToString:?] & 1) == 0)
  {

    self->_defaultCancelButtonTitle = [a3 copy];

    [(PLCropOverlay *)self _updateEditImageCancelButtonTitle];
  }
}

- (void)setDefaultOKButtonTitle:(id)a3
{
  if (self->_defaultOKButtonTitle != a3 && ([a3 isEqualToString:?] & 1) == 0)
  {

    self->_defaultOKButtonTitle = [a3 copy];

    [(PLCropOverlay *)self _updateEditImageDoneButtonTitle];
  }
}

- (void)setOKButtonTitle:(id)a3
{
  if (![(PLCropOverlay *)self isTelephonyUIMode:self->_mode])
  {
    [(UIButton *)[(PLCropOverlayPreviewBottomBar *)[(PLCropOverlayBottomBar *)self->__bottomBar previewBottomBar] doneButton] setTitle:a3 forState:0];
    [(PLCropOverlayBottomBar *)self->__bottomBar setNeedsLayout];
  }

  [(UIButton *)self->_okButton setTitle:a3 forState:0];
  if (self->_mode == 6)
  {
    v5 = [(PLCropOverlayWallpaperBottomBar *)[(PLCropOverlayBottomBar *)self->__bottomBar wallpaperBottomBar] doSetButton];

    [(PLWallpaperButton *)v5 setTitle:a3 forState:0];
  }
}

- (CGRect)titleRect
{
  if ([(PLCropOverlay *)self isTelephonyUIMode:self->_mode])
  {
    [(UILabel *)self->_titleLabel frame];
  }

  else
  {
    v3 = *MEMORY[0x277CBF3A0];
    v4 = *(MEMORY[0x277CBF3A0] + 8);
    v5 = *(MEMORY[0x277CBF3A0] + 16);
    v6 = *(MEMORY[0x277CBF3A0] + 24);
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)setTitle:(id)a3
{
  if ([(PLCropOverlay *)self isTelephonyUIMode:self->_mode])
  {
    [(UILabel *)self->_titleLabel setText:a3];
    [(UILabel *)self->_titleLabel sizeToFit];

    [(PLCropOverlay *)self setNeedsLayout];
  }

  else if (self->_mode == 6)
  {
    v5 = [(PLCropOverlayBottomBar *)self->__bottomBar wallpaperBottomBar];

    [(PLCropOverlayWallpaperBottomBar *)v5 setText:a3];
  }
}

- (void)setTitle:(id)a3 okButtonTitle:(id)a4
{
  if ([(PLCropOverlay *)self isTelephonyUIMode:self->_mode])
  {
    [(UILabel *)self->_titleLabel setText:a3];
    [(UILabel *)self->_titleLabel sizeToFit];
    [(PLCropOverlay *)self setNeedsLayout];
    okButton = self->_okButton;

    [(UIButton *)okButton setTitle:a4 forState:0];
  }
}

- (CGRect)cropRect
{
  v3 = MEMORY[0x277CBF3A0];
  x = *MEMORY[0x277CBF3A0];
  y = *(MEMORY[0x277CBF3A0] + 8);
  v6 = [(PLCropOverlay *)self isTelephonyUIMode:self->_mode];
  bottomBar = self->__bottomBar;
  if (v6)
  {
    if ([(PLCropOverlayBottomBar *)bottomBar previewBottomBar])
    {
      contactPhotoOverlay = self->_contactPhotoOverlay;
      if (contactPhotoOverlay && ([(PLContactPhotoOverlay *)contactPhotoOverlay bounds], !CGRectIsEmpty(v28)))
      {
        [(PLContactPhotoOverlay *)self->_contactPhotoOverlay inscribingBounds];
      }

      else
      {
        [(PLCropOverlay *)self bounds];
      }
    }

    else
    {
      [(PLCropOverlay *)self bounds];
      [(UIImageView *)self->_bottomShineView frame];
      [(UIImageView *)self->_topShineView frame];
      CGRectGetMaxY(v29);
      UIRectCenteredIntegralRect();
    }

    x = v9;
    y = v10;
    width = v11;
  }

  else if (bottomBar)
  {
    x = self->_cropRect.origin.x;
    y = self->_cropRect.origin.y;
    width = self->_cropRect.size.width;
    height = self->_cropRect.size.height;
  }

  else
  {
    width = *(v3 + 16);
    height = *(v3 + 24);
    if (self->_wildcatPickerBottomView && self->_wildcatPickerTopView)
    {
      [(PLCropOverlay *)self bounds];
      x = v14;
      v16 = v15;
      width = v17;
      v19 = v18;
      [(UIView *)self->_wildcatPickerTopView frame];
      v21 = v20;
      v23 = v22;
      [(UIView *)self->_wildcatPickerBottomView frame];
      y = v16 + v21 + v23;
      height = v19 - (v21 + v23 + v24);
    }
  }

  v25 = x;
  v26 = y;
  v27 = width;
  result.size.height = height;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = PLCropOverlay;
  v5 = [(PLCropOverlay *)&v9 hitTest:a4 withEvent:a3.x, a3.y];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  overlayContainerView = self->_overlayContainerView;
  if ((!overlayContainerView || v5 == overlayContainerView || ![(UIView *)v5 isDescendantOfView:?]) && (isKindOfClass & 1) == 0)
  {
    return 0;
  }

  return v5;
}

- (void)setUserInteractionEnabled:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = PLCropOverlay;
  [(PLCropOverlay *)&v5 setUserInteractionEnabled:?];
  [(PLCropOverlayBottomBar *)[(PLCropOverlay *)self _bottomBar] setUserInteractionEnabled:v3];
}

- (void)cropOverlayBottomBarPauseButtonClicked:(id)a3
{
  objc_loadWeak(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    Weak = objc_loadWeak(&self->_delegate);

    [Weak cropOverlayPause:self];
  }
}

- (void)cropOverlayBottomBarPlayButtonClicked:(id)a3
{
  objc_loadWeak(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    Weak = objc_loadWeak(&self->_delegate);

    [Weak cropOverlayPlay:self];
  }
}

- (void)_tappedBottomBarPlaybackButton:(id)a3
{
  [(PLCropOverlayBottomBar *)self->__bottomBar togglePlaybackState];
  v4 = [(PLCropOverlayBottomBar *)self->__bottomBar isPlayingVideo];
  objc_loadWeak(&self->_delegate);
  if (v4)
  {
    if (objc_opt_respondsToSelector())
    {
      Weak = objc_loadWeak(&self->_delegate);

      [Weak cropOverlayPlay:self];
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    v6 = objc_loadWeak(&self->_delegate);

    [v6 cropOverlayPause:self];
  }
}

- (BOOL)motionToggleHidden
{
  v2 = [(PLCropOverlay *)self wallpaperBottomBar];

  return [(PLCropOverlayWallpaperBottomBar *)v2 motionToggleHidden];
}

- (void)setMotionToggleHidden:(BOOL)a3
{
  v3 = a3;
  v4 = [(PLCropOverlay *)self wallpaperBottomBar];

  [(PLCropOverlayWallpaperBottomBar *)v4 setMotionToggleHidden:v3];
}

- (void)_updateWallpaperBottomBarSettingButtons
{
  isEditingLockScreen = self->_isEditingLockScreen;
  if (isEditingLockScreen)
  {
    v4 = [(PLCropOverlay *)self wallpaperBottomBar];
  }

  else
  {
    isEditingHomeScreen = self->_isEditingHomeScreen;
    v4 = [(PLCropOverlay *)self wallpaperBottomBar];
    if (isEditingHomeScreen)
    {
      v6 = 1;
      goto LABEL_6;
    }
  }

  v6 = 0;
LABEL_6:
  [(PLCropOverlayWallpaperBottomBar *)v4 setShouldOnlyShowHomeScreenButton:v6];
  v7 = [(PLCropOverlay *)self wallpaperBottomBar];

  [(PLCropOverlayWallpaperBottomBar *)v7 setShouldOnlyShowLockScreenButton:isEditingLockScreen];
}

- (void)setIsEditingLockScreen:(BOOL)a3
{
  if (self->_isEditingLockScreen != a3)
  {
    self->_isEditingLockScreen = a3;
    [(PLCropOverlay *)self _updateWallpaperBottomBarSettingButtons];
  }
}

- (void)setIsEditingHomeScreen:(BOOL)a3
{
  if (self->_isEditingHomeScreen != a3)
  {
    self->_isEditingHomeScreen = a3;
    [(PLCropOverlay *)self _updateWallpaperBottomBarSettingButtons];
  }
}

- (void)_updateMotionToggle
{
  v2 = [(PLCropOverlayWallpaperBottomBar *)[(PLCropOverlay *)self wallpaperBottomBar] motionToggle];
  v3 = PLLocalizedFrameworkString();

  [(PLWallpaperButton *)v2 setTitle:v3 forState:0];
}

- (void)setMotionToggleIsOn:(BOOL)a3
{
  if (self->_motionToggleIsOn != a3)
  {
    self->_motionToggleIsOn = a3;
    [(PLCropOverlay *)self _updateMotionToggle];
    v5 = [(PLCropOverlay *)self wallpaperBottomBar];

    [(PLCropOverlayWallpaperBottomBar *)v5 setNeedsLayout];
  }
}

- (id)_bottomBarFileSizeMenuActions
{
  objc_loadWeak(&self->_delegate);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  Weak = objc_loadWeak(&self->_delegate);

  return [Weak cropOverlayFileSizeMenuActions:self];
}

- (id)_bottomBarFileSizeMenu
{
  v11[1] = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v2 = MEMORY[0x277D753F0];
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __39__PLCropOverlay__bottomBarFileSizeMenu__block_invoke;
  v8 = &unk_2782A1980;
  objc_copyWeak(&v9, &location);
  v11[0] = [v2 elementWithProvider:&v5];
  v3 = [MEMORY[0x277D75710] menuWithTitle:&stru_282C49210 children:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v11, 1, v5, v6, v7, v8)}];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
  return v3;
}

uint64_t __39__PLCropOverlay__bottomBarFileSizeMenu__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [objc_loadWeak((a1 + 32)) _bottomBarFileSizeMenuActions];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = *(a2 + 16);

  return v5(a2, v4);
}

- (void)_tappedBottomBarMotionToggle
{
  [(PLCropOverlay *)self setMotionToggleIsOn:!self->_motionToggleIsOn];
  objc_loadWeak(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    Weak = objc_loadWeak(&self->_delegate);
    motionToggleIsOn = self->_motionToggleIsOn;

    [Weak motionToggledManually:motionToggleIsOn];
  }
}

- (void)_tappedBottomBarSetBothButton
{
  [(PLCropOverlay *)self setUserInteractionEnabled:0];
  objc_loadWeak(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    Weak = objc_loadWeak(&self->_delegate);

    [Weak setImageAsHomeScreenAndLockScreenClicked:self];
  }
}

- (void)_tappedBottomBarSetLockButton
{
  [(PLCropOverlay *)self setUserInteractionEnabled:0];
  objc_loadWeak(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    Weak = objc_loadWeak(&self->_delegate);

    [Weak setImageAsLockScreenClicked:self];
  }
}

- (void)_tappedBottomBarSetHomeButton
{
  [(PLCropOverlay *)self setUserInteractionEnabled:0];
  objc_loadWeak(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    Weak = objc_loadWeak(&self->_delegate);

    [Weak setImageAsHomeScreenClicked:self];
  }
}

- (void)_tappedBottomBarDoneButton:(id)a3
{
  [(PLCropOverlay *)self setUserInteractionEnabled:0];
  objc_loadWeak(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    Weak = objc_loadWeak(&self->_delegate);

    [Weak cropOverlayWasOKed:self];
  }
}

- (void)_tappedBottomBarCancelButton:(id)a3
{
  [(PLCropOverlay *)self setUserInteractionEnabled:0];
  objc_loadWeak(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [objc_loadWeak(&self->_delegate) cropOverlayWasCancelled:self];
  }

  if ((*(self + 504) & 8) != 0)
  {
    *(self + 504) &= ~8u;
    [(PLCropOverlayBottomBar *)self->__bottomBar setStyle:0 animated:1];
    LODWORD(v4) = 0.5;
    [(PLCropOverlay *)self setCropRectVisible:0 duration:v4];
    if ([(PLCropOverlay *)self contactPhotoOverlay])
    {
      v5 = [(PLCropOverlay *)self contactPhotoOverlay];

      [(UIView *)v5 pl_setHidden:1 animated:1];
    }
  }
}

- (void)cancelButtonClicked:(id)a3
{
  [(PLCropOverlay *)self setUserInteractionEnabled:0];
  objc_loadWeak(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    Weak = objc_loadWeak(&self->_delegate);

    [Weak cropOverlayWasCancelled:self];
  }
}

- (void)_fadeOutCompleted:(id)a3
{
  [(PLCropOverlay *)self removeFromSuperview];

  v4 = self;
}

- (void)dismiss
{
  v3 = self;
  [(PLCropOverlay *)self setUserInteractionEnabled:0];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __24__PLCropOverlay_dismiss__block_invoke;
  v5[3] = &unk_2782A2020;
  v5[4] = self;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __24__PLCropOverlay_dismiss__block_invoke_2;
  v4[3] = &unk_2782A2048;
  v4[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v5 animations:v4 completion:0.5];
  [(PLProgressHUD *)self->_hud done];
  [(PLProgressHUD *)self->_hud removeFromSuperview];

  self->_hud = 0;
}

- (void)statusBarHeightDidChange:(id)a3
{
  if ([(PLCropOverlay *)self isTelephonyUIMode:self->_mode])
  {
    [(UIImageView *)self->_topShineView frame];
    v5 = v4;
    v7 = v6;
    [objc_msgSend(MEMORY[0x277D75128] "sharedApplication")];
    *&v8 = v8;
    if (v7 != *&v8)
    {
      [(UIImageView *)self->_topShineView setFrame:v5];

      [(PLCropOverlay *)self setNeedsLayout];
    }
  }

  else
  {
    cropView = self->_cropView;
    if (cropView)
    {
      [(PLCropOverlayCropView *)cropView frame];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
      [objc_msgSend(MEMORY[0x277D75128] "sharedApplication")];
      *&v18 = v18;
      v19 = *&v18 - self->_statusBarHeight;
      self->_statusBarHeight = *&v18;
      v20 = v19;
      v21 = v13 + v19;
      v22 = self->_cropView;

      [(PLCropOverlayCropView *)v22 setFrame:v11, v21, v15, v17 - v20];
    }
  }
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];

  v3.receiver = self;
  v3.super_class = PLCropOverlay;
  [(PLCropOverlay *)&v3 dealloc];
}

- (void)didPauseVideo
{
  if (self->__bottomBar)
  {
    [(PLCropOverlayBottomBar *)self->__bottomBar setPlayingVideo:0];
  }

  else
  {
    [(PLCropOverlay *)self _updateToolbarItems:1];
  }
}

- (void)didPlayVideo
{
  if (self->__bottomBar)
  {
    [(PLCropOverlayBottomBar *)self->__bottomBar setPlayingVideo:1];
  }

  else
  {
    [(PLCropOverlay *)self _updateToolbarItems:0];
  }
}

- (void)didCaptureVideo
{
  if (!self->_mode)
  {
    *(self + 504) |= 8u;
    v4 = [(PLCropOverlayBottomBar *)self->__bottomBar previewBottomBar];
    [(UIButton *)[(PLCropOverlayPreviewBottomBar *)v4 doneButton] setTitle:PLLocalizedFrameworkString() forState:0];
    [(PLCropOverlayPreviewBottomBar *)v4 setNeedsLayout];
    bottomBar = self->__bottomBar;

    [(PLCropOverlayBottomBar *)bottomBar setStyle:2 animated:1];
  }
}

- (void)didCapturePhoto
{
  mode = self->_mode;
  if (mode == 3 || mode == 0)
  {
    *(self + 504) |= 8u;
    v5 = [(PLCropOverlayBottomBar *)self->__bottomBar previewBottomBar];
    [(UIButton *)[(PLCropOverlayPreviewBottomBar *)v5 doneButton] setTitle:[(PLCropOverlay *)self defaultOKButtonTitle] forState:0];
    [(PLCropOverlayPreviewBottomBar *)v5 setNeedsLayout];
    [(PLCropOverlay *)self setCropRectVisible:(*(self + 504) >> 4) & 1 duration:0.0];
    [(PLCropOverlayBottomBar *)self->__bottomBar setStyle:1 animated:1];
    if ([(PLCropOverlay *)self contactPhotoOverlay])
    {
      v6 = [(PLCropOverlay *)self contactPhotoOverlay];

      [(UIView *)v6 pl_setHidden:0 animated:1];
    }
  }
}

- (void)_setMode:(int)a3
{
  self->_mode = a3;
  if (!self->__bottomBar)
  {
    return;
  }

  if (a3 <= 6 && ((1 << a3) & 0x45) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(PLCropOverlay *)self isTelephonyUIMode:*&a3]^ 1;
  }

  [(PLCropOverlay *)self setCropRectVisible:v5 duration:0.0];
  v6 = [(PLCropOverlay *)self _bottomBar];
  v7 = [(PLCropOverlayBottomBar *)v6 previewBottomBar];
  v8 = [(PLCropOverlayPreviewBottomBar *)v7 doneButton];
  v9 = [(PLContactPhotoOverlay *)[(PLCropOverlay *)self contactPhotoOverlay] titleLabel];
  if (a3 <= 2)
  {
    if (!a3)
    {
      goto LABEL_21;
    }

    if (a3 == 1)
    {
LABEL_22:
      [(PLCropOverlayBottomBar *)v6 setStyle:1];
      [(PLCropOverlay *)self _updateEditImageDoneButtonTitle];
      goto LABEL_23;
    }

    if (a3 != 2)
    {
      return;
    }

    [(PLCropOverlayBottomBar *)v6 setStyle:2];
    [(UIButton *)v8 setTitle:PLLocalizedFrameworkString() forState:0];
LABEL_32:

    [(PLCropOverlay *)self _updateEditImageCancelButtonTitle];
    return;
  }

  if (a3 <= 5)
  {
    if (a3 != 3)
    {
      if (a3 != 4)
      {
        return;
      }

      goto LABEL_22;
    }

LABEL_21:
    [(PLCropOverlayBottomBar *)v6 setStyle:0];
LABEL_23:
    [(PLCropOverlay *)self _updateEditImageCancelButtonTitle];
    v11 = PLLocalizedFrameworkString();

    [(UILabel *)v9 setText:v11];
    return;
  }

  if (a3 != 6)
  {
    if (a3 != 7)
    {
      return;
    }

    [(PLCropOverlayBottomBar *)v6 setStyle:1];
    if (([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      [(UIButton *)[(PLCropOverlayPreviewBottomBar *)v7 cancelButton] setHidden:1];
      v10 = [(PLCropOverlayPreviewBottomBar *)v7 doneButton];

      [(UIButton *)v10 setHidden:1];
      return;
    }

    [(PLCropOverlay *)self _updateEditImageDoneButtonTitle];
    goto LABEL_32;
  }

  v12 = [objc_msgSend(MEMORY[0x277D75418] "currentDevice")] & 0xFFFFFFFFFFFFFFFBLL;
  [(PLWallpaperButton *)[(PLCropOverlayWallpaperBottomBar *)[(PLCropOverlayBottomBar *)v6 wallpaperBottomBar] doCancelButton] setTitle:PLLocalizedFrameworkString() forState:0];
  if (v12 == 1)
  {
    [(PLWallpaperButton *)[(PLCropOverlayWallpaperBottomBar *)[(PLCropOverlayBottomBar *)v6 wallpaperBottomBar] doSetHomeScreenButton] setTitle:PLLocalizedFrameworkString() forState:0];
    [(PLWallpaperButton *)[(PLCropOverlayWallpaperBottomBar *)[(PLCropOverlayBottomBar *)v6 wallpaperBottomBar] doSetLockScreenButton] setTitle:PLLocalizedFrameworkString() forState:0];
    [(PLWallpaperButton *)[(PLCropOverlayWallpaperBottomBar *)[(PLCropOverlayBottomBar *)v6 wallpaperBottomBar] doSetBothScreenButton] setTitle:PLLocalizedFrameworkString() forState:0];

    [(PLCropOverlay *)self _updateMotionToggle];
  }
}

- (void)setCropRectVisible:(BOOL)a3 duration:(float)a4
{
  v5 = a3;
  if (!a3 || ![(PLCropOverlay *)self contactPhotoOverlay])
  {
    v7 = *(self + 504);
    if (((((v7 & 2) == 0) ^ v5) & 1) == 0)
    {
      if (v5)
      {
        v8 = 2;
      }

      else
      {
        v8 = 0;
      }

      *(self + 504) = v7 & 0xFD | v8;
      [(PLCropOverlay *)self _createCropView];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __45__PLCropOverlay_setCropRectVisible_duration___block_invoke;
      v9[3] = &unk_2782A2020;
      v9[4] = self;
      if (a4 <= 0.0)
      {
        [(PLCropOverlayCropView *)self->_cropView setAlpha:((*(self + 504) >> 1) & 1)];
      }

      else
      {
        [MEMORY[0x277D75D18] animateWithDuration:v9 animations:a4];
      }
    }
  }
}

- (CGRect)bottomBarFrame
{
  if (self->_mode == 5 || ([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] & 0xFFFFFFFFFFFFFFFBLL) == 1 && self->_mode == 2)
  {
    v3 = &OBJC_IVAR___PLCropOverlay__customToolbar;
  }

  else
  {
    v3 = &OBJC_IVAR___PLCropOverlay___bottomBar;
  }

  v4 = *(&self->super.super.super.isa + *v3);

  [v4 frame];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (id)bottomBar
{
  if (self->_mode == 5 || ([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] & 0xFFFFFFFFFFFFFFFBLL) == 1 && self->_mode == 2)
  {
    v3 = &OBJC_IVAR___PLCropOverlay__customToolbar;
  }

  else
  {
    v3 = &OBJC_IVAR___PLCropOverlay___bottomBar;
  }

  return *(&self->super.super.super.isa + *v3);
}

- (void)insertIrisView:(id)a3
{
  if (self->_cropView)
  {
    [(PLCropOverlay *)self insertSubview:a3 aboveSubview:?];
  }

  else
  {
    [(PLCropOverlay *)self addSubview:a3];
  }

  bottomBar = self->__bottomBar;

  [(PLCropOverlay *)self bringSubviewToFront:bottomBar];
}

- (void)_createCropView
{
  if (!self->_cropView)
  {
    v3 = 0.0;
    if (!-[PLCropOverlay isDisplayedInPopover](self, "isDisplayedInPopover") && ([objc_msgSend(MEMORY[0x277D75128] "sharedApplication")] & 1) == 0)
    {
      [objc_msgSend(MEMORY[0x277D75128] "sharedApplication")];
      v3 = v4;
    }

    self->_statusBarHeight = v3;
    if ([(PLCropOverlay *)self isDisplayedInPopover])
    {
      v5 = 480.0;
    }

    else
    {
      [-[PLCropOverlay px_screen](self "px_screen")];
      [(PLCropOverlay *)self convertRect:0 fromView:?];
      v5 = v6;
    }

    [(PLCropOverlay *)self frame];
    v8 = v7;
    v10 = v9;
    statusBarHeight = self->_statusBarHeight;
    v12 = v5 - statusBarHeight;
    v13 = 0.0;
    if (v9 > v12)
    {
      v14 = (statusBarHeight + 0.0);
      if ((*(self + 504) & 4) != 0)
      {
        v13 = v14;
      }

      else
      {
        v13 = 0.0;
      }
    }

    [(PLCropOverlayBottomBar *)self->__bottomBar bounds];
    v16 = v10 - v15 - v13;
    [(PLCropOverlay *)self _updateCropRectInRect:0.0, v13, v8, v16];
    v17 = [[PLCropOverlayCropView alloc] initWithFrame:0.0, v13, v8, v16];
    self->_cropView = v17;
    [(PLCropOverlayCropView *)v17 setCropRect:self->_cropRect.origin.x, self->_cropRect.origin.y, self->_cropRect.size.width, self->_cropRect.size.height];
    [(PLCropOverlayCropView *)self->_cropView setUserInteractionEnabled:0];
    [(PLCropOverlayCropView *)self->_cropView setOpaque:0];
    [(PLCropOverlayCropView *)self->_cropView setAutoresizingMask:18];
    cropView = self->_cropView;
    bottomBar = self->__bottomBar;

    [(PLCropOverlay *)self insertSubview:cropView belowSubview:bottomBar];
  }
}

- (void)setOverlayContainerView:(id)a3
{
  if (!self->_mode)
  {
    overlayContainerView = self->_overlayContainerView;
    if (overlayContainerView != a3)
    {
      [(UIView *)overlayContainerView removeFromSuperview];

      v6 = a3;
      self->_overlayContainerView = v6;

      [(PLCropOverlay *)self addSubview:v6];
    }
  }
}

- (id)overlayContainerView
{
  if (self->_mode)
  {
    return 0;
  }

  else
  {
    return self->_overlayContainerView;
  }
}

- (void)setControlsAreVisible:(BOOL)a3
{
  v3 = *(self + 504);
  if (((((v3 & 0x20) == 0) ^ a3) & 1) == 0)
  {
    v5 = a3 ? 32 : 0;
    *(self + 504) = v3 & 0xDF | v5;
    if (!self->_mode)
    {
      if (a3)
      {
        v6 = 0;
      }

      else
      {
        [(PLCropOverlay *)self setShowsCropRegion:0];
        [(PLCropOverlay *)self setCropRectVisible:0 duration:0.0];
        v6 = (*(self + 504) & 0x20) == 0;
      }

      bottomBar = self->__bottomBar;

      [(PLCropOverlayBottomBar *)bottomBar setHidden:v6];
    }
  }
}

- (void)setCameraBottomBar:(id)a3
{
  [(PLCropOverlayBottomBar *)self->__bottomBar setCameraBottomBar:a3];

  [(PLCropOverlay *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v43.receiver = self;
  v43.super_class = PLCropOverlay;
  [(PLCropOverlay *)&v43 layoutSubviews];
  [(PLCropOverlay *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  cropView = self->_cropView;
  if (cropView)
  {
    [(PLCropOverlayCropView *)cropView bounds];
    [(PLCropOverlay *)self _updateCropRectInRect:?];
    [(PLCropOverlayCropView *)self->_cropView setCropRect:self->_cropRect.origin.x, self->_cropRect.origin.y, self->_cropRect.size.width, self->_cropRect.size.height];
  }

  if (-[PLCropOverlay mode](self, "mode") == 5 || ([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] & 0xFFFFFFFFFFFFFFFBLL) == 1 && -[PLCropOverlay mode](self, "mode") == 2)
  {
    v12 = [(PLCropOverlay *)self bottomBar];
    [MEMORY[0x277D75C58] defaultHeight];
    v14 = v13;
    v44.origin.x = v4;
    v44.origin.y = v6;
    v44.size.width = v8;
    v44.size.height = v10;
    MaxY = CGRectGetMaxY(v44);
    [(PLCropOverlay *)self safeAreaInsets];
    v17 = MaxY - (v14 + v16);
    v45.origin.x = v4;
    v45.origin.y = v6;
    v45.size.width = v8;
    v45.size.height = v10;
    Width = CGRectGetWidth(v45);
    x = 0.0;
    v20 = v12;
    y = v17;
    height = v14;
  }

  else
  {
    [objc_msgSend(MEMORY[0x277D759A0] "px_mainScreen")];
    v24 = 1.0 / v23 + 72.0;
    if ([(PLCropOverlay *)self mode]== 6)
    {
      v24 = 49.0;
    }

    [(PLCropOverlay *)self safeAreaInsets];
    v26 = v24 + v25;
    memset(&slice, 0, sizeof(slice));
    [(PLCropOverlay *)self bounds:0];
    CGRectDivide(v46, &slice, &v41, v26, CGRectMaxYEdge);
    v20 = [(PLCropOverlay *)self bottomBar];
    x = slice.origin.x;
    y = slice.origin.y;
    Width = slice.size.width;
    height = slice.size.height;
  }

  [v20 setFrame:{x, y, Width, height}];
  if ([(PLCropOverlay *)self contactPhotoOverlay])
  {
    [(PLContactPhotoOverlay *)[(PLCropOverlay *)self contactPhotoOverlay] setFrame:v4, v6, v8, v10];
  }

  [objc_msgSend(MEMORY[0x277D75128] "sharedApplication")];
  v28 = v27;
  [-[PLCropOverlay px_screen](self "px_screen")];
  [(PLCropOverlay *)self convertRect:0 fromView:?];
  v30 = v29;
  [(PLCropOverlay *)self bounds];
  v32 = v31;
  v34 = v33;
  v35 = v30 - v28;
  v36 = 0.0;
  if (v33 > v35)
  {
    if ((*(self + 504) & 4) != 0)
    {
      v36 = (v28 + 0.0);
    }

    else
    {
      v36 = 0.0;
    }
  }

  [[(UIImageView *)self->_topShineView image] size];
  [(UIImageView *)self->_topShineView setFrame:0.0, v36, v32, v37];
  titleLabel = self->_titleLabel;
  [(UILabel *)titleLabel frame];
  UIRectCenteredIntegralRect();
  [(UILabel *)titleLabel setFrame:?];
  if (([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [[(UIImageView *)self->_bottomShineView image] size];
    [(UIImageView *)self->_bottomShineView setFrame:0.0, v34 - v39, v32, v39];
    UIRectCenteredYInRect();
    v40 = (v32 + -16.0) * 0.5;
    [(UIButton *)self->_okButton setFrame:roundf(v40) + -132.0 + 148.0];
  }
}

- (void)setDisplayedInPopover:(BOOL)a3
{
  if (self->_displayedInPopover != a3)
  {
    self->_displayedInPopover = a3;
    bottomBar = self->__bottomBar;
    v5 = [(PLCropOverlay *)self isDisplayedInPopover];

    [(PLCropOverlayBottomBar *)bottomBar setInPopover:v5];
  }
}

- (PLCropOverlay)initWithFrame:(CGRect)a3 mode:(int)a4 offsettingStatusBar:(BOOL)a5
{
  v5 = a5;
  v6 = *&a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v53.receiver = self;
  v53.super_class = PLCropOverlay;
  v11 = [(PLCropOverlay *)&v53 initWithFrame:?];
  v12 = v11;
  if (v11)
  {
    if (v5)
    {
      v13 = 4;
    }

    else
    {
      v13 = 0;
    }

    *(v11 + 504) = *(v11 + 504) & 0xFB | v13;
    *(v11 + 504) |= 0x20u;
    [(PLCropOverlay *)v11 setAutoresizingMask:18];
    if (v6 == 5 || (v14 = [objc_msgSend(MEMORY[0x277D75418] "currentDevice")], v6 == 2) && (v14 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v15 = *MEMORY[0x277CBF3A0];
      v16 = *(MEMORY[0x277CBF3A0] + 8);
      [MEMORY[0x277D75C58] defaultHeight];
      v18 = v17;
      v54.origin.x = v15;
      v54.origin.y = v16;
      v54.size.width = width;
      v54.size.height = height;
      v19 = CGRectGetMaxY(v54) - v18;
      v55.origin.x = v15;
      v55.origin.y = v16;
      v55.size.width = width;
      v55.size.height = height;
      v20 = [objc_alloc(MEMORY[0x277D75C58]) initWithFrame:{0.0, v19, CGRectGetWidth(v55), v18}];
      v12->_customToolbar = v20;
      [(UIToolbar *)v20 setAutoresizingMask:10];
      [(PLCropOverlay *)v12 addSubview:v12->_customToolbar];
      [(PLCropOverlay *)v12 _updateToolbarItems:1];
    }

    else
    {
      if (v6 == 6)
      {
        v23 = [PLCropOverlayBottomBar alloc];
        v24 = *MEMORY[0x277CBF3A0];
        v25 = *(MEMORY[0x277CBF3A0] + 8);
        v26 = *(MEMORY[0x277CBF3A0] + 16);
        v27 = *(MEMORY[0x277CBF3A0] + 24);
        v28 = [(PLCropOverlayBottomBar *)v23 initWithFrame:*MEMORY[0x277CBF3A0], v25, v26, v27];
        v12->__bottomBar = v28;
        [(PLCropOverlayBottomBar *)v28 setAutoresizingMask:10];
        [(PLCropOverlayBottomBar *)v12->__bottomBar setInPopover:[(PLCropOverlay *)v12 isDisplayedInPopover]];
        [(PLCropOverlay *)v12 addSubview:v12->__bottomBar];
        v29 = [[PLCropOverlayWallpaperBottomBar alloc] initWithFrame:v24, v25, v26, v27];
        [(PLCropOverlayBottomBar *)v12->__bottomBar setWallpaperBottomBar:v29];

        v30 = [(PLCropOverlayWallpaperBottomBar *)v29 doCancelButton];
        [(PLWallpaperButton *)v30 addTarget:v12 action:sel__tappedBottomBarCancelButton_ forControlEvents:64];
        if (([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] & 0xFFFFFFFFFFFFFFFBLL) == 1)
        {
          v31 = [MEMORY[0x277D75348] lightGrayColor];
          [(PLWallpaperButton *)v30 setTitleColor:v31 forState:1];
          v32 = [(PLCropOverlayWallpaperBottomBar *)v29 doSetHomeScreenButton];
          [(PLWallpaperButton *)v32 addTarget:v12 action:sel__tappedBottomBarSetHomeButton forControlEvents:64];
          [(PLWallpaperButton *)v32 setTitleColor:v31 forState:1];
          v33 = [(PLCropOverlayWallpaperBottomBar *)v29 doSetLockScreenButton];
          [(PLWallpaperButton *)v33 addTarget:v12 action:sel__tappedBottomBarSetLockButton forControlEvents:64];
          [(PLWallpaperButton *)v33 setTitleColor:v31 forState:1];
          v34 = [(PLCropOverlayWallpaperBottomBar *)v29 doSetBothScreenButton];
          [(PLWallpaperButton *)v34 addTarget:v12 action:sel__tappedBottomBarSetBothButton forControlEvents:64];
          [(PLWallpaperButton *)v34 setTitleColor:v31 forState:1];
          v35 = [(PLCropOverlayWallpaperBottomBar *)v29 motionToggle];
          [(PLWallpaperButton *)v35 addTarget:v12 action:sel__tappedBottomBarMotionToggle forControlEvents:64];
          [(PLWallpaperButton *)v35 setTitleColor:v31 forState:1];
        }

        else
        {
          [(PLWallpaperButton *)[(PLCropOverlayWallpaperBottomBar *)v29 doSetButton] addTarget:v12 action:sel__tappedBottomBarDoneButton_ forControlEvents:64];
        }

        goto LABEL_9;
      }

      v36 = [objc_msgSend(MEMORY[0x277D75418] "currentDevice")];
      if (v6 != 1 || (v36 & 0xFFFFFFFFFFFFFFFBLL) != 1)
      {
        v41 = [PLCropOverlayBottomBar alloc];
        v42 = *MEMORY[0x277CBF3A0];
        v43 = *(MEMORY[0x277CBF3A0] + 8);
        v44 = *(MEMORY[0x277CBF3A0] + 16);
        v45 = *(MEMORY[0x277CBF3A0] + 24);
        v46 = [(PLCropOverlayBottomBar *)v41 initWithFrame:*MEMORY[0x277CBF3A0], v43, v44, v45];
        v12->__bottomBar = v46;
        [(PLCropOverlayBottomBar *)v46 setAutoresizingMask:2];
        [(PLCropOverlayBottomBar *)v12->__bottomBar setInPopover:[(PLCropOverlay *)v12 isDisplayedInPopover]];
        [(PLCropOverlay *)v12 addSubview:v12->__bottomBar];
        v47 = [[PLCropOverlayPreviewBottomBar alloc] initWithFrame:v42, v43, v44, v45];
        [(PLCropOverlayPreviewBottomBar *)v47 setBackgroundStyle:[(PLCropOverlay *)v12 isTelephonyUIMode:v6]];
        [(PLCropOverlayBottomBar *)v12->__bottomBar setPreviewBottomBar:v47];

        [(UIButton *)[(PLCropOverlayPreviewBottomBar *)v47 cancelButton] addTarget:v12 action:sel__tappedBottomBarCancelButton_ forControlEvents:64];
        [(UIButton *)[(PLCropOverlayPreviewBottomBar *)v47 doneButton] addTarget:v12 action:sel__tappedBottomBarDoneButton_ forControlEvents:64];
        [(UIButton *)[(PLCropOverlayPreviewBottomBar *)v47 playbackButton] addTarget:v12 action:sel__tappedBottomBarPlaybackButton_ forControlEvents:64];
        v48 = [MEMORY[0x277D75220] buttonWithType:0];
        v12->__cameraCancelButton = v48;
        -[UIButton setTitleColor:forState:](v48, "setTitleColor:forState:", [MEMORY[0x277D75348] whiteColor], 0);
        [(UIButton *)v12->__cameraCancelButton addTarget:v12 action:sel__tappedBottomBarCancelButton_ forControlEvents:64];
        [(UIButton *)v12->__cameraCancelButton setExclusiveTouch:1];
        [(UIButton *)v12->__cameraCancelButton setTitle:PLLocalizedFrameworkString() forState:0];
        v49 = [(UIButton *)v12->__cameraCancelButton titleLabel];
        -[UILabel setFont:](v49, "setFont:", [MEMORY[0x277D74300] fontWithDescriptor:objc_msgSend(MEMORY[0x277D74310] size:{"preferredFontDescriptorWithTextStyle:", *MEMORY[0x277D76918]), 18.0}]);
        v50 = v12->__cameraCancelButton;
        if ([(PLCropOverlay *)v12 isTelephonyUIMode:v6])
        {
          v51 = [[PLContactPhotoOverlay alloc] initWithFrame:v42, v43, v44, v45];
          v12->_contactPhotoOverlay = v51;
          [(PLCropOverlay *)v12 insertSubview:v51 belowSubview:v12->__bottomBar];
          if (v6 != 7)
          {
            if (v6 == 3)
            {
              [(UIView *)v51 pl_setHidden:1 animated:0];
            }

            goto LABEL_9;
          }
        }

        else if (v6 != 7)
        {
          goto LABEL_9;
        }

        v52 = [(PLCropOverlayPreviewBottomBar *)v47 fileResizingButton];
        [(UIButton *)v52 setMenu:[(PLCropOverlay *)v12 _bottomBarFileSizeMenu]];
        [(UIButton *)v52 setShowsMenuAsPrimaryAction:1];
        goto LABEL_9;
      }

      v37 = [(PLCropOverlay *)v12 _newOverlayViewWithFrame:0 lighterEdgeOnTop:x, 0.0, width, 53.0];
      v12->_wildcatPickerTopView = v37;
      [(UIView *)v37 setAutoresizingMask:34];
      [(PLCropOverlay *)v12 addSubview:v12->_wildcatPickerTopView];
      v38 = [(PLCropOverlay *)v12 _newOverlayViewWithFrame:1 lighterEdgeOnTop:x, y + height + -53.0, width, 53.0];
      v12->_wildcatPickerBottomView = v38;
      [(UIView *)v38 setAutoresizingMask:10];
      [(PLCropOverlay *)v12 addSubview:v12->_wildcatPickerBottomView];
      v39 = objc_alloc(MEMORY[0x277D756B8]);
      [(UIView *)v12->_wildcatPickerBottomView bounds];
      v40 = [v39 initWithFrame:?];
      [v40 setText:PLLocalizedFrameworkString()];
      [v40 setBackgroundColor:{objc_msgSend(MEMORY[0x277D75348], "clearColor")}];
      [v40 setFont:UISystemFontBoldForSize()];
      [v40 setTextColor:{objc_msgSend(MEMORY[0x277D75348], "whiteColor")}];
      [v40 setTextAlignment:1];
      [v40 setShadowColor:{objc_msgSend(MEMORY[0x277D75348], "colorWithWhite:alpha:", 0.0, 0.75)}];
      [v40 setShadowOffset:{0.0, -1.0}];
      [v40 sizeToFit];
      [v40 frame];
      [v40 setFrame:?];
      [v40 setAutoresizingMask:2];
      [(UIView *)v12->_wildcatPickerBottomView addSubview:v40];
    }

LABEL_9:
    v21 = [MEMORY[0x277CCAB98] defaultCenter];
    [v21 addObserver:v12 selector:sel_statusBarHeightDidChange_ name:*MEMORY[0x277D76718] object:0];
    [(PLCropOverlay *)v12 _setMode:v6];
    [(PLCropOverlay *)v12 _updateTitle];
  }

  return v12;
}

- (void)_savePhotoFinished:(id)a3
{
  [(PLCropOverlay *)self setProgressDone];
  [objc_msgSend(MEMORY[0x277D75128] "sharedApplication")];
  v5 = [a3 objectForKey:@"completionTarget"];

  [v5 cropOverlay:self didFinishSaving:a3];
}

- (void)_backgroundSavePhoto:(id)a3 cropRect:(CGRect)a4 minimalCropDimension:(double)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  v12 = [objc_msgSend(a3 objectForKey:{@"tile", "dictionaryWithCroppedImageForRect:minimalCropDimension:withOptions:", objc_msgSend(objc_msgSend(a3, "objectForKey:", @"options", "unsignedIntValue"), x, y, width, height, a5}];
  v13 = [a3 objectForKey:@"completionTarget"];
  if (v12)
  {
    v14 = [v12 mutableCopy];
  }

  else
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v15 = v14;
  if (v13)
  {
    [v14 setObject:v13 forKey:@"completionTarget"];
  }

  pl_dispatch_sync();
}

- (void)beginBackgroundSaveWithTile:(id)a3 progressTitle:(id)a4 completionCallbackTarget:(id)a5 options:(int)a6
{
  v6 = *&a6;
  v11 = [a3 scrollView];
  v12 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:v6];
  [v11 cancelMouseTracking];
  [v11 setUserInteractionEnabled:0];
  [objc_msgSend(MEMORY[0x277D75128] "sharedApplication")];
  if (!a4)
  {
    a4 = PLLocalizedFrameworkString();
  }

  [(PLCropOverlay *)self setShowProgress:1 title:a4];
  v13 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{a3, @"tile", a5, @"completionTarget", v12, @"options", 0}];
  v14 = [a3 scrollView];
  if ((v6 & 4) != 0)
  {
    [(PLContactPhotoOverlay *)[(PLCropOverlay *)self contactPhotoOverlay] inscribingBounds];
  }

  else
  {
    [(PLCropOverlay *)self cropRect];
  }

  [v14 convertRect:self fromView:?];
  v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v16 = dispatch_queue_attr_make_with_qos_class(v15, QOS_CLASS_USER_INITIATED, 0);
  v17 = dispatch_queue_create("com.apple.photos.plcropoverlay.save", v16);
  pl_dispatch_async();
  dispatch_release(v17);
}

@end