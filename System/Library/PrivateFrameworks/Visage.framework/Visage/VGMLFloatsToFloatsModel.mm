@interface VGMLFloatsToFloatsModel
- (const)outputData;
- (void)inferInput:(id)input toOutput:(id)output;
@end

@implementation VGMLFloatsToFloatsModel

- (void)inferInput:(id)input toOutput:(id)output
{
  inputCopy = input;
  outputCopy = output;
  v7 = [(NSMutableArray *)self->super._inputBuffers objectAtIndexedSubscript:0];
  [v7 bindTensor:inputCopy];

  v8 = [(NSMutableArray *)self->super._outputBuffers objectAtIndexedSubscript:0];
  [v8 bindTensor:outputCopy];

  [(VGMLEspressoModel *)self inferModel];
}

- (const)outputData
{
  v2 = [(NSMutableArray *)self->super._outputBuffers objectAtIndexedSubscript:0];
  getData = [v2 getData];

  return getData;
}

@end