@interface DetectedROI
- (CGRect)roi;
- (DetectedROI)initWithTrackId:(unsigned int)id trackedCnt:(unsigned int)cnt andRoi:(CGRect)roi;
@end

@implementation DetectedROI

- (DetectedROI)initWithTrackId:(unsigned int)id trackedCnt:(unsigned int)cnt andRoi:(CGRect)roi
{
  height = roi.size.height;
  width = roi.size.width;
  y = roi.origin.y;
  x = roi.origin.x;
  v15.receiver = self;
  v15.super_class = DetectedROI;
  v11 = [(DetectedROI *)&v15 init];
  v12 = v11;
  if (v11)
  {
    v11->_trackID = id;
    v11->_trackedCnt = cnt;
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