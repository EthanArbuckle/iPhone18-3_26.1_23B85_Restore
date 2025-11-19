@interface SKUIEmbeddedMediaView
- (BOOL)showsThumbnailReflection;
- (CGSize)_sizeToFitImageSize:(CGSize)a3 bounds:(CGRect)a4;
- (SKUIEmbeddedMediaViewDelegate)delegate;
- (UIImage)thumbnailImage;
- (id)_newMoviePlayerControllerWithURL:(id)a3;
- (id)_thumbnailView;
- (int64_t)playbackState;
- (int64_t)thumbnailContentMode;
- (void)_didExitFullscreen:(id)a3;
- (void)_didFinishPlayback:(id)a3;
- (void)_sendPlaybackStateChanged;
- (void)_tearDownMoviePlayer;
- (void)beginInlinePlaybackWithURL:(id)a3;
- (void)beginPlaybackAnimated:(BOOL)a3;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)endPlaybackAnimated:(BOOL)a3;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setMediaType:(int64_t)a3;
- (void)setShowsThumbnailReflection:(BOOL)a3;
- (void)setThumbnailContentMode:(int64_t)a3;
- (void)setThumbnailImage:(id)a3;
@end

@implementation SKUIEmbeddedMediaView

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = SKUIMediaPlayerFramework();
  [v3 removeObserver:self name:*SKUIWeakLinkedSymbolForString("MPMoviePlayerDidExitFullscreenNotification" object:{v4), 0}];
  v5 = SKUIMediaPlayerFramework();
  [v3 removeObserver:self name:*SKUIWeakLinkedSymbolForString("MPMoviePlayerPlaybackDidFinishNotification" object:{v5), 0}];
  v6 = SKUIMediaPlayerFramework();
  [v3 removeObserver:self name:*SKUIWeakLinkedSymbolForString("MPMoviePlayerPlaybackStateDidChangeNotification" object:{v6), 0}];

  v7.receiver = self;
  v7.super_class = SKUIEmbeddedMediaView;
  [(SKUIEmbeddedMediaView *)&v7 dealloc];
}

- (void)beginInlinePlaybackWithURL:(id)a3
{
  v4 = a3;
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
  v13 = [(SKUIEmbeddedMediaView *)self _newMoviePlayerControllerWithURL:v4];

  moviePlayer = self->_moviePlayer;
  self->_moviePlayer = v13;

  self->_usingInlinePlayback = 1;
  v15 = [(MPMoviePlayerController *)self->_moviePlayer view];
  [(SKUIEmbeddedMediaView *)self bounds];
  [v15 setFrame:?];
  [(SKUIEmbeddedMediaView *)self addSubview:v15];
}

- (void)beginPlaybackAnimated:(BOOL)a3
{
  v3 = a3;
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
      v17 = [(MPMoviePlayerController *)self->_moviePlayer view];
      [(SKUIEmbeddedMediaView *)self bounds];
      [v17 setFrame:?];
      [(SKUIEmbeddedMediaView *)self addSubview:v17];
      [(MPMoviePlayerController *)self->_moviePlayer setFullscreen:1 animated:v3];
    }
  }
}

- (void)endPlaybackAnimated:(BOOL)a3
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
    if (a3)
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
        v14 = [(MPMoviePlayerController *)self->_moviePlayer view];
        [(SKUIEmbeddedMediaView *)self sendSubviewToBack:v14];

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
    v12 = [result playbackState];
    if ((v12 - 1) > 4)
    {
      return 0;
    }

    else
    {
      return qword_215F40458[v12 - 1];
    }
  }

  return result;
}

- (void)setMediaType:(int64_t)a3
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

  if (self->_mediaType != a3)
  {
    self->_mediaType = a3;
    [(UIImageView *)self->_playerDecorationView removeFromSuperview];
    playerDecorationView = self->_playerDecorationView;
    self->_playerDecorationView = 0;

    [(SKUIEmbeddedMediaView *)self setNeedsLayout];
  }
}

- (void)setShowsThumbnailReflection:(BOOL)a3
{
  v3 = a3;
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

  if ([(SKUIEmbeddedMediaView *)self showsThumbnailReflection]!= v3)
  {
    if (v3)
    {
      v13 = objc_alloc(MEMORY[0x277D755E8]);
      v14 = [(UIImageView *)self->_thumbnailView image];
      v15 = [v13 initWithImage:v14];
      thumbnailReflectionView = self->_thumbnailReflectionView;
      self->_thumbnailReflectionView = v15;

      [(UIImageView *)self->_thumbnailReflectionView setContentMode:[(UIImageView *)self->_thumbnailView contentMode]];
      v17 = [(UIImageView *)self->_thumbnailReflectionView layer];
      CATransform3DMakeScale(&v19, -1.0, -1.0, 1.0);
      [v17 setTransform:&v19];

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

- (void)setThumbnailContentMode:(int64_t)a3
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

  v13 = [(SKUIEmbeddedMediaView *)self _thumbnailView];
  [v13 setContentMode:a3];

  [(UIImageView *)self->_thumbnailReflectionView setContentMode:a3];
}

- (void)setThumbnailImage:(id)a3
{
  v4 = a3;
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

  v13 = [(UIImageView *)self->_thumbnailView image];

  if (v13 != v4)
  {
    v14 = [(SKUIEmbeddedMediaView *)self _thumbnailView];
    [v14 setImage:v4];
    [(UIImageView *)self->_thumbnailReflectionView setImage:v4];
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

  v11 = [(SKUIEmbeddedMediaView *)self _thumbnailView];
  v12 = [v11 contentMode];

  return v12;
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

  v11 = [(UIImageView *)self->_thumbnailView image];

  return v11;
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

  v20 = [(SKUIEmbeddedMediaView *)self thumbnailContentMode];
  thumbnailReflectionView = self->_thumbnailReflectionView;
  if (thumbnailReflectionView)
  {
    v22 = [(UIImageView *)thumbnailReflectionView image];
    [v22 size];
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
    if (v20 == 6)
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

  v36 = [(SKUIEmbeddedMediaView *)self _thumbnailView];
  [v36 frame];
  v37 = [v36 image];
  [v37 size];
  [SKUIEmbeddedMediaView _sizeToFitImageSize:"_sizeToFitImageSize:bounds:" bounds:?];
  v39 = v38;
  v41 = v40;

  v42 = (v17 - v39) * 0.5;
  v43 = floorf(v42);
  v44 = v43;
  if (v20 == 6)
  {
    v45 = v18 - v41;
  }

  else
  {
    v45 = MaxY;
  }

  [v36 setFrame:{v43, v45, v39, v41}];
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
    v56 = [v36 image];

    v57 = (v17 - v53) * 0.5;
    v58 = floorf(v57);
    v59 = (v39 - v53) * 0.5;
    v60 = v44 + floorf(v59);
    if (v56)
    {
      v61 = v41;
    }

    else
    {
      v61 = v19;
    }

    if (v56)
    {
      v58 = v60;
    }

    v62 = (v61 - v55) * 0.5;
    [(UIImageView *)self->_playerDecorationView setFrame:v58, v45 + floorf(v62), v53, v55];
    thumbnailView = self->_thumbnailView;
    v64 = [MEMORY[0x277D75348] blackColor];
    [(UIImageView *)thumbnailView setBackgroundColor:v64];
  }
}

- (void)setBackgroundColor:(id)a3
{
  v4 = a3;
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
    [(UIImageView *)self->_thumbnailView setBackgroundColor:v4];
  }

  v13.receiver = self;
  v13.super_class = SKUIEmbeddedMediaView;
  [(SKUIEmbeddedMediaView *)&v13 setBackgroundColor:v4];
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

  v11 = [(SKUIEmbeddedMediaView *)self window];

  if (!v11)
  {
    [(SKUIEmbeddedMediaView *)self endPlaybackAnimated:0];
  }
}

- (void)_didExitFullscreen:(id)a3
{
  if (!self->_usingInlinePlayback)
  {
    [(SKUIEmbeddedMediaView *)self _tearDownMoviePlayer];

    [(SKUIEmbeddedMediaView *)self _sendPlaybackStateChanged];
  }
}

- (void)_didFinishPlayback:(id)a3
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

- (id)_newMoviePlayerControllerWithURL:(id)a3
{
  v4 = a3;
  v5 = SKUIMediaPlayerFramework();
  v6 = [objc_alloc(SKUIWeakLinkedClassForString(&cfstr_Mpmovieplayerc.isa v5))];

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  v8 = SKUIMediaPlayerFramework();
  [v7 addObserver:self selector:sel__didExitFullscreen_ name:*SKUIWeakLinkedSymbolForString("MPMoviePlayerDidExitFullscreenNotification" object:{v8), v6}];
  v9 = SKUIMediaPlayerFramework();
  [v7 addObserver:self selector:sel__didFinishPlayback_ name:*SKUIWeakLinkedSymbolForString("MPMoviePlayerPlaybackDidFinishNotification" object:{v9), v6}];
  v10 = SKUIMediaPlayerFramework();
  [v7 addObserver:self selector:sel__playbackStateChanged_ name:*SKUIWeakLinkedSymbolForString("MPMoviePlayerPlaybackStateDidChangeNotification" object:{v10), v6}];

  return v6;
}

- (void)_sendPlaybackStateChanged
{
  v3 = [(SKUIEmbeddedMediaView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 mediaView:self playbackStateDidChange:{-[SKUIEmbeddedMediaView playbackState](self, "playbackState")}];
  }
}

- (CGSize)_sizeToFitImageSize:(CGSize)a3 bounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  v6 = a3.height;
  v7 = a3.width;
  if ([(SKUIEmbeddedMediaView *)self thumbnailContentMode:a3.width]== 1 && (v7 > width || v6 > height))
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
    v4 = [(MPMoviePlayerController *)self->_moviePlayer view];
    [v4 removeFromSuperview];

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    v5 = SKUIMediaPlayerFramework();
    [v8 removeObserver:self name:*SKUIWeakLinkedSymbolForString("MPMoviePlayerDidExitFullscreenNotification" object:{v5), self->_moviePlayer}];
    v6 = SKUIMediaPlayerFramework();
    [v8 removeObserver:self name:*SKUIWeakLinkedSymbolForString("MPMoviePlayerPlaybackDidFinishNotification" object:{v6), self->_moviePlayer}];
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
    v7 = [(SKUIEmbeddedMediaView *)self backgroundColor];
    [(UIImageView *)v6 setBackgroundColor:v7];

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