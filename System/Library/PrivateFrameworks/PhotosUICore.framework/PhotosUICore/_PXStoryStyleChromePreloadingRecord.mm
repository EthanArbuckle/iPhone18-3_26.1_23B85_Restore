@interface _PXStoryStyleChromePreloadingRecord
- (BOOL)isEqual:(id)equal;
- (_PXStoryStyleChromePreloadingRecord)init;
- (_PXStoryStyleChromePreloadingRecord)initWithDisplayScale:(double)scale styleInfo:(id)info viewLayoutSpec:(id)spec;
- (unint64_t)hash;
@end

@implementation _PXStoryStyleChromePreloadingRecord

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      [(_PXStoryStyleChromePreloadingRecord *)self displayScale];
      v7 = v6;
      [(_PXStoryStyleChromePreloadingRecord *)v5 displayScale];
      if (v7 == v8)
      {
        styleInfo = [(_PXStoryStyleChromePreloadingRecord *)self styleInfo];
        styleInfo2 = [(_PXStoryStyleChromePreloadingRecord *)v5 styleInfo];
        if (styleInfo == styleInfo2 || [styleInfo isEqual:styleInfo2])
        {
          viewLayoutSpec = [(_PXStoryStyleChromePreloadingRecord *)self viewLayoutSpec];
          viewLayoutSpec2 = [(_PXStoryStyleChromePreloadingRecord *)v5 viewLayoutSpec];
          if (viewLayoutSpec == viewLayoutSpec2)
          {
            v13 = 1;
          }

          else
          {
            v13 = [viewLayoutSpec isEqual:viewLayoutSpec2];
          }
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (unint64_t)hash
{
  displayScale = self->_displayScale;
  v4 = [(PXStoryStyleDescriptor *)self->_styleInfo hash];
  return v4 ^ [(PXStoryViewLayoutSpec *)self->_viewLayoutSpec hash]^ displayScale;
}

- (_PXStoryStyleChromePreloadingRecord)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryStyleChromeContainerLayout.m" lineNumber:327 description:{@"%s is not available as initializer", "-[_PXStoryStyleChromePreloadingRecord init]"}];

  abort();
}

- (_PXStoryStyleChromePreloadingRecord)initWithDisplayScale:(double)scale styleInfo:(id)info viewLayoutSpec:(id)spec
{
  infoCopy = info;
  specCopy = spec;
  v14.receiver = self;
  v14.super_class = _PXStoryStyleChromePreloadingRecord;
  v11 = [(_PXStoryStyleChromePreloadingRecord *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_displayScale = scale;
    objc_storeStrong(&v11->_styleInfo, info);
    objc_storeStrong(&v12->_viewLayoutSpec, spec);
  }

  return v12;
}

@end