@interface MitigationCPU
- (MitigationCPU)initWithMetalToolBox:(id)a3;
- (MitigationCPU)initWithMetalToolBox:(id)a3 mitigationGPU:(id)a4;
@end

@implementation MitigationCPU

- (MitigationCPU)initWithMetalToolBox:(id)a3 mitigationGPU:(id)a4
{
  objc_storeStrong(&self->_mitigationGPU, a4);
  v6 = a3;
  v7 = [(MitigationCPU *)self initWithMetalToolBox:v6];

  return v7;
}

- (MitigationCPU)initWithMetalToolBox:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MitigationCPU;
  v5 = [(MitigationCPU *)&v12 init];
  if (v5)
  {
    if (v4)
    {
      v6 = v4;
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