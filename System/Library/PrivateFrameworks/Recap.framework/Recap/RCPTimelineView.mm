@interface RCPTimelineView
- (RCPTimelineViewDelegate)delegate;
- (double)xForTimestamp:(unint64_t)timestamp;
- (id)cropHead:(BOOL)head;
- (void)dragAtLocation:(CGPoint)location;
- (void)dragBeganAtLocation:(CGPoint)location hitThreshold:(double)threshold;
- (void)drawRect:(CGRect)rect;
- (void)layoutSubviews;
- (void)setRecapMovie:(id)movie;
- (void)setTime:(unint64_t)time;
- (void)setup;
- (void)startPlayback;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
- (void)updateCropUI;
@end

@implementation RCPTimelineView

- (void)setRecapMovie:(id)movie
{
  objc_storeStrong(&self->_recapMovie, movie);
  movieCopy = movie;
  [(RCPTimelineView *)self setStartCropTimestamp:[(RCPMovie *)self->_recapMovie startTimestamp]];
  endTimestamp = [(RCPMovie *)self->_recapMovie endTimestamp];

  [(RCPTimelineView *)self setEndCropTimestamp:endTimestamp];
  [(RCPTimelineView *)self setup];

  [(RCPTimelineView *)self setNeedsDisplay:1];
}

- (void)setup
{
  v14 = *MEMORY[0x277D85DE8];
  layer = [(RCPTimelineView *)self layer];
  [layer setMasksToBounds:1];

  layer2 = [(RCPTimelineView *)self layer];
  [layer2 setCornerRadius:10.0];

  v5 = [(RCPTimelineView *)self cropHead:0];
  cropStartHead = self->_cropStartHead;
  self->_cropStartHead = v5;

  v7 = [(RCPTimelineView *)self cropHead:1];
  cropEndHead = self->_cropEndHead;
  self->_cropEndHead = v7;

  layer3 = [MEMORY[0x277CD9ED0] layer];
  playbackHead = self->_playbackHead;
  self->_playbackHead = layer3;

  [(RCPTimelineView *)self bounds];
  [(CALayer *)self->_playbackHead setFrame:0.0, 0.0, 2.0];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v13[0] = xmmword_261A04060;
  v13[1] = unk_261A04070;
  [(CALayer *)self->_playbackHead setBackgroundColor:CGColorCreate(DeviceRGB, v13)];
  layer4 = [(RCPTimelineView *)self layer];
  [layer4 addSublayer:self->_playbackHead];

  [(RCPTimelineView *)self setTime:[(RCPTimelineView *)self startCropTimestamp]];
  [(RCPTimelineView *)self startPlayback];
}

- (void)startPlayback
{
  recapMovie = [(RCPTimelineView *)self recapMovie];
  eventStream = [recapMovie eventStream];
  environment = [eventStream environment];

  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v14[3] = [(RCPTimelineView *)self startCropTimestamp];
  endCropTimestamp = [(RCPTimelineView *)self endCropTimestamp];
  startCropTimestamp = [(RCPTimelineView *)self startCropTimestamp];
  endCropTimestamp2 = [(RCPTimelineView *)self endCropTimestamp];
  startCropTimestamp2 = [(RCPTimelineView *)self startCropTimestamp];
  [environment timeScale];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __32__RCPTimelineView_startPlayback__block_invoke;
  v13[3] = &unk_279AF1228;
  v13[5] = v14;
  v13[6] = ((5 * (endCropTimestamp - startCropTimestamp)) / (v10 * (60 * (endCropTimestamp2 - startCropTimestamp2)) / 1000000000.0));
  v13[4] = self;
  v11 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:1 repeats:v13 block:0.0166666667];
  playbackTimer = self->_playbackTimer;
  self->_playbackTimer = v11;

  _Block_object_dispose(v14, 8);
}

void __32__RCPTimelineView_startPlayback__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) += *(a1 + 48);
  [*(a1 + 32) setTime:*(*(*(a1 + 40) + 8) + 24)];
  v2 = *(*(*(a1 + 40) + 8) + 24);
  if (v2 > [*(a1 + 32) endCropTimestamp])
  {
    [*(*(a1 + 32) + 448) invalidate];
    v3 = *(a1 + 32);
    v4 = *(v3 + 448);
    *(v3 + 448) = 0;
  }
}

- (id)cropHead:(BOOL)head
{
  headCopy = head;
  v22 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CD9F90]);
  Mutable = CGPathCreateMutable();
  v7 = Mutable;
  if (headCopy)
  {
    v8 = -5.0;
  }

  else
  {
    v8 = 5.0;
  }

  if (headCopy)
  {
    v9 = 1.0;
  }

  else
  {
    v9 = -10001.0;
  }

  CGPathMoveToPoint(Mutable, 0, v8, 4.0);
  CGPathAddLineToPoint(v7, 0, 0.0, 4.0);
  [(RCPTimelineView *)self bounds];
  CGPathAddLineToPoint(v7, 0, 0.0, v10 + -4.0);
  [(RCPTimelineView *)self bounds];
  CGPathAddLineToPoint(v7, 0, v8, v11 + -4.0);
  [v5 setPath:v7];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  *components = xmmword_261A04080;
  v21 = unk_261A04090;
  [v5 setStrokeColor:{CGColorCreate(DeviceRGB, components)}];
  [v5 setLineWidth:2.0];
  [v5 setFillColor:0];
  LODWORD(v13) = 1.0;
  [v5 setShadowOpacity:v13];
  [v5 setShadowRadius:1.0];
  [v5 setShadowOffset:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  v14 = objc_alloc_init(MEMORY[0x277CD9ED0]);
  [(RCPTimelineView *)self bounds];
  [v14 setFrame:{v9, 0.0, 10000.0}];
  v15 = CGColorSpaceCreateDeviceRGB();
  v19[0] = xmmword_261A040A0;
  v19[1] = unk_261A040B0;
  [v14 setBackgroundColor:{CGColorCreate(v15, v19)}];
  v16 = objc_alloc_init(MEMORY[0x277CD9ED0]);
  [v16 addSublayer:v14];
  [v16 addSublayer:v5];
  layer = [(RCPTimelineView *)self layer];
  [layer addSublayer:v16];

  return v16;
}

- (double)xForTimestamp:(unint64_t)timestamp
{
  [(RCPTimelineView *)self bounds];
  timestampCopy = timestamp;
  v7 = 8.0 / (v5 + -32.0);
  recapMovie = [(RCPTimelineView *)self recapMovie];
  v9 = timestampCopy - [recapMovie startTimestamp];
  recapMovie2 = [(RCPTimelineView *)self recapMovie];
  endTimestamp = [recapMovie2 endTimestamp];
  recapMovie3 = [(RCPTimelineView *)self recapMovie];
  v13 = v9 / (endTimestamp - [recapMovie3 startTimestamp]);

  v14 = v7 + 1.0;
  if (v7 + 1.0 >= v13)
  {
    v14 = v13;
  }

  if (v14 <= -v7)
  {
    v15 = -v7;
  }

  else
  {
    v15 = v14;
  }

  [(RCPTimelineView *)self bounds];
  return (v16 + -48.0) * v15 + 24.0;
}

- (void)setTime:(unint64_t)time
{
  startCropTimestamp = [(RCPTimelineView *)self startCropTimestamp];
  endCropTimestamp = [(RCPTimelineView *)self endCropTimestamp];
  if (endCropTimestamp >= time)
  {
    timeCopy = time;
  }

  else
  {
    timeCopy = endCropTimestamp;
  }

  if (startCropTimestamp <= timeCopy)
  {
    v8 = timeCopy;
  }

  else
  {
    v8 = startCropTimestamp;
  }

  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  self->_time = v8;
  recapMovie = [(RCPTimelineView *)self recapMovie];
  eventStream = [recapMovie eventStream];
  events = [eventStream events];
  v12 = [events count];

  if (v12 >= 2)
  {
    [(RCPTimelineView *)self xForTimestamp:v8];
    v14 = v13 + -1.0;
    [(RCPTimelineView *)self bounds];
    [(CALayer *)self->_playbackHead setFrame:v14, 0.0, 2.0];
    delegate = [(RCPTimelineView *)self delegate];
    [delegate timelineView:self didSetTime:v8];

    [(RCPTimelineView *)self updateCropUI];
  }

  v16 = MEMORY[0x277CD9FF0];

  [v16 commit];
}

- (void)updateCropUI
{
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  [(RCPTimelineView *)self xForTimestamp:[(RCPTimelineView *)self startCropTimestamp]];
  [(CALayer *)self->_cropStartHead setPosition:?];
  [(RCPTimelineView *)self xForTimestamp:[(RCPTimelineView *)self endCropTimestamp]];
  [(CALayer *)self->_cropEndHead setPosition:?];
  v3 = MEMORY[0x277CD9FF0];

  [v3 commit];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = RCPTimelineView;
  [(RCPTimelineView *)&v3 layoutSubviews];
  [(RCPTimelineView *)self setTime:self->_time];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  anyObject = [began anyObject];
  [anyObject locationInView:self];
  [RCPTimelineView dragBeganAtLocation:"dragBeganAtLocation:hitThreshold:" hitThreshold:?];
}

- (void)dragBeganAtLocation:(CGPoint)location hitThreshold:(double)threshold
{
  y = location.y;
  x = location.x;
  [(NSTimer *)self->_playbackTimer invalidate];
  playbackTimer = self->_playbackTimer;
  self->_playbackTimer = 0;

  [(CALayer *)self->_cropStartHead position];
  if (vabdd_f64(x + threshold, v9) < threshold)
  {
    goto LABEL_2;
  }

  [(CALayer *)self->_cropEndHead position];
  if (vabdd_f64(x - threshold, v11) < threshold)
  {
    goto LABEL_4;
  }

  [(CALayer *)self->_playbackHead position];
  if (vabdd_f64(x, v12) >= threshold)
  {
    [(CALayer *)self->_cropStartHead position];
    if (vabdd_f64(x, v13) < threshold)
    {
LABEL_2:
      v10 = 1;
LABEL_5:
      self->_draggingHandle = v10;
      goto LABEL_6;
    }

    [(CALayer *)self->_cropEndHead position];
    if (vabdd_f64(x, v14) < threshold)
    {
LABEL_4:
      v10 = 2;
      goto LABEL_5;
    }
  }

  self->_draggingHandle = 0;
LABEL_6:

  [(RCPTimelineView *)self dragAtLocation:x, y];
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  anyObject = [moved anyObject];
  [anyObject locationInView:self];
  [(RCPTimelineView *)self dragAtLocation:?];
}

- (void)dragAtLocation:(CGPoint)location
{
  v4 = location.x + -24.0;
  [(RCPTimelineView *)self bounds];
  v6 = v4 / (v5 + -48.0);
  recapMovie = [(RCPTimelineView *)self recapMovie];
  startTimestamp = [recapMovie startTimestamp];
  recapMovie2 = [(RCPTimelineView *)self recapMovie];
  endTimestamp = [recapMovie2 endTimestamp];
  recapMovie3 = [(RCPTimelineView *)self recapMovie];
  v12 = startTimestamp + v6 * (endTimestamp - [recapMovie3 startTimestamp]);

  draggingHandle = self->_draggingHandle;
  if (draggingHandle == 2)
  {
    v14 = v12;
    [(RCPTimelineView *)self setEndCropTimestamp:v12];
  }

  else
  {
    if (draggingHandle != 1)
    {
      if (!draggingHandle)
      {

        [(RCPTimelineView *)self setTime:v12];
      }

      return;
    }

    v14 = v12;
    [(RCPTimelineView *)self setStartCropTimestamp:v12];
  }

  [(RCPTimelineView *)self setTime:v14];

  [(RCPTimelineView *)self updateCropUI];
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v70 = *MEMORY[0x277D85DE8];
  v67.receiver = self;
  v67.super_class = RCPTimelineView;
  [(RCPTimelineView *)&v67 drawRect:?];
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSetRGBFillColor(CurrentContext, 0.2, 0.2, 0.2, 1.0);
  v71.origin.x = x;
  v71.origin.y = y;
  v71.size.width = width;
  v71.size.height = height;
  CGContextFillRect(CurrentContext, v71);
  recapMovie = [(RCPTimelineView *)self recapMovie];
  eventStream = [recapMovie eventStream];
  events = [eventStream events];
  v12 = [events count];

  if (v12 >= 2)
  {
    array = [MEMORY[0x277CBEB18] array];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(RCPTimelineView *)self bounds];
    v15 = v14;
    c = CurrentContext;
    CGContextSetRGBFillColor(CurrentContext, 1.0, 1.0, 1.0, 0.7);
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    recapMovie2 = [(RCPTimelineView *)self recapMovie];
    eventStream2 = [recapMovie2 eventStream];
    events2 = [eventStream2 events];

    obj = events2;
    v56 = [events2 countByEnumeratingWithState:&v63 objects:v69 count:16];
    if (v56)
    {
      v54 = *v64;
      v19 = v15 + -48.0;
      do
      {
        v20 = 0;
        do
        {
          if (*v64 != v54)
          {
            objc_enumerationMutation(obj);
          }

          v57 = v20;
          v21 = *(*(&v63 + 1) + 8 * v20);
          timestamp = [v21 timestamp];
          recapMovie3 = [(RCPTimelineView *)self recapMovie];
          v24 = (timestamp - [recapMovie3 startTimestamp]);
          recapMovie4 = [(RCPTimelineView *)self recapMovie];
          endTimestamp = [recapMovie4 endTimestamp];
          recapMovie5 = [(RCPTimelineView *)self recapMovie];
          v28 = v24 / (endTimestamp - [recapMovie5 startTimestamp]) * v19 + 24.0;

          v72.origin.x = v28 + -3.0;
          v72.origin.y = 3.0;
          v72.size.width = 6.0;
          v72.size.height = 6.0;
          CGContextFillEllipseInRect(c, v72);
          [v21 hidEvent];
          v29 = IOHIDEventGetChildren();
          if ([v29 count])
          {
            v30 = 0;
            do
            {
              v31 = [v29 objectAtIndexedSubscript:v30];
              IntegerValue = IOHIDEventGetIntegerValue();

              v33 = [v29 objectAtIndexedSubscript:v30];
              v34 = IOHIDEventGetIntegerValue();

              v35 = [MEMORY[0x277CCABB0] numberWithInteger:IntegerValue];
              v36 = [dictionary objectForKeyedSubscript:v35];

              -[RCPTimelineView xForTimestamp:](self, "xForTimestamp:", [v21 timestamp]);
              if (v34)
              {
                v39 = [MEMORY[0x277CCABB0] numberWithInteger:IntegerValue];
                [dictionary removeObjectForKey:v39];
              }

              else
              {
                v38 = v37;
                if (v36)
                {
                  [(RCPEventTrack *)v36 setEndX:v37];
                }

                else
                {
                  v36 = objc_alloc_init(RCPEventTrack);
                  [(RCPEventTrack *)v36 setStartX:v38];
                  [(RCPEventTrack *)v36 setEndX:v38 + 2.0];
                  -[RCPEventTrack setTrackY:](v36, "setTrackY:", [dictionary count]);
                  v40 = [MEMORY[0x277CCABB0] numberWithInteger:IntegerValue];
                  [dictionary setObject:v36 forKeyedSubscript:v40];

                  [array addObject:v36];
                }
              }

              ++v30;
            }

            while (v30 < [v29 count]);
          }

          v20 = v57 + 1;
        }

        while (v57 + 1 != v56);
        v56 = [obj countByEnumeratingWithState:&v63 objects:v69 count:16];
      }

      while (v56);
    }

    CGContextSetRGBFillColor(c, 0.0, 0.59, 1.0, 1.0);
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v41 = array;
    v42 = [v41 countByEnumeratingWithState:&v59 objects:v68 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v60;
      do
      {
        for (i = 0; i != v43; ++i)
        {
          if (*v60 != v44)
          {
            objc_enumerationMutation(v41);
          }

          v46 = *(*(&v59 + 1) + 8 * i);
          v47 = [v46 trackY] * 10.0 + 5.0 + 8.0;
          [v46 startX];
          v49 = v48;
          [v46 endX];
          v51 = v50;
          [v46 startX];
          v73.size.width = v51 - v52;
          v73.size.height = 8.0;
          v73.origin.x = v49;
          v73.origin.y = v47;
          CGContextFillRect(c, v73);
        }

        v43 = [v41 countByEnumeratingWithState:&v59 objects:v68 count:16];
      }

      while (v43);
    }
  }
}

- (RCPTimelineViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end