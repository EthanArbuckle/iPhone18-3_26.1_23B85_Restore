@interface _PIVideoStabilizeResult
- ($721907E0E1CDE8B6CD3FA271A8B25860)stabCropRect;
- (_PIVideoStabilizeResult)initWithKeyframes:(id)a3 stabCropRect:(id *)a4 analysisType:(unint64_t)a5 rawHomographies:(id)a6;
@end

@implementation _PIVideoStabilizeResult

- ($721907E0E1CDE8B6CD3FA271A8B25860)stabCropRect
{
  v3 = *&self[1].var1.var1;
  retstr->var0 = *&self[1].var0.var1;
  retstr->var1 = v3;
  return self;
}

- (_PIVideoStabilizeResult)initWithKeyframes:(id)a3 stabCropRect:(id *)a4 analysisType:(unint64_t)a5 rawHomographies:(id)a6
{
  v10 = a3;
  v11 = a6;
  v20.receiver = self;
  v20.super_class = _PIVideoStabilizeResult;
  v12 = [(_PIVideoStabilizeResult *)&v20 init];
  v13 = v12;
  if (v12)
  {
    v12->_analysisType = a5;
    v14 = [v10 copy];
    keyframes = v13->_keyframes;
    v13->_keyframes = v14;

    var1 = a4->var1;
    v13->_stabCropRect.origin = a4->var0;
    v13->_stabCropRect.size = var1;
    v17 = [v11 copy];
    rawHomographies = v13->_rawHomographies;
    v13->_rawHomographies = v17;
  }

  return v13;
}

@end