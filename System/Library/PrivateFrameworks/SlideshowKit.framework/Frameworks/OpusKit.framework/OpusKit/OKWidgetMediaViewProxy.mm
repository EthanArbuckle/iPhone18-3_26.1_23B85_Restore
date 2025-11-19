@interface OKWidgetMediaViewProxy
+ (BOOL)shouldDrawRegionOfInterest;
+ (id)supportedSettings;
+ (void)setupJavascriptContext:(id)a3;
- (BOOL)canPerformAction:(id)a3;
- (BOOL)endAllEditing:(BOOL)a3;
- (BOOL)prepareForDisplay:(BOOL)a3;
- (BOOL)prepareForUnload:(BOOL)a3;
- (BOOL)prepareForWarmup:(BOOL)a3;
- (CGPoint)settingOffset;
- (CGRect)thumbnailRect;
- (CGSize)sizeThatFits:(CGSize)a3;
- (OKWidgetMediaViewProxy)initWithWidget:(id)a3;
- (UIEdgeInsets)settingMediaEdgeInsets;
- (double)_localReadyProgress;
- (double)remainingPlayDuration;
- (float)contentAspectRatio;
- (id)layoutSettingsKeys;
- (id)settingUrl;
- (id)valueForUndefinedKey:(id)a3;
- (void)_beginAudioDucking;
- (void)_cancelThumbnailOperations;
- (void)_cleanupVideo;
- (void)_hideVideoButton;
- (void)_reloadThumbnailContent;
- (void)_reloadThumbnailContent:(BOOL)a3 loadVideo:(BOOL)a4;
- (void)_setVideoContentMode:(int64_t)a3;
- (void)_setupVideo;
- (void)_setupVideoPlayButton;
- (void)_showVideoButton;
- (void)_stopAudioDucking;
- (void)_unloadThumbnailContent;
- (void)calculateOffsetForRegionOfInterest;
- (void)dealloc;
- (void)drawRegionOfInterestContainerBounds;
- (void)hideThumbnailAndPlayVideo;
- (void)instantPause;
- (void)instantResume;
- (void)layoutSubviews;
- (void)networkStatusDidChange:(int64_t)a3;
- (void)pauseVideo:(id)a3;
- (void)play;
- (void)playVideo:(id)a3;
- (void)prepareForRefresh;
- (void)prepareForReload;
- (void)resetVideo;
- (void)setAntialiasing:(BOOL)a3;
- (void)setPlaybackAudioVolume:(double)a3;
- (void)setSettingAudioVolume:(float)a3;
- (void)setSettingAutoplay:(BOOL)a3;
- (void)setSettingContentMode:(int64_t)a3;
- (void)setSettingDidFinishPlayingActionScript:(id)a3;
- (void)setSettingLoop:(BOOL)a3;
- (void)setSettingMediaEdgeInsets:(UIEdgeInsets)a3;
- (void)setSettingOffset:(CGPoint)a3;
- (void)setSettingSeekToTime:(double)a3;
- (void)setSettingShouldFitRegionOfInterest:(BOOL)a3;
- (void)setSettingUrl:(id)a3;
- (void)setVideoAsset:(id)a3;
- (void)setVideoURL:(id)a3;
- (void)showVideoActivityIndicator:(BOOL)a3;
- (void)updateOffset;
- (void)videoBecomesReady;
- (void)videoPlayerController:(id)a3 bufferingStateDidChange:(unint64_t)a4;
- (void)videoPlayerController:(id)a3 didFailToPlayItem:(id)a4;
- (void)videoPlayerController:(id)a3 didFinishPlayingItem:(id)a4;
@end

@implementation OKWidgetMediaViewProxy

- (OKWidgetMediaViewProxy)initWithWidget:(id)a3
{
  v5.receiver = self;
  v5.super_class = OKWidgetMediaViewProxy;
  v3 = [(OKWidgetViewProxy *)&v5 initWithWidget:a3];
  if (v3)
  {
    *(v3 + 187) = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:0];
    [objc_msgSend(v3 "contentView")];
    [*(v3 + 187) setFrame:?];
    [*(v3 + 187) setBackgroundColor:{objc_msgSend(MEMORY[0x277D75348], "darkGrayColor")}];
    [*(v3 + 187) setContentMode:2];
    [*(v3 + 187) setClipsToBounds:0];
    [*(v3 + 187) setAutoresizingMask:18];
    [objc_msgSend(*(v3 + 187) "layer")];
    [objc_msgSend(v3 "contentView")];
    if ([objc_msgSend(objc_msgSend(v3 "widget")])
    {
      [objc_msgSend(*(v3 + 187) "layer")];
      [objc_msgSend(*(v3 + 187) "layer")];
      [*(v3 + 187) setAlpha:0.95];
    }

    *(v3 + 1624) = *MEMORY[0x277CBF348];
    *(v3 + 207) = 0x3FF0000000000000;
    *(v3 + 393) = 1065353216;
    v3[1664] = 1;
    v3[1666] = 0;
    *(v3 + 210) = 0;
  }

  return v3;
}

- (void)dealloc
{
  [(OKWidgetMediaViewProxy *)self setVideoURL:0];
  audioDucker = self->_audioDucker;
  if (audioDucker)
  {

    self->_audioDucker = 0;
  }

  videoPlayerView = self->_videoPlayerView;
  if (videoPlayerView)
  {

    self->_videoPlayerView = 0;
  }

  videoPlayerController = self->_videoPlayerController;
  if (videoPlayerController)
  {

    self->_videoPlayerController = 0;
  }

  thumbnailView = self->_thumbnailView;
  if (thumbnailView)
  {

    self->_thumbnailView = 0;
  }

  didFinishPlayingActionScript = self->_didFinishPlayingActionScript;
  if (didFinishPlayingActionScript)
  {

    self->_didFinishPlayingActionScript = 0;
    v8 = self->_thumbnailView;
    if (v8)
    {

      self->_thumbnailView = 0;
    }
  }

  videoPlayButton = self->_videoPlayButton;
  if (videoPlayButton)
  {

    self->_videoPlayButton = 0;
  }

  faceRect = self->_faceRect;
  if (faceRect)
  {

    self->_faceRect = 0;
  }

  v11.receiver = self;
  v11.super_class = OKWidgetMediaViewProxy;
  [(OKWidgetView *)&v11 dealloc];
}

- (BOOL)canPerformAction:(id)a3
{
  v10.receiver = self;
  v10.super_class = OKWidgetMediaViewProxy;
  if (![(OKWidgetViewProxy *)&v10 canPerformAction:?])
  {
    return 1;
  }

  if (!self->_videoPlayButton)
  {
    return 1;
  }

  [a3 location];
  [(OKWidgetMediaViewProxy *)self convertPoint:0 fromView:?];
  v6 = v5;
  v8 = v7;
  [(OFUIButton *)self->_videoPlayButton frame];
  v11.x = v6;
  v11.y = v8;
  if (!CGRectContainsPoint(v12, v11))
  {
    return 1;
  }

  [(OKWidgetMediaViewProxy *)self playVideo:0];
  return 0;
}

- (CGRect)thumbnailRect
{
  [(OKWidgetMediaViewProxy *)self bounds];
  v4 = v3 + self->_mediaEdgeInsets.left;
  [(OKWidgetMediaViewProxy *)self bounds];
  v6 = self->_mediaEdgeInsets.top + v5;
  [(OKWidgetMediaViewProxy *)self bounds];
  v8 = v7;
  [(OKWidgetMediaViewProxy *)self bounds];
  v10 = v8 - v9 - self->_mediaEdgeInsets.left - self->_mediaEdgeInsets.right;
  [(OKWidgetMediaViewProxy *)self bounds];
  v12 = v11;
  [(OKWidgetMediaViewProxy *)self bounds];
  v14 = v12 - v13 - self->_mediaEdgeInsets.top - self->_mediaEdgeInsets.bottom;
  v15 = v4;
  v16 = v6;
  v17 = v10;
  result.size.height = v14;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = OKWidgetMediaViewProxy;
  [(OKWidgetViewProxy *)&v7 layoutSubviews];
  [(OKWidgetMediaViewProxy *)self thumbnailRect];
  [(UIImageView *)self->_thumbnailView setFrame:?];
  [(UIImageView *)self->_thumbnailView bounds];
  [(OKWidgetMediaVideoPlayerView *)self->_videoPlayerView setFrame:?];
  [(UIImageView *)self->_thumbnailView bounds];
  [-[OKWidgetMediaVideoPlayerView layer](self->_videoPlayerView "layer")];
  [(OFUIView *)[(OKWidgetViewProxy *)self contentView] center];
  [(OFUIButton *)self->_videoPlayButton setCenter:?];
}

+ (id)supportedSettings
{
  v37[14] = *MEMORY[0x277D85DE8];
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___OKWidgetMediaViewProxy;
  v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSendSuper2(&v7, sel_supportedSettings)}];
  v36[0] = @"contentMode";
  v34[0] = @"type";
  v34[1] = @"mapping";
  v35[0] = &unk_287AF0BA8;
  v35[1] = &unk_287AF2040;
  v34[2] = @"default";
  v35[2] = @"scaleAspectFill";
  v37[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:3];
  v36[1] = @"mediaEdgeInsets";
  v32[1] = @"default";
  v33[0] = &unk_287AF0C08;
  v32[0] = @"type";
  v33[1] = [MEMORY[0x277CCAE60] valueWithUIEdgeInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
  v37[1] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
  v36[2] = @"url";
  v31[0] = &unk_287AF0C20;
  v30[0] = @"type";
  v30[1] = @"default";
  v3 = [MEMORY[0x277CBEB68] null];
  v30[2] = @"jsExport";
  v31[1] = v3;
  v31[2] = @"readwrite";
  v37[2] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:3];
  v36[3] = @"autoplay";
  v28[0] = @"type";
  v28[1] = @"default";
  v4 = MEMORY[0x277CBEC28];
  v29[0] = &unk_287AF0C38;
  v29[1] = MEMORY[0x277CBEC28];
  v37[3] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
  v36[4] = @"loop";
  v26[0] = @"type";
  v26[1] = @"default";
  v27[0] = &unk_287AF0C38;
  v27[1] = v4;
  v37[4] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
  v36[5] = @"seekToTime";
  v24[0] = @"type";
  v24[1] = @"default";
  v25[0] = &unk_287AF0C50;
  v25[1] = &unk_287AF2328;
  v24[2] = @"jsExport";
  v25[2] = @"readwrite";
  v37[5] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:3];
  v36[6] = @"audioVolume";
  v22[0] = @"type";
  v22[1] = @"default";
  v23[0] = &unk_287AF0C50;
  v23[1] = &unk_287AF2338;
  v37[6] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v36[7] = @"audioRequiredDuckLevel";
  v20[0] = @"type";
  v20[1] = @"default";
  v21[0] = &unk_287AF0C50;
  v21[1] = &unk_287AF2348;
  v37[7] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v36[8] = @"disablePlayButton";
  v18[0] = @"type";
  v18[1] = @"default";
  v19[0] = &unk_287AF0C38;
  v19[1] = v4;
  v37[8] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v36[9] = @"didFinishPlayingActionScript";
  v16[1] = @"default";
  v17[0] = &unk_287AF0C68;
  v16[0] = @"type";
  v17[1] = [MEMORY[0x277CBEB68] null];
  v37[9] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v36[10] = @"offset";
  v14[1] = @"default";
  v15[0] = &unk_287AF0C80;
  v14[0] = @"type";
  v15[1] = [MEMORY[0x277CCAE60] valueWithCGPoint:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
  v37[10] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v36[11] = @"scale";
  v12[0] = @"type";
  v12[1] = @"default";
  v13[0] = &unk_287AF0C98;
  v13[1] = &unk_287AF2338;
  v37[11] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v36[12] = @"editable";
  v10[0] = @"type";
  v10[1] = @"default";
  v5 = MEMORY[0x277CBEC38];
  v11[0] = &unk_287AF0C38;
  v11[1] = MEMORY[0x277CBEC38];
  v10[2] = @"priority";
  v11[2] = &unk_287AF0CB0;
  v37[12] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];
  v36[13] = @"shouldFitRegionOfInterest";
  v8[0] = @"type";
  v8[1] = @"default";
  v9[0] = &unk_287AF0C38;
  v9[1] = v5;
  v8[2] = @"priority";
  v9[2] = &unk_287AF0CC8;
  v37[13] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  [v2 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v37, v36, 14)}];
  return v2;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if ([(UIImageView *)self->_thumbnailView contentMode]== 1 && [(UIImageView *)self->_thumbnailView image])
  {
    [[(UIImageView *)self->_thumbnailView image] size];
    OFCGRectMakeFitSizeInRect();
    width = v6;
    height = v7;
  }

  v8 = width;
  v9 = height;
  result.height = v9;
  result.width = v8;
  return result;
}

- (id)valueForUndefinedKey:(id)a3
{
  v4.receiver = self;
  v4.super_class = OKWidgetMediaViewProxy;
  return [(OKWidgetViewProxy *)&v4 valueForUndefinedKey:a3];
}

- (id)settingUrl
{
  v2 = [(OKWidgetViewProxy *)self mediaURLs];

  return [(NSMutableArray *)v2 firstObject];
}

- (void)setSettingUrl:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v5 = [(NSMutableArray *)[(OKWidgetViewProxy *)self mediaURLs] count];
  if (!a3 && v5 || a3 && (v6 = -[OKWidgetViewProxy mediaURLs](self, "mediaURLs"), v8[0] = a3, (-[NSMutableArray isEqualToArray:](v6, "isEqualToArray:", [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1]) & 1) == 0))
  {
    [(NSMutableArray *)[(OKWidgetViewProxy *)self mediaURLs] removeAllObjects];
    if (a3)
    {
      [(NSMutableArray *)[(OKWidgetViewProxy *)self mediaURLs] addObject:a3];
    }

    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __40__OKWidgetMediaViewProxy_setSettingUrl___block_invoke;
    v7[3] = &unk_279C90078;
    v7[4] = self;
    v7[5] = a3;
    [OKSettings applyUpdateBlockOnce:v7 forKey:@"updateMediaContent"];
  }
}

uint64_t __40__OKWidgetMediaViewProxy_setSettingUrl___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _cancelThumbnailOperations];
  v2 = *(a1 + 32);
  if (*(a1 + 40))
  {

    return [v2 _reloadThumbnailContent];
  }

  else
  {

    return [v2 _unloadThumbnailContent];
  }
}

- (UIEdgeInsets)settingMediaEdgeInsets
{
  [(OKWidgetViewProxy *)self layoutFactor];
  v4 = self->_mediaEdgeInsets.top / v3;
  v5 = self->_mediaEdgeInsets.bottom / v3;
  v7 = self->_mediaEdgeInsets.left / v6;
  v8 = self->_mediaEdgeInsets.right / v6;
  v9 = v4;
  result.right = v8;
  result.bottom = v5;
  result.left = v7;
  result.top = v9;
  return result;
}

- (void)setSettingMediaEdgeInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  [(OKWidgetViewProxy *)self layoutFactor];
  self->_mediaEdgeInsets.top = top * v8;
  self->_mediaEdgeInsets.left = left * v9;
  self->_mediaEdgeInsets.bottom = bottom * v8;
  self->_mediaEdgeInsets.right = right * v9;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__OKWidgetMediaViewProxy_setSettingMediaEdgeInsets___block_invoke;
  v10[3] = &unk_279C8E818;
  v10[4] = self;
  [OKSettings applyUpdateBlockOnce:v10 forKey:@"updateLayout"];
}

- (void)setSettingAutoplay:(BOOL)a3
{
  if (self->_autoplay != a3)
  {
    self->_autoplay = a3;
  }
}

- (void)setSettingLoop:(BOOL)a3
{
  if (self->_loop != a3)
  {
    self->_loop = a3;
  }
}

- (void)setSettingSeekToTime:(double)a3
{
  if (a3 >= 0.0)
  {
    self->_seekToTime = a3;
    [(OKWidgetMediaViewProxy *)self seekToTime:?];
  }
}

- (void)setSettingContentMode:(int64_t)a3
{
  if ([(UIImageView *)self->_thumbnailView contentMode]!= a3)
  {
    [(UIImageView *)self->_thumbnailView setContentMode:a3];
    [(OKWidgetMediaViewProxy *)self _setVideoContentMode:a3];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __48__OKWidgetMediaViewProxy_setSettingContentMode___block_invoke;
    v5[3] = &unk_279C8E818;
    v5[4] = self;
    [OKSettings applyUpdateBlockOnce:v5 forKey:@"prepareForRefresh"];
  }
}

uint64_t __48__OKWidgetMediaViewProxy_setSettingContentMode___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[1666] == 1)
  {
    [v2 calculateOffsetForRegionOfInterest];
    v2 = *(a1 + 32);
  }

  return [v2 prepareForRefresh];
}

- (void)_setVideoContentMode:(int64_t)a3
{
  if ([(UIImageView *)self->_thumbnailView contentMode])
  {
    v4 = [(UIImageView *)self->_thumbnailView contentMode];
    v5 = MEMORY[0x277CE5DD8];
    if (v4 == 1)
    {
      v5 = MEMORY[0x277CE5DD0];
    }
  }

  else
  {
    v5 = MEMORY[0x277CE5DC8];
  }

  videoPlayerController = self->_videoPlayerController;
  v7 = *v5;
  v8 = [(OKVideoPlayerController *)videoPlayerController playerLayer];

  [(AVPlayerLayer *)v8 setVideoGravity:v7];
}

- (CGPoint)settingOffset
{
  [(OKWidgetViewProxy *)self layoutFactor];
  v4 = self->_offset.x / v3;
  v6 = self->_offset.y / v5;
  result.y = v6;
  result.x = v4;
  return result;
}

- (void)setSettingOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(OKWidgetViewProxy *)self layoutFactor];
  self->_shouldFitRegionOfInterest = 0;
  self->_offset.x = x * v6;
  self->_offset.y = y * v7;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__OKWidgetMediaViewProxy_setSettingOffset___block_invoke;
  v8[3] = &unk_279C8E818;
  v8[4] = self;
  [OKSettings applyUpdateBlockOnce:v8 forKey:@"updateOffset"];
}

+ (BOOL)shouldDrawRegionOfInterest
{
  if (shouldDrawRegionOfInterest_onceToken != -1)
  {
    +[OKWidgetMediaViewProxy shouldDrawRegionOfInterest];
  }

  return shouldDrawRegionOfInterest_shouldDrawRegionOfInterest;
}

uint64_t __52__OKWidgetMediaViewProxy_shouldDrawRegionOfInterest__block_invoke()
{
  result = [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  shouldDrawRegionOfInterest_shouldDrawRegionOfInterest = result;
  return result;
}

- (void)drawRegionOfInterestContainerBounds
{
  if (+[(OKWidgetMediaViewProxy *)OKWidgetMediaView])
  {
    v3 = [[(OKPresentationCanvas *)[(OKWidgetViewProxy *)self page] presentation] mediaItemForURL:[(NSMutableArray *)[(OKWidgetViewProxy *)self mediaURLs] firstObject]];
    [(OKWidgetMediaViewProxy *)self contentAspectRatio];
    v5 = v4;
    [(UIImageView *)self->_thumbnailView frame];
    v7 = v6;
    v9 = v8;
    v10 = [(UIImageView *)self->_thumbnailView contentMode]== 1;
    v11 = -(v7 - v9 * v5) > 0.0;
    if (v10 == v11)
    {
      v12 = v7;
    }

    else
    {
      v12 = v9 * v5;
    }

    if (v10 == v11)
    {
      v13 = v7 / v5;
    }

    else
    {
      v13 = v9;
    }

    [objc_msgSend(v3 "metadata")];
    v18 = v13 * (1.0 - v15 - v16);
    v19 = v13 * v16;
    v20 = (v13 - v9) * 0.5;
    y = self->_offset.y;
    v22 = self->_offset.x + v12 * v17 - (v12 - v7) * 0.5;
    faceRect = self->_faceRect;
    if (faceRect)
    {
      v24 = y + v18 - v20;
      v25 = v12 * v14;

      [(OFUIView *)faceRect setFrame:v22, v24, v25, v19];
    }

    else
    {
      self->_faceRect = [objc_alloc(MEMORY[0x277D627F8]) initWithFrame:{v22, y + v18 - v20, v12 * v14, v19}];
      [-[OFUIView layer](self->_faceRect "layer")];
      [-[OFUIView layer](self->_faceRect "layer")];
      -[OFUIView setBackgroundColor:](self->_faceRect, "setBackgroundColor:", [MEMORY[0x277D75348] colorWithRed:1.0 green:0.0 blue:0.0 alpha:0.2]);
      thumbnailView = self->_thumbnailView;
      v27 = self->_faceRect;

      [(UIImageView *)thumbnailView addSubview:v27];
    }
  }
}

- (void)calculateOffsetForRegionOfInterest
{
  v3 = [[(OKPresentationCanvas *)[(OKWidgetViewProxy *)self page] presentation] mediaItemForURL:[(NSMutableArray *)[(OKWidgetViewProxy *)self mediaURLs] firstObject]];
  [(OKWidgetMediaViewProxy *)self contentAspectRatio];
  v5 = v4;
  if ([objc_msgSend(v3 "metadata")])
  {
    [(UIImageView *)self->_thumbnailView frame];
    v7 = v6;
    v9 = v8;
    if ([(UIImageView *)self->_thumbnailView contentMode]!= 1)
    {
      v10 = -(v7 - v9 * v5) <= 0.0;
      v11 = v7 / v5;
      if (-(v7 - v9 * v5) > 0.0)
      {
        v12 = v9 * v5;
      }

      else
      {
        v12 = v7;
      }

      if (v10)
      {
        v13 = v11;
      }

      else
      {
        v13 = v9;
      }

      [objc_msgSend(v3 "metadata")];
      self->_offset.x = (v12 - v7) * 0.5 - (v12 * v16 - (v7 - v12 * v17) * 0.5);
      self->_offset.y = (v13 - v9) * 0.5 - (v13 * (1.0 - v14 - v15) - (v9 - v13 * v15) * 0.5);

      [(OKWidgetMediaViewProxy *)self updateOffset];
    }
  }
}

- (void)setSettingShouldFitRegionOfInterest:(BOOL)a3
{
  if (!a3 || [(UIImageView *)self->_thumbnailView contentMode]== 1 || [(NSMutableDictionary *)[(OKPresentationCanvas *)[(OKWidgetViewProxy *)self widget] settings] objectForKey:@"offset"])
  {
    self->_shouldFitRegionOfInterest = 0;
  }

  else
  {
    self->_shouldFitRegionOfInterest = 1;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __62__OKWidgetMediaViewProxy_setSettingShouldFitRegionOfInterest___block_invoke;
    v4[3] = &unk_279C8E818;
    v4[4] = self;
    [OKSettings applyUpdateBlockOnce:v4 forKey:@"centerImageForRegionOfInterest"];
  }
}

- (id)layoutSettingsKeys
{
  v3.receiver = self;
  v3.super_class = OKWidgetMediaViewProxy;
  return [-[OKWidgetViewProxy layoutSettingsKeys](&v3 layoutSettingsKeys)];
}

- (void)setSettingAudioVolume:(float)a3
{
  self->_volume = a3;
  audioDucker = self->_audioDucker;
  if (audioDucker)
  {
    [(OKAudioDucker *)audioDucker setVolume:?];
  }
}

- (void)setSettingDidFinishPlayingActionScript:(id)a3
{
  didFinishPlayingActionScript = self->_didFinishPlayingActionScript;
  if (didFinishPlayingActionScript)
  {

    self->_didFinishPlayingActionScript = 0;
  }

  self->_didFinishPlayingActionScript = [a3 copy];
}

- (void)_cancelThumbnailOperations
{
  v3 = [(OKWidgetViewProxy *)self delegate];

  [(OKWidgetViewDelegate *)v3 widgetViewCancelAllOperations:self withIdentifier:@"thumbnail"];
}

- (void)_reloadThumbnailContent:(BOOL)a3 loadVideo:(BOOL)a4
{
  v5 = a3;
  [(OKWidgetMediaViewProxy *)self thumbnailRect];
  v8 = v7;
  v10 = v9;
  v11 = [(NSMutableArray *)[(OKWidgetViewProxy *)self mediaURLs] firstObject];
  if (v11)
  {
    v12 = v11;
    if ([(OKWidgetViewProxy *)self prepareMode]== 1)
    {
      [(OKWidgetViewProxy *)self startShowingProgressIndicator];
    }

    self->_needsReloadThumbnail = 0;
    v13 = [MEMORY[0x277D62800] weakReferenceHolderWithObject:self];
    v14 = [(UIImageView *)self->_thumbnailView contentMode];
    v15 = !v5 || [(UIImageView *)self->_thumbnailView image]== 0;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __60__OKWidgetMediaViewProxy__reloadThumbnailContent_loadVideo___block_invoke;
    v18[3] = &unk_279C90CB8;
    v18[4] = v13;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __60__OKWidgetMediaViewProxy__reloadThumbnailContent_loadVideo___block_invoke_3;
    v16[3] = &unk_279C90D58;
    v17 = a4;
    v16[4] = v13;
    v16[5] = self;
    [(OKWidgetViewProxy *)self reloadMediaURL:v12 size:v14 mode:v15 lowQuality:v5 highQuality:@"thumbnail" identifier:v18 progressHandler:v8 completionHandler:v10, v16];
  }
}

void __60__OKWidgetMediaViewProxy__reloadThumbnailContent_loadVideo___block_invoke(uint64_t a1, float a2)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __60__OKWidgetMediaViewProxy__reloadThumbnailContent_loadVideo___block_invoke_2;
  v2[3] = &unk_279C90C90;
  v2[4] = *(a1 + 32);
  v3 = a2;
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

double *__60__OKWidgetMediaViewProxy__reloadThumbnailContent_loadVideo___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) object];
  if (result)
  {
    v3 = result;
    result[210] = *(a1 + 40);
    [result _localReadyProgress];

    return [v3 updateProgressIndicator:?];
  }

  return result;
}

void __60__OKWidgetMediaViewProxy__reloadThumbnailContent_loadVideo___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  if ((a6 & 1) == 0)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__OKWidgetMediaViewProxy__reloadThumbnailContent_loadVideo___block_invoke_4;
    block[3] = &unk_279C90D30;
    v8 = a5;
    v6 = *(a1 + 40);
    block[4] = *(a1 + 32);
    block[5] = a2;
    v9 = a4;
    v10 = *(a1 + 48);
    block[6] = a3;
    block[7] = v6;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __60__OKWidgetMediaViewProxy__reloadThumbnailContent_loadVideo___block_invoke_4(uint64_t a1)
{
  v15[1] = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) object];
  if (result)
  {
    v3 = result;
    if (*(a1 + 64) == 1)
    {
      result = [objc_msgSend(*(a1 + 40) "metadata")];
      if (result != 3)
      {
        if (*(a1 + 48))
        {
          *(v3 + 1680) = 0x3FF0000000000000;
          [v3 updateProgressIndicator:1.0];
          result = [v3 stopShowingProgressIndicator];
        }
      }
    }

    v4 = *(a1 + 48);
    if (!*(a1 + 65) || v4)
    {
      [*(v3 + 1496) setImage:v4];
      result = [*(v3 + 1496) setBackgroundColor:{objc_msgSend(MEMORY[0x277D75348], "clearColor")}];
    }

    if (*(a1 + 64) == 1)
    {
      v5 = *(a1 + 40);
      if (v5 && *(a1 + 65) == 1)
      {
        if ([objc_msgSend(v5 "metadata")] == 3 && *(a1 + 66) == 1)
        {
          v14[0] = MEMORY[0x277D85DD0];
          v14[1] = 3221225472;
          v14[2] = __60__OKWidgetMediaViewProxy__reloadThumbnailContent_loadVideo___block_invoke_5;
          v14[3] = &unk_279C90CE0;
          v6 = *(a1 + 40);
          v7 = *(a1 + 56);
          v14[4] = *(a1 + 32);
          v14[5] = v7;
          v8 = [v6 avAssetWithCompletionHandler:v14];
          if (v8 || (v13[0] = MEMORY[0x277D85DD0], v13[1] = 3221225472, v13[2] = __60__OKWidgetMediaViewProxy__reloadThumbnailContent_loadVideo___block_invoke_7, v13[3] = &unk_279C90D08, v9 = *(a1 + 40), v10 = *(a1 + 56), v13[4] = *(a1 + 32), v13[5] = v10, (v8 = [v9 resourceURLWithCompletionHandler:v13]) != 0))
          {
            v11 = v8;
            [v8 setQueuePriority:-4];
            [v11 setIdentifier:@"thumbnail"];
            v12 = [v3 delegate];
            v15[0] = v11;
            return [v12 widgetView:v3 addHighSpeedOperations:0 andConsumingOperations:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v15, 1)}];
          }

          else
          {
            *(v3 + 1680) = 0x3FF0000000000000;
            [v3 updateProgressIndicator:1.0];
            [v3 stopShowingProgressIndicator];
            return [v3 becomeReady];
          }
        }

        if (!*(a1 + 48))
        {
          result = [objc_msgSend(*(a1 + 56) "presentationViewController")];
          if (result <= 0)
          {
            *(*(a1 + 56) + 1667) = 1;
            return result;
          }
        }
      }

      *(v3 + 1680) = 0x3FF0000000000000;
      [v3 updateProgressIndicator:1.0];
      [v3 stopShowingProgressIndicator];

      return [v3 becomeReady];
    }
  }

  return result;
}

void __60__OKWidgetMediaViewProxy__reloadThumbnailContent_loadVideo___block_invoke_5(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (([a2 isCancelled] & 1) == 0)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __60__OKWidgetMediaViewProxy__reloadThumbnailContent_loadVideo___block_invoke_6;
    v8[3] = &unk_279C900A0;
    v7 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v8[5] = a4;
    v8[6] = a3;
    v8[7] = v7;
    dispatch_async(MEMORY[0x277D85CD0], v8);
  }
}

void *__60__OKWidgetMediaViewProxy__reloadThumbnailContent_loadVideo___block_invoke_6(uint64_t a1)
{
  result = [*(a1 + 32) object];
  if (!result)
  {
    return result;
  }

  v3 = result;
  if (*(a1 + 40) || (v4 = *(a1 + 48)) == 0)
  {
    result = [objc_msgSend(*(a1 + 56) "presentationViewController")];
    if (result <= 0)
    {
      *(*(a1 + 56) + 1667) = 1;
      return result;
    }

    v3[210] = 0x3FF0000000000000;
    [v3 updateProgressIndicator:1.0];
    [v3 stopShowingProgressIndicator];
    goto LABEL_5;
  }

  if (result[195] == v4)
  {
LABEL_5:

    return [v3 becomeReady];
  }

  return [result setVideoAsset:?];
}

void __60__OKWidgetMediaViewProxy__reloadThumbnailContent_loadVideo___block_invoke_7(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (([a2 isCancelled] & 1) == 0)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __60__OKWidgetMediaViewProxy__reloadThumbnailContent_loadVideo___block_invoke_8;
    v8[3] = &unk_279C900A0;
    v7 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v8[5] = a4;
    v8[6] = a3;
    v8[7] = v7;
    dispatch_async(MEMORY[0x277D85CD0], v8);
  }
}

uint64_t __60__OKWidgetMediaViewProxy__reloadThumbnailContent_loadVideo___block_invoke_8(uint64_t a1)
{
  result = [*(a1 + 32) object];
  if (!result)
  {
    return result;
  }

  v3 = result;
  if (*(a1 + 40) || (v4 = *(a1 + 48)) == 0)
  {
    result = [objc_msgSend(*(a1 + 56) "presentationViewController")];
    if (result <= 0)
    {
      *(*(a1 + 56) + 1667) = 1;
      return result;
    }

    v3[210] = 0x3FF0000000000000;
    [v3 updateProgressIndicator:1.0];
    [v3 stopShowingProgressIndicator];
    goto LABEL_5;
  }

  if (*(result + 1536))
  {
    if (([*(a1 + 48) isEqual:*(result + 1536)] & 1) == 0)
    {
      v4 = *(a1 + 48);
      goto LABEL_12;
    }

LABEL_5:

    return [v3 becomeReady];
  }

LABEL_12:

  return [v3 setVideoURL:v4];
}

- (void)_reloadThumbnailContent
{
  objc_sync_enter(self);
  if ([(OKWidgetViewProxy *)self prepareMode]== 1 || [(OKWidgetViewProxy *)self prepareMode]== 2)
  {
    [(OKWidgetMediaViewProxy *)self _reloadThumbnailContent:1 loadVideo:!self->_isVideoAssetLoaded];
  }

  else if ([(OKWidgetViewProxy *)self prepareMode]== 3)
  {
    [(OKWidgetMediaViewProxy *)self _unloadThumbnailContent];
  }

  objc_sync_exit(self);
}

- (void)_unloadThumbnailContent
{
  [-[UIImageView layer](self->_thumbnailView "layer")];
  thumbnailView = self->_thumbnailView;

  [(UIImageView *)thumbnailView setImage:0];
}

- (void)setAntialiasing:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = OKWidgetMediaViewProxy;
  [(OKWidgetViewProxy *)&v6 setAntialiasing:?];
  if (v3)
  {
    v5 = 15;
  }

  else
  {
    v5 = 0;
  }

  [-[UIImageView layer](self->_thumbnailView "layer")];
}

- (float)contentAspectRatio
{
  v3 = [[(OKPresentationViewControllerProxy *)[(OKWidgetViewProxy *)self presentationViewController] presentation] mediaItemForURL:[(NSMutableArray *)[(OKWidgetViewProxy *)self mediaURLs] firstObject]];
  if (v3)
  {
    [objc_msgSend(v3 "metadata")];
    return v4;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = OKWidgetMediaViewProxy;
    [(OKWidgetViewProxy *)&v6 contentAspectRatio];
  }

  return result;
}

- (BOOL)prepareForDisplay:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = OKWidgetMediaViewProxy;
  v4 = [(OKWidgetViewProxy *)&v6 prepareForDisplay:a3];
  if (v4)
  {
    self->_needsReloadThumbnail = 0;
    [(OKWidgetMediaViewProxy *)self drawRegionOfInterestContainerBounds];
    [(OKWidgetMediaViewProxy *)self resetVideo];
    objc_sync_enter(self);
    [(OKWidgetMediaViewProxy *)self _reloadThumbnailContent:1 loadVideo:!self->_isVideoAssetLoaded];
    objc_sync_exit(self);
  }

  return v4;
}

- (BOOL)prepareForWarmup:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = OKWidgetMediaViewProxy;
  v4 = [(OKWidgetViewProxy *)&v6 prepareForWarmup:a3];
  if (v4)
  {
    self->_needsReloadThumbnail = 0;
    [(OKWidgetMediaViewProxy *)self resetVideo];
    [(OKWidgetViewProxy *)self stopShowingProgressIndicator];
    [(OKWidgetMediaViewProxy *)self showVideoActivityIndicator:0];
    objc_sync_enter(self);
    [(OKWidgetMediaViewProxy *)self _reloadThumbnailContent:1 loadVideo:!self->_isVideoAssetLoaded];
    objc_sync_exit(self);
  }

  return v4;
}

- (BOOL)prepareForUnload:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = OKWidgetMediaViewProxy;
  v4 = [(OKWidgetViewProxy *)&v6 prepareForUnload:a3];
  if (v4)
  {
    self->_needsReloadThumbnail = 0;
    [(OKWidgetMediaViewProxy *)self resetVideo];
    [(OKWidgetMediaViewProxy *)self setVideoURL:0];
    [(OKWidgetMediaViewProxy *)self _cancelThumbnailOperations];
    [(OKWidgetMediaViewProxy *)self _unloadThumbnailContent];
    [(OKWidgetViewProxy *)self stopShowingProgressIndicator];
  }

  return v4;
}

- (void)prepareForReload
{
  v3.receiver = self;
  v3.super_class = OKWidgetMediaViewProxy;
  [(OKWidgetViewProxy *)&v3 prepareForReload];
  [(OKWidgetMediaViewProxy *)self _reloadThumbnailContent];
}

- (void)prepareForRefresh
{
  v3.receiver = self;
  v3.super_class = OKWidgetMediaViewProxy;
  [(OKWidgetViewProxy *)&v3 prepareForRefresh];
  [(OKWidgetMediaViewProxy *)self _reloadThumbnailContent];
}

- (void)instantPause
{
  v3.receiver = self;
  v3.super_class = OKWidgetMediaViewProxy;
  [(OKWidgetViewProxy *)&v3 instantPause];
  [(OKWidgetMediaViewProxy *)self pauseVideo:0];
  [(OKWidgetMediaViewProxy *)self _hideVideoButton];
}

- (void)instantResume
{
  v3.receiver = self;
  v3.super_class = OKWidgetMediaViewProxy;
  [(OKWidgetViewProxy *)&v3 instantResume];
  if (self->_shouldPlayVideoWhenAvailable)
  {
    [(OKWidgetMediaViewProxy *)self playVideo:0];
  }
}

- (void)resetVideo
{
  [(OKVideoPlayerController *)self->_videoPlayerController stop];
  self->_shouldPlayVideoWhenAvailable = 0;
  self->_readyForDisplayAndPlay = 0;
  [(UIImageView *)self->_thumbnailView setAlpha:1.0];

  [(OKWidgetMediaViewProxy *)self _stopAudioDucking];
}

- (void)_setupVideoPlayButton
{
  if (!self->_videoPlayButton)
  {
    v3 = [MEMORY[0x277D755B8] imageNamed:@"playOverlay" inBundle:{+[OKRuntime opusKitBundle](OKRuntime, "opusKitBundle")}];
    v4 = [MEMORY[0x277D627E8] button];
    self->_videoPlayButton = v4;
    [(OFUIButton *)v4 setImage:v3];
    [v3 size];
    v6 = v5;
    [v3 size];
    [(OFUIButton *)self->_videoPlayButton setFrame:0.0, 0.0, v6, v7];
    [(OFUIView *)[(OKWidgetViewProxy *)self contentView] center];
    [(OFUIButton *)self->_videoPlayButton setCenter:?];
    [(OFUIButton *)self->_videoPlayButton setHidden:1];
    [(OFUIButton *)self->_videoPlayButton setTarget:self action:sel_playVideo_];
    v8 = [(OKWidgetViewProxy *)self contentView];
    videoPlayButton = self->_videoPlayButton;

    [(OFUIView *)v8 addSubview:videoPlayButton];
  }
}

- (void)_setupVideo
{
  v3 = [OKWidgetMediaVideoPlayerView alloc];
  [(UIImageView *)self->_thumbnailView bounds];
  v4 = [(OFViewProxy *)v3 initWithFrame:?];
  self->_videoPlayerView = v4;
  [(OKWidgetMediaVideoPlayerView *)v4 setAutoresizingMask:18];
  [(OKWidgetMediaVideoPlayerView *)self->_videoPlayerView setHidden:1];
  [(OFUIView *)[(OKWidgetViewProxy *)self contentView] insertSubview:self->_videoPlayerView below:self->_thumbnailView];
  v5 = [[OKVideoPlayerController alloc] initWithPlayerLayer:[(OKWidgetMediaVideoPlayerView *)self->_videoPlayerView layer]];
  self->_videoPlayerController = v5;
  [(OKVideoPlayerController *)v5 setDelegate:self];
  [(OKWidgetMediaViewProxy *)self _setVideoContentMode:[(UIImageView *)self->_thumbnailView contentMode]];

  [(OKWidgetMediaViewProxy *)self _setupVideoPlayButton];
}

- (void)_cleanupVideo
{
  [(UIImageView *)self->_thumbnailView setHidden:0];
  videoPlayerController = self->_videoPlayerController;
  if (videoPlayerController)
  {

    self->_videoPlayerController = 0;
  }

  audioDucker = self->_audioDucker;
  if (audioDucker)
  {
    [(OKAudioDucker *)audioDucker cancel];
    v5 = self->_audioDucker;
    if (v5)
    {

      self->_audioDucker = 0;
    }
  }

  videoAsset = self->_videoAsset;
  if (videoAsset)
  {
    [(AVAsset *)videoAsset cancelLoading];
    v7 = self->_videoAsset;
    if (v7)
    {

      self->_videoAsset = 0;
    }

    objc_sync_enter(self);
    self->_isVideoAssetLoaded = 0;
    objc_sync_exit(self);
    v8 = self->_audioDucker;
    if (v8)
    {
      [(OKAudioDucker *)v8 cancel];
      v9 = self->_audioDucker;
      if (v9)
      {

        self->_audioDucker = 0;
      }
    }
  }

  if (self->_videoPlayerView)
  {
    [(UIImageView *)self->_thumbnailView setHidden:0];
    [(OKWidgetMediaVideoPlayerView *)self->_videoPlayerView removeFromSuperview];
    videoPlayerView = self->_videoPlayerView;
    if (videoPlayerView)
    {

      self->_videoPlayerView = 0;
    }
  }

  videoPlayButton = self->_videoPlayButton;
  if (videoPlayButton)
  {
    [(OFUIButton *)videoPlayButton removeFromSuperview];
    v12 = self->_videoPlayButton;
    if (v12)
    {

      self->_videoPlayButton = 0;
    }
  }
}

- (void)setVideoURL:(id)a3
{
  [(OKWidgetMediaViewProxy *)self _cleanupVideo];
  videoURL = self->_videoURL;
  if (videoURL)
  {

    self->_videoURL = 0;
  }

  v6 = a3;
  self->_videoURL = v6;
  if (v6)
  {
    v7 = [MEMORY[0x277CE6650] assetWithURL:v6];

    [(OKWidgetMediaViewProxy *)self setVideoAsset:v7];
  }

  else
  {

    [(OKWidgetMediaViewProxy *)self _hideVideoButton];
  }
}

- (void)setVideoAsset:(id)a3
{
  if (self->_videoAsset != a3)
  {
    [(OKWidgetMediaViewProxy *)self _cleanupVideo];
    [(OKWidgetMediaViewProxy *)self _setupVideo];
    videoAsset = self->_videoAsset;
    if (videoAsset)
    {

      self->_videoAsset = 0;
    }

    self->_videoAsset = a3;
    [MEMORY[0x277CBEA60] arrayWithObjects:{@"tracks", @"duration", 0}];
    [AVAsset loadValuesAsynchronouslyForKeys:"loadValuesAsynchronouslyForKeys:completionHandler:" completionHandler:?];
  }
}

void __40__OKWidgetMediaViewProxy_setVideoAsset___block_invoke(uint64_t a1)
{
  global_queue = dispatch_get_global_queue(2, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__OKWidgetMediaViewProxy_setVideoAsset___block_invoke_2;
  block[3] = &unk_279C8E600;
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  dispatch_async(global_queue, block);
}

uint64_t __40__OKWidgetMediaViewProxy_setVideoAsset___block_invoke_2(void *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  objc_sync_enter(v2);
  *(a1[4] + 1600) = 1;
  objc_sync_exit(v2);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = a1[5];
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = *v17;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        v15 = 0;
        if ([*(a1[4] + 1560) statusOfValueForKey:v7 error:&v15] == 3)
        {
          if (*MEMORY[0x277D62808] >= 4)
          {
            [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Widgets/OKWidgetMediaView.m" line:1207 andFormat:@"The video at %@ could not be loaded: %@", *(a1[4] + 1536), objc_msgSend(v15, "localizedDescription")];
          }

          goto LABEL_17;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  if ([*(a1[4] + 1560) isPlayable])
  {
    v8 = [MEMORY[0x277CE65B0] playerItemWithAsset:a1[6]];
    [*(a1[4] + 1552) playPlayerItem:v8];
    result = [objc_msgSend(*(a1[4] + 1560) tracksWithMediaType:{*MEMORY[0x277CE5E48]), "count"}];
    if (!result)
    {
      return result;
    }

    [v8 setAudioTimePitchAlgorithm:*MEMORY[0x277CE5CE0]];
    v10 = a1[4];
    objc_sync_enter(v10);
    *(a1[4] + 1592) = objc_alloc_init(OKAudioDucker);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __40__OKWidgetMediaViewProxy_setVideoAsset___block_invoke_3;
    v13[3] = &unk_279C90CB8;
    v14 = a1[4];
    [*(v14 + 1592) setSetVolumeBlock:v13];
    v11 = a1[4];
    LODWORD(v12) = *(v11 + 1612);
    [*(v11 + 1592) setVolume:v12];
  }

  else
  {
    if (*MEMORY[0x277D62808] >= 4)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Widgets/OKWidgetMediaView.m" line:1218 andFormat:@"The video at %@ can not be played", *(a1[4] + 1536)];
    }

LABEL_17:
    v10 = a1[4];
    objc_sync_enter(v10);
    *(a1[4] + 1600) = 0;
  }

  return objc_sync_exit(v10);
}

- (void)playVideo:(id)a3
{
  self->_shouldPlayVideoWhenAvailable = 1;
  [(OKWidgetMediaViewProxy *)self _hideVideoButton];
  if (([(OKVideoPlayerController *)self->_videoPlayerController bufferingState]& 3) != 0)
  {

    [(OKWidgetMediaViewProxy *)self hideThumbnailAndPlayVideo];
  }
}

- (void)pauseVideo:(id)a3
{
  [(OKVideoPlayerController *)self->_videoPlayerController pause];

  [(OKWidgetMediaViewProxy *)self _stopAudioDucking];
}

- (double)remainingPlayDuration
{
  v10.receiver = self;
  v10.super_class = OKWidgetMediaViewProxy;
  [(OKWidgetViewProxy *)&v10 remainingPlayDuration];
  v4 = v3;
  if ([objc_msgSend(-[OKPresentation mediaItemForURL:](-[OKPresentationCanvas presentation](-[OKWidgetViewProxy page](self "page")] == 3)
  {
    objc_sync_enter(self);
    [(OKWidgetMediaViewProxy *)self duration];
    v6 = v5;
    [(OKWidgetMediaViewProxy *)self currentTime];
    v8 = v6 - v7;
    if (!self->_isVideoAssetLoaded || v4 <= v8)
    {
      v4 = v8;
    }

    objc_sync_exit(self);
  }

  return v4;
}

- (void)play
{
  v3.receiver = self;
  v3.super_class = OKWidgetMediaViewProxy;
  [(OKWidgetViewProxy *)&v3 play];
  self->_shouldPlayVideoWhenAvailable = 1;
  [(OKWidgetMediaViewProxy *)self playVideo:self];
}

- (void)_showVideoButton
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__hideVideoButton object:0];
  if ([(OKPresentationViewControllerProxy *)[(OKWidgetViewProxy *)self presentationViewController] interactivityEnabled]&& [(OKWidgetViewProxy *)self prepareMode]== 1 && ![(OKPresentationViewControllerProxy *)[(OKWidgetViewProxy *)self presentationViewController] isPaused]&& [(OKPresentationViewControllerProxy *)[(OKWidgetViewProxy *)self presentationViewController] playbackMode]== 1 && [(OKVideoPlayerController *)self->_videoPlayerController state]!= 1)
  {
    [(OFUIButton *)self->_videoPlayButton setHidden:0];

    [(OKWidgetMediaViewProxy *)self performSelector:sel__hideVideoButton withObject:0 afterDelay:3.0];
  }
}

- (void)_hideVideoButton
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__showVideoButton object:0];
  videoPlayButton = self->_videoPlayButton;

  [(OFUIButton *)videoPlayButton setHidden:1];
}

- (void)_beginAudioDucking
{
  if (self->_audioDucker)
  {
    if (!self->_audioTrackID)
    {
      v3 = [(OKWidgetViewProxy *)self presentationViewController];
      *&v4 = self->_volume;
      self->_audioTrackID = [(OKPresentationViewControllerProxy *)v3 beginAudioForController:self withAVAsset:self->_videoAsset andVolume:v4];
    }
  }
}

- (void)_stopAudioDucking
{
  if (self->_audioTrackID)
  {
    [(OKPresentationViewControllerProxy *)[(OKWidgetViewProxy *)self presentationViewController] endAudioForController:self andTrackID:self->_audioTrackID];
    [(OKAudioDucker *)self->_audioDucker endFading];
    audioTrackID = self->_audioTrackID;
    if (audioTrackID)
    {

      self->_audioTrackID = 0;
    }
  }
}

- (void)updateOffset
{
  [(UIImageView *)self->_thumbnailView frame];
  v4 = v3;
  v6 = v5;
  [(OKWidgetMediaViewProxy *)self contentAspectRatio];
  v8 = v7;
  if (-(v4 - v6 * v7) > 0.0 == ([(UIImageView *)self->_thumbnailView contentMode]== 1))
  {
    v9 = v4;
    v10 = v4 / v8;
  }

  else
  {
    v9 = v6 * v8;
    v10 = v6;
  }

  v11 = (v9 - v4) * self->_scale * 0.5;
  if ([(UIImageView *)self->_thumbnailView contentMode]== 1 && v11 < 0.0)
  {
    v12 = -v11;
  }

  else
  {
    v12 = 0.0;
    if (v11 >= 0.0)
    {
      v12 = v11;
    }
  }

  x = self->_offset.x;
  if (x > v12 || (v12 = -v12, x < v12))
  {
    self->_offset.x = v12;
  }

  v14 = (v10 - v6) * self->_scale * 0.5;
  if ([(UIImageView *)self->_thumbnailView contentMode]== 1 && v14 < 0.0)
  {
    v14 = -v14;
  }

  else if (v14 < 0.0)
  {
    v14 = 0.0;
  }

  y = self->_offset.y;
  if (y > v14 || (v14 = -v14, y < v14))
  {
    self->_offset.y = v14;
  }

  [(OKWidgetMediaViewProxy *)self drawRegionOfInterestContainerBounds];
}

- (BOOL)endAllEditing:(BOOL)a3
{
  v14[2] = *MEMORY[0x277D85DE8];
  isEditingPanning = self->_isEditingPanning;
  if (isEditingPanning)
  {
    self->_isEditingPanning = 0;
    [(OKWidgetViewProxy *)self layoutFactor];
    y = self->_offset.y;
    v8 = self->_offset.x / v7;
    v13[0] = @"offset";
    v13[1] = @"scale";
    v14[0] = [MEMORY[0x277CCAE60] valueWithCGPoint:{v8, y / v9}];
    v14[1] = &unk_287AF2338;
    v10 = [objc_msgSend(MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:{2), "mutableCopy"}];
    if (a3 || (v11 = v10, ![(OKPresentationViewControllerProxy *)[(OKWidgetViewProxy *)self presentationViewController] validatePanningMediaInWidget:self toState:v10]))
    {
      v11 = 0;
    }

    [(OKPresentationViewControllerProxy *)[(OKWidgetViewProxy *)self presentationViewController] endPanningMediaInWidget:self finalState:v11];
  }

  return isEditingPanning;
}

+ (void)setupJavascriptContext:(id)a3
{
  v23[4] = *MEMORY[0x277D85DE8];
  [a3 setObject:objc_opt_class() forKeyedSubscript:@"OKWidgetMediaView"];
  [OKSettings exportClassSettings:objc_opt_class() toJavaScriptContext:a3];
  v4 = [objc_msgSend(a3 objectForKeyedSubscript:{@"OKWidgetMediaView", "objectForKeyedSubscript:", @"prototype"}];
  v6 = *MEMORY[0x277CD4638];
  v20[0] = *MEMORY[0x277CD4630];
  v5 = v20[0];
  v20[1] = v6;
  v7 = MEMORY[0x277CBEC38];
  v23[0] = &__block_literal_global_198;
  v23[1] = MEMORY[0x277CBEC38];
  v9 = MEMORY[0x277CBEC28];
  v10 = *MEMORY[0x277CD4610];
  v21 = *MEMORY[0x277CD4618];
  v8 = v21;
  v22 = v10;
  v23[2] = MEMORY[0x277CBEC28];
  v23[3] = MEMORY[0x277CBEC38];
  [v4 defineProperty:@"playVideo" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v23, v20, 4)}];
  v11 = [objc_msgSend(a3 objectForKeyedSubscript:{@"OKWidgetMediaView", "objectForKeyedSubscript:", @"prototype"}];
  v18[0] = v5;
  v18[1] = v6;
  v19[0] = &__block_literal_global_204_0;
  v19[1] = v7;
  v18[2] = v8;
  v18[3] = v10;
  v19[2] = v9;
  v19[3] = v7;
  [v11 defineProperty:@"pauseVideo" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v19, v18, 4)}];
  v12 = [objc_msgSend(a3 objectForKeyedSubscript:{@"OKWidgetMediaView", "objectForKeyedSubscript:", @"prototype"}];
  v16[0] = v5;
  v16[1] = v6;
  v17[0] = &__block_literal_global_207_0;
  v17[1] = v7;
  v16[2] = v8;
  v16[3] = v10;
  v17[2] = MEMORY[0x277CBEC28];
  v17[3] = v7;
  [v12 defineProperty:@"duration" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v17, v16, 4)}];
  v13 = [objc_msgSend(a3 objectForKeyedSubscript:{@"OKWidgetMediaView", "objectForKeyedSubscript:", @"prototype"}];
  v14[0] = v5;
  v14[1] = v6;
  v15[0] = &__block_literal_global_212;
  v15[1] = v7;
  v14[2] = v8;
  v14[3] = v10;
  v15[2] = MEMORY[0x277CBEC28];
  v15[3] = v7;
  [v13 defineProperty:@"currentTime" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v15, v14, 4)}];
}

uint64_t __49__OKWidgetMediaViewProxy_setupJavascriptContext___block_invoke()
{
  v0 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  [v0 setShouldPlayVideoWhenAvailable:1];

  return [v0 playVideo:v0];
}

uint64_t __49__OKWidgetMediaViewProxy_setupJavascriptContext___block_invoke_2()
{
  v0 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v0 pauseVideo:v0];
}

uint64_t __49__OKWidgetMediaViewProxy_setupJavascriptContext___block_invoke_3()
{
  v0 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v0 duration];
}

uint64_t __49__OKWidgetMediaViewProxy_setupJavascriptContext___block_invoke_4()
{
  v0 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v0 currentTime];
}

- (void)setPlaybackAudioVolume:(double)a3
{
  v3 = self->_volume * a3;
  *&v3 = v3;
  [(OKAudioDucker *)self->_audioDucker setVolume:v3];
}

- (double)_localReadyProgress
{
  v9.receiver = self;
  v9.super_class = OKWidgetMediaViewProxy;
  [(OKWidgetViewProxy *)&v9 _localReadyProgress];
  v4 = v3;
  result = 1.0;
  if (v4 != 1.0)
  {
    if (self->_videoAsset)
    {
      v6 = [(OKVideoPlayerController *)self->_videoPlayerController bufferingState];
      v7 = 1.0;
      if ((v6 & 1) == 0)
      {
        v7 = 0.0;
      }

      v8 = 2.0;
    }

    else
    {
      v7 = 0.0;
      v8 = 1.0;
    }

    return (v7 + self->_reloadThumbnailContentProgress) / v8;
  }

  return result;
}

- (void)networkStatusDidChange:(int64_t)a3
{
  if (a3 >= 1 && self->_needsReloadThumbnail)
  {
    self->_needsReloadThumbnail = 0;
    [(OKWidgetMediaViewProxy *)self prepareForRefresh];
  }
}

- (void)showVideoActivityIndicator:(BOOL)a3
{
  if (*MEMORY[0x277D62808] >= 4)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Widgets/OKWidgetMediaView.m" line:1641 andFormat:@"%s to implement for iOS & OSX", "-[OKWidgetMediaViewProxy showVideoActivityIndicator:]"];
  }
}

- (void)videoPlayerController:(id)a3 didFailToPlayItem:(id)a4
{
  if (*MEMORY[0x277D62808] >= 4)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Widgets/OKWidgetMediaView.m" line:1646 andFormat:@"%s", "-[OKWidgetMediaViewProxy videoPlayerController:didFailToPlayItem:]"];
  }
}

- (void)videoBecomesReady
{
  if (![(OKWidgetViewProxy *)self isReady:1])
  {
    self->_reloadThumbnailContentProgress = 1.0;
    [(OKWidgetView *)self updateProgressIndicator:1.0];
    [(OKWidgetViewProxy *)self stopShowingProgressIndicator];

    [(OKWidgetViewProxy *)self becomeReady];
  }
}

- (void)videoPlayerController:(id)a3 didFinishPlayingItem:(id)a4
{
  if (self->_loop)
  {
    [(OKVideoPlayerController *)self->_videoPlayerController setCurrentTime:a3, a4, 0.0];
    videoPlayerController = self->_videoPlayerController;

    [(OKVideoPlayerController *)videoPlayerController play];
  }

  else
  {
    [(OKWidgetMediaViewProxy *)self _stopAudioDucking:a3];
    self->_shouldPlayVideoWhenAvailable = 0;
  }
}

- (void)hideThumbnailAndPlayVideo
{
  [(OKWidgetMediaVideoPlayerView *)self->_videoPlayerView setHidden:0];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __51__OKWidgetMediaViewProxy_hideThumbnailAndPlayVideo__block_invoke;
  v3[3] = &unk_279C8E818;
  v3[4] = self;
  [MEMORY[0x277D627F8] animateWithDuration:v3 animations:0.2];
  [(OKVideoPlayerController *)self->_videoPlayerController play];
}

- (void)videoPlayerController:(id)a3 bufferingStateDidChange:(unint64_t)a4
{
  v4 = a4;
  if (*MEMORY[0x277D62808] >= 5)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:5 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Widgets/OKWidgetMediaView.m" line:1703 andFormat:@"%s - %@", "-[OKWidgetMediaViewProxy videoPlayerController:bufferingStateDidChange:]", a3];
  }

  if ((v4 & 4) != 0 && (self->_shouldPlayVideoWhenAvailable || self->_autoplay))
  {
    [(OKWidgetMediaViewProxy *)self showVideoActivityIndicator:1];
  }

  if ((~v4 & 3) == 0)
  {
    [(OKWidgetMediaViewProxy *)self videoBecomesReady];
    [(OKWidgetMediaViewProxy *)self showVideoActivityIndicator:0];
    objc_sync_enter(self);
    self->_isVideoAssetLoaded = 1;
    objc_sync_exit(self);
    if ([(OKVideoPlayerController *)self->_videoPlayerController state]!= 2 && (self->_shouldPlayVideoWhenAvailable || self->_autoplay))
    {

      [(OKWidgetMediaViewProxy *)self hideThumbnailAndPlayVideo];
    }
  }
}

@end