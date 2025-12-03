@interface PXFeedViewLayoutSpecManager
- (PXFeedViewLayoutSpec)spec;
- (void)setSpec:(id)spec;
@end

@implementation PXFeedViewLayoutSpecManager

- (void)setSpec:(id)spec
{
  specCopy = spec;
  v6 = specCopy;
  if (self->_spec != specCopy)
  {
    v8 = specCopy;
    v7 = [(PXFeedViewLayoutSpec *)specCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_spec, spec);
      [(PXFeedViewLayoutSpecManager *)self signalChange:1];
      v6 = v8;
    }
  }
}

- (PXFeedViewLayoutSpec)spec
{
  spec = self->_spec;
  if (!spec)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXFeedViewLayoutSpecManager.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"_spec != nil"}];

    spec = self->_spec;
  }

  return spec;
}

@end