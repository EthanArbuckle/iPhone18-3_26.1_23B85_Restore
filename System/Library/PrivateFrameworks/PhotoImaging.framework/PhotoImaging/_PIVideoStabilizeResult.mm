@interface _PIVideoStabilizeResult
- ($721907E0E1CDE8B6CD3FA271A8B25860)stabCropRect;
- (_PIVideoStabilizeResult)initWithKeyframes:(id)keyframes stabCropRect:(id *)rect analysisType:(unint64_t)type rawHomographies:(id)homographies;
@end

@implementation _PIVideoStabilizeResult

- ($721907E0E1CDE8B6CD3FA271A8B25860)stabCropRect
{
  v3 = *&self[1].var1.var1;
  retstr->var0 = *&self[1].var0.var1;
  retstr->var1 = v3;
  return self;
}

- (_PIVideoStabilizeResult)initWithKeyframes:(id)keyframes stabCropRect:(id *)rect analysisType:(unint64_t)type rawHomographies:(id)homographies
{
  keyframesCopy = keyframes;
  homographiesCopy = homographies;
  v20.receiver = self;
  v20.super_class = _PIVideoStabilizeResult;
  v12 = [(_PIVideoStabilizeResult *)&v20 init];
  v13 = v12;
  if (v12)
  {
    v12->_analysisType = type;
    v14 = [keyframesCopy copy];
    keyframes = v13->_keyframes;
    v13->_keyframes = v14;

    var1 = rect->var1;
    v13->_stabCropRect.origin = rect->var0;
    v13->_stabCropRect.size = var1;
    v17 = [homographiesCopy copy];
    rawHomographies = v13->_rawHomographies;
    v13->_rawHomographies = v17;
  }

  return v13;
}

@end