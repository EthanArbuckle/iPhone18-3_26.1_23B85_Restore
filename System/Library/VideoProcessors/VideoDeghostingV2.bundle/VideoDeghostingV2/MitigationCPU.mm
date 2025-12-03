@interface MitigationCPU
- (MitigationCPU)initWithMetalToolBox:(id)box;
- (MitigationCPU)initWithMetalToolBox:(id)box mitigationGPU:(id)u;
@end

@implementation MitigationCPU

- (MitigationCPU)initWithMetalToolBox:(id)box mitigationGPU:(id)u
{
  objc_storeStrong(&self->_mitigationGPU, u);
  boxCopy = box;
  v7 = [(MitigationCPU *)self initWithMetalToolBox:boxCopy];

  return v7;
}

- (MitigationCPU)initWithMetalToolBox:(id)box
{
  boxCopy = box;
  v12.receiver = self;
  v12.super_class = MitigationCPU;
  v5 = [(MitigationCPU *)&v12 init];
  if (v5)
  {
    if (boxCopy)
    {
      v6 = boxCopy;
    }

    else
    {
      v6 = objc_alloc_init(GGMMetalToolBox);
    }

    metalToolbox = v5->_metalToolbox;
    v5->_metalToolbox = v6;

    v8 = [[CalcHomography alloc] initWithMetalToolBox:v5->_metalToolbox];
    calcTransform = v5->_calcTransform;
    v5->_calcTransform = v8;

    v10 = v5;
  }

  return v5;
}

@end