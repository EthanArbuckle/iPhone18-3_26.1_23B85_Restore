@interface _PXStoryStyleChromePreloadingRecord
- (BOOL)isEqual:(id)a3;
- (_PXStoryStyleChromePreloadingRecord)init;
- (_PXStoryStyleChromePreloadingRecord)initWithDisplayScale:(double)a3 styleInfo:(id)a4 viewLayoutSpec:(id)a5;
- (unint64_t)hash;
@end

@implementation _PXStoryStyleChromePreloadingRecord

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      [(_PXStoryStyleChromePreloadingRecord *)self displayScale];
      v7 = v6;
      [(_PXStoryStyleChromePreloadingRecord *)v5 displayScale];
      if (v7 == v8)
      {
        v9 = [(_PXStoryStyleChromePreloadingRecord *)self styleInfo];
        v10 = [(_PXStoryStyleChromePreloadingRecord *)v5 styleInfo];
        if (v9 == v10 || [v9 isEqual:v10])
        {
          v11 = [(_PXStoryStyleChromePreloadingRecord *)self viewLayoutSpec];
          v12 = [(_PXStoryStyleChromePreloadingRecord *)v5 viewLayoutSpec];
          if (v11 == v12)
          {
            v13 = 1;
          }

          else
          {
            v13 = [v11 isEqual:v12];
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
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryStyleChromeContainerLayout.m" lineNumber:327 description:{@"%s is not available as initializer", "-[_PXStoryStyleChromePreloadingRecord init]"}];

  abort();
}

- (_PXStoryStyleChromePreloadingRecord)initWithDisplayScale:(double)a3 styleInfo:(id)a4 viewLayoutSpec:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = _PXStoryStyleChromePreloadingRecord;
  v11 = [(_PXStoryStyleChromePreloadingRecord *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_displayScale = a3;
    objc_storeStrong(&v11->_styleInfo, a4);
    objc_storeStrong(&v12->_viewLayoutSpec, a5);
  }

  return v12;
}

@end