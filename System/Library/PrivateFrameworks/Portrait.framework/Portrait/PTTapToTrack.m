@interface PTTapToTrack
- (BOOL)addDetectionAndStartTrackingRect:(CGRect)a3 time:(id *)a4 colorBuffer:(__CVBuffer *)a5 disparityBuffer:(__CVBuffer *)a6;
- (PTTapToTrack)initWithCommandQueue:(id)a3;
- (id)addDetectionForNextFrameAt:(id *)a3 colorBuffer:(__CVBuffer *)a4 disparityBuffer:(__CVBuffer *)a5;
- (id)finalizeTrack;
- (id)getRectForPoint:(CGPoint)a3 colorBuffer:(__CVBuffer *)a4;
- (void)addDetectionAtTime:(id *)a3 rect:(CGRect)a4 disparityBuffer:(__CVBuffer *)a5;
- (void)resetTrack;
@end

@implementation PTTapToTrack

- (PTTapToTrack)initWithCommandQueue:(id)a3
{
  if ([objc_opt_class() isSupported])
  {
    v9.receiver = self;
    v9.super_class = PTTapToTrack;
    v4 = [(PTTapToTrack *)&v9 init];
    if (v4)
    {
      v5 = [MEMORY[0x277D0AE48] tracker];
      tracker = v4->_tracker;
      v4->_tracker = v5;

      [(PTTapToTrack *)v4 resetTrack];
    }

    self = v4;
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)getRectForPoint:(CGPoint)a3 colorBuffer:(__CVBuffer *)a4
{
  tracker = self->_tracker;
  if (tracker)
  {
    [(FTCinematicTapToTrack *)tracker predictRectForPoint:a4 inColorBuffer:a3.x, a3.y];
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

- (BOOL)addDetectionAndStartTrackingRect:(CGRect)a3 time:(id *)a4 colorBuffer:(__CVBuffer *)a5 disparityBuffer:(__CVBuffer *)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13 = [(FTCinematicTapToTrack *)self->_tracker startTrackingRect:a5 colorBuffer:?];
  if (v13)
  {
    v15 = *&a4->var0;
    var3 = a4->var3;
    [(PTTapToTrack *)self addDetectionAtTime:&v15 rect:a6 disparityBuffer:x, y, width, height];
  }

  return v13;
}

- (id)addDetectionForNextFrameAt:(id *)a3 colorBuffer:(__CVBuffer *)a4 disparityBuffer:(__CVBuffer *)a5
{
  v21 = 0.0;
  v19 = 0u;
  v20 = 0u;
  tracker = self->_tracker;
  if (tracker)
  {
    [(FTCinematicTapToTrack *)tracker stepTrackingWithFrame:a4];
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
    v17 = *&a3->var0;
    var3 = a3->var3;
    [(PTTapToTrack *)self addDetectionAtTime:&v17 rect:a5 disparityBuffer:v19, v20];
    v14 = [PTTapToTrackPrediction alloc];
    *&v15 = v21;
    v13 = [(PTTapToTrackPrediction *)v14 initWithRect:v19 confidence:v20, v15];
  }

  return v13;
}

- (id)finalizeTrack
{
  v3 = [PTCinematographyCustomTrack alloc];
  v4 = [(PTTapToTrack *)self detections];
  v5 = [(PTCinematographyCustomTrack *)v3 initWithDetections:v4];

  [(PTCinematographyCustomTrack *)v5 applyDetectionSmoothing];
  [(PTTapToTrack *)self resetTrack];

  return v5;
}

- (void)resetTrack
{
  self->_detections = objc_opt_new();

  MEMORY[0x2821F96F8]();
}

- (void)addDetectionAtTime:(id *)a3 rect:(CGRect)a4 disparityBuffer:(__CVBuffer *)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12 = [(NSMutableArray *)self->_detections count];
  v13 = [(NSMutableArray *)self->_detections lastObject];
  [v13 focusDistance];
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

  v17 = PTDisparityInNormalizedRectFromPixelBufferWithPrior(102, a5, v16, x, y, width, height);
  v18 = [PTCinematographyDetection alloc];
  v21 = *&a3->var0;
  var3 = a3->var3;
  *&v19 = v17;
  v20 = [(PTCinematographyDetection *)v18 initWithTime:&v21 rect:x focusDistance:y, width, height, v19];
  [(PTCinematographyDetection *)v20 setDetectionType:102];
  [(NSMutableArray *)self->_detections addObject:v20];
}

@end