@interface SKUIEmbeddedMediaView
- (BOOL)showsThumbnailReflection;
- (CGSize)_sizeToFitImageSize:(CGSize)size bounds:(CGRect)bounds;
- (SKUIEmbeddedMediaViewDelegate)delegate;
- (UIImage)thumbnailImage;
- (id)_newMoviePlayerControllerWithURL:(id)l;
- (id)_thumbnailView;
- (int64_t)playbackState;
- (int64_t)thumbnailContentMode;
- (void)_didExitFullscreen:(id)fullscreen;
- (void)_didFinishPlayback:(id)playback;
- (void)_sendPlaybackStateChanged;
- (void)_tearDownMoviePlayer;
- (void)beginInlinePlaybackWithURL:(id)l;
- (void)beginPlaybackAnimated:(BOOL)animated;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)endPlaybackAnimated:(BOOL)animated;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setMediaType:(int64_t)type;
- (void)setShowsThumbnailReflection:(BOOL)reflection;
- (void)setThumbnailContentMode:(int64_t)mode;
- (void)setThumbnailImage:(id)image;
@end

@implementation SKUIEmbeddedMediaView

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = SKUIMediaPlayerFramework();
  [defaultCenter removeObserver:self name:*SKUIWeakLinkedSymbolForString("MPMoviePlayerDidExitFullscreenNotification" object:{v4), 0}];
  v5 = SKUIMediaPlayerFramework();
  [defaultCenter removeObserver:self name:*SKUIWeakLinkedSymbolForString("MPMoviePlayerPlaybackDidFinishNotification" object:{v5), 0}];
  v6 = SKUIMediaPlayerFramework();
  [defaultCenter removeObserver:self name:*SKUIWeakLinkedSymbolForString("MPMoviePlayerPlaybackStateDidChangeNotification" object:{v6), 0}];

  v7.receiver = self;
  v7.super_class = SKUIEmbeddedMediaView;
  [(SKUIEmbeddedMediaView *)&v7 dealloc];
}

- (void)beginInlinePlaybackWithURL:(id)l
{
  lCopy = l;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIEmbeddedMediaView *)v5 beginInlinePlaybackWithURL:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  [(SKUIEmbeddedMediaView *)self _tearDownMoviePlayer];
  v13 = [(SKUIEmbeddedMediaView *)self _newMoviePlayerControllerWithURL:lCopy];

  moviePlayer = self->_moviePlayer;
  self->_moviePlayer = v13;

  self->_usingInlinePlayback = 1;
  view = [(MPMoviePlayerController *)self->_moviePlayer view];
  [(SKUIEmbeddedMediaView *)self bounds];
  [view setFrame:?];
  [(SKUIEmbeddedMediaView *)self addSubview:view];
}

- (void)beginPlaybackAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIEmbeddedMediaView *)v5 beginPlaybackAnimated:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  if (self->_mediaURLString)
  {
    moviePlayer = self->_moviePlayer;
    if (moviePlayer)
    {
      [(MPMoviePlayerController *)moviePlayer play];
    }

    else
    {
      v14 = [MEMORY[0x277CBEBC0] URLWithString:?];
      v15 = [(SKUIEmbeddedMediaView *)self _newMoviePlayerControllerWithURL:v14];
      v16 = self->_moviePlayer;
      self->_moviePlayer = v15;

      self->_usingInlinePlayback = 0;
      view = [(MPMoviePlayerController *)self->_moviePlayer view];
      [(SKUIEmbeddedMediaView *)self bounds];
      [view setFrame:?];
      [(SKUIEmbeddedMediaView *)self addSubview:view];
      [(MPMoviePlayerController *)self->_moviePlayer setFullscreen:1 animated:animatedCopy];
    }
  }
}

- (void)endPlaybackAnimated:(BOOL)animated
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIEmbeddedMediaView *)v5 endPlaybackAnimated:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  moviePlayer = self->_moviePlayer;
  if (moviePlayer)
  {
    [(MPMoviePlayerController *)moviePlayer stop];
    if (animated)
    {
      if ([(MPMoviePlayerController *)self->_moviePlayer isFullscreen])
      {
        [(MPMoviePlayerController *)self->_moviePlayer setFullscreen:0 animated:1];
      }

      else
      {
        [(UIImageView *)self->_playerDecorationView setAlpha:0.0];
        [(UIImageView *)self->_thumbnailReflectionView setAlpha:0.0];
        [(UIImageView *)self->_thumbnailView setAlpha:0.0];
        view = [(MPMoviePlayerController *)self->_moviePlayer view];
        [(SKUIEmbeddedMediaView *)self sendSubviewToBack:view];

        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __45__SKUIEmbeddedMediaView_endPlaybackAnimated___block_invoke;
        v16[3] = &unk_2781F80F0;
        v16[4] = self;
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __45__SKUIEmbeddedMediaView_endPlaybackAnimated___block_invoke_2;
        v15[3] = &unk_2781F84A0;
        v15[4] = self;
        [MEMORY[0x277D75D18] animateWithDuration:v16 animations:v15 completion:0.2];
      }
    }

    else
    {
      [(SKUIEmbeddedMediaView *)self _tearDownMoviePlayer];
    }
  }
}

uint64_t __45__SKUIEmbeddedMediaView_endPlaybackAnimated___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 488) setAlpha:1.0];
  [*(*(a1 + 32) + 496) setAlpha:1.0];
  v2 = *(*(a1 + 32) + 504);

  return [v2 setAlpha:1.0];
}

- (int64_t)playbackState
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIEmbeddedMediaView *)v3 playbackState:v4];
      }
    }
  }

  result = self->_moviePlayer;
  if (result)
  {
    playbackState = [result playbackState];
    if ((playbackState - 1) > 4)
    {
      return 0;
    }

    else
    {
      return qword_215F40458[playbackState - 1];
    }
  }

  return result;
}

- (void)setMediaType:(int64_t)type
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIEmbeddedMediaView *)v5 setMediaType:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  if (self->_mediaType != type)
  {
    self->_mediaType = type;
    [(UIImageView *)self->_playerDecorationView removeFromSuperview];
    playerDecorationView = self->_playerDecorationView;
    self->_playerDecorationView = 0;

    [(SKUIEmbeddedMediaView *)self setNeedsLayout];
  }
}

- (void)setShowsThumbnailReflection:(BOOL)reflection
{
  reflectionCopy = reflection;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIEmbeddedMediaView *)v5 setShowsThumbnailReflection:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  if ([(SKUIEmbeddedMediaView *)self showsThumbnailReflection]!= reflectionCopy)
  {
    if (reflectionCopy)
    {
      v13 = objc_alloc(MEMORY[0x277D755E8]);
      image = [(UIImageView *)self->_thumbnailView image];
      v15 = [v13 initWithImage:image];
      thumbnailReflectionView = self->_thumbnailReflectionView;
      self->_thumbnailReflectionView = v15;

      [(UIImageView *)self->_thumbnailReflectionView setContentMode:[(UIImageView *)self->_thumbnailView contentMode]];
      layer = [(UIImageView *)self->_thumbnailReflectionView layer];
      CATransform3DMakeScale(&v19, -1.0, -1.0, 1.0);
      [layer setTransform:&v19];

      [(SKUIEmbeddedMediaView *)self addSubview:self->_thumbnailReflectionView];
    }

    else
    {
      [(UIImageView *)self->_thumbnailReflectionView removeFromSuperview];
      v18 = self->_thumbnailReflectionView;
      self->_thumbnailReflectionView = 0;
    }

    [(SKUIEmbeddedMediaView *)self setNeedsLayout];
  }
}

- (void)setThumbnailContentMode:(int64_t)mode
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIEmbeddedMediaView *)v5 setThumbnailContentMode:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  _thumbnailView = [(SKUIEmbeddedMediaView *)self _thumbnailView];
  [_thumbnailView setContentMode:mode];

  [(UIImageView *)self->_thumbnailReflectionView setContentMode:mode];
}

- (void)setThumbnailImage:(id)image
{
  imageCopy = image;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIEmbeddedMediaView *)v5 setThumbnailImage:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  image = [(UIImageView *)self->_thumbnailView image];

  if (image != imageCopy)
  {
    _thumbnailView = [(SKUIEmbeddedMediaView *)self _thumbnailView];
    [_thumbnailView setImage:imageCopy];
    [(UIImageView *)self->_thumbnailReflectionView setImage:imageCopy];
    [(SKUIEmbeddedMediaView *)self setNeedsLayout];
  }
}

- (BOOL)showsThumbnailReflection
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIEmbeddedMediaView *)v3 showsThumbnailReflection:v4];
      }
    }
  }

  return self->_thumbnailReflectionView != 0;
}

- (int64_t)thumbnailContentMode
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIEmbeddedMediaView *)v3 thumbnailContentMode:v4];
      }
    }
  }

  _thumbnailView = [(SKUIEmbeddedMediaView *)self _thumbnailView];
  contentMode = [_thumbnailView contentMode];

  return contentMode;
}

- (UIImage)thumbnailImage
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIEmbeddedMediaView *)v3 thumbnailImage:v4];
      }
    }
  }

  image = [(UIImageView *)self->_thumbnailView image];

  return image;
}

- (void)layoutSubviews
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIEmbeddedMediaView *)v3 layoutSubviews:v4];
      }
    }
  }

  [(SKUIEmbeddedMediaView *)self bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = v11;
  if (self->_thumbnailReflectionView)
  {
    v19 = v11 * 0.5;
  }

  else
  {
    v19 = v11;
  }

  thumbnailContentMode = [(SKUIEmbeddedMediaView *)self thumbnailContentMode];
  thumbnailReflectionView = self->_thumbnailReflectionView;
  if (thumbnailReflectionView)
  {
    image = [(UIImageView *)thumbnailReflectionView image];
    [image size];
    v24 = v23;
    v26 = v25;

    [(UIImageView *)self->_thumbnailReflectionView frame];
    [(SKUIEmbeddedMediaView *)self _sizeToFitImageSize:v24 bounds:v26, v13, v15, v17, v19];
    v29 = v28;
    v30 = v27;
    *&v28 = (v17 - v28) * 0.5;
    v31 = v17;
    v32 = v19;
    v33 = floorf(*&v28);
    if (thumbnailContentMode == 6)
    {
      v34 = v18 - v27;
    }

    else
    {
      v34 = 0.0;
    }

    [(UIImageView *)self->_thumbnailReflectionView setFrame:v33, v34, v29, v27];
    v65.origin.x = v33;
    v19 = v32;
    v17 = v31;
    v65.origin.y = v34;
    v65.size.width = v29;
    v65.size.height = v30;
    MaxY = CGRectGetMaxY(v65);
  }

  else
  {
    MaxY = 0.0;
  }

  _thumbnailView = [(SKUIEmbeddedMediaView *)self _thumbnailView];
  [_thumbnailView frame];
  image2 = [_thumbnailView image];
  [image2 size];
  [SKUIEmbeddedMediaView _sizeToFitImageSize:"_sizeToFitImageSize:bounds:" bounds:?];
  v39 = v38;
  v41 = v40;

  v42 = (v17 - v39) * 0.5;
  v43 = floorf(v42);
  v44 = v43;
  if (thumbnailContentMode == 6)
  {
    v45 = v18 - v41;
  }

  else
  {
    v45 = MaxY;
  }

  [_thumbnailView setFrame:{v43, v45, v39, v41}];
  if (self->_mediaType == 2)
  {
    playerDecorationView = self->_playerDecorationView;
    if (!playerDecorationView)
    {
      v47 = MEMORY[0x277D755B8];
      v48 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v49 = [v47 imageNamed:@"PlayControl" inBundle:v48];

      v50 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v49];
      v51 = self->_playerDecorationView;
      self->_playerDecorationView = v50;

      [(SKUIEmbeddedMediaView *)self addSubview:self->_playerDecorationView];
      playerDecorationView = self->_playerDecorationView;
    }

    [(UIImageView *)playerDecorationView frame];
    v53 = v52;
    v55 = v54;
    image3 = [_thumbnailView image];

    v57 = (v17 - v53) * 0.5;
    v58 = floorf(v57);
    v59 = (v39 - v53) * 0.5;
    v60 = v44 + floorf(v59);
    if (image3)
    {
      v61 = v41;
    }

    else
    {
      v61 = v19;
    }

    if (image3)
    {
      v58 = v60;
    }

    v62 = (v61 - v55) * 0.5;
    [(UIImageView *)self->_playerDecorationView setFrame:v58, v45 + floorf(v62), v53, v55];
    thumbnailView = self->_thumbnailView;
    blackColor = [MEMORY[0x277D75348] blackColor];
    [(UIImageView *)thumbnailView setBackgroundColor:blackColor];
  }
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIEmbeddedMediaView *)v5 setBackgroundColor:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  if (self->_mediaType != 2)
  {
    [(UIImageView *)self->_thumbnailView setBackgroundColor:colorCopy];
  }

  v13.receiver = self;
  v13.super_class = SKUIEmbeddedMediaView;
  [(SKUIEmbeddedMediaView *)&v13 setBackgroundColor:colorCopy];
}

- (void)didMoveToWindow
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIEmbeddedMediaView *)v3 didMoveToWindow:v4];
      }
    }
  }

  window = [(SKUIEmbeddedMediaView *)self window];

  if (!window)
  {
    [(SKUIEmbeddedMediaView *)self endPlaybackAnimated:0];
  }
}

- (void)_didExitFullscreen:(id)fullscreen
{
  if (!self->_usingInlinePlayback)
  {
    [(SKUIEmbeddedMediaView *)self _tearDownMoviePlayer];

    [(SKUIEmbeddedMediaView *)self _sendPlaybackStateChanged];
  }
}

- (void)_didFinishPlayback:(id)playback
{
  if ([(MPMoviePlayerController *)self->_moviePlayer isFullscreen])
  {
    moviePlayer = self->_moviePlayer;

    [(MPMoviePlayerController *)moviePlayer setFullscreen:0 animated:1];
  }

  else
  {
    [(SKUIEmbeddedMediaView *)self _tearDownMoviePlayer];

    [(SKUIEmbeddedMediaView *)self _sendPlaybackStateChanged];
  }
}

- (id)_newMoviePlayerControllerWithURL:(id)l
{
  lCopy = l;
  v5 = SKUIMediaPlayerFramework();
  v6 = [objc_alloc(SKUIWeakLinkedClassForString(&cfstr_Mpmovieplayerc.isa v5))];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v8 = SKUIMediaPlayerFramework();
  [defaultCenter addObserver:self selector:sel__didExitFullscreen_ name:*SKUIWeakLinkedSymbolForString("MPMoviePlayerDidExitFullscreenNotification" object:{v8), v6}];
  v9 = SKUIMediaPlayerFramework();
  [defaultCenter addObserver:self selector:sel__didFinishPlayback_ name:*SKUIWeakLinkedSymbolForString("MPMoviePlayerPlaybackDidFinishNotification" object:{v9), v6}];
  v10 = SKUIMediaPlayerFramework();
  [defaultCenter addObserver:self selector:sel__playbackStateChanged_ name:*SKUIWeakLinkedSymbolForString("MPMoviePlayerPlaybackStateDidChangeNotification" object:{v10), v6}];

  return v6;
}

- (void)_sendPlaybackStateChanged
{
  delegate = [(SKUIEmbeddedMediaView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate mediaView:self playbackStateDidChange:{-[SKUIEmbeddedMediaView playbackState](self, "playbackState")}];
  }
}

- (CGSize)_sizeToFitImageSize:(CGSize)size bounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  v6 = size.height;
  v7 = size.width;
  if ([(SKUIEmbeddedMediaView *)self thumbnailContentMode:size.width]== 1 && (v7 > width || v6 > height))
  {
    v9 = v6 * (width / v7);
    v6 = ceilf(v9);
    v7 = width;
  }

  v10 = v7;
  v11 = v6;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)_tearDownMoviePlayer
{
  moviePlayer = self->_moviePlayer;
  if (moviePlayer)
  {
    [(MPMoviePlayerController *)moviePlayer stop];
    view = [(MPMoviePlayerController *)self->_moviePlayer view];
    [view removeFromSuperview];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v5 = SKUIMediaPlayerFramework();
    [defaultCenter removeObserver:self name:*SKUIWeakLinkedSymbolForString("MPMoviePlayerDidExitFullscreenNotification" object:{v5), self->_moviePlayer}];
    v6 = SKUIMediaPlayerFramework();
    [defaultCenter removeObserver:self name:*SKUIWeakLinkedSymbolForString("MPMoviePlayerPlaybackDidFinishNotification" object:{v6), self->_moviePlayer}];
    v7 = self->_moviePlayer;
    self->_moviePlayer = 0;
  }
}

- (id)_thumbnailView
{
  thumbnailView = self->_thumbnailView;
  if (!thumbnailView)
  {
    v4 = objc_alloc_init(MEMORY[0x277D755E8]);
    v5 = self->_thumbnailView;
    self->_thumbnailView = v4;

    v6 = self->_thumbnailView;
    backgroundColor = [(SKUIEmbeddedMediaView *)self backgroundColor];
    [(UIImageView *)v6 setBackgroundColor:backgroundColor];

    [(UIImageView *)self->_thumbnailView setContentMode:1];
    [(SKUIEmbeddedMediaView *)self addSubview:self->_thumbnailView];
    thumbnailView = self->_thumbnailView;
  }

  return thumbnailView;
}

- (SKUIEmbeddedMediaViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end