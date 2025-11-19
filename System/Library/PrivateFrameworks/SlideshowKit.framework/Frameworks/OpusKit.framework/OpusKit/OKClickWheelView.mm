@interface OKClickWheelView
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)isPresented;
- (OKClickWheelView)initWithContainerView:(id)a3 andAuthoringGuidelines:(id)a4;
- (OKClickWheelView)initWithFrame:(CGRect)a3;
- (id)animationForKeyPath:(id)a3 fromValue:(id)a4 toValue:(id)a5 duration:(double)a6 timmingFunctionName:(id)a7 delegate:(id)a8;
- (void)_setupLayerShadowForLabel:(id)a3;
- (void)activateProgress:(id)a3;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)audioStartedPlayingWithAVAsset:(id)a3;
- (void)buttonPressed:(id)a3;
- (void)dealloc;
- (void)handleAllGestures:(id)a3;
- (void)handleLongPress:(id)a3;
- (void)hide;
- (void)initAlbumInformationView;
- (void)initButtons;
- (void)initGesture;
- (void)layoutSubviews;
- (void)notifyProgress:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setProgress:(double)a3;
- (void)setVolume:(double)a3;
- (void)show;
- (void)updateMusicInformation:(id)a3;
@end

@implementation OKClickWheelView

- (OKClickWheelView)initWithContainerView:(id)a3 andAuthoringGuidelines:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  [a3 frame];
  v8 = v7;
  v10 = v9;
  if (+[OKRuntime currentPlatform]== 1)
  {
    v11 = 190.0;
  }

  else
  {
    v11 = 240.0;
  }

  v12 = (v8 - v11) * 0.5 * 0.5;
  if (+[OKRuntime currentPlatform]== 1)
  {
    v13 = 190.0;
  }

  else
  {
    v13 = 240.0;
  }

  v14 = (v10 - v13) * 0.5 * 0.5;
  if (+[OKRuntime currentPlatform]== 1)
  {
    v15 = 190.0;
  }

  else
  {
    v15 = 240.0;
  }

  if (+[OKRuntime currentPlatform]== 1)
  {
    v16 = 190.0;
  }

  else
  {
    v16 = 240.0;
  }

  v17 = [(OKClickWheelView *)self initWithFrame:v12, v14, v15, v16];
  v18 = v17;
  if (v17)
  {
    v17->_containerView = a3;
    [(OKClickWheelView *)v17 initGesture];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v19 = [a4 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v26;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v26 != v21)
          {
            objc_enumerationMutation(a4);
          }

          v23 = *(*(&v25 + 1) + 8 * i);
          if ([objc_msgSend(v23 "key")])
          {
            -[UILabel setAttributedText:](v18->_beatsSentence, "setAttributedText:", [v23 value]);
          }

          else if ([objc_msgSend(v23 "key")] && !-[UILabel attributedText](v18->_beatsSentence, "attributedText"))
          {
            -[UILabel setText:](v18->_beatsSentence, "setText:", [v23 value]);
          }
        }

        v20 = [a4 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v20);
    }
  }

  return v18;
}

- (OKClickWheelView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v42.receiver = self;
  v42.super_class = OKClickWheelView;
  v5 = [(OFViewProxy *)&v42 initWithFrame:a3.origin.x, a3.origin.y];
  v6 = v5;
  if (v5)
  {
    [(OKClickWheelView *)v5 setClipsToBounds:1];
    [(OKClickWheelView *)v6 setAutoresizingMask:18];
    [-[OKClickWheelView layer](v6 "layer")];
    if (+[OKRuntime currentPlatform]== 1)
    {
      v7 = 95.0;
    }

    else
    {
      v7 = 120.0;
    }

    [-[OKClickWheelView layer](v6 "layer")];
    v8 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v6->_fetchInformationsQueue = v8;
    [(NSOperationQueue *)v8 setQualityOfService:25];
    v9 = [MEMORY[0x277CD9F90] layer];
    [v9 setFrame:{1.5, 1.5, width + -3.0, height + -3.0}];
    [v9 setStrokeColor:{objc_msgSend(objc_msgSend(MEMORY[0x277D75348], "colorWithWhite:alpha:", 0.800000012, 1.0), "CGColor")}];
    [v9 setFillColor:{objc_msgSend(objc_msgSend(MEMORY[0x277D75348], "clearColor"), "CGColor")}];
    [v9 setLineWidth:3.0];
    v10 = MEMORY[0x277D75208];
    [v9 frame];
    v12 = v11 * 0.5;
    [v9 frame];
    v14 = v13 * 0.5;
    [v9 frame];
    [v9 setPath:{objc_msgSend(objc_msgSend(v10, "bezierPathWithArcCenter:radius:startAngle:endAngle:clockwise:", 1, v12, v14, v15 * 0.5, 0.0, 6.28318531), "CGPath")}];
    v16 = [objc_alloc(MEMORY[0x277D75DE8]) initWithFrame:2071 privateStyle:{0.0, 0.0, width, height}];
    [(OKClickWheelView *)v6 addSubview:v16];
    [objc_msgSend(v16 "layer")];

    v17 = [objc_alloc(MEMORY[0x277D75D18]) initWithSize:{width, height}];
    v18 = [MEMORY[0x277CD9F90] layer];
    v6->_volumeLayer = v18;
    [(CAShapeLayer *)v18 setFrame:1.5, 1.5, width + -3.0, height + -3.0];
    -[CAShapeLayer setStrokeColor:](v6->_volumeLayer, "setStrokeColor:", [objc_msgSend(MEMORY[0x277D75348] colorWithRed:0.874509811 green:0.137254909 blue:0.254901975 alpha:{1.0), "CGColor"}]);
    -[CAShapeLayer setFillColor:](v6->_volumeLayer, "setFillColor:", [objc_msgSend(MEMORY[0x277D75348] "clearColor")]);
    [(CAShapeLayer *)v6->_volumeLayer setLineWidth:3.0];
    [objc_msgSend(v17 "layer")];
    [(OKClickWheelView *)v6 addSubview:v17];
    if (v17)
    {
    }

    [(OKClickWheelView *)v6 bounds];
    v20 = v19 * 0.29;
    v21 = objc_alloc(MEMORY[0x277D627F8]);
    [(OKClickWheelView *)v6 bounds];
    v44 = CGRectInset(v43, v20, v20);
    v22 = [v21 initWithFrame:{v44.origin.x, v44.origin.y, v44.size.width, v44.size.height}];
    [v22 setBackgroundColor:{objc_msgSend(MEMORY[0x277D75348], "colorWithWhite:alpha:", 0.0, 0.7)}];
    [v22 frame];
    [objc_msgSend(v22 "layer")];
    v24 = [MEMORY[0x277CD9F90] layer];
    [v22 frame];
    v26 = v25 + -2.0;
    [v22 frame];
    [v24 setFrame:{1.0, 1.0, v26, v27 + -2.0}];
    [v24 setStrokeColor:{objc_msgSend(objc_msgSend(MEMORY[0x277D75348], "colorWithWhite:alpha:", 0.800000012, 1.0), "CGColor")}];
    [v24 setFillColor:{objc_msgSend(objc_msgSend(MEMORY[0x277D75348], "clearColor"), "CGColor")}];
    [v24 setLineWidth:2.0];
    v28 = MEMORY[0x277D75208];
    [v24 frame];
    v30 = v29 * 0.5;
    [v24 frame];
    v32 = v31 * 0.5;
    [v24 frame];
    [v24 setPath:{objc_msgSend(objc_msgSend(v28, "bezierPathWithArcCenter:radius:startAngle:endAngle:clockwise:", 1, v30, v32, v33 * 0.5, 0.0, 6.28318531), "CGPath")}];
    [(OKClickWheelView *)v6 addSubview:v22];
    [objc_msgSend(v22 "layer")];
    v34 = objc_alloc(MEMORY[0x277D75D18]);
    [v22 frame];
    v37 = [v34 initWithSize:{v35, v36}];
    v6->_progressLayer = [MEMORY[0x277CD9F90] layer];
    [v22 frame];
    v39 = v38 + -2.0;
    [v22 frame];
    [(CAShapeLayer *)v6->_progressLayer setFrame:1.0, 1.0, v39, v40 + -2.0];
    -[CAShapeLayer setStrokeColor:](v6->_progressLayer, "setStrokeColor:", [objc_msgSend(MEMORY[0x277D75348] colorWithRed:0.136000007 green:0.512000024 blue:0.987999976 alpha:{1.0), "CGColor"}]);
    -[CAShapeLayer setFillColor:](v6->_progressLayer, "setFillColor:", [objc_msgSend(MEMORY[0x277D75348] "clearColor")]);
    [(CAShapeLayer *)v6->_progressLayer setLineWidth:2.0];
    [objc_msgSend(v37 "layer")];
    [v22 addSubview:v37];
    if (v37)
    {
    }

    if (v22)
    {
    }

    [(OKClickWheelView *)v6 initButtons];
    [(OKClickWheelView *)v6 initAlbumInformationView];
  }

  return v6;
}

- (void)layoutSubviews
{
  musicInformationView = self->_musicInformationView;
  [(OFUIView *)self->_containerView size];
  [(OFUIView *)musicInformationView setFrame:0.0, v4 + -75.0, 300.0, 75.0];
  beatsSentence = self->_beatsSentence;
  [(OFUIView *)self->_containerView frame];
  [(UILabel *)beatsSentence setFrame:20.0, 60.0, v6 + -40.0, 60.0];
  v7.receiver = self;
  v7.super_class = OKClickWheelView;
  [(OFViewProxy *)&v7 layoutSubviews];
}

- (void)initAlbumInformationView
{
  if (!self->_musicInformationView)
  {
    self->_isInformationLoaded = 0;
    v3 = objc_alloc_init(MEMORY[0x277D756B8]);
    self->_beatsSentence = v3;
    [(UILabel *)v3 setText:@"No sentence."];
    -[UILabel setFont:](self->_beatsSentence, "setFont:", [MEMORY[0x277D74300] boldSystemFontOfSize:16.0]);
    -[UILabel setTextColor:](self->_beatsSentence, "setTextColor:", [MEMORY[0x277D75348] whiteColor]);
    [(UILabel *)self->_beatsSentence setNumberOfLines:4];
    [(UILabel *)self->_beatsSentence setTextAlignment:1];
    [(OKClickWheelView *)self _setupLayerShadowForLabel:self->_beatsSentence];
    v4 = objc_alloc(MEMORY[0x277D627F8]);
    [(OFUIView *)self->_containerView size];
    self->_musicInformationView = [v4 initWithFrame:{-2.0, v5 + -75.0 + -8.0, 300.0, 75.0}];
    v6 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{10.0, 10.0, 55.0, 55.0}];
    self->_thumbnailMusic = v6;
    [-[UIImageView layer](v6 "layer")];
    [-[UIImageView layer](self->_thumbnailMusic "layer")];
    [(OFUIView *)self->_musicInformationView frame];
    v8 = v7;
    [(UIImageView *)self->_thumbnailMusic frame];
    v10 = v9;
    [(UIImageView *)self->_thumbnailMusic frame];
    v12 = v8 - (v10 + v11 + 20.0);
    v13 = objc_alloc(MEMORY[0x277D756B8]);
    [(UIImageView *)self->_thumbnailMusic frame];
    v15 = v14;
    [(UIImageView *)self->_thumbnailMusic frame];
    v17 = v15 + v16 + 14.0;
    [(UIImageView *)self->_thumbnailMusic frame];
    self->_titleMusic = [v13 initWithFrame:{v17, 14.0, v12, v18 * 0.5 + -5.0}];
    -[UILabel setTextColor:](self->_titleMusic, "setTextColor:", [MEMORY[0x277D75348] whiteColor]);
    [(UILabel *)self->_titleMusic setText:&stru_287AC35A0];
    -[UILabel setFont:](self->_titleMusic, "setFont:", [MEMORY[0x277D74300] boldSystemFontOfSize:16.0]);
    [(OKClickWheelView *)self _setupLayerShadowForLabel:self->_titleMusic];
    v19 = objc_alloc(MEMORY[0x277D756B8]);
    [(UIImageView *)self->_thumbnailMusic frame];
    v21 = v20;
    [(UIImageView *)self->_thumbnailMusic frame];
    v23 = v21 + v22 + 14.0;
    [(UILabel *)self->_titleMusic frame];
    v25 = v24 + 14.0;
    [(UIImageView *)self->_thumbnailMusic frame];
    self->_artisteName = [v19 initWithFrame:{v23, v25, v12, v26 * 0.5 + -5.0}];
    -[UILabel setTextColor:](self->_artisteName, "setTextColor:", [MEMORY[0x277D75348] whiteColor]);
    [(UILabel *)self->_artisteName setText:&stru_287AC35A0];
    -[UILabel setFont:](self->_artisteName, "setFont:", [MEMORY[0x277D74300] systemFontOfSize:16.0]);
    [(UILabel *)self->_artisteName sizeToFit];
    [(OKClickWheelView *)self _setupLayerShadowForLabel:self->_artisteName];
    v27 = objc_alloc(MEMORY[0x277D755E8]);
    [(UILabel *)self->_artisteName frame];
    v29 = v28;
    [(UILabel *)self->_artisteName frame];
    v31 = v29 + v30 + 10.0;
    [(UILabel *)self->_artisteName frame];
    v33 = v32;
    [(UILabel *)self->_artisteName frame];
    v35 = v34;
    [(UILabel *)self->_artisteName frame];
    v36 = [v27 initWithFrame:{v31, v33, v35}];
    self->_chevronView = v36;
    -[UIImageView setImage:](v36, "setImage:", [MEMORY[0x277D755B8] imageNamed:@"chevronRight" inBundle:{+[OKRuntime opusKitBundle](OKRuntime, "opusKitBundle")}]);
    [(UIImageView *)self->_chevronView setContentMode:1];
    [(OFUIView *)self->_musicInformationView addSubview:self->_chevronView];
    [(OFUIView *)self->_musicInformationView addSubview:self->_thumbnailMusic];
    [(OFUIView *)self->_musicInformationView addSubview:self->_titleMusic];
    musicInformationView = self->_musicInformationView;
    artisteName = self->_artisteName;

    [(OFUIView *)musicInformationView addSubview:artisteName];
  }
}

- (void)updateMusicInformation:(id)a3
{
  v13[2] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    if (!self->_isInformationLoaded)
    {
      [(NSOperationQueue *)self->_fetchInformationsQueue cancelAllOperations];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __43__OKClickWheelView_updateMusicInformation___block_invoke;
      v12[3] = &unk_279C91640;
      v12[4] = self;
      v12[5] = a3;
      v5 = [a3 metadataWithCompletionHandler:v12 force:1 cache:1];
      [(UIImageView *)self->_thumbnailMusic size];
      v7 = v6;
      [objc_msgSend(-[OFUIView window](self->_containerView "window")];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __43__OKClickWheelView_updateMusicInformation___block_invoke_3;
      v11[3] = &unk_279C91668;
      v11[4] = self;
      v9 = [a3 thumbnailImageForResolution:v7 aspectRatio:0 scale:v11 quality:1 colorSpace:1 completionHandler:1.0 force:v8 cache:0x800uLL];
      fetchInformationsQueue = self->_fetchInformationsQueue;
      v13[0] = v5;
      v13[1] = v9;
      -[NSOperationQueue addOperations:waitUntilFinished:](fetchInformationsQueue, "addOperations:waitUntilFinished:", [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2], 0);
    }
  }
}

void __43__OKClickWheelView_updateMusicInformation___block_invoke(uint64_t a1)
{
  v1[0] = MEMORY[0x277D85DD0];
  v1[1] = 3221225472;
  v1[2] = __43__OKClickWheelView_updateMusicInformation___block_invoke_2;
  v1[3] = &unk_279C90078;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v1);
}

uint64_t __43__OKClickWheelView_updateMusicInformation___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 536);
  if ([objc_msgSend(*(a1 + 40) "metadata")])
  {
    v3 = [objc_msgSend(*(a1 + 40) "metadata")];
  }

  else
  {
    v3 = @"Unknown";
  }

  [v2 setText:v3];
  v4 = MEMORY[0x277CCACA8];
  if ([objc_msgSend(*(a1 + 40) "metadata")])
  {
    v5 = [objc_msgSend(*(a1 + 40) "metadata")];
  }

  else
  {
    v5 = @"Unknown";
  }

  [*(*(a1 + 32) + 544) setText:{objc_msgSend(v4, "stringWithFormat:", @"%@ ", v5)}];
  [*(*(a1 + 32) + 544) sizeToFit];
  v6 = *(a1 + 32);
  v7 = *(v6 + 560);
  [*(v6 + 544) frame];
  v9 = v8;
  [*(*(a1 + 32) + 544) frame];
  v11 = v9 + v10;
  [*(*(a1 + 32) + 544) frame];
  v13 = v12;
  [*(*(a1 + 32) + 544) frame];
  v15 = v14;
  [*(*(a1 + 32) + 544) frame];
  result = [v7 setFrame:{v11, v13, v15}];
  *(*(a1 + 32) + 576) = 1;
  return result;
}

void __43__OKClickWheelView_updateMusicInformation___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__OKClickWheelView_updateMusicInformation___block_invoke_4;
  v4[3] = &unk_279C90078;
  v3 = *(a1 + 32);
  v4[4] = a3;
  v4[5] = v3;
  dispatch_async(MEMORY[0x277D85CD0], v4);
}

uint64_t __43__OKClickWheelView_updateMusicInformation___block_invoke_4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [MEMORY[0x277D755B8] imageWithCGImage:?];
    v3 = *(*(a1 + 40) + 528);
  }

  else
  {
    v4 = *(*(a1 + 40) + 528);
    v2 = [MEMORY[0x277D755B8] imageNamed:@"artwork" inBundle:{+[OKRuntime opusKitBundle](OKRuntime, "opusKitBundle")}];
    v3 = v4;
  }

  result = [v3 setImage:v2];
  *(*(a1 + 40) + 576) = 1;
  return result;
}

- (void)initButtons
{
  v3 = [objc_alloc(MEMORY[0x277D627E8]) initWithFrame:{10.0, 10.0, 40.0, 40.0}];
  self->_closeButton = v3;
  -[OFUIButton setImage:forState:](v3, "setImage:forState:", [MEMORY[0x277D755B8] imageNamed:@"close" inBundle:{+[OKRuntime opusKitBundle](OKRuntime, "opusKitBundle")}], 0);
  [(OFUIButton *)self->_closeButton setTarget:self action:sel_closeButtonPressed_];
  [(OFUIButton *)self->_closeButton setImageEdgeInsets:6.0, 6.0, 6.0, 6.0];
  v4 = objc_alloc(MEMORY[0x277D627E8]);
  if (+[OKRuntime currentPlatform]== 1)
  {
    v5 = 95.0;
  }

  else
  {
    v5 = 120.0;
  }

  if (+[OKRuntime currentPlatform]== 1)
  {
    v6 = 31.667;
  }

  else
  {
    v6 = 40.0;
  }

  v7 = (v5 - v6);
  if (+[OKRuntime currentPlatform]== 1)
  {
    v8 = 95.0;
  }

  else
  {
    v8 = 120.0;
  }

  if (+[OKRuntime currentPlatform]== 1)
  {
    v9 = 31.667;
  }

  else
  {
    v9 = 40.0;
  }

  v10 = (v8 - v9);
  if (+[OKRuntime currentPlatform]== 1)
  {
    v11 = 63.3333321;
  }

  else
  {
    v11 = 80.0;
  }

  if (+[OKRuntime currentPlatform]== 1)
  {
    v12 = 63.3333321;
  }

  else
  {
    v12 = 80.0;
  }

  v13 = [v4 initWithFrame:{v7, v10, v11, v12}];
  self->_playButton = v13;
  [(OFUIButton *)v13 setTag:0];
  [(OFUIButton *)self->_playButton addTarget:self action:sel_buttonPressed_ forControlEvents:64];
  -[OFUIButton setImage:forState:](self->_playButton, "setImage:forState:", [MEMORY[0x277D755B8] imageNamed:@"wheelplay" inBundle:{+[OKRuntime opusKitBundle](OKRuntime, "opusKitBundle")}], 4);
  -[OFUIButton setImage:forState:](self->_playButton, "setImage:forState:", [MEMORY[0x277D755B8] imageNamed:@"wheelpause" inBundle:{+[OKRuntime opusKitBundle](OKRuntime, "opusKitBundle")}], 0);
  [(OFUIButton *)self->_playButton frame];
  [(OFUIButton *)self->_playButton setImageEdgeInsets:v14 / 5.0, v14 / 5.0, v14 / 5.0, v14 / 5.0];
  v15 = objc_alloc(MEMORY[0x277D627E8]);
  if (+[OKRuntime currentPlatform]== 1)
  {
    v16 = 95.0;
  }

  else
  {
    v16 = 120.0;
  }

  v17 = 120.0;
  if (+[OKRuntime currentPlatform]== 1)
  {
    v18 = 31.667;
  }

  else
  {
    v18 = 40.0;
  }

  v19 = (v16 - v18);
  if (+[OKRuntime currentPlatform]== 1)
  {
    v20 = 63.3333321;
  }

  else
  {
    v20 = 80.0;
  }

  if (+[OKRuntime currentPlatform]== 1)
  {
    v21 = 63.3333321;
  }

  else
  {
    v21 = 80.0;
  }

  v22 = [v15 initWithFrame:{0.0, v19, v20, v21}];
  [v22 setTag:3];
  [v22 addTarget:self action:sel_buttonPressed_ forControlEvents:64];
  [v22 setImage:objc_msgSend(MEMORY[0x277D755B8] forState:{"imageNamed:inBundle:", @"wheelprev", +[OKRuntime opusKitBundle](OKRuntime, "opusKitBundle")), 0}];
  [v22 frame];
  v24 = v23 / 3.5;
  [v22 setImageEdgeInsets:{v24, v23 / 3.5, v23 / 3.5, v24}];
  v25 = objc_alloc(MEMORY[0x277D627E8]);
  if (+[OKRuntime currentPlatform]== 1)
  {
    v26 = 190.0;
  }

  else
  {
    v26 = 240.0;
  }

  v27 = +[OKRuntime currentPlatform];
  v28 = 80.0;
  if (v27 == 1)
  {
    v28 = *"UU}B";
  }

  v29 = (v26 - v28);
  if (+[OKRuntime currentPlatform]== 1)
  {
    v17 = 95.0;
  }

  if (+[OKRuntime currentPlatform]== 1)
  {
    v30 = 31.667;
  }

  else
  {
    v30 = 40.0;
  }

  v31 = (v17 - v30);
  if (+[OKRuntime currentPlatform]== 1)
  {
    v32 = 63.3333321;
  }

  else
  {
    v32 = 80.0;
  }

  if (+[OKRuntime currentPlatform]== 1)
  {
    v33 = 63.3333321;
  }

  else
  {
    v33 = 80.0;
  }

  v42 = [v25 initWithFrame:{v29, v31, v32, v33}];
  [v42 setTag:4];
  [v42 addTarget:self action:sel_buttonPressed_ forControlEvents:64];
  [v42 setImage:objc_msgSend(MEMORY[0x277D755B8] forState:{"imageNamed:inBundle:", @"wheelnext", +[OKRuntime opusKitBundle](OKRuntime, "opusKitBundle")), 0}];
  [v42 setImageEdgeInsets:{v24, v24, v24, v24}];
  v34 = objc_alloc(MEMORY[0x277D627E8]);
  if (+[OKRuntime currentPlatform]== 1)
  {
    v35 = 95.0;
  }

  else
  {
    v35 = 120.0;
  }

  v36 = +[OKRuntime currentPlatform];
  v37 = 31.667;
  if (v36 != 1)
  {
    v37 = 40.0;
  }

  v38 = (v35 - v37);
  if (+[OKRuntime currentPlatform]== 1)
  {
    v39 = 63.3333321;
  }

  else
  {
    v39 = 80.0;
  }

  if (+[OKRuntime currentPlatform]== 1)
  {
    v40 = 63.3333321;
  }

  else
  {
    v40 = 80.0;
  }

  v41 = [v34 initWithFrame:{v38, 0.0, v39, v40}];
  [v41 setTag:2];
  [v41 addTarget:self action:sel_buttonPressed_ forControlEvents:64];
  [v41 setTitle:@"Menu" forState:0];
  [(OKClickWheelView *)self addSubview:self->_playButton];
  [(OKClickWheelView *)self addSubview:v22];
  [(OKClickWheelView *)self addSubview:v42];
  if (v41)
  {
  }

  if (v22)
  {
  }

  if (v42)
  {
  }
}

- (void)initGesture
{
  v3 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_handleLongPress_];
  [(UIGestureRecognizer *)v3 setDelegate:self];
  self->_tapGestureRecognizer = v3;
  [(OFUIView *)self->_containerView addGestureRecognizer:v3];
  v4 = objc_alloc_init(OKCircleGestureRecognizer);
  self->_circleGestureRecognizer = v4;
  [(OKCircleGestureRecognizer *)v4 setDelegate:self];
  [(OKCircleGestureRecognizer *)self->_circleGestureRecognizer setDelaysTouchesBegan:1];
  [(OKCircleGestureRecognizer *)self->_circleGestureRecognizer addTarget:self action:sel_notifyProgress_];
  [(OKClickWheelView *)self addGestureRecognizer:self->_circleGestureRecognizer];
  v5 = [[OKPresentationViewAllGestureRecognizer alloc] initWithTarget:self action:sel_handleAllGestures_];
  self->_allGestureRecognizer = v5;

  [(OKPresentationViewAllGestureRecognizer *)v5 setDelegate:self];
}

- (void)dealloc
{
  tapGestureRecognizer = self->_tapGestureRecognizer;
  if (tapGestureRecognizer)
  {

    self->_tapGestureRecognizer = 0;
  }

  circleGestureRecognizer = self->_circleGestureRecognizer;
  if (circleGestureRecognizer)
  {

    self->_circleGestureRecognizer = 0;
  }

  allGestureRecognizer = self->_allGestureRecognizer;
  if (allGestureRecognizer)
  {

    self->_allGestureRecognizer = 0;
  }

  closeButton = self->_closeButton;
  if (closeButton)
  {

    self->_closeButton = 0;
  }

  playButton = self->_playButton;
  if (playButton)
  {

    self->_playButton = 0;
  }

  musicInformationView = self->_musicInformationView;
  if (musicInformationView)
  {

    self->_musicInformationView = 0;
  }

  thumbnailMusic = self->_thumbnailMusic;
  if (thumbnailMusic)
  {

    self->_thumbnailMusic = 0;
  }

  titleMusic = self->_titleMusic;
  if (titleMusic)
  {

    self->_titleMusic = 0;
  }

  artisteName = self->_artisteName;
  if (artisteName)
  {

    self->_artisteName = 0;
  }

  chevronView = self->_chevronView;
  if (chevronView)
  {

    self->_chevronView = 0;
  }

  volumeLayer = self->_volumeLayer;
  if (volumeLayer)
  {

    self->_volumeLayer = 0;
  }

  progressLayer = self->_progressLayer;
  if (progressLayer)
  {

    self->_progressLayer = 0;
  }

  [(NSOperationQueue *)self->_fetchInformationsQueue cancelAllOperations];
  fetchInformationsQueue = self->_fetchInformationsQueue;
  if (fetchInformationsQueue)
  {

    self->_fetchInformationsQueue = 0;
  }

  v16.receiver = self;
  v16.super_class = OKClickWheelView;
  [(OFUIView *)&v16 dealloc];
}

- (void)_setupLayerShadowForLabel:(id)a3
{
  [objc_msgSend(a3 "layer")];
  [objc_msgSend(a3 "layer")];
  [objc_msgSend(a3 "layer")];
  v4 = [a3 layer];
  LODWORD(v5) = 1.0;
  [v4 setShadowOpacity:v5];
  v6 = [a3 layer];

  [v6 setMasksToBounds:0];
}

- (void)setDelegate:(id)a3
{
  if (self->_delegate != a3)
  {
    self->_delegate = a3;
    self->_delegateRespondToDidCircleGesture = objc_opt_respondsToSelector() & 1;
    self->_delegateRespondWillAppear = objc_opt_respondsToSelector() & 1;
    self->_delegateRespondWillDisappear = objc_opt_respondsToSelector() & 1;
    self->_delegateRespondShouldAppear = objc_opt_respondsToSelector() & 1;
  }
}

- (void)setVolume:(double)a3
{
  if (a3 < 0.0)
  {
    a3 = 0.0;
  }

  if (a3 > 1.0)
  {
    a3 = 1.0;
  }

  self->_volume = a3;
  [(CAShapeLayer *)self->_volumeLayer frame];
  v5 = v4 * 0.5;
  [(CAShapeLayer *)self->_volumeLayer frame];
  v7 = v6 * 0.5;
  v8 = MEMORY[0x277D75208];
  [(CAShapeLayer *)self->_volumeLayer frame];
  v10 = [objc_msgSend(v8 bezierPathWithArcCenter:1 radius:v5 startAngle:v7 endAngle:v9 * 0.5 clockwise:{0.0, self->_volume * 3.14159265 + self->_volume * 3.14159265), "CGPath"}];
  volumeLayer = self->_volumeLayer;

  [(CAShapeLayer *)volumeLayer setPath:v10];
}

- (void)setProgress:(double)a3
{
  if (a3 < 0.0)
  {
    a3 = 0.0;
  }

  if (a3 > 1.0)
  {
    a3 = 1.0;
  }

  self->_progress = a3;
  [(CAShapeLayer *)self->_progressLayer frame];
  v5 = v4 * 0.5;
  [(CAShapeLayer *)self->_progressLayer frame];
  v7 = v6 * 0.5;
  v8 = MEMORY[0x277D75208];
  [(CAShapeLayer *)self->_progressLayer frame];
  v10 = [objc_msgSend(v8 bezierPathWithArcCenter:1 radius:v5 startAngle:v7 endAngle:v9 * 0.5 clockwise:{0.0, self->_progress * 3.14159265 + self->_progress * 3.14159265), "CGPath"}];
  progressLayer = self->_progressLayer;

  [(CAShapeLayer *)progressLayer setPath:v10];
}

- (id)animationForKeyPath:(id)a3 fromValue:(id)a4 toValue:(id)a5 duration:(double)a6 timmingFunctionName:(id)a7 delegate:(id)a8
{
  v14 = [MEMORY[0x277CD9E10] animation];
  [v14 setKeyPath:a3];
  [v14 setFromValue:a4];
  [v14 setToValue:a5];
  [v14 setDuration:a6];
  [v14 setDelegate:a8];
  [v14 setTimingFunction:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithName:", a7)}];
  return v14;
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  if (![objc_msgSend(a3 "toValue")])
  {
    if (self->_delegateRespondWillDisappear)
    {
      [(OKClickWheelViewDelegate *)self->_delegate clickWheelViewWillDisappear:self];
    }

    [(OKClickWheelView *)self removeFromSuperview];
    [(OFUIView *)self->_musicInformationView removeFromSuperview];
    [(OFUIButton *)self->_closeButton removeFromSuperview];
    [(UILabel *)self->_beatsSentence removeFromSuperview];
  }

  self->_isAnimating = 0;
}

- (BOOL)isPresented
{
  v3 = [(OKClickWheelView *)self superview];
  if (v3)
  {
    LOBYTE(v3) = !self->_isAnimating;
  }

  return v3;
}

- (void)show
{
  v3 = [(OKAudioPlaylist *)self->_audioPlaylist playingItem];
  if (v3)
  {
    [(OKClickWheelView *)self updateMusicInformation:v3];
  }

  if (!self->_delegateRespondShouldAppear || [(OKClickWheelViewDelegate *)self->_delegate clickWheelViewShouldAppear])
  {
    if ((objc_opt_respondsToSelector() & 1) != 0 && ([(OKClickWheelViewDelegate *)self->_delegate shouldShowPlayIcon]& 1) != 0)
    {
      v4 = 0;
      v5 = 1;
    }

    else
    {
      v5 = 0;
      v4 = 1;
    }

    [(OFUIButton *)self->_playButton setTag:v4];
    [(OFUIButton *)self->_playButton setSelected:v5];
    if (self->_delegateRespondWillAppear)
    {
      [(OKClickWheelViewDelegate *)self->_delegate clickWheelViewWillAppear:self];
    }

    [(OFUIView *)self->_containerView addSubview:self];
    [(OFUIView *)self->_containerView addSubview:self->_musicInformationView];
    [(OFUIView *)self->_containerView addSubview:self->_closeButton];
    [(OFUIView *)self->_containerView addSubview:self->_beatsSentence];
    v6 = [(OKClickWheelView *)self layer];
    LODWORD(v7) = 1.0;
    [v6 setOpacity:v7];
    v8 = [(OFUIView *)self->_musicInformationView layer];
    LODWORD(v9) = 1.0;
    [v8 setOpacity:v9];
    v10 = [(OFUIButton *)self->_closeButton layer];
    LODWORD(v11) = 1.0;
    [v10 setOpacity:v11];
    v12 = [(UILabel *)self->_beatsSentence layer];
    LODWORD(v13) = 1.0;
    [v12 setOpacity:v13];
    v14 = *MEMORY[0x277CDA7B0];
    [-[OKClickWheelView layer](self "layer")];
    v15 = [(OKClickWheelView *)self animationForKeyPath:@"opacity" fromValue:&unk_287AF1A78 toValue:&unk_287AF1A90 duration:v14 timmingFunctionName:0 delegate:0.2];
    [-[OFUIView layer](self->_musicInformationView "layer")];
    [-[OFUIButton layer](self->_closeButton "layer")];
    v16 = [(UILabel *)self->_beatsSentence layer];

    [v16 addAnimation:v15 forKey:@"fadeIn"];
  }
}

- (void)hide
{
  v3 = [(OKAudioPlaylist *)self->_audioPlaylist playingItem];
  if (v3)
  {
    [(OKClickWheelView *)self updateMusicInformation:v3];
  }

  [(OFUIView *)self->_containerView removeGestureRecognizer:self->_allGestureRecognizer];
  [-[OKClickWheelView layer](self "layer")];
  [-[OFUIView layer](self->_musicInformationView "layer")];
  [-[OFUIButton layer](self->_closeButton "layer")];
  [-[UILabel layer](self->_beatsSentence "layer")];
  v4 = *MEMORY[0x277CDA7C0];
  [-[OKClickWheelView layer](self "layer")];
  v5 = [(OKClickWheelView *)self animationForKeyPath:@"opacity" fromValue:&unk_287AF1A90 toValue:&unk_287AF1A78 duration:v4 timmingFunctionName:0 delegate:0.2];
  [-[OFUIView layer](self->_musicInformationView "layer")];
  [-[OFUIButton layer](self->_closeButton "layer")];
  [-[UILabel layer](self->_beatsSentence "layer")];
  v6 = MEMORY[0x277D82BB8];

  [v6 cancelPreviousPerformRequestsWithTarget:self selector:sel_hide object:0];
}

- (void)audioStartedPlayingWithAVAsset:(id)a3
{
  self->_isInformationLoaded = 0;
  v4 = [(OKAudioPlaylist *)self->_audioPlaylist playingItem];

  [(OKClickWheelView *)self updateMusicInformation:v4];
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  tapGestureRecognizer = self->_tapGestureRecognizer;
  if (tapGestureRecognizer == a3)
  {
    return 0;
  }

  allGestureRecognizer = self->_allGestureRecognizer;
  return (tapGestureRecognizer == a4 || allGestureRecognizer != a3) && allGestureRecognizer != a4;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  if (self->_circleGestureRecognizer == a3 || self->_allGestureRecognizer == a3)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = [(OKClickWheelView *)self subviews];
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
LABEL_5:
      v11 = 0;
      while (1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * v11);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [a4 view] == v12)
        {
          return 0;
        }

        if (v9 == ++v11)
        {
          v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v9)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }
  }

  [a4 locationInView:self->_containerView];
  v14 = v13;
  v16 = v15;
  [(OKClickWheelView *)self frame];
  v24.x = v14;
  v24.y = v16;
  if (CGRectContainsPoint(v26, v24) && self->_allGestureRecognizer == a3)
  {
    return 0;
  }

  [(OKClickWheelView *)self frame];
  v25.x = v14;
  v25.y = v16;
  return !CGRectContainsPoint(v27, v25) || self->_tapGestureRecognizer != a3 || ![(OKClickWheelView *)self isPresented];
}

- (void)notifyProgress:(id)a3
{
  if ([a3 state] == 1)
  {
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_hide object:0];
  }

  else if ([a3 state] == 4 || objc_msgSend(a3, "state") == 3)
  {
    [(OKClickWheelView *)self performSelector:sel_hide withObject:0 afterDelay:5.0];
  }

  if ([(OKClickWheelView *)self wantsProgress])
  {
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self];
    if ([a3 state] == 1)
    {
      [(OKAudioPlaylist *)self->_audioPlaylist stop];
    }

    if ([a3 state] == 2)
    {
      [(OKAudioPlaylist *)self->_audioPlaylist playingMusicCurrentTime];
      v6 = v5;
      [(OKAudioPlaylist *)self->_audioPlaylist playingMusicDuration];
      v8 = v7;
      audioPlaylist = self->_audioPlaylist;
      v10 = v6 / v7;
      [a3 diffenceProgress];
      [(OKAudioPlaylist *)audioPlaylist setPlayingMusicCurrentTime:v8 * (v10 + v11)];
      [a3 diffenceProgress];
      NSLog(&cfstr_F_0.isa, v8 * (v10 + v12));
      [a3 diffenceProgress];
      [(OKClickWheelView *)self setProgress:v10 + v13];
    }

    if ([a3 state] == 3)
    {
      [(OKAudioPlaylist *)self->_audioPlaylist play];

      [(OKClickWheelView *)self setWantsProgress:0];
    }
  }

  else
  {
    [(OKClickWheelView *)self volume];
    v15 = v14;
    [a3 diffenceProgress];
    [(OKClickWheelView *)self setVolume:v15 + v16];
    v17 = self->_audioPlaylist;
    [(OKClickWheelView *)self volume];
    v19 = v18 * 5.0;
    *&v19 = v19;

    [(OKAudioPlaylist *)v17 setVolume:v19];
  }
}

- (void)activateProgress:(id)a3
{
  if ([a3 state] == 3)
  {
    NSLog(&cfstr_S_1.isa, "[OKClickWheelView activateProgress:]", @"Progress activated");
    [(OKClickWheelView *)self setWantsProgress:1];
    v4 = MEMORY[0x277CBEC28];

    [(OKClickWheelView *)self performSelector:sel_setWantsProgress_ withObject:v4 afterDelay:1.0];
  }
}

- (void)handleLongPress:(id)a3
{
  if ([a3 state] == 3 && !self->_isAnimating)
  {
    self->_isAnimating = 1;
    v5 = [(OKClickWheelView *)self superview];
    [a3 locationInView:self->_containerView];
    v8 = v6;
    v9 = v7;
    if (v5)
    {
      [(OFUIView *)self->_musicInformationView frame];
      v39.x = v8;
      v39.y = v9;
      if (CGRectContainsPoint(v40, v39))
      {
        v10 = [MEMORY[0x277CBEBC0] URLWithString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"https://itunes.apple.com/search?term=%@+%@&limit=25&media=music&entity=musicArtist, musicTrack, album, mix, song", -[NSString stringByReplacingOccurrencesOfString:withString:](-[UILabel text](self->_titleMusic, "text"), "stringByReplacingOccurrencesOfString:withString:", @" ", @"+", -[NSString stringByReplacingOccurrencesOfString:withString:](-[UILabel text](self->_artisteName, "text"), "stringByReplacingOccurrencesOfString:withString:", @" ", @"+"}];
        v11 = [MEMORY[0x277CCAD30] sessionWithConfiguration:objc_msgSend(MEMORY[0x277CCAD38] delegate:"ephemeralSessionConfiguration") delegateQueue:{0, 0}];
        [v11 dataTaskWithRequest:objc_msgSend(MEMORY[0x277CCAD20] completionHandler:{"requestWithURL:", v10), &__block_literal_global_36}];
      }

      [(OKClickWheelView *)self hide];
    }

    else
    {
      [(OKClickWheelView *)self setCenter:v6, v7];
      musicInformationView = self->_musicInformationView;
      [(OFUIView *)self->_containerView size];
      [(OFUIView *)musicInformationView setFrame:0.0, v13 + -75.0, 300.0, 75.0];
      [(OFUIView *)self->_containerView frame];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      [(OKClickWheelView *)self frame];
      v42.origin.x = v22;
      v42.origin.y = v23;
      v42.size.width = v24;
      v42.size.height = v25;
      v41.origin.x = v15;
      v41.origin.y = v17;
      v41.size.width = v19;
      v41.size.height = v21;
      if (!CGRectContainsRect(v41, v42))
      {
        [(OFUIView *)self->_containerView frame];
        v27 = v26;
        v29 = v28;
        v31 = v30;
        v33 = v32;
        [(OKClickWheelView *)self frame];
        [(OKClickWheelView *)self setFrame:CGRectGetRectInsideRect(v27, v29, v31, v33, v34, v35, v36, v37)];
      }

      [(OKClickWheelView *)self show];

      [(OKClickWheelView *)self performSelector:sel_hide withObject:0 afterDelay:5.0];
    }
  }
}

uint64_t __36__OKClickWheelView_handleLongPress___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a4;
  v4 = [MEMORY[0x277CCAAA0] JSONObjectWithData:a2 options:0 error:&v7];
  v5 = [MEMORY[0x277D75128] sharedApplication];
  return [v5 openURL:{objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(v4, "objectForKeyedSubscript:", @"results", "objectAtIndexedSubscript:", 0), "objectForKeyedSubscript:", @"trackViewUrl", "stringByReplacingOccurrencesOfString:withString:", @"https://", @"itms://"}];
}

- (void)handleAllGestures:(id)a3
{
  if (([a3 state] - 3) <= 2)
  {

    [(OKClickWheelView *)self hide];
  }
}

- (void)buttonPressed:(id)a3
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_hide object:0];
  if (![a3 tag] || objc_msgSend(a3, "tag") == 1)
  {
    [a3 setSelected:{objc_msgSend(a3, "isSelected") ^ 1}];
    [a3 setTag:{objc_msgSend(a3, "isSelected")}];
  }

  v5 = [a3 tag];
  if (v5 <= 1)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        [(OKAudioPlaylist *)self->_audioPlaylist stop];
      }
    }

    else
    {
      [(OKAudioPlaylist *)self->_audioPlaylist play];
    }
  }

  else if (v5 == 2)
  {
    [(OKClickWheelView *)self hide];
    if (objc_opt_respondsToSelector())
    {
      [(OKClickWheelViewDelegate *)self->_delegate clickWheelViewMenuButtonPressed:self];
    }
  }

  else
  {
    if (v5 == 3)
    {
      [(OKAudioPlaylist *)self->_audioPlaylist prev];
    }

    else
    {
      if (v5 != 4)
      {
        goto LABEL_17;
      }

      [(OKAudioPlaylist *)self->_audioPlaylist next];
    }

    self->_isInformationLoaded = 0;
  }

LABEL_17:
  [(OKClickWheelView *)self updateMusicInformation:[(OKAudioPlaylist *)self->_audioPlaylist playingItem]];

  [(OKClickWheelView *)self performSelector:sel_hide withObject:0 afterDelay:5.0];
}

@end