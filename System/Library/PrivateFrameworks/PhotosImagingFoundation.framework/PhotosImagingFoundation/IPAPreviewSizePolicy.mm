@interface IPAPreviewSizePolicy
- (CGSize)transformSize:(CGSize)a3;
- (IPAPreviewSizePolicy)initWithName:(id)a3 style:(id)a4 sizePolicy:(id)a5 styleNeededThreshold:(id)a6 styleProducedThreshold:(id)a7;
- (IPAPreviewSizePolicy)initWithName:(id)a3 suffix:(id)a4 style:(id)a5 sizePolicy:(id)a6 styleNeededThreshold:(id)a7 styleProducedThreshold:(id)a8;
- (PFIntSize_st)integralTransformSize:(CGSize)a3;
- (id)styleShouldBeProducedFrom:(id)a3;
@end

@implementation IPAPreviewSizePolicy

- (id)styleShouldBeProducedFrom:(id)a3
{
  v4 = a3;
  v14 = 0.0;
  v15 = 0.0;
  v5 = v4[2](v4, 0, &v14);
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = -1;
    v9 = 1;
    do
    {
      if ([(IPAPreviewSizePolicy *)self styleCanBeProducedFromSize:v14, v15])
      {
        v10 = (v14 * v15);
        if (v8 > v10)
        {
          v11 = v6;

          v8 = v10;
          v7 = v11;
        }
      }

      v12 = v4[2](v4, v9, &v14);

      ++v9;
      v6 = v12;
    }

    while (v12);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (PFIntSize_st)integralTransformSize:(CGSize)a3
{
  v3 = [(IPAImageSizePolicy *)self->_sizePolicy integralTransformSize:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)transformSize:(CGSize)a3
{
  [(IPAImageSizePolicy *)self->_sizePolicy transformSize:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (IPAPreviewSizePolicy)initWithName:(id)a3 suffix:(id)a4 style:(id)a5 sizePolicy:(id)a6 styleNeededThreshold:(id)a7 styleProducedThreshold:(id)a8
{
  v15 = a4;
  v16 = [(IPAPreviewSizePolicy *)self initWithName:a3 style:a5 sizePolicy:a6 styleNeededThreshold:a7 styleProducedThreshold:a8];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_suffix, a4);
  }

  return v17;
}

- (IPAPreviewSizePolicy)initWithName:(id)a3 style:(id)a4 sizePolicy:(id)a5 styleNeededThreshold:(id)a6 styleProducedThreshold:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v26.receiver = self;
  v26.super_class = IPAPreviewSizePolicy;
  v18 = [(IPAPreviewSizePolicy *)&v26 init];
  if (!v14)
  {
    _PFAssertFailHandler();
    goto LABEL_9;
  }

  if (!v15)
  {
LABEL_9:
    _PFAssertFailHandler();
    goto LABEL_10;
  }

  if (!v16)
  {
LABEL_10:
    _PFAssertFailHandler();
    goto LABEL_11;
  }

  if (!v17)
  {
LABEL_11:
    v25 = _PFAssertFailHandler();
    return NSStringFromPFIntPoint(v25);
  }

  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_name, a3);
    objc_storeStrong(&v19->_style, a4);
    objc_storeStrong(&v19->_sizePolicy, a5);
    v20 = MEMORY[0x25F8B9090](v16);
    styleNeededThreshold = v19->_styleNeededThreshold;
    v19->_styleNeededThreshold = v20;

    v22 = MEMORY[0x25F8B9090](v17);
    styleProducedThreshold = v19->_styleProducedThreshold;
    v19->_styleProducedThreshold = v22;
  }

  return v19;
}

@end