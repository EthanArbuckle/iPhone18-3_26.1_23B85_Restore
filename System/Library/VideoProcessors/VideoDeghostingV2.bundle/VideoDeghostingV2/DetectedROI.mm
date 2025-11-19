@interface DetectedROI
- ($90F8316DFF8C7E624C13ADF498D66361)des;
- (CGRect)LSRoi;
- (CGRect)roi;
- (DetectedROI)initWithTrackingSessionId:(unint64_t)a3 roiId:(int64_t)a4 andRoi:(CGRect)a5;
- (DetectedROI)initWithTrackingSessionId:(unint64_t)a3 roiId:(int64_t)a4 roi:(CGRect)a5 LSRoi:(CGRect)a6 confidence:(float)a7;
- (DetectedROI)initWithTrackingSessionId:(unint64_t)a3 roiId:(int64_t)a4 roi:(CGRect)a5 LSRoi:(CGRect)a6 descriptor:(id *)a7 propertiesForPostProcPipeVisualization:(id *)a8;
@end

@implementation DetectedROI

- (DetectedROI)initWithTrackingSessionId:(unint64_t)a3 roiId:(int64_t)a4 andRoi:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v18.receiver = self;
  v18.super_class = DetectedROI;
  v11 = [(DetectedROI *)&v18 init];
  v12 = v11;
  if (v11)
  {
    v11->_trackSessionId = a3;
    v11->_roiId = a4;
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

- (DetectedROI)initWithTrackingSessionId:(unint64_t)a3 roiId:(int64_t)a4 roi:(CGRect)a5 LSRoi:(CGRect)a6 descriptor:(id *)a7 propertiesForPostProcPipeVisualization:(id *)a8
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v14 = [(DetectedROI *)self initWithTrackingSessionId:a3 roiId:a4 andRoi:a5.origin.x, a5.origin.y, a5.size.width, a5.size.height];
  v15 = v14;
  if (v14)
  {
    v14->_LSRoi.origin.x = x;
    v14->_LSRoi.origin.y = y;
    v14->_LSRoi.size.width = width;
    v14->_LSRoi.size.height = height;
    v16 = *&a7->var4;
    *&v14[1].super.isa = *&a7->var0;
    *&v14[1]._centerPoint.y = v16;
    v17 = *&a7[1].var2;
    v18 = *&a7[2].var0;
    v19 = *&a7[3].var2;
    *&v14[1]._trackSessionId = *&a7[2].var4;
    *v14[1]._trajectoryFromPast = v19;
    *&v14[1]._trackID = v17;
    *&v14[1]._ROIWSpatial = v18;
    v20 = *&a7[4].var0;
    v21 = *&a7[4].var4;
    v22 = *&a7[6].var0;
    *&v14[1]._LSRoi.origin.y = *&a7[5].var2;
    *&v14[1]._LSRoi.size.height = v22;
    *&v14[1]._roi.origin.y = v20;
    *&v14[1]._roi.size.height = v21;
    v14->_trackID = a8->var0;
    v14->_isTracked = a8->var1;
    v14->_trackedCnt = a8->var3;
    v14->_isPredictedFromPast = a8->var2;
    *v14->_trajectoryFromPast = *&a8[1].var0;
    v14->_predictedFromPastCnt = a8->var4;
    v14->_lowSaliencyCnt = a8->var5;
    v14->_isTrajectoryPruningPassed = a8[1].var3;
    v14->_isReflectedLS = BYTE1(a8[1].var3);
    v23 = v14;
  }

  else
  {
    sub_23218();
  }

  return v15;
}

- (DetectedROI)initWithTrackingSessionId:(unint64_t)a3 roiId:(int64_t)a4 roi:(CGRect)a5 LSRoi:(CGRect)a6 confidence:(float)a7
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v11 = [(DetectedROI *)self initWithTrackingSessionId:a3 roiId:a4 andRoi:a5.origin.x, a5.origin.y, a5.size.width, a5.size.height];
  v12 = v11;
  if (v11)
  {
    v11->_LSRoi.origin.x = x;
    v11->_LSRoi.origin.y = y;
    v11->_LSRoi.size.width = width;
    v11->_LSRoi.size.height = height;
    v11->_confidence = a7;
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