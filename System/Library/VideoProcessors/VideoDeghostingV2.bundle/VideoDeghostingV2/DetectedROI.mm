@interface DetectedROI
- ($90F8316DFF8C7E624C13ADF498D66361)des;
- (CGRect)LSRoi;
- (CGRect)roi;
- (DetectedROI)initWithTrackingSessionId:(unint64_t)id roiId:(int64_t)roiId andRoi:(CGRect)roi;
- (DetectedROI)initWithTrackingSessionId:(unint64_t)id roiId:(int64_t)roiId roi:(CGRect)roi LSRoi:(CGRect)sRoi confidence:(float)confidence;
- (DetectedROI)initWithTrackingSessionId:(unint64_t)id roiId:(int64_t)roiId roi:(CGRect)roi LSRoi:(CGRect)sRoi descriptor:(id *)descriptor propertiesForPostProcPipeVisualization:(id *)visualization;
@end

@implementation DetectedROI

- (DetectedROI)initWithTrackingSessionId:(unint64_t)id roiId:(int64_t)roiId andRoi:(CGRect)roi
{
  height = roi.size.height;
  width = roi.size.width;
  y = roi.origin.y;
  x = roi.origin.x;
  v18.receiver = self;
  v18.super_class = DetectedROI;
  v11 = [(DetectedROI *)&v18 init];
  v12 = v11;
  if (v11)
  {
    v11->_trackSessionId = id;
    v11->_roiId = roiId;
    v11->_roi.origin.x = x;
    v11->_roi.origin.y = y;
    v11->_roi.size.width = width;
    v11->_roi.size.height = height;
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    MidX = CGRectGetMidX(v19);
    MidY = CGRectGetMidY(v12->_roi);
    v12->_centerPoint.x = MidX;
    v12->_centerPoint.y = MidY;
    size = CGRectNull.size;
    v12->_LSRoi.origin = CGRectNull.origin;
    v12->_LSRoi.size = size;
    v16 = v12;
  }

  else
  {
    sub_231A0();
  }

  return v12;
}

- (DetectedROI)initWithTrackingSessionId:(unint64_t)id roiId:(int64_t)roiId roi:(CGRect)roi LSRoi:(CGRect)sRoi descriptor:(id *)descriptor propertiesForPostProcPipeVisualization:(id *)visualization
{
  height = sRoi.size.height;
  width = sRoi.size.width;
  y = sRoi.origin.y;
  x = sRoi.origin.x;
  v14 = [(DetectedROI *)self initWithTrackingSessionId:id roiId:roiId andRoi:roi.origin.x, roi.origin.y, roi.size.width, roi.size.height];
  v15 = v14;
  if (v14)
  {
    v14->_LSRoi.origin.x = x;
    v14->_LSRoi.origin.y = y;
    v14->_LSRoi.size.width = width;
    v14->_LSRoi.size.height = height;
    v16 = *&descriptor->var4;
    *&v14[1].super.isa = *&descriptor->var0;
    *&v14[1]._centerPoint.y = v16;
    v17 = *&descriptor[1].var2;
    v18 = *&descriptor[2].var0;
    v19 = *&descriptor[3].var2;
    *&v14[1]._trackSessionId = *&descriptor[2].var4;
    *v14[1]._trajectoryFromPast = v19;
    *&v14[1]._trackID = v17;
    *&v14[1]._ROIWSpatial = v18;
    v20 = *&descriptor[4].var0;
    v21 = *&descriptor[4].var4;
    v22 = *&descriptor[6].var0;
    *&v14[1]._LSRoi.origin.y = *&descriptor[5].var2;
    *&v14[1]._LSRoi.size.height = v22;
    *&v14[1]._roi.origin.y = v20;
    *&v14[1]._roi.size.height = v21;
    v14->_trackID = visualization->var0;
    v14->_isTracked = visualization->var1;
    v14->_trackedCnt = visualization->var3;
    v14->_isPredictedFromPast = visualization->var2;
    *v14->_trajectoryFromPast = *&visualization[1].var0;
    v14->_predictedFromPastCnt = visualization->var4;
    v14->_lowSaliencyCnt = visualization->var5;
    v14->_isTrajectoryPruningPassed = visualization[1].var3;
    v14->_isReflectedLS = BYTE1(visualization[1].var3);
    v23 = v14;
  }

  else
  {
    sub_23218();
  }

  return v15;
}

- (DetectedROI)initWithTrackingSessionId:(unint64_t)id roiId:(int64_t)roiId roi:(CGRect)roi LSRoi:(CGRect)sRoi confidence:(float)confidence
{
  height = sRoi.size.height;
  width = sRoi.size.width;
  y = sRoi.origin.y;
  x = sRoi.origin.x;
  v11 = [(DetectedROI *)self initWithTrackingSessionId:id roiId:roiId andRoi:roi.origin.x, roi.origin.y, roi.size.width, roi.size.height];
  v12 = v11;
  if (v11)
  {
    v11->_LSRoi.origin.x = x;
    v11->_LSRoi.origin.y = y;
    v11->_LSRoi.size.width = width;
    v11->_LSRoi.size.height = height;
    v11->_confidence = confidence;
    v13 = v11;
  }

  else
  {
    sub_23290();
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

- (CGRect)LSRoi
{
  x = self->_LSRoi.origin.x;
  y = self->_LSRoi.origin.y;
  width = self->_LSRoi.size.width;
  height = self->_LSRoi.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- ($90F8316DFF8C7E624C13ADF498D66361)des
{
  v3 = *&self[11].var2;
  *&retstr[4].var0 = *&self[10].var4;
  *&retstr[4].var4 = v3;
  v4 = *&self[12].var4;
  *&retstr[5].var2 = *&self[12].var0;
  *&retstr[6].var0 = v4;
  v5 = *&self[8].var4;
  *&retstr[1].var2 = *&self[8].var0;
  *&retstr[2].var0 = v5;
  v6 = *&self[10].var0;
  *&retstr[2].var4 = *&self[9].var2;
  *&retstr[3].var2 = v6;
  v7 = *&self[7].var2;
  *&retstr->var0 = *&self[6].var4;
  *&retstr->var4 = v7;
  return self;
}

@end