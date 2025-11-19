@interface DetectedROI
- (CGRect)roi;
- (DetectedROI)initWithTrackId:(unsigned int)a3 trackedCnt:(unsigned int)a4 andRoi:(CGRect)a5;
@end

@implementation DetectedROI

- (DetectedROI)initWithTrackId:(unsigned int)a3 trackedCnt:(unsigned int)a4 andRoi:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v15.receiver = self;
  v15.super_class = DetectedROI;
  v11 = [(DetectedROI *)&v15 init];
  v12 = v11;
  if (v11)
  {
    v11->_trackID = a3;
    v11->_trackedCnt = a4;
    v11->_roi.origin.x = x;
    v11->_roi.origin.y = y;
    v11->_roi.size.width = width;
    v11->_roi.size.height = height;
    v13 = v11;
  }

  else
  {
    [DetectedROI initWithTrackId:trackedCnt:andRoi:];
  }

  return v12;
}

- (CGRect)roi
{
  x = self->_roi.origin.x;
  y = self->_roi.origin.y;
  width = self->_roi.size.width;
  height = self->_roi.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (uint64_t)initWithTrackId:trackedCnt:andRoi:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

@end