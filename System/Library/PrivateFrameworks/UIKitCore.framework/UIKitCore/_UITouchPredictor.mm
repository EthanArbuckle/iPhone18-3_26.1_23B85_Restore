@interface _UITouchPredictor
- (_UITouchPredictor)init;
- (_UITouchPredictor)initWithTouchPredictor:(id)predictor;
- (id)_predictedTouchesAtIndex:(unint64_t)index forTouch:(id)touch;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)descriptionFromIndex:(int)index toIndex:(int)toIndex includeHeader:(BOOL)header includeDetailedConfidence:(BOOL)confidence;
- (id)predictedTouchesForTouch:(id)touch;
- (unint64_t)_dampenedNumPredictionsAtIndex:(unint64_t)index;
- (unint64_t)_numPredictionsAtIndex:(unint64_t)index hardLimit:(unint64_t *)limit;
- (void)_updatePredictionsForTouch:(id)touch weight:(double)weight;
- (void)addTouch:(id)touch;
@end

@implementation _UITouchPredictor

- (_UITouchPredictor)init
{
  v16.receiver = self;
  v16.super_class = _UITouchPredictor;
  v2 = [(_UITouchPredictor *)&v16 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DF70] array];
    predictions = v2->_predictions;
    v2->_predictions = array;

    v2->_predictionsValid = 0;
    v2->_numPredictionsBufferCount = 0;
    v2->_averageTouchInterval = 0.0;
    v2->_lastTouchTimestamp = 0.0;
    v5 = [[_UIValuePredictor alloc] initWithNumPredictions:4 numDerivatives:4];
    xValuePredictor = v2->_xValuePredictor;
    v2->_xValuePredictor = v5;

    [(_UIValuePredictor *)v2->_xValuePredictor setMinHistoricalAccuracyThreshold:0.5];
    [(_UIValuePredictor *)v2->_xValuePredictor setMaxHistoricalAccuracyThreshold:2.0];
    [(_UIValuePredictor *)v2->_xValuePredictor setDerivativeStabilityThreshold:1.5];
    [(_UIValuePredictor *)v2->_xValuePredictor setMinVelocityThreshold:0.5];
    [(_UIValuePredictor *)v2->_xValuePredictor setMaxVelocityThreshold:1.5];
    v7 = [[_UIValuePredictor alloc] initWithNumPredictions:4 numDerivatives:4];
    yValuePredictor = v2->_yValuePredictor;
    v2->_yValuePredictor = v7;

    [(_UIValuePredictor *)v2->_yValuePredictor setMinHistoricalAccuracyThreshold:0.5];
    [(_UIValuePredictor *)v2->_yValuePredictor setMaxHistoricalAccuracyThreshold:2.0];
    [(_UIValuePredictor *)v2->_yValuePredictor setDerivativeStabilityThreshold:1.5];
    [(_UIValuePredictor *)v2->_yValuePredictor setMinVelocityThreshold:0.5];
    [(_UIValuePredictor *)v2->_yValuePredictor setMaxVelocityThreshold:1.5];
    v9 = [[_UIValuePredictor alloc] initWithNumPredictions:4 numDerivatives:4];
    angleValuePredictor = v2->_angleValuePredictor;
    v2->_angleValuePredictor = v9;

    [(_UIValuePredictor *)v2->_angleValuePredictor setMinConstraint:0.0];
    [(_UIValuePredictor *)v2->_angleValuePredictor setMaxConstraint:1.57079633];
    v11 = [[_UIValuePredictor alloc] initWithNumPredictions:4 numDerivatives:4];
    azimuthValuePredictor = v2->_azimuthValuePredictor;
    v2->_azimuthValuePredictor = v11;

    [(_UIValuePredictor *)v2->_azimuthValuePredictor setMinConstraint:0.0];
    [(_UIValuePredictor *)v2->_azimuthValuePredictor setMaxConstraint:6.28318531];
    [(_UIValuePredictor *)v2->_azimuthValuePredictor setWrapConstraint:1];
    v13 = [[_UIValuePredictor alloc] initWithNumPredictions:4 numDerivatives:4];
    forceValuePredictor = v2->_forceValuePredictor;
    v2->_forceValuePredictor = v13;

    [(_UIValuePredictor *)v2->_forceValuePredictor setMinConstraint:0.0];
    [(_UIValuePredictor *)v2->_forceValuePredictor setMaxConstraint:500.0];
  }

  return v2;
}

- (_UITouchPredictor)initWithTouchPredictor:(id)predictor
{
  predictorCopy = predictor;
  v24.receiver = self;
  v24.super_class = _UITouchPredictor;
  v5 = [(_UITouchPredictor *)&v24 init];
  if (v5)
  {
    array = [MEMORY[0x1E695DF70] array];
    predictions = v5->_predictions;
    v5->_predictions = array;

    v5->_predictionsValid = 0;
    v5->_numPredictionsBufferCount = 0;
    v5->_averageTouchInterval = 0.0;
    v5->_lastTouchTimestamp = 0.0;
    _xValuePredictor = [predictorCopy _xValuePredictor];
    v9 = [_xValuePredictor copy];
    xValuePredictor = v5->_xValuePredictor;
    v5->_xValuePredictor = v9;

    _yValuePredictor = [predictorCopy _yValuePredictor];
    v12 = [_yValuePredictor copy];
    yValuePredictor = v5->_yValuePredictor;
    v5->_yValuePredictor = v12;

    _angleValuePredictor = [predictorCopy _angleValuePredictor];
    v15 = [_angleValuePredictor copy];
    angleValuePredictor = v5->_angleValuePredictor;
    v5->_angleValuePredictor = v15;

    _azimuthValuePredictor = [predictorCopy _azimuthValuePredictor];
    v18 = [_azimuthValuePredictor copy];
    azimuthValuePredictor = v5->_azimuthValuePredictor;
    v5->_azimuthValuePredictor = v18;

    _forceValuePredictor = [predictorCopy _forceValuePredictor];
    v21 = [_forceValuePredictor copy];
    forceValuePredictor = v5->_forceValuePredictor;
    v5->_forceValuePredictor = v21;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithTouchPredictor:self];
}

- (void)addTouch:(id)touch
{
  touchCopy = touch;
  [(NSMutableArray *)self->_predictions removeAllObjects];
  self->_predictionsValid = 0;
  if (self->_lastTouchTimestamp == 0.0)
  {
    v8 = 1.0;
  }

  else
  {
    [touchCopy timestamp];
    v5 = v4 - self->_lastTouchTimestamp;
    if (self->_averageTouchInterval == 0.0)
    {
      averageTouchInterval = v5;
    }

    else
    {
      averageTouchInterval = self->_averageTouchInterval;
    }

    v7 = (v5 + averageTouchInterval) * 0.5;
    self->_averageTouchInterval = v7;
    v8 = v7 / v5;
  }

  [touchCopy timestamp];
  self->_lastTouchTimestamp = v9;
  [(_UITouchPredictor *)self _updatePredictionsForTouch:touchCopy weight:v8];
}

- (unint64_t)_numPredictionsAtIndex:(unint64_t)index hardLimit:(unint64_t *)limit
{
  [(_UIValuePredictor *)self->_xValuePredictor _predictionsAtIndex:?];
  [(_UIValuePredictor *)self->_yValuePredictor _predictionsAtIndex:index];
  v7 = [(_UIValuePredictor *)self->_xValuePredictor _confidenceFactorsAtIndex:index];
  v8 = [(_UIValuePredictor *)self->_yValuePredictor _confidenceFactorsAtIndex:index];
  v9 = [(_UIValuePredictor *)self->_xValuePredictor _confidenceFactorsForVelocityAtIndex:index];
  v10 = [(_UIValuePredictor *)self->_yValuePredictor _confidenceFactorsForVelocityAtIndex:index];
  v11 = 0;
  v12 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = v11;
      if ((v9[v11] + v10[v11]) * 0.5 >= 0.3)
      {
        v13 = (v11 + 1) * 0.75 * 0.25;
        if (v7[v11] >= v13 && v8[v11] >= v13)
        {
          v12 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }
      }
    }

    ++v11;
  }

  while (v11 != 4);
  *limit = 4;
  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 4;
  }

  else
  {
    return v12;
  }
}

- (unint64_t)_dampenedNumPredictionsAtIndex:(unint64_t)index
{
  v15 = 4;
  v4 = [(_UITouchPredictor *)self _numPredictionsAtIndex:index hardLimit:&v15];
  numPredictionsBufferCount = self->_numPredictionsBufferCount;
  if (numPredictionsBufferCount <= 4)
  {
    v6 = (&self->super.isa + numPredictionsBufferCount);
    v7 = numPredictionsBufferCount + 1;
    self->_numPredictionsBufferCount = v7;
    v6[10] = v4;
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_7:
    v9 = 0.0;
    goto LABEL_8;
  }

  v12 = *&self->_numPredictionsBuffer[3];
  *self->_numPredictionsBuffer = *&self->_numPredictionsBuffer[1];
  *&self->_numPredictionsBuffer[2] = v12;
  self->_numPredictionsBuffer[4] = v4;
  v7 = self->_numPredictionsBufferCount;
  if (!v7)
  {
    goto LABEL_7;
  }

LABEL_3:
  numPredictionsBuffer = self->_numPredictionsBuffer;
  v9 = 0.0;
  v10 = v7;
  do
  {
    v11 = *numPredictionsBuffer++;
    v9 = v9 + v11;
    --v10;
  }

  while (v10);
LABEL_8:
  v13 = round(v9 / v7);
  if (v13 > v15)
  {
    return v15;
  }

  return v13;
}

- (id)_predictedTouchesAtIndex:(unint64_t)index forTouch:(id)touch
{
  touchCopy = touch;
  if (!self->_predictionsValid)
  {
    v33 = [(_UIValuePredictor *)self->_xValuePredictor _predictionsAtIndex:index];
    v7 = [(_UIValuePredictor *)self->_yValuePredictor _predictionsAtIndex:index];
    v8 = [(_UIValuePredictor *)self->_angleValuePredictor _predictionsAtIndex:index];
    v9 = [(_UIValuePredictor *)self->_azimuthValuePredictor _predictionsAtIndex:index];
    v10 = [(_UIValuePredictor *)self->_forceValuePredictor _predictionsAtIndex:index];
    v31 = touchCopy;
    v11 = touchCopy;
    window = [v11 window];
    [window contentScaleFactor];
    v34 = v13;

    averageTouchInterval = self->_averageTouchInterval;
    v15 = [(_UITouchPredictor *)self _dampenedNumPredictionsAtIndex:index];
    if (v15 >= 1)
    {
      v16 = 0;
      v17 = v15 & 0x7FFFFFFF;
      v32 = vdupq_lane_s64(v34, 0);
      _clone = v11;
      while (1)
      {
        v19 = _clone;
        _clone = [v11 _clone];
        [_clone _setPreviousTouch:v19];
        v20 = v33[v16];
        v21 = v7[v16];
        v22 = v20;
        v25.f64[1] = v21;
        *&v23 = v32.f64[0];
        v24 = vdivq_f64(vrndaq_f64(vmulq_n_f64(v25, *&v34)), v32);
        v25.f64[0] = v24.f64[1];
        if (_clone)
        {
          v25 = *(_clone + 112);
          v23 = *(_clone + 144);
          *(_clone + 160) = v23;
          *(_clone + 112) = v24;
          *(_clone + 128) = v25;
          *(_clone + 144) = v20;
          *(_clone + 152) = v21;
        }

        if ((v16 & 0x8000000000000000) == 0)
        {
          [(UITouch *)_clone _setAltitudeAngle:?];
          v25.f64[0] = v9[v16];
          if (_clone)
          {
            *(_clone + 368) = v25.f64[0];
            [(UITouch *)_clone _computeAzimuthAngleInWindow];
          }
        }

        if (v16 < 0)
        {
          goto LABEL_14;
        }

        v25.f64[0] = v10[v16];
        if (_clone)
        {
          break;
        }

        [v19 timestamp];
        [0 setTimestamp:averageTouchInterval + v27];
LABEL_16:
        [(NSMutableArray *)self->_predictions addObject:_clone];

        if (++v16 == v17)
        {
          goto LABEL_20;
        }
      }

      v21 = *(_clone + 216);
      *&v23 = *(_clone + 224);
      if (*&v23 < v25.f64[0])
      {
        *&v23 = v10[v16];
      }

      *(_clone + 176) = v21;
      *(_clone + 216) = v25.f64[0];
      *(_clone + 224) = v23;
LABEL_14:
      [v19 timestamp];
      [_clone setTimestamp:averageTouchInterval + v26];
      if (_clone)
      {
        *(_clone + 236) |= 0x80u;
      }

      goto LABEL_16;
    }

    _clone = v11;
LABEL_20:
    self->_predictionsValid = 1;

    touchCopy = v31;
  }

  predictions = self->_predictions;
  v29 = predictions;

  return predictions;
}

- (id)predictedTouchesForTouch:(id)touch
{
  xValuePredictor = self->_xValuePredictor;
  touchCopy = touch;
  v6 = [(_UITouchPredictor *)self _predictedTouchesAtIndex:[(_UIValuePredictor *)xValuePredictor numValues]- 1 forTouch:touchCopy];

  return v6;
}

- (id)descriptionFromIndex:(int)index toIndex:(int)toIndex includeHeader:(BOOL)header includeDetailedConfidence:(BOOL)confidence
{
  confidenceCopy = confidence;
  headerCopy = header;
  string = [MEMORY[0x1E696AD60] string];
  v12 = [(_UIValuePredictor *)self->_xValuePredictor descriptionFromIndex:index toIndex:toIndex includeHeader:headerCopy includeDetailedConfidence:confidenceCopy];
  [string appendFormat:@"X:\n%@", v12];

  v13 = [(_UIValuePredictor *)self->_yValuePredictor descriptionFromIndex:index toIndex:toIndex includeHeader:headerCopy includeDetailedConfidence:confidenceCopy];
  [string appendFormat:@"Y:\n%@", v13];

  v14 = [(_UIValuePredictor *)self->_angleValuePredictor descriptionFromIndex:index toIndex:toIndex includeHeader:headerCopy includeDetailedConfidence:confidenceCopy];
  [string appendFormat:@"Angle:\n%@", v14];

  v15 = [(_UIValuePredictor *)self->_azimuthValuePredictor descriptionFromIndex:index toIndex:toIndex includeHeader:headerCopy includeDetailedConfidence:confidenceCopy];
  [string appendFormat:@"Azimuth:\n%@", v15];

  v16 = [(_UIValuePredictor *)self->_forceValuePredictor descriptionFromIndex:index toIndex:toIndex includeHeader:headerCopy includeDetailedConfidence:confidenceCopy];
  [string appendFormat:@"Force:\n%@", v16];

  return string;
}

- (id)description
{
  v3 = [(_UIValuePredictor *)self->_xValuePredictor numValues]+ 3;

  return [(_UITouchPredictor *)self descriptionFromIndex:0 toIndex:v3 includeHeader:1 includeDetailedConfidence:1];
}

- (void)_updatePredictionsForTouch:(id)touch weight:(double)weight
{
  touchCopy = touch;
  [touchCopy preciseLocationInView:0];
  v8 = v7;
  [_UIValuePredictor addValue:"addValue:weight:" weight:?];
  [(_UIValuePredictor *)self->_yValuePredictor addValue:v8 weight:weight];
  angleValuePredictor = self->_angleValuePredictor;
  [touchCopy altitudeAngle];
  [_UIValuePredictor addValue:"addValue:weight:" weight:?];
  if (touchCopy)
  {
    v10 = touchCopy[46];
  }

  else
  {
    v10 = 0.0;
  }

  [(_UIValuePredictor *)self->_azimuthValuePredictor addValue:v10 weight:weight];
  forceValuePredictor = self->_forceValuePredictor;
  [touchCopy _pressure];
  v13 = v12;

  [(_UIValuePredictor *)forceValuePredictor addValue:v13 weight:weight];
}

@end