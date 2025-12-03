@interface IPAPreviewSizePolicy
- (CGSize)transformSize:(CGSize)size;
- (IPAPreviewSizePolicy)initWithName:(id)name style:(id)style sizePolicy:(id)policy styleNeededThreshold:(id)threshold styleProducedThreshold:(id)producedThreshold;
- (IPAPreviewSizePolicy)initWithName:(id)name suffix:(id)suffix style:(id)style sizePolicy:(id)policy styleNeededThreshold:(id)threshold styleProducedThreshold:(id)producedThreshold;
- (PFIntSize_st)integralTransformSize:(CGSize)size;
- (id)styleShouldBeProducedFrom:(id)from;
@end

@implementation IPAPreviewSizePolicy

- (id)styleShouldBeProducedFrom:(id)from
{
  fromCopy = from;
  v14 = 0.0;
  v15 = 0.0;
  v5 = fromCopy[2](fromCopy, 0, &v14);
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

      v12 = fromCopy[2](fromCopy, v9, &v14);

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

- (PFIntSize_st)integralTransformSize:(CGSize)size
{
  v3 = [(IPAImageSizePolicy *)self->_sizePolicy integralTransformSize:size.width, size.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)transformSize:(CGSize)size
{
  [(IPAImageSizePolicy *)self->_sizePolicy transformSize:size.width, size.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (IPAPreviewSizePolicy)initWithName:(id)name suffix:(id)suffix style:(id)style sizePolicy:(id)policy styleNeededThreshold:(id)threshold styleProducedThreshold:(id)producedThreshold
{
  suffixCopy = suffix;
  v16 = [(IPAPreviewSizePolicy *)self initWithName:name style:style sizePolicy:policy styleNeededThreshold:threshold styleProducedThreshold:producedThreshold];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_suffix, suffix);
  }

  return v17;
}

- (IPAPreviewSizePolicy)initWithName:(id)name style:(id)style sizePolicy:(id)policy styleNeededThreshold:(id)threshold styleProducedThreshold:(id)producedThreshold
{
  nameCopy = name;
  styleCopy = style;
  policyCopy = policy;
  thresholdCopy = threshold;
  producedThresholdCopy = producedThreshold;
  v26.receiver = self;
  v26.super_class = IPAPreviewSizePolicy;
  v18 = [(IPAPreviewSizePolicy *)&v26 init];
  if (!styleCopy)
  {
    _PFAssertFailHandler();
    goto LABEL_9;
  }

  if (!policyCopy)
  {
LABEL_9:
    _PFAssertFailHandler();
    goto LABEL_10;
  }

  if (!thresholdCopy)
  {
LABEL_10:
    _PFAssertFailHandler();
    goto LABEL_11;
  }

  if (!producedThresholdCopy)
  {
LABEL_11:
    v25 = _PFAssertFailHandler();
    return NSStringFromPFIntPoint(v25);
  }

  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_name, name);
    objc_storeStrong(&v19->_style, style);
    objc_storeStrong(&v19->_sizePolicy, policy);
    v20 = MEMORY[0x25F8B9090](thresholdCopy);
    styleNeededThreshold = v19->_styleNeededThreshold;
    v19->_styleNeededThreshold = v20;

    v22 = MEMORY[0x25F8B9090](producedThresholdCopy);
    styleProducedThreshold = v19->_styleProducedThreshold;
    v19->_styleProducedThreshold = v22;
  }

  return v19;
}

@end