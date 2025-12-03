@interface RCPVizualizerView
- (CGRect)screenRect;
- (void)layout;
- (void)setFrame:(CGRect)frame;
- (void)setRecapMovie:(id)movie;
- (void)setTime:(unint64_t)time;
@end

@implementation RCPVizualizerView

- (void)setRecapMovie:(id)movie
{
  objc_storeStrong(&self->_recapMovie, movie);
  movieCopy = movie;
  v6 = objc_alloc(MEMORY[0x277CE65B0]);
  recapMovie = [(RCPVizualizerView *)self recapMovie];
  screenRecording = [recapMovie screenRecording];
  v29 = [v6 initWithAsset:screenRecording];

  v9 = [MEMORY[0x277CE6598] playerWithPlayerItem:v29];
  [(RCPVizualizerView *)self setPlayer:v9];

  v10 = MEMORY[0x277CE65D8];
  player = [(RCPVizualizerView *)self player];
  v12 = [v10 playerLayerWithPlayer:player];
  [(RCPVizualizerView *)self setPlayerLayer:v12];

  layer = [(RCPVizualizerView *)self layer];
  playerLayer = [(RCPVizualizerView *)self playerLayer];
  [layer addSublayer:playerLayer];

  player2 = [(RCPVizualizerView *)self player];
  [player2 pause];

  v16 = objc_alloc_init(MEMORY[0x277CD9ED0]);
  [(RCPVizualizerView *)self setScreenshotLayer:v16];

  layer2 = [(RCPVizualizerView *)self layer];
  screenshotLayer = [(RCPVizualizerView *)self screenshotLayer];
  [layer2 addSublayer:screenshotLayer];

  v19 = objc_alloc_init(RCPTraceLayer);
  [(RCPVizualizerView *)self setTraceLayer:v19];

  recapMovie2 = [(RCPVizualizerView *)self recapMovie];
  eventStream = [recapMovie2 eventStream];
  traceLayer = [(RCPVizualizerView *)self traceLayer];
  [traceLayer setEventStream:eventStream];

  recapMovie3 = [(RCPVizualizerView *)self recapMovie];
  interfaceOrientation = [recapMovie3 interfaceOrientation];
  traceLayer2 = [(RCPVizualizerView *)self traceLayer];
  [traceLayer2 setInterfaceOrientation:interfaceOrientation];

  layer3 = [(RCPVizualizerView *)self layer];
  traceLayer3 = [(RCPVizualizerView *)self traceLayer];
  [layer3 addSublayer:traceLayer3];

  recapMovie4 = [(RCPVizualizerView *)self recapMovie];
  -[RCPVizualizerView setTime:](self, "setTime:", [recapMovie4 startTimestamp]);
}

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = RCPVizualizerView;
  [(RCPVizualizerView *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(RCPVizualizerView *)self layout];
}

- (void)layout
{
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  [(RCPVizualizerView *)self screenRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  traceLayer = [(RCPVizualizerView *)self traceLayer];
  [traceLayer setFrame:{v4, v6, v8, v10}];

  screenshotLayer = [(RCPVizualizerView *)self screenshotLayer];
  [screenshotLayer setFrame:{v4, v6, v8, v10}];

  playerLayer = [(RCPVizualizerView *)self playerLayer];
  [playerLayer setFrame:{v4, v6, v8, v10}];

  v14 = MEMORY[0x277CD9FF0];

  [v14 commit];
}

- (void)setTime:(unint64_t)time
{
  self->_time = time;
  traceLayer = [(RCPVizualizerView *)self traceLayer];
  [traceLayer setTime:time];

  recapMovie = [(RCPVizualizerView *)self recapMovie];
  startTimestamp = [recapMovie startTimestamp];
  recapMovie2 = [(RCPVizualizerView *)self recapMovie];
  v9 = recapMovie2;
  if (startTimestamp)
  {
    startTimestamp2 = [recapMovie2 startTimestamp];
  }

  else
  {
    eventStream = [recapMovie2 eventStream];
    events = [eventStream events];
    firstObject = [events firstObject];
    startTimestamp2 = [firstObject timestamp];
  }

  recapMovie3 = [(RCPVizualizerView *)self recapMovie];
  eventStream2 = [recapMovie3 eventStream];
  environment = [eventStream2 environment];

  player = [(RCPVizualizerView *)self player];
  currentItem = [player currentItem];
  asset = [currentItem asset];
  v20 = asset;
  if (asset)
  {
    [asset duration];
    v21 = v45;
  }

  else
  {
    v21 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
  }

  v22 = time - startTimestamp2;
  if (time < startTimestamp2)
  {
    v22 = 0;
  }

  memset(&v43, 0, sizeof(v43));
  v23 = v22;
  [environment timeScale];
  CMTimeMakeWithSeconds(&v43, v24 * v23 / 1000000000.0, v21);
  player2 = [(RCPVizualizerView *)self player];
  currentItem2 = [player2 currentItem];
  v42 = v43;
  v40 = *MEMORY[0x277CC08F0];
  v41 = *(MEMORY[0x277CC08F0] + 16);
  v38 = v40;
  v39 = v41;
  [currentItem2 seekToTime:&v42 toleranceBefore:&v40 toleranceAfter:&v38 completionHandler:0];

  recapMovie4 = [(RCPVizualizerView *)self recapMovie];
  screenshot = [recapMovie4 screenshot];
  if (!screenshot)
  {

    goto LABEL_13;
  }

  v29 = screenshot;
  time = self->_time;
  recapMovie5 = [(RCPVizualizerView *)self recapMovie];
  endTimestamp = [recapMovie5 endTimestamp];

  if (time < endTimestamp)
  {
LABEL_13:
    screenshotLayer = [(RCPVizualizerView *)self screenshotLayer];
    [screenshotLayer setContents:0];
    goto LABEL_14;
  }

  screenshotLayer = [(RCPVizualizerView *)self recapMovie];
  screenshot2 = [screenshotLayer screenshot];
  cGImage = [screenshot2 CGImage];
  screenshotLayer2 = [(RCPVizualizerView *)self screenshotLayer];
  [screenshotLayer2 setContents:cGImage];

LABEL_14:
  traceLayer2 = [(RCPVizualizerView *)self traceLayer];
  [traceLayer2 setNeedsDisplay];
}

- (CGRect)screenRect
{
  recapMovie = [(RCPVizualizerView *)self recapMovie];
  eventStream = [recapMovie eventStream];
  environment = [eventStream environment];
  screens = [environment screens];
  firstObject = [screens firstObject];
  [firstObject pointSize];
  v9 = v8;
  v11 = v10;

  recapMovie2 = [(RCPVizualizerView *)self recapMovie];
  if ([recapMovie2 interfaceOrientation])
  {
    recapMovie3 = [(RCPVizualizerView *)self recapMovie];
    interfaceOrientation = [recapMovie3 interfaceOrientation];

    if (interfaceOrientation == 1)
    {
      v15 = v11;
    }

    else
    {
      v15 = v9;
    }

    if (interfaceOrientation != 1)
    {
      v9 = v11;
    }

    v11 = v15;
  }

  else
  {
  }

  [(RCPVizualizerView *)self bounds];
  v18 = v17 / v9;
  if (v17 / v9 >= v16 / v11)
  {
    v18 = v16 / v11;
  }

  v19 = v9 * v18;
  v20 = v11 * v18;
  [(RCPVizualizerView *)self bounds];

  v25 = DKDCenterRectOverRect(0.0, 0.0, v19, v20, v21, v22, v23, v24);
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

@end