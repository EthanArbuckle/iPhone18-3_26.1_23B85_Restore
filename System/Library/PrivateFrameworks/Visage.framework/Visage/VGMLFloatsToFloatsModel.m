@interface VGMLFloatsToFloatsModel
- (const)outputData;
- (void)inferInput:(id)a3 toOutput:(id)a4;
@end

@implementation VGMLFloatsToFloatsModel

- (void)inferInput:(id)a3 toOutput:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(NSMutableArray *)self->super._inputBuffers objectAtIndexedSubscript:0];
  [v7 bindTensor:v9];

  v8 = [(NSMutableArray *)self->super._outputBuffers objectAtIndexedSubscript:0];
  [v8 bindTensor:v6];

  [(VGMLEspressoModel *)self inferModel];
}

- (const)outputData
{
  v2 = [(NSMutableArray *)self->super._outputBuffers objectAtIndexedSubscript:0];
  v3 = [v2 getData];

  return v3;
}

@end