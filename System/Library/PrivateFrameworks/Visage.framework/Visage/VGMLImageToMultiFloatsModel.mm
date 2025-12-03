@interface VGMLImageToMultiFloatsModel
- (VGMLImageToMultiFloatsModel)initWithModelInfo:(id)info;
- (void)inferInputImage:(__CVBuffer *)image toOutput:(id)output;
@end

@implementation VGMLImageToMultiFloatsModel

- (VGMLImageToMultiFloatsModel)initWithModelInfo:(id)info
{
  v7.receiver = self;
  v7.super_class = VGMLImageToMultiFloatsModel;
  v3 = [(VGMLImageToFloatsModel *)&v7 initWithModelInfo:info];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (void)inferInputImage:(__CVBuffer *)image toOutput:(id)output
{
  outputCopy = output;
  if ([(VGMLEspressoModel *)self numOutputs])
  {
    v6 = [(NSMutableArray *)self->super.super._inputBuffers objectAtIndexedSubscript:0];
    [v6 bindImage:image];

    for (i = 0; i < [(NSMutableArray *)self->super.super._outputBuffers count]; ++i)
    {
      v8 = [(NSMutableArray *)self->super.super._outputBuffers objectAtIndexedSubscript:i];
      v9 = [outputCopy objectAtIndexedSubscript:i];
      [v8 bindTensor:v9];
    }

    [(VGMLEspressoModel *)self inferModel];
  }
}

@end