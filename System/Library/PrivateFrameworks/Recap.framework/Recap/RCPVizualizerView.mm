@interface RCPVizualizerView
- (CGRect)screenRect;
- (void)layout;
- (void)setFrame:(CGRect)a3;
- (void)setRecapMovie:(id)a3;
- (void)setTime:(unint64_t)a3;
@end

@implementation RCPVizualizerView

- (void)setRecapMovie:(id)a3
{
  objc_storeStrong(&self->_recapMovie, a3);
  v5 = a3;
  v6 = objc_alloc(MEMORY[0x277CE65B0]);
  v7 = [(RCPVizualizerView *)self recapMovie];
  v8 = [v7 screenRecording];
  v29 = [v6 initWithAsset:v8];

  v9 = [MEMORY[0x277CE6598] playerWithPlayerItem:v29];
  [(RCPVizualizerView *)self setPlayer:v9];

  v10 = MEMORY[0x277CE65D8];
  v11 = [(RCPVizualizerView *)self player];
  v12 = [v10 playerLayerWithPlayer:v11];
  [(RCPVizualizerView *)self setPlayerLayer:v12];

  v13 = [(RCPVizualizerView *)self layer];
  v14 = [(RCPVizualizerView *)self playerLayer];
  [v13 addSublayer:v14];

  v15 = [(RCPVizualizerView *)self player];
  [v15 pause];

  v16 = objc_alloc_init(MEMORY[0x277CD9ED0]);
  [(RCPVizualizerView *)self setScreenshotLayer:v16];

  v17 = [(RCPVizualizerView *)self layer];
  v18 = [(RCPVizualizerView *)self screenshotLayer];
  [v17 addSublayer:v18];

  v19 = objc_alloc_init(RCPTraceLayer);
  [(RCPVizualizerView *)self setTraceLayer:v19];

  v20 = [(RCPVizualizerView *)self recapMovie];
  v21 = [v20 eventStream];
  v22 = [(RCPVizualizerView *)self traceLayer];
  [v22 setEventStream:v21];

  v23 = [(RCPVizualizerView *)self recapMovie];
  v24 = [v23 interfaceOrientation];
  v25 = [(RCPVizualizerView *)self traceLayer];
  [v25 setInterfaceOrientation:v24];

  v26 = [(RCPVizualizerView *)self layer];
  v27 = [(RCPVizualizerView *)self traceLayer];
  [v26 addSublayer:v27];

  v28 = [(RCPVizualizerView *)self recapMovie];
  -[RCPVizualizerView setTime:](self, "setTime:", [v28 startTimestamp]);
}

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = RCPVizualizerView;
  [(RCPVizualizerView *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v11 = [(RCPVizualizerView *)self traceLayer];
  [v11 setFrame:{v4, v6, v8, v10}];

  v12 = [(RCPVizualizerView *)self screenshotLayer];
  [v12 setFrame:{v4, v6, v8, v10}];

  v13 = [(RCPVizualizerView *)self playerLayer];
  [v13 setFrame:{v4, v6, v8, v10}];

  v14 = MEMORY[0x277CD9FF0];

  [v14 commit];
}

- (void)setTime:(unint64_t)a3
{
  self->_time = a3;
  v5 = [(RCPVizualizerView *)self traceLayer];
  [v5 setTime:a3];

  v6 = [(RCPVizualizerView *)self recapMovie];
  v7 = [v6 startTimestamp];
  v8 = [(RCPVizualizerView *)self recapMovie];
  v9 = v8;
  if (v7)
  {
    v10 = [v8 startTimestamp];
  }

  else
  {
    v11 = [v8 eventStream];
    v12 = [v11 events];
    v13 = [v12 firstObject];
    v10 = [v13 timestamp];
  }

  v14 = [(RCPVizualizerView *)self recapMovie];
  v15 = [v14 eventStream];
  v16 = [v15 environment];

  v17 = [(RCPVizualizerView *)self player];
  v18 = [v17 currentItem];
  v19 = [v18 asset];
  v20 = v19;
  if (v19)
  {
    [v19 duration];
    v21 = v45;
  }

  else
  {
    v21 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
  }

  v22 = a3 - v10;
  if (a3 < v10)
  {
    v22 = 0;
  }

  memset(&v43, 0, sizeof(v43));
  v23 = v22;
  [v16 timeScale];
  CMTimeMakeWithSeconds(&v43, v24 * v23 / 1000000000.0, v21);
  v25 = [(RCPVizualizerView *)self player];
  v26 = [v25 currentItem];
  v42 = v43;
  v40 = *MEMORY[0x277CC08F0];
  v41 = *(MEMORY[0x277CC08F0] + 16);
  v38 = v40;
  v39 = v41;
  [v26 seekToTime:&v42 toleranceBefore:&v40 toleranceAfter:&v38 completionHandler:0];

  v27 = [(RCPVizualizerView *)self recapMovie];
  v28 = [v27 screenshot];
  if (!v28)
  {

    goto LABEL_13;
  }

  v29 = v28;
  time = self->_time;
  v31 = [(RCPVizualizerView *)self recapMovie];
  v32 = [v31 endTimestamp];

  if (time < v32)
  {
LABEL_13:
    v33 = [(RCPVizualizerView *)self screenshotLayer];
    [v33 setContents:0];
    goto LABEL_14;
  }

  v33 = [(RCPVizualizerView *)self recapMovie];
  v34 = [v33 screenshot];
  v35 = [v34 CGImage];
  v36 = [(RCPVizualizerView *)self screenshotLayer];
  [v36 setContents:v35];

LABEL_14:
  v37 = [(RCPVizualizerView *)self traceLayer];
  [v37 setNeedsDisplay];
}

- (CGRect)screenRect
{
  v3 = [(RCPVizualizerView *)self recapMovie];
  v4 = [v3 eventStream];
  v5 = [v4 environment];
  v6 = [v5 screens];
  v7 = [v6 firstObject];
  [v7 pointSize];
  v9 = v8;
  v11 = v10;

  v12 = [(RCPVizualizerView *)self recapMovie];
  if ([v12 interfaceOrientation])
  {
    v13 = [(RCPVizualizerView *)self recapMovie];
    v14 = [v13 interfaceOrientation];

    if (v14 == 1)
    {
      v15 = v11;
    }

    else
    {
      v15 = v9;
    }

    if (v14 != 1)
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