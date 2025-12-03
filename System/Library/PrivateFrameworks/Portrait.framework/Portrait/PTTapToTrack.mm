@interface PTTapToTrack
- (BOOL)addDetectionAndStartTrackingRect:(CGRect)rect time:(id *)time colorBuffer:(__CVBuffer *)buffer disparityBuffer:(__CVBuffer *)disparityBuffer;
- (PTTapToTrack)initWithCommandQueue:(id)queue;
- (id)addDetectionForNextFrameAt:(id *)at colorBuffer:(__CVBuffer *)buffer disparityBuffer:(__CVBuffer *)disparityBuffer;
- (id)finalizeTrack;
- (id)getRectForPoint:(CGPoint)point colorBuffer:(__CVBuffer *)buffer;
- (void)addDetectionAtTime:(id *)time rect:(CGRect)rect disparityBuffer:(__CVBuffer *)buffer;
- (void)resetTrack;
@end

@implementation PTTapToTrack

- (PTTapToTrack)initWithCommandQueue:(id)queue
{
  if ([objc_opt_class() isSupported])
  {
    v9.receiver = self;
    v9.super_class = PTTapToTrack;
    v4 = [(PTTapToTrack *)&v9 init];
    if (v4)
    {
      tracker = [MEMORY[0x277D0AE48] tracker];
      tracker = v4->_tracker;
      v4->_tracker = tracker;

      [(PTTapToTrack *)v4 resetTrack];
    }

    self = v4;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)getRectForPoint:(CGPoint)point colorBuffer:(__CVBuffer *)buffer
{
  tracker = self->_tracker;
  if (tracker)
  {
    [(FTCinematicTapToTrack *)tracker predictRectForPoint:buffer inColorBuffer:point.x, point.y];
    v6 = 0;
    v5 = 0;
    v8 = 0;
    v7 = 0;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    v6 = 0;
    v5 = 0;
  }

  if (CGRectIsEmpty(*&v5))
  {
    v9 = 0;
  }

  else
  {
    v10 = [PTTapToTrackPrediction alloc];
    *&v11 = 0.0;
    v9 = [(PTTapToTrackPrediction *)v10 initWithRect:0 confidence:0, v11];
  }

  return v9;
}

- (BOOL)addDetectionAndStartTrackingRect:(CGRect)rect time:(id *)time colorBuffer:(__CVBuffer *)buffer disparityBuffer:(__CVBuffer *)disparityBuffer
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v13 = [(FTCinematicTapToTrack *)self->_tracker startTrackingRect:buffer colorBuffer:?];
  if (v13)
  {
    v15 = *&time->var0;
    var3 = time->var3;
    [(PTTapToTrack *)self addDetectionAtTime:&v15 rect:disparityBuffer disparityBuffer:x, y, width, height];
  }

  return v13;
}

- (id)addDetectionForNextFrameAt:(id *)at colorBuffer:(__CVBuffer *)buffer disparityBuffer:(__CVBuffer *)disparityBuffer
{
  v21 = 0.0;
  v19 = 0u;
  v20 = 0u;
  tracker = self->_tracker;
  if (tracker)
  {
    [(FTCinematicTapToTrack *)tracker stepTrackingWithFrame:buffer];
    v10 = *(&v19 + 1);
    v9 = v19;
    v12 = *(&v20 + 1);
    v11 = v20;
  }

  else
  {
    v12 = 0;
    v11 = 0;
    v10 = 0;
    v9 = 0;
  }

  if (CGRectIsEmpty(*&v9))
  {
    v13 = 0;
  }

  else
  {
    v17 = *&at->var0;
    var3 = at->var3;
    [(PTTapToTrack *)self addDetectionAtTime:&v17 rect:disparityBuffer disparityBuffer:v19, v20];
    v14 = [PTTapToTrackPrediction alloc];
    *&v15 = v21;
    v13 = [(PTTapToTrackPrediction *)v14 initWithRect:v19 confidence:v20, v15];
  }

  return v13;
}

- (id)finalizeTrack
{
  v3 = [PTCinematographyCustomTrack alloc];
  detections = [(PTTapToTrack *)self detections];
  v5 = [(PTCinematographyCustomTrack *)v3 initWithDetections:detections];

  [(PTCinematographyCustomTrack *)v5 applyDetectionSmoothing];
  [(PTTapToTrack *)self resetTrack];

  return v5;
}

- (void)resetTrack
{
  self->_detections = objc_opt_new();

  MEMORY[0x2821F96F8]();
}

- (void)addDetectionAtTime:(id *)time rect:(CGRect)rect disparityBuffer:(__CVBuffer *)buffer
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v12 = [(NSMutableArray *)self->_detections count];
  lastObject = [(NSMutableArray *)self->_detections lastObject];
  [lastObject focusDistance];
  v15 = v14;

  v23 = v15;
  if (v12)
  {
    v16 = &v23;
  }

  else
  {
    v16 = 0;
  }

  v17 = PTDisparityInNormalizedRectFromPixelBufferWithPrior(102, buffer, v16, x, y, width, height);
  v18 = [PTCinematographyDetection alloc];
  v21 = *&time->var0;
  var3 = time->var3;
  *&v19 = v17;
  v20 = [(PTCinematographyDetection *)v18 initWithTime:&v21 rect:x focusDistance:y, width, height, v19];
  [(PTCinematographyDetection *)v20 setDetectionType:102];
  [(NSMutableArray *)self->_detections addObject:v20];
}

@end