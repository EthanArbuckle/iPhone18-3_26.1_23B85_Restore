@interface OKWidgetMarimbaView
+ (id)supportedSettings;
+ (void)setupJavascriptContext:(id)a3;
- (BOOL)marimbaViewCanInteract:(id)a3;
- (BOOL)prepareForDisplay:(BOOL)a3;
- (BOOL)prepareForUnload:(BOOL)a3;
- (BOOL)prepareForWarmup:(BOOL)a3;
- (BOOL)slideshowShouldWrap;
- (CGImage)retainedCGImageForAssetKey:(id)a3 andSize:(CGSize)a4 orientation:(char *)a5;
- (CGImage)retainedCGImageForAssetKey:(id)a3 andSize:(CGSize)a4 orientation:(char *)a5 thumbnailIfPossible:(BOOL)a6 now:(BOOL)a7;
- (CGSize)resolutionForAssetKey:(id)a3;
- (OKWidgetMarimbaView)initWithWidget:(id)a3;
- (double)remainingPlayDuration;
- (id)_mediaPropertiesForMediaURL:(id)a3;
- (id)attributeForKey:(id)a3 forAssetKey:(id)a4 withOptions:(id)a5;
- (id)attributesforAssetPath:(id)a3;
- (id)avAssetForAssetKey:(id)a3;
- (id)settingTransition;
- (id)valueForUndefinedKey:(id)a3;
- (void)_restartSlideshowWithCompletion:(id)a3;
- (void)_updateMarimbaDocument;
- (void)dealloc;
- (void)instantPause;
- (void)instantResume;
- (void)layoutSubviews;
- (void)navigateToMediaWithIndex:(unint64_t)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)navigateToTextWithIndex:(unint64_t)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)navigatorBounceEnd:(id)a3;
- (void)navigatorBounceStart:(id)a3;
- (void)pauseSlideshow:(id)a3;
- (void)play;
- (void)playSlideshow:(id)a3;
- (void)presentationDidLiveUpdate;
- (void)renderer:(id)a3 renderingTimeLogMessage:(id)a4 withTimestamp:(double)a5;
- (void)setAntialiasing:(BOOL)a3;
- (void)setSettingAttributedSubtitles:(id)a3;
- (void)setSettingAttributedTitle:(id)a3;
- (void)setSettingDurations:(id)a3;
- (void)setSettingInteractiveTransitionSettings:(id)a3;
- (void)setSettingMediaFeeder:(id)a3;
- (void)setSettingSeed:(unint64_t)a3;
- (void)setSettingStyle:(id)a3;
- (void)setSettingSubtitles:(id)a3;
- (void)setSettingTitle:(id)a3;
- (void)setSettingTransition:(id)a3;
- (void)setSettingUrls:(id)a3;
- (void)slideshowDidEnd:(id)a3;
- (void)warmup:(BOOL)a3;
@end

@implementation OKWidgetMarimbaView

- (OKWidgetMarimbaView)initWithWidget:(id)a3
{
  v30.receiver = self;
  v30.super_class = OKWidgetMarimbaView;
  v3 = [(OKWidgetMarimbaView *)&v30 initWithWidget:a3];
  if (v3)
  {
    v4 = [MRMarimbaView alloc];
    [-[OKWidgetMarimbaView contentView](v3 "contentView")];
    v5 = [(MRMarimbaView *)v4 initWithFrame:?];
    v3->_marimbaView = v5;
    [(MRMarimbaView *)v5 setClipsToBounds:1];
    [-[MRMarimbaView layer](v3->_marimbaView "layer")];
    [(MRMarimbaView *)v3->_marimbaView setAutoresizingMask:18];
    [-[OKWidgetMarimbaView contentView](v3 "contentView")];
    [(MRMarimbaView *)v3->_marimbaView setInteractionDelegate:v3];
    v6 = objc_alloc_init(NSMutableDictionary);
    v3->_marimbaOptions = v6;
    v7 = [NSNumber numberWithBool:0];
    [(NSMutableDictionary *)v6 setObject:v7 forKey:kMPAuthoringUseDefaultAudio];
    [(NSMutableDictionary *)v3->_marimbaOptions setObject:kMPFadeNone forKey:kMPAuthoringIntroEffectID];
    [(NSMutableDictionary *)v3->_marimbaOptions setObject:kMPFadeNone forKey:kMPAuthoringOutroEffectID];
    [(NSMutableDictionary *)v3->_marimbaOptions setObject:@"Origami" forKey:kMPAuthoringStyleID];
    [(NSMutableDictionary *)v3->_marimbaOptions setObject:&__kCFBooleanTrue forKey:kMPAuthoringUseLoopTransition];
    [(NSMutableDictionary *)v3->_marimbaOptions setObject:&__kCFBooleanFalse forKey:kMPAuthoringUseTitleEffect];
    [(NSMutableDictionary *)v3->_marimbaOptions setObject:&__kCFBooleanFalse forKey:kMPAuthoringLiveUseOutro];
    [(NSMutableDictionary *)v3->_marimbaOptions setObject:&__kCFBooleanFalse forKey:kMPAuthoringCanRepeatEffectWithPreset];
    [(NSMutableDictionary *)v3->_marimbaOptions setObject:&off_1BBF28 forKey:kMPAuthoringSeed];
    [-[OKWidgetMarimbaView contentView](v3 "contentView")];
    v10 = v8;
    v11 = v9;
    if (v8 >= v9)
    {
      v12 = v8 / v9;
    }

    else
    {
      v12 = v9 / v8;
    }

    v3->_landscapeMarimbaDocument = objc_alloc_init(MPDocument);
    marimbaOptions = v3->_marimbaOptions;
    *&v14 = v12;
    v15 = [NSNumber numberWithFloat:v14];
    [(NSMutableDictionary *)marimbaOptions setObject:v15 forKey:kMPAuthoringAspectRatio];
    [(MPDocument *)v3->_landscapeMarimbaDocument setLoopingMode:2];
    [(MPDocument *)v3->_landscapeMarimbaDocument setAssetKeyDelegate:v3];
    v3->_portraitMarimbaDocument = objc_alloc_init(MPDocument);
    v16 = v3->_marimbaOptions;
    v17 = 1.0 / v12;
    *&v17 = 1.0 / v12;
    v18 = [NSNumber numberWithFloat:v17];
    [(NSMutableDictionary *)v16 setObject:v18 forKey:kMPAuthoringAspectRatio];
    [(MPDocument *)v3->_portraitMarimbaDocument setLoopingMode:2];
    [(MPDocument *)v3->_portraitMarimbaDocument setAssetKeyDelegate:v3];
    if (v10 < v11)
    {
      v19 = 112;
    }

    else
    {
      v19 = 104;
    }

    [(MRMarimbaView *)v3->_marimbaView setDocument:*&v3->OKWidgetView_opaque[v19]];
    v20 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v20 addObserver:v3 selector:"slideshowDidEnd:" name:kMRNotificationPlaybackOver object:[(MRMarimbaLayer *)[(MRMarimbaView *)v3->_marimbaView marimbaLayer] renderer]];
    [(MRMarimbaLayer *)[(MRMarimbaView *)v3->_marimbaView marimbaLayer] setInteractivityIsEnabled:1];
    [(MRRenderer *)[(MRMarimbaLayer *)[(MRMarimbaView *)v3->_marimbaView marimbaLayer] renderer] disableFadeInAndOut];
    [(MRMarimbaLayer *)[(MRMarimbaView *)v3->_marimbaView marimbaLayer] setCorrectsForAutorotation:0];
    [(MRMarimbaView *)v3->_marimbaView setUserInteractionEnabled:1];
    [(MRRenderer *)[(MRMarimbaLayer *)[(MRMarimbaView *)v3->_marimbaView marimbaLayer] renderer] setRenderingDelegate:v3];
    [+[OKRuntime opusKitBundle](OKRuntime "opusKitBundle")];
    v21 = OFCGImageCreateWithURL();
    v22 = [UIImage imageWithCGImage:v21];
    if (v21)
    {
      CGImageRelease(v21);
    }

    v23 = [OFUIButton buttonWithType:0];
    v3->_videoPlayButton = v23;
    [(OFUIButton *)v23 setBackgroundImage:v22 forState:0];
    [-[OKWidgetMarimbaView contentView](v3 "contentView")];
    [(OFUIButton *)v3->_videoPlayButton setCenter:?];
    [(UIImage *)v22 size];
    v25 = v24;
    [(UIImage *)v22 size];
    [(OFUIButton *)v3->_videoPlayButton setBounds:0.0, 0.0, v25, v26];
    [(OFUIButton *)v3->_videoPlayButton setHidden:1];
    [(OFUIButton *)v3->_videoPlayButton addTarget:v3 action:"playSlideshow:" forControlEvents:64];
    v3->_serialQueue = dispatch_queue_create("OKWidgetMarimbaView", 0);
    v3->_needsBuildingDocument = 1;
    v27 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v27 addObserver:v3 selector:"navigatorBounceStart:" name:kOKNavigatorLinearBounceStart object:0];
    v28 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v28 addObserver:v3 selector:"navigatorBounceEnd:" name:kOKNavigatorLinearBounceEnd object:0];
  }

  return v3;
}

- (void)dealloc
{
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:", self];
  [(MRMarimbaView *)self->_marimbaView setInteractionDelegate:0];
  marimbaView = self->_marimbaView;
  if (marimbaView)
  {

    self->_marimbaView = 0;
  }

  [(MPDocument *)self->_landscapeMarimbaDocument setDocumentAttribute:0 forKey:kMPDocumentAuthoringOptions];
  landscapeMarimbaDocument = self->_landscapeMarimbaDocument;
  if (landscapeMarimbaDocument)
  {

    self->_landscapeMarimbaDocument = 0;
  }

  [(MPDocument *)self->_portraitMarimbaDocument setDocumentAttribute:0 forKey:kMPDocumentAuthoringOptions];
  portraitMarimbaDocument = self->_portraitMarimbaDocument;
  if (portraitMarimbaDocument)
  {

    self->_portraitMarimbaDocument = 0;
  }

  marimbaOptions = self->_marimbaOptions;
  if (marimbaOptions)
  {

    self->_marimbaOptions = 0;
  }

  mediaFeeder = self->_mediaFeeder;
  if (mediaFeeder)
  {

    self->_mediaFeeder = 0;
  }

  videoPlayButton = self->_videoPlayButton;
  if (videoPlayButton)
  {

    self->_videoPlayButton = 0;
  }

  attributedTitle = self->_attributedTitle;
  if (attributedTitle)
  {

    self->_attributedTitle = 0;
  }

  title = self->_title;
  if (title)
  {

    self->_title = 0;
  }

  attributedSubtitles = self->_attributedSubtitles;
  if (attributedSubtitles)
  {

    self->_attributedSubtitles = 0;
  }

  subtitles = self->_subtitles;
  if (subtitles)
  {

    self->_subtitles = 0;
  }

  durations = self->_durations;
  if (durations)
  {

    self->_durations = 0;
  }

  serialQueue = self->_serialQueue;
  if (serialQueue)
  {
    dispatch_release(serialQueue);
    self->_serialQueue = 0;
  }

  v15.receiver = self;
  v15.super_class = OKWidgetMarimbaView;
  [(OKWidgetMarimbaView *)&v15 dealloc];
}

- (void)layoutSubviews
{
  [(OKWidgetMarimbaView *)self bounds];
  v4 = v3;
  [(OKWidgetMarimbaView *)self bounds];
  v5 = &OBJC_IVAR___OKWidgetMarimbaView__landscapeMarimbaDocument;
  if (v4 < v6)
  {
    v5 = &OBJC_IVAR___OKWidgetMarimbaView__portraitMarimbaDocument;
  }

  v7 = *&self->OKWidgetView_opaque[*v5];
  if (v7 == [(MRMarimbaLayer *)[(MRMarimbaView *)self->_marimbaView marimbaLayer] document])
  {
    v13.receiver = self;
    v13.super_class = OKWidgetMarimbaView;
    [(OKWidgetMarimbaView *)&v13 layoutSubviews];
  }

  else
  {
    [+[MPAuthoringController sharedController](MPAuthoringController "sharedController")];
    v8 = [+[UIApplication sharedApplication](UIApplication statusBarOrientation];
    v9 = [(MRMarimbaView *)self->_marimbaView marimbaLayer];
    [(OKWidgetMarimbaView *)self bounds];
    v11 = v10;
    [(OKWidgetMarimbaView *)self bounds];
    [(MRMarimbaLayer *)v9 beginMorphingToAspectRatio:v8 andOrientation:v7 withDuration:v11 / v12 switchToDocument:0.5];
    v13.receiver = self;
    v13.super_class = OKWidgetMarimbaView;
    [(OKWidgetMarimbaView *)&v13 layoutSubviews];
    [(MRMarimbaLayer *)[(MRMarimbaView *)self->_marimbaView marimbaLayer] endMorphing];
  }

  [-[OKWidgetMarimbaView contentView](self "contentView")];
  [(OFUIButton *)self->_videoPlayButton setCenter:?];
}

+ (id)supportedSettings
{
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___OKWidgetMarimbaView;
  v2 = [NSMutableDictionary dictionaryWithDictionary:objc_msgSendSuper2(&v6, "supportedSettings")];
  v37[0] = @"urls";
  v3 = kOKSettingKeyType;
  v4 = kOKSettingKeyDefault;
  v35[0] = kOKSettingKeyType;
  v35[1] = kOKSettingKeyDefault;
  v36[0] = &off_1BBF40;
  v36[1] = +[NSNull null];
  v38[0] = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:2];
  v37[1] = @"style";
  v33[0] = v3;
  v33[1] = v4;
  v34[0] = &off_1BBF58;
  v34[1] = @"Origami";
  v38[1] = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:2];
  v37[2] = @"autoplay";
  v31[0] = v3;
  v31[1] = v4;
  v32[0] = &off_1BBF70;
  v32[1] = &__kCFBooleanFalse;
  v38[2] = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:2];
  v37[3] = @"loop";
  v29[0] = v3;
  v29[1] = v4;
  v30[0] = &off_1BBF70;
  v30[1] = &__kCFBooleanFalse;
  v38[3] = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:2];
  v37[4] = @"gotoPosterFrame";
  v27[0] = v3;
  v27[1] = v4;
  v28[0] = &off_1BBF70;
  v28[1] = &__kCFBooleanFalse;
  v38[4] = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:2];
  v37[5] = @"mediaFeeder";
  v25[0] = v3;
  v25[1] = kOKSettingKeyClass;
  v26[0] = &off_1BBF88;
  v26[1] = objc_opt_class();
  v38[5] = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];
  v37[6] = @"attributedTitle";
  v23[1] = v4;
  v24[0] = &off_1BBFA0;
  v23[0] = v3;
  v24[1] = +[NSNull null];
  v38[6] = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];
  v37[7] = @"title";
  v21[1] = v4;
  v22[0] = &off_1BBF58;
  v21[0] = v3;
  v22[1] = +[NSNull null];
  v38[7] = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
  v37[8] = @"attributedSubtitles";
  v19[1] = v4;
  v20[0] = &off_1BBFB8;
  v19[0] = v3;
  v20[1] = +[NSNull null];
  v38[8] = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
  v37[9] = @"subtitles";
  v17[1] = v4;
  v18[0] = &off_1BBFB8;
  v17[0] = v3;
  v18[1] = +[NSNull null];
  v38[9] = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];
  v37[10] = @"durations";
  v15[1] = v4;
  v16[0] = &off_1BBFB8;
  v15[0] = v3;
  v16[1] = +[NSNull null];
  v38[10] = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
  v37[11] = @"seed";
  v13[1] = v4;
  v14[0] = &off_1BBFD0;
  v13[0] = v3;
  v14[1] = [NSNumber numberWithUnsignedInt:arc4random()];
  v38[11] = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
  v37[12] = @"documents";
  v11[1] = v4;
  v12[0] = &off_1BBFB8;
  v11[0] = v3;
  v12[1] = +[NSNull null];
  v38[12] = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
  v37[13] = @"forceLive";
  v9[0] = v3;
  v9[1] = v4;
  v10[0] = &off_1BBF70;
  v10[1] = &__kCFBooleanFalse;
  v38[13] = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
  v37[14] = @"interactiveTransitionSettings";
  v7[0] = v3;
  v7[1] = v4;
  v8[0] = &off_1BBFB8;
  v8[1] = &off_1BBEB8;
  v38[14] = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
  [(NSMutableDictionary *)v2 addEntriesFromDictionary:[NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:15]];
  return v2;
}

- (void)setSettingInteractiveTransitionSettings:(id)a3
{
  if ([a3 objectForKeyedSubscript:@"trackingBoxRadiusDefaultValue"])
  {
    [objc_msgSend(a3 objectForKeyedSubscript:{@"trackingBoxRadiusDefaultValue", "floatValue"}];
    [-[OKWidgetMarimbaView presentationViewController](self "presentationViewController")];
  }

  if ([a3 objectForKeyedSubscript:@"progressThresholdDefaultValue"])
  {
    [objc_msgSend(a3 objectForKeyedSubscript:{@"progressThresholdDefaultValue", "floatValue"}];
    [-[OKWidgetMarimbaView presentationViewController](self "presentationViewController")];
  }

  if ([a3 objectForKeyedSubscript:@"velocityThresholdDefaultValue"])
  {
    [objc_msgSend(a3 objectForKeyedSubscript:{@"velocityThresholdDefaultValue", "floatValue"}];
    v8 = v7;
    v9 = [(OKWidgetMarimbaView *)self presentationViewController];

    [v9 setInteractiveTransitionVelocityThreshold:v8];
  }
}

- (id)valueForUndefinedKey:(id)a3
{
  v4.receiver = self;
  v4.super_class = OKWidgetMarimbaView;
  return [(OKWidgetMarimbaView *)&v4 valueForUndefinedKey:a3];
}

- (void)navigatorBounceStart:(id)a3
{
  self->_isBouncing = 1;
  self->_shouldResumeAtBounceEnd = [(MRMarimbaLayer *)[(MRMarimbaView *)self->_marimbaView marimbaLayer] isPlaying];
  v4 = [(MRMarimbaView *)self->_marimbaView marimbaLayer];

  [(MRMarimbaLayer *)v4 pause];
}

- (void)navigatorBounceEnd:(id)a3
{
  self->_isBouncing = 0;
  if (self->_shouldResumeAtBounceEnd)
  {
    v5 = [(MRMarimbaView *)self->_marimbaView marimbaLayer:a3];

    [(MRMarimbaLayer *)v5 play];
  }
}

- (void)setSettingUrls:(id)a3
{
  v5 = [(OKWidgetMarimbaView *)self mediaURLs];
  if ((a3 && [a3 count] || objc_msgSend(v5, "count")) && !self->_mediaFeeder && (objc_msgSend(v5, "isEqualToArray:", a3) & 1) == 0)
  {
    [v5 removeAllObjects];
    [v5 addObjectsFromArray:a3];
    -[MPDocument setVideoPaths:](self->_landscapeMarimbaDocument, "setVideoPaths:", [a3 valueForKeyPath:@"absoluteString"]);
    -[MPDocument setVideoPaths:](self->_portraitMarimbaDocument, "setVideoPaths:", [a3 valueForKeyPath:@"absoluteString"]);
    v6 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(a3, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [a3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(a3);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          v12 = [(OKWidgetMarimbaView *)self _mediaPropertiesForMediaURL:v11];
          if (v12)
          {
            [v6 setObject:v12 forKey:{objc_msgSend(v11, "absoluteString")}];
          }
        }

        v8 = [a3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    [(MPDocument *)self->_landscapeMarimbaDocument setMediaProperties:v6];
    [(MPDocument *)self->_portraitMarimbaDocument setMediaProperties:v6];

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10DDD4;
    v13[3] = &unk_1AA700;
    v13[4] = self;
    [OKSettings applyUpdateBlockOnce:v13 forKey:@"updateMarimbaDocument"];
  }
}

- (void)setSettingMediaFeeder:(id)a3
{
  mediaFeeder = self->_mediaFeeder;
  if (mediaFeeder != a3)
  {
    if (mediaFeeder)
    {

      self->_mediaFeeder = 0;
    }

    self->_mediaFeeder = a3;

    [(OKWidgetMarimbaView *)self presentationDidLiveUpdate];
  }
}

- (void)setSettingStyle:(id)a3
{
  if (([-[NSMutableDictionary objectForKey:](self->_marimbaOptions objectForKey:{kMPAuthoringStyleID), "isEqualToString:", a3}] & 1) == 0)
  {
    [(NSMutableDictionary *)self->_marimbaOptions setObject:a3 forKey:kMPAuthoringStyleID];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10DF4C;
    v5[3] = &unk_1AA700;
    v5[4] = self;
    [OKSettings applyUpdateBlockOnce:v5 forKey:@"updateMarimbaDocument"];
  }
}

- (id)settingTransition
{
  v2 = [(NSMutableDictionary *)self->_marimbaOptions objectForKey:kMPAuthoringTransitionList];

  return [v2 firstObject];
}

- (void)setSettingTransition:(id)a3
{
  if (([objc_msgSend(-[NSMutableDictionary objectForKey:](self->_marimbaOptions objectForKey:{kMPAuthoringTransitionList), "firstObject"), "isEqualToString:", a3}] & 1) == 0)
  {
    marimbaOptions = self->_marimbaOptions;
    v6 = [NSArray arrayWithObject:a3];
    [(NSMutableDictionary *)marimbaOptions setObject:v6 forKey:kMPAuthoringTransitionList];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10E078;
    v7[3] = &unk_1AA700;
    v7[4] = self;
    [OKSettings applyUpdateBlockOnce:v7 forKey:@"updateMarimbaDocument"];
  }
}

- (void)setSettingAttributedTitle:(id)a3
{
  attributedTitle = self->_attributedTitle;
  if (attributedTitle != a3)
  {

    self->_attributedTitle = [a3 copy];
    self->_needsBuildingDocument = 1;
  }
}

- (void)setSettingTitle:(id)a3
{
  title = self->_title;
  if (title != a3)
  {

    self->_title = [a3 copy];
    self->_needsBuildingDocument = 1;
  }
}

- (void)setSettingAttributedSubtitles:(id)a3
{
  if (([a3 isEqualToDictionary:self->_attributedSubtitles] & 1) == 0)
  {

    self->_attributedSubtitles = [a3 copy];
    self->_needsBuildingDocument = 1;
  }
}

- (void)setSettingSubtitles:(id)a3
{
  if (([a3 isEqualToDictionary:self->_subtitles] & 1) == 0)
  {

    self->_subtitles = [a3 copy];
    self->_needsBuildingDocument = 1;
  }
}

- (void)setSettingDurations:(id)a3
{
  if (([a3 isEqualToDictionary:self->_durations] & 1) == 0)
  {

    self->_durations = [a3 copy];
    self->_needsBuildingDocument = 1;
  }
}

- (void)setSettingSeed:(unint64_t)a3
{
  if ([-[NSMutableDictionary objectForKey:](self->_marimbaOptions objectForKey:{kMPAuthoringSeed), "unsignedIntegerValue"}] != a3)
  {
    marimbaOptions = self->_marimbaOptions;
    v6 = [NSNumber numberWithUnsignedInteger:a3];
    [(NSMutableDictionary *)marimbaOptions setObject:v6 forKey:kMPAuthoringSeed];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10E408;
    v7[3] = &unk_1AA700;
    v7[4] = self;
    [OKSettings applyUpdateBlockOnce:v7 forKey:@"updateMarimbaDocument"];
  }
}

- (void)slideshowDidEnd:(id)a3
{
  if (self->_loop)
  {
    [(MRMarimbaLayer *)[(MRMarimbaView *)self->_marimbaView marimbaLayer] setTime:0.0];
    marimbaView = self->_marimbaView;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10E4FC;
    v6[3] = &unk_1AA700;
    v6[4] = self;
    [(MRMarimbaView *)marimbaView warmupAndPlay:1 completionBlock:v6];
  }

  else
  {
    videoPlayButton = self->_videoPlayButton;

    [(OFUIButton *)videoPlayButton setHidden:0];
  }
}

- (BOOL)slideshowShouldWrap
{
  v2 = [(OKWidgetMarimbaView *)self presentationViewController];

  return [v2 couchModeLoops];
}

- (void)setAntialiasing:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = OKWidgetMarimbaView;
  [(OKWidgetMarimbaView *)&v6 setAntialiasing:?];
  if (v3)
  {
    v5 = 15;
  }

  else
  {
    v5 = 0;
  }

  [(MRMarimbaLayer *)[(MRMarimbaView *)self->_marimbaView marimbaLayer] setEdgeAntialiasingMask:v5];
}

- (void)instantPause
{
  self->_shouldResumeAtBounceEnd = 0;
  [(MRMarimbaView *)self->_marimbaView pause];
  v3.receiver = self;
  v3.super_class = OKWidgetMarimbaView;
  [(OKWidgetMarimbaView *)&v3 instantPause];
}

- (void)instantResume
{
  v3.receiver = self;
  v3.super_class = OKWidgetMarimbaView;
  [(OKWidgetMarimbaView *)&v3 instantResume];
  if (self->_isBouncing)
  {
    self->_shouldResumeAtBounceEnd = 1;
  }

  else
  {
    [(MRMarimbaLayer *)[(MRMarimbaView *)self->_marimbaView marimbaLayer] play];
  }
}

- (double)remainingPlayDuration
{
  v15.receiver = self;
  v15.super_class = OKWidgetMarimbaView;
  [(OKWidgetMarimbaView *)&v15 remainingPlayDuration];
  v4 = v3;
  [(OKWidgetMarimbaView *)self bounds];
  v6 = v5;
  [(OKWidgetMarimbaView *)self bounds];
  v7 = &OBJC_IVAR___OKWidgetMarimbaView__landscapeMarimbaDocument;
  if (v6 < v8)
  {
    v7 = &OBJC_IVAR___OKWidgetMarimbaView__portraitMarimbaDocument;
  }

  v9 = *&self->OKWidgetView_opaque[*v7];
  v10 = [-[OKWidgetMarimbaView presentationViewController](self "presentationViewController")];
  [v9 duration];
  v12 = v11;
  if ((v10 & 1) == 0)
  {
    [(MRRenderer *)[(MRMarimbaLayer *)[(MRMarimbaView *)self->_marimbaView marimbaLayer] renderer] currentSlideshowTime];
    v12 = v12 - v13;
  }

  result = 0.0;
  if (v12 >= 0.0166666667)
  {
    result = v12;
  }

  if (v4 >= result)
  {
    return v4;
  }

  return result;
}

- (void)play
{
  [-[OKWidgetMarimbaView presentationViewController](self "presentationViewController")];
  [(MRRenderer *)[(MRMarimbaLayer *)[(MRMarimbaView *)self->_marimbaView marimbaLayer] renderer] setInteractiveTransitionTrackingBoxRadius:v3];
  [-[OKWidgetMarimbaView presentationViewController](self "presentationViewController")];
  [(MRRenderer *)[(MRMarimbaLayer *)[(MRMarimbaView *)self->_marimbaView marimbaLayer] renderer] setInteractiveTransitionProgressThreshold:v4];
  [-[OKWidgetMarimbaView presentationViewController](self "presentationViewController")];
  [(MRRenderer *)[(MRMarimbaLayer *)[(MRMarimbaView *)self->_marimbaView marimbaLayer] renderer] setInteractiveTransitionVelocityThreshold:v5];
  v6.receiver = self;
  v6.super_class = OKWidgetMarimbaView;
  [(OKWidgetMarimbaView *)&v6 play];
  [(OKWidgetMarimbaView *)self playSlideshow:self];
}

- (BOOL)prepareForDisplay:(BOOL)a3
{
  v14.receiver = self;
  v14.super_class = OKWidgetMarimbaView;
  v4 = [(OKWidgetMarimbaView *)&v14 prepareForDisplay:a3];
  if (v4)
  {
    objc_sync_enter(self);
    -[MRRenderer setLogRenderingTimes:](-[MRMarimbaLayer renderer](-[MRMarimbaView marimbaLayer](self->_marimbaView, "marimbaLayer"), "renderer"), "setLogRenderingTimes:", [-[OKWidgetMarimbaView presentationViewController](self "presentationViewController")]);
    slideshowTimeAtLastUnload = 0.0;
    if ([-[OKWidgetMarimbaView presentationViewController](self "presentationViewController")])
    {
      slideshowTimeAtLastUnload = self->_slideshowTimeAtLastUnload;
    }

    self->_slideshowTimeAtLastUnload = 0.0;
    [(MRMarimbaLayer *)[(MRMarimbaView *)self->_marimbaView marimbaLayer] setTime:slideshowTimeAtLastUnload];
    if (self->_needsBuildingDocument)
    {
      [(OKWidgetMarimbaView *)self _updateMarimbaDocument];
    }

    [(OKWidgetMarimbaView *)self bounds];
    v7 = v6;
    [(OKWidgetMarimbaView *)self bounds];
    v8 = &OBJC_IVAR___OKWidgetMarimbaView__landscapeMarimbaDocument;
    if (v7 < v9)
    {
      v8 = &OBJC_IVAR___OKWidgetMarimbaView__portraitMarimbaDocument;
    }

    v10 = *&self->OKWidgetView_opaque[*v8];
    if (v10 != [(MRMarimbaLayer *)[(MRMarimbaView *)self->_marimbaView marimbaLayer] document])
    {
      [(MRMarimbaLayer *)[(MRMarimbaView *)self->_marimbaView marimbaLayer] setDocument:v10];
    }

    [(MRMarimbaLayer *)[(MRMarimbaView *)self->_marimbaView marimbaLayer] pause];
    [(MRMarimbaLayer *)[(MRMarimbaView *)self->_marimbaView marimbaLayer] setTime:slideshowTimeAtLastUnload];
    serialQueue = self->_serialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10EA08;
    block[3] = &unk_1AA700;
    block[4] = self;
    dispatch_async(serialQueue, block);
    objc_sync_exit(self);
  }

  return v4;
}

- (BOOL)prepareForWarmup:(BOOL)a3
{
  v13.receiver = self;
  v13.super_class = OKWidgetMarimbaView;
  v4 = [(OKWidgetMarimbaView *)&v13 prepareForWarmup:a3];
  if (v4)
  {
    objc_sync_enter(self);
    [(OKWidgetMarimbaView *)self endAllEditing:0];
    if (self->_needsBuildingDocument)
    {
      [(OKWidgetMarimbaView *)self _updateMarimbaDocument];
    }

    [(OKWidgetMarimbaView *)self bounds];
    v6 = v5;
    [(OKWidgetMarimbaView *)self bounds];
    v7 = &OBJC_IVAR___OKWidgetMarimbaView__landscapeMarimbaDocument;
    if (v6 < v8)
    {
      v7 = &OBJC_IVAR___OKWidgetMarimbaView__portraitMarimbaDocument;
    }

    v9 = *&self->OKWidgetView_opaque[*v7];
    if (v9 != [(MRMarimbaLayer *)[(MRMarimbaView *)self->_marimbaView marimbaLayer] document])
    {
      [(MRMarimbaLayer *)[(MRMarimbaView *)self->_marimbaView marimbaLayer] setDocument:v9];
    }

    [(MRMarimbaLayer *)[(MRMarimbaView *)self->_marimbaView marimbaLayer] pause];
    [(MRMarimbaLayer *)[(MRMarimbaView *)self->_marimbaView marimbaLayer] setTime:0.0];
    serialQueue = self->_serialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10EBA0;
    block[3] = &unk_1AA700;
    block[4] = self;
    dispatch_async(serialQueue, block);
    objc_sync_exit(self);
  }

  return v4;
}

- (BOOL)prepareForUnload:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = OKWidgetMarimbaView;
  v4 = [(OKWidgetMarimbaView *)&v8 prepareForUnload:a3];
  if (v4)
  {
    objc_sync_enter(self);
    [(OKWidgetMarimbaView *)self endAllEditing:0];
    [(MRMarimbaLayer *)[(MRMarimbaView *)self->_marimbaView marimbaLayer] pause];
    [(MRRenderer *)[(MRMarimbaLayer *)[(MRMarimbaView *)self->_marimbaView marimbaLayer] renderer] currentSlideshowTime];
    v6 = v5 + -0.5;
    if (v6 < 0.0)
    {
      v6 = 0.0;
    }

    self->_slideshowTimeAtLastUnload = v6;
    [(MRMarimbaLayer *)[(MRMarimbaView *)self->_marimbaView marimbaLayer] setTime:0.0];
    [(OKWidgetMarimbaView *)self resignReady];
    self->_needsBuildingDocument = 1;
    objc_sync_exit(self);
  }

  return v4;
}

- (void)_updateMarimbaDocument
{
  if ([(OKWidgetMarimbaView *)self prepareMode]== &dword_0 + 1 || [(OKWidgetMarimbaView *)self prepareMode]== &dword_0 + 2)
  {
    objc_sync_enter(self);
    [-[OKWidgetMarimbaView contentView](self "contentView")];
    v5 = v3;
    v6 = v4;
    if (v3 >= v4)
    {
      v7 = v3 / v4;
    }

    else
    {
      v7 = v4 / v3;
    }

    if (self->_authoringIsOutsourced)
    {
LABEL_31:
      v27 = &OBJC_IVAR___OKWidgetMarimbaView__portraitMarimbaDocument;
      if (v5 >= v6)
      {
        v27 = &OBJC_IVAR___OKWidgetMarimbaView__landscapeMarimbaDocument;
      }

      v28 = *&self->OKWidgetView_opaque[*v27];
      if (v28 == [(MRMarimbaLayer *)[(MRMarimbaView *)self->_marimbaView marimbaLayer] document])
      {
        v29 = [-[MPDocument mainLayers](v28 "mainLayers")];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v30 = v29;
        }

        else
        {
          v30 = 0;
        }

        -[MRRenderer setTransitionLayerPlugObjectID:](-[MRMarimbaLayer renderer](-[MRMarimbaView marimbaLayer](self->_marimbaView, "marimbaLayer"), "renderer"), "setTransitionLayerPlugObjectID:", [objc_msgSend(v30 "plug")]);
      }

      else
      {
        [(MRMarimbaLayer *)[(MRMarimbaView *)self->_marimbaView marimbaLayer] setDocument:v28];
      }

      [(MRRenderer *)[(MRMarimbaLayer *)[(MRMarimbaView *)self->_marimbaView marimbaLayer] renderer] disableFadeInAndOut];
      self->_needsBuildingDocument = 0;
      objc_sync_exit(self);
      return;
    }

    [+[MPAuthoringController sharedController](MPAuthoringController "sharedController")];
    marimbaOptions = self->_marimbaOptions;
    if (self->_forceLive)
    {
      [(NSMutableDictionary *)self->_marimbaOptions setObject:&__kCFBooleanTrue forKey:kMPAuthoringLive];
    }

    else
    {
      mediaFeeder = self->_mediaFeeder;
      if (mediaFeeder)
      {
        v10 = [(OKMediaFeeder *)mediaFeeder numberOfMediaItems];
        v11 = v10 > [-[MPDocument videoPaths](self->_landscapeMarimbaDocument "videoPaths")];
      }

      else
      {
        v11 = 0;
      }

      v12 = [NSNumber numberWithInt:v11];
      [(NSMutableDictionary *)marimbaOptions setObject:v12 forKey:kMPAuthoringLive];
    }

    attributedTitle = self->_attributedTitle;
    if (!attributedTitle)
    {
      attributedTitle = self->_title;
    }

    v14 = self->_marimbaOptions;
    v15 = [NSNumber numberWithBool:attributedTitle != 0];
    [(NSMutableDictionary *)v14 setObject:v15 forKey:kMPAuthoringUseTitleEffect];
    v16 = self->_marimbaOptions;
    if (attributedTitle)
    {
      v31 = attributedTitle;
      v17 = [NSArray arrayWithObjects:&v31 count:1];
    }

    else
    {
      v17 = &__NSArray0__struct;
    }

    [(NSMutableDictionary *)v16 setObject:v17 forKey:kMPAuthoringTitleStrings];
    subtitles = self->_subtitles;
    if (self->_attributedSubtitles)
    {
      if (subtitles)
      {
        v19 = [(NSDictionary *)self->_subtitles mutableCopy];
        [v19 addEntriesFromDictionary:self->_attributedSubtitles];
        [(NSMutableDictionary *)self->_marimbaOptions setObject:v19 forKey:kMPAuthoringSubtitles];

LABEL_28:
        durations = self->_durations;
        if (durations)
        {
          [(NSMutableDictionary *)self->_marimbaOptions setObject:durations forKey:kMPAuthoringCustomDurations];
        }

        [+[MPCropController sharedController](MPCropController "sharedController")];
        v23 = self->_marimbaOptions;
        v24 = [NSNumber numberWithDouble:v7];
        [(NSMutableDictionary *)v23 setObject:v24 forKey:kMPAuthoringAspectRatio];
        [(MPDocument *)self->_landscapeMarimbaDocument setDocumentAttribute:self->_marimbaOptions forKey:kMPDocumentAuthoringOptions];
        [(MPDocument *)self->_landscapeMarimbaDocument applyStyle:[(NSMutableDictionary *)self->_marimbaOptions objectForKey:kMPAuthoringStyleID]];
        v25 = self->_marimbaOptions;
        v26 = [NSNumber numberWithDouble:1.0 / v7];
        [(NSMutableDictionary *)v25 setObject:v26 forKey:kMPAuthoringAspectRatio];
        [(MPDocument *)self->_portraitMarimbaDocument setDocumentAttribute:self->_marimbaOptions forKey:kMPDocumentAuthoringOptions];
        [(MPDocument *)self->_portraitMarimbaDocument applyStyle:[(NSMutableDictionary *)self->_marimbaOptions objectForKey:kMPAuthoringStyleID]];
        [+[MPCropController sharedController](MPCropController "sharedController")];
        [+[MPAuthoringController sharedController](MPAuthoringController "sharedController")];
        goto LABEL_31;
      }

      v20 = self->_marimbaOptions;
      v21 = kMPAuthoringSubtitles;
      subtitles = self->_attributedSubtitles;
    }

    else
    {
      v20 = self->_marimbaOptions;
      v21 = kMPAuthoringSubtitles;
      if (!subtitles)
      {
        [(NSMutableDictionary *)v20 removeObjectForKey:kMPAuthoringSubtitles];
        goto LABEL_28;
      }
    }

    [(NSMutableDictionary *)v20 setObject:subtitles forKey:v21];
    goto LABEL_28;
  }

  [(OKWidgetMarimbaView *)self prepareMode];
}

- (void)presentationDidLiveUpdate
{
  global_queue = dispatch_get_global_queue(17, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10F220;
  block[3] = &unk_1AA700;
  block[4] = self;
  dispatch_async(global_queue, block);
}

- (void)warmup:(BOOL)a3
{
  objc_sync_enter(self);
  -[MRRenderer setAllowsThumbnails:](-[MRMarimbaLayer renderer](-[MRMarimbaView marimbaLayer](self->_marimbaView, "marimbaLayer"), "renderer"), "setAllowsThumbnails:", [-[OKWidgetMarimbaView presentationViewController](self "presentationViewController")] ^ 1);
  if (self->_gotoPosterFrame)
  {
    [(MPDocument *)self->_landscapeMarimbaDocument posterTime];
    [(MRRenderer *)[(MRMarimbaLayer *)[(MRMarimbaView *)self->_marimbaView marimbaLayer] renderer] setTime:v5];
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10F758;
  v6[3] = &unk_1AA728;
  v6[4] = self;
  v7 = a3;
  [(OKWidgetMarimbaView *)self performBlockOnMainThread:v6];
  objc_sync_exit(self);
}

- (void)playSlideshow:(id)a3
{
  if (self->_isBouncing)
  {
    self->_shouldResumeAtBounceEnd = 1;
  }

  else
  {
    objc_sync_enter(self);
    if (![(MRMarimbaLayer *)[(MRMarimbaView *)self->_marimbaView marimbaLayer] isPlaying])
    {
      marimbaView = self->_marimbaView;
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_10F934;
      v5[3] = &unk_1AA700;
      v5[4] = self;
      [(MRMarimbaView *)marimbaView warmupAndPlay:1 completionBlock:v5];
    }

    objc_sync_exit(self);
  }
}

- (void)pauseSlideshow:(id)a3
{
  objc_sync_enter(self);
  self->_shouldResumeAtBounceEnd = 0;
  [(MRMarimbaLayer *)[(MRMarimbaView *)self->_marimbaView marimbaLayer] pause];

  objc_sync_exit(self);
}

- (void)navigateToMediaWithIndex:(unint64_t)a3 animated:(BOOL)a4 completion:(id)a5
{
  v8 = [(MPDocument *)[(MRMarimbaLayer *)[(MRMarimbaView *)self->_marimbaView marimbaLayer:a3] document] allSlides];
  if ([v8 count] > a3 && (v9 = objc_msgSend(v8, "objectAtIndexedSubscript:", a3)) != 0)
  {
    [(MRMarimbaLayer *)[(MRMarimbaView *)self->_marimbaView marimbaLayer] gotoSlide:v9];
    v10 = 1;
    if (!a5)
    {
      return;
    }
  }

  else
  {
    v10 = 0;
    if (!a5)
    {
      return;
    }
  }

  v11 = *(a5 + 2);

  v11(a5, v10);
}

- (void)navigateToTextWithIndex:(unint64_t)a3 animated:(BOOL)a4 completion:(id)a5
{
  v8 = [(MRMarimbaLayer *)[(MRMarimbaView *)self->_marimbaView marimbaLayer:a3] document];
  if (!a3 && (self->_attributedTitle || self->_title))
  {
    v10 = [objc_msgSend(-[MPDocument titleEffect](v8 "titleEffect")];
    goto LABEL_9;
  }

  v9 = [(MPDocument *)v8 allSlides];
  if ([v9 count] > a3)
  {
    v10 = [objc_msgSend(objc_msgSend(objc_msgSend(v9 objectAtIndexedSubscript:{a3), "parentSubtitleEffect"), "texts"), "lastObject"}];
    if (v10)
    {
LABEL_9:
      [(MRMarimbaLayer *)[(MRMarimbaView *)self->_marimbaView marimbaLayer] gotoText:v10];
      v11 = 1;
      if (!a5)
      {
        return;
      }

      goto LABEL_10;
    }
  }

  v11 = 0;
  if (!a5)
  {
    return;
  }

LABEL_10:
  v12 = *(a5 + 2);

  v12(a5, v11);
}

- (void)_restartSlideshowWithCompletion:(id)a3
{
  [(MRMarimbaLayer *)[(MRMarimbaView *)self->_marimbaView marimbaLayer] pause];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10FC4C;
  v5[3] = &unk_1AB6F8;
  v5[4] = self;
  v5[5] = a3;
  [(OKWidgetMarimbaView *)self navigateToMediaWithIndex:0 animated:0 completion:v5];
}

- (BOOL)marimbaViewCanInteract:(id)a3
{
  v3 = [(OKWidgetMarimbaView *)self presentationViewController];

  return [v3 interactivityEnabled];
}

- (CGSize)resolutionForAssetKey:(id)a3
{
  v3 = [objc_msgSend(-[OKWidgetMarimbaView page](self "page")];
  if (v3)
  {
    [objc_msgSend(v3 "metadata")];
  }

  else
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  result.height = height;
  result.width = width;
  return result;
}

- (id)attributeForKey:(id)a3 forAssetKey:(id)a4 withOptions:(id)a5
{
  result = [objc_msgSend(-[OKWidgetMarimbaView page](self page];
  if (result)
  {
    v7 = [result metadata];

    return [v7 dictionaryValueForKey:a3];
  }

  return result;
}

- (id)attributesforAssetPath:(id)a3
{
  result = [objc_msgSend(-[OKWidgetMarimbaView page](self "page")];
  if (result)
  {
    v4 = [result metadata];

    return [v4 dictionary];
  }

  return result;
}

- (CGImage)retainedCGImageForAssetKey:(id)a3 andSize:(CGSize)a4 orientation:(char *)a5
{
  height = a4.height;
  width = a4.width;
  result = [objc_msgSend(-[OKWidgetMarimbaView page](self "page")];
  if (result)
  {
    v10 = result;
    if (width >= height)
    {
      v11 = width;
    }

    else
    {
      v11 = height;
    }

    v12 = v11;
    [-[OKWidgetMarimbaView presentationViewController](self "presentationViewController")];
    v14 = [(CGImage *)v10 thumbnailImageForResolution:v12 aspectRatio:0 scale:width / height quality:v13 colorSpace:kOKMediaItemQualityGood];
    if (a5)
    {
      *a5 = 0;
    }

    return CGImageRetain(v14);
  }

  return result;
}

- (CGImage)retainedCGImageForAssetKey:(id)a3 andSize:(CGSize)a4 orientation:(char *)a5 thumbnailIfPossible:(BOOL)a6 now:(BOOL)a7
{
  v7 = a6;
  height = a4.height;
  width = a4.width;
  if (a5)
  {
    *a5 = 0;
  }

  result = [objc_msgSend(-[OKWidgetMarimbaView page](self "page")];
  if (result)
  {
    v12 = result;
    if (v7)
    {
      v13 = kOKMediaItemThumbnailResolutionLow;
      v14 = kOKMediaItemQualityBest;
      v15 = width / height;
      v16 = 1.0;
    }

    else
    {
      if (width >= height)
      {
        v17 = width;
      }

      else
      {
        v17 = height;
      }

      v18 = v17;
      [-[OKWidgetMarimbaView presentationViewController](self "presentationViewController")];
      v16 = v19;
      v14 = kOKMediaItemQualityGood;
      result = v12;
      v13 = v18;
      v15 = width / height;
    }

    v20 = [(CGImage *)result thumbnailImageForResolution:v13 aspectRatio:0 scale:v15 quality:v16 colorSpace:v14];

    return CGImageRetain(v20);
  }

  return result;
}

- (id)avAssetForAssetKey:(id)a3
{
  result = [objc_msgSend(-[OKWidgetMarimbaView page](self "page")];
  if (result)
  {

    return [result avAsset];
  }

  return result;
}

- (id)_mediaPropertiesForMediaURL:(id)a3
{
  v3 = [objc_msgSend(-[OKWidgetMarimbaView page](self "page")];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = +[NSMutableDictionary dictionary];
  v6 = [v4 metadata];
  [v6 duration];
  if (v7 < 3.0 && v7 > 0.0)
  {
    v7 = 3.0;
  }

  v9 = [NSNumber numberWithDouble:v7];
  [v5 setObject:v9 forKeyedSubscript:kMPMetaDataDuration];
  [v5 setObject:&off_1BC0D8 forKeyedSubscript:kMPMetaDataStartTime];
  [v5 setObject:v9 forKeyedSubscript:kMPMetaDataStopTime];
  if ([v6 creationDate])
  {
    v10 = [v6 creationDate];
    [v5 setObject:v10 forKeyedSubscript:kMPMetaDataCreationDate];
  }

  [v6 resolution];
  [v5 setObject:NSStringFromCGSize(v19) forKeyedSubscript:kMPMetaDataResolution];
  if ([v6 type] == &dword_0 + 3)
  {
    v11 = 3;
  }

  else
  {
    v11 = 2;
  }

  v12 = [NSNumber numberWithInt:v11];
  [v5 setObject:v12 forKeyedSubscript:kMPMetaDataMediaType];
  if ([v6 name])
  {
    v13 = [v6 name];
    [v5 setObject:v13 forKeyedSubscript:kMPMetaDataCaption];
  }

  if ([v6 caption])
  {
    v14 = [v6 caption];
    [v5 setObject:v14 forKeyedSubscript:kMPMetaDataComment];
  }

  [v6 longitude];
  v15 = [NSNumber numberWithDouble:?];
  [v5 setObject:v15 forKeyedSubscript:kMPMetaDataLongitude];
  [v6 latitude];
  v16 = [NSNumber numberWithDouble:?];
  [v5 setObject:v16 forKeyedSubscript:kMPMetaDataLatitude];
  if ([v6 regionsOfInterest])
  {
    v17 = [v6 regionsOfInterest];
    [v5 setObject:v17 forKeyedSubscript:kMPMetaDataRegionOfInterestRectangles];
  }

  return v5;
}

- (void)renderer:(id)a3 renderingTimeLogMessage:(id)a4 withTimestamp:(double)a5
{
  v7 = [(OKWidgetMarimbaView *)self presentationViewController];
  v8 = [a4 stringByTrimmingCharactersInSet:{+[NSCharacterSet newlineCharacterSet](NSCharacterSet, "newlineCharacterSet")}];

  [v7 renderingTimeLogMessage:v8 withTimestamp:a5];
}

+ (void)setupJavascriptContext:(id)a3
{
  [a3 setObject:objc_opt_class() forKeyedSubscript:@"OKWidgetMarimbaView"];
  [OKSettings exportClassSettings:objc_opt_class() toJavaScriptContext:a3];
  v10[0] = JSPropertyDescriptorValueKey;
  v10[1] = JSPropertyDescriptorWritableKey;
  v11[0] = &stru_1AB738;
  v11[1] = &__kCFBooleanTrue;
  v10[2] = JSPropertyDescriptorEnumerableKey;
  v10[3] = JSPropertyDescriptorConfigurableKey;
  v11[2] = &__kCFBooleanFalse;
  v11[3] = &__kCFBooleanTrue;
  [objc_msgSend(objc_msgSend(a3 objectForKeyedSubscript:{@"OKWidgetMarimbaView", "objectForKeyedSubscript:", @"prototype", "defineProperty:descriptor:", @"gotoItem", +[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v11, v10, 4)}];
  v8[0] = JSPropertyDescriptorValueKey;
  v8[1] = JSPropertyDescriptorWritableKey;
  v9[0] = &stru_1AB778;
  v9[1] = &__kCFBooleanTrue;
  v8[2] = JSPropertyDescriptorEnumerableKey;
  v8[3] = JSPropertyDescriptorConfigurableKey;
  v9[2] = &__kCFBooleanFalse;
  v9[3] = &__kCFBooleanTrue;
  [objc_msgSend(objc_msgSend(a3 objectForKeyedSubscript:{@"OKWidgetMarimbaView", "objectForKeyedSubscript:", @"prototype", "defineProperty:descriptor:", @"restart", +[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v9, v8, 4)}];
  v6[0] = JSPropertyDescriptorValueKey;
  v6[1] = JSPropertyDescriptorWritableKey;
  v7[0] = &stru_1AB7B8;
  v7[1] = &__kCFBooleanTrue;
  v6[2] = JSPropertyDescriptorEnumerableKey;
  v6[3] = JSPropertyDescriptorConfigurableKey;
  v7[2] = &__kCFBooleanFalse;
  v7[3] = &__kCFBooleanTrue;
  [objc_msgSend(objc_msgSend(a3 objectForKeyedSubscript:{@"OKWidgetMarimbaView", "objectForKeyedSubscript:", @"prototype", "defineProperty:descriptor:", @"gotoNext", +[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v7, v6, 4)}];
  v4[0] = JSPropertyDescriptorValueKey;
  v4[1] = JSPropertyDescriptorWritableKey;
  v5[0] = &stru_1AB7D8;
  v5[1] = &__kCFBooleanTrue;
  v4[2] = JSPropertyDescriptorEnumerableKey;
  v4[3] = JSPropertyDescriptorConfigurableKey;
  v5[2] = &__kCFBooleanFalse;
  v5[3] = &__kCFBooleanTrue;
  [objc_msgSend(objc_msgSend(a3 objectForKeyedSubscript:{@"OKWidgetMarimbaView", "objectForKeyedSubscript:", @"prototype", "defineProperty:descriptor:", @"gotoPrevious", +[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v5, v4, 4)}];
}

@end