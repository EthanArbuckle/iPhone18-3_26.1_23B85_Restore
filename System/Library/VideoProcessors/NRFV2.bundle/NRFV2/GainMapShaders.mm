@interface GainMapShaders
- (GainMapShaders)initWithMetal:(id)metal;
@end

@implementation GainMapShaders

- (GainMapShaders)initWithMetal:(id)metal
{
  metalCopy = metal;
  if (!metalCopy)
  {
    sub_2958BCF28(self);
LABEL_8:
    v6 = 0;
    goto LABEL_4;
  }

  v10.receiver = self;
  v10.super_class = GainMapShaders;
  v6 = [(GainMapShaders *)&v10 init];
  if (!v6)
  {
    sub_2958BCEB0();
    goto LABEL_4;
  }

  v7 = objc_msgSend_computePipelineStateFor_constants_(metalCopy, v5, @"GainMap", 0);
  gainMapFilter = v6->_gainMapFilter;
  v6->_gainMapFilter = v7;

  if (!v6->_gainMapFilter)
  {
    sub_2958BCE04(v6);
    goto LABEL_8;
  }

LABEL_4:

  return v6;
}

@end