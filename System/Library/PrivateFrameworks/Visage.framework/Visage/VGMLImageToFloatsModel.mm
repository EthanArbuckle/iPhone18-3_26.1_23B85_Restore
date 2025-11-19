@interface VGMLImageToFloatsModel
- (VGMLImageToFloatsModel)initWithModelInfo:(id)a3;
- (void)inferInputImage:(__CVBuffer *)a3 toOutput:(id)a4;
@end

@implementation VGMLImageToFloatsModel

- (VGMLImageToFloatsModel)initWithModelInfo:(id)a3
{
  v7.receiver = self;
  v7.super_class = VGMLImageToFloatsModel;
  v3 = [(VGMLEspressoModel *)&v7 initWithModelInfo:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (void)inferInputImage:(__CVBuffer *)a3 toOutput:(id)a4
{
  v8 = a4;
  v6 = [(NSMutableArray *)self->super._inputBuffers objectAtIndexedSubscript:0];
  [v6 bindImage:a3];

  v7 = [(NSMutableArray *)self->super._outputBuffers objectAtIndexedSubscript:0];
  [v7 bindTensor:v8];

  [(VGMLEspressoModel *)self inferModel];
}

@end