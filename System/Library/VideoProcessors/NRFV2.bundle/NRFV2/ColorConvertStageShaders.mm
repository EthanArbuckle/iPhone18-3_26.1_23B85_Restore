@interface ColorConvertStageShaders
- (ColorConvertStageShaders)initWithMetal:(id)metal;
@end

@implementation ColorConvertStageShaders

- (ColorConvertStageShaders)initWithMetal:(id)metal
{
  metalCopy = metal;
  v14.receiver = self;
  v14.super_class = ColorConvertStageShaders;
  v6 = [(ColorConvertStageShaders *)&v14 init];
  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = objc_msgSend_computePipelineStateFor_constants_(metalCopy, v5, @"convertColor", 0);
  convertColor = v6->_convertColor;
  v6->_convertColor = v7;

  if (!v6->_convertColor)
  {
    sub_29589C144();
LABEL_8:
    v12 = 0;
    goto LABEL_5;
  }

  v10 = objc_msgSend_computePipelineStateFor_constants_(metalCopy, v9, @"convertColorYCbCr", 0);
  convertColorYCbCr = v6->_convertColorYCbCr;
  v6->_convertColorYCbCr = v10;

  if (!v6->_convertColorYCbCr)
  {
    sub_29589C0B8();
    goto LABEL_8;
  }

LABEL_4:
  v12 = v6;
LABEL_5:

  return v12;
}

@end