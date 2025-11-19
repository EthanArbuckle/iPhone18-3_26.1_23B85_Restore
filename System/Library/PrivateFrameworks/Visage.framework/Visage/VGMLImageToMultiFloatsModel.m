@interface VGMLImageToMultiFloatsModel
- (VGMLImageToMultiFloatsModel)initWithModelInfo:(id)a3;
- (void)inferInputImage:(__CVBuffer *)a3 toOutput:(id)a4;
@end

@implementation VGMLImageToMultiFloatsModel

- (VGMLImageToMultiFloatsModel)initWithModelInfo:(id)a3
{
  v7.receiver = self;
  v7.super_class = VGMLImageToMultiFloatsModel;
  v3 = [(VGMLImageToFloatsModel *)&v7 initWithModelInfo:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (void)inferInputImage:(__CVBuffer *)a3 toOutput:(id)a4
{
  v10 = a4;
  if ([(VGMLEspressoModel *)self numOutputs])
  {
    v6 = [(NSMutableArray *)self->super.super._inputBuffers objectAtIndexedSubscript:0];
    [v6 bindImage:a3];

    for (i = 0; i < [(NSMutableArray *)self->super.super._outputBuffers count]; ++i)
    {
      v8 = [(NSMutableArray *)self->super.super._outputBuffers objectAtIndexedSubscript:i];
      v9 = [v10 objectAtIndexedSubscript:i];
      [v8 bindTensor:v9];
    }

    [(VGMLEspressoModel *)self inferModel];
  }
}

@end