@interface VGMLImageToFloatsModel
- (VGMLImageToFloatsModel)initWithModelInfo:(id)info;
- (void)inferInputImage:(__CVBuffer *)image toOutput:(id)output;
@end

@implementation VGMLImageToFloatsModel

- (VGMLImageToFloatsModel)initWithModelInfo:(id)info
{
  v7.receiver = self;
  v7.super_class = VGMLImageToFloatsModel;
  v3 = [(VGMLEspressoModel *)&v7 initWithModelInfo:info];
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
  v6 = [(NSMutableArray *)self->super._inputBuffers objectAtIndexedSubscript:0];
  [v6 bindImage:image];

  v7 = [(NSMutableArray *)self->super._outputBuffers objectAtIndexedSubscript:0];
  [v7 bindTensor:outputCopy];

  [(VGMLEspressoModel *)self inferModel];
}

@end