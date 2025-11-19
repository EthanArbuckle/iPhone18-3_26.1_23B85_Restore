@interface PXFeedViewLayoutSpecManager
- (PXFeedViewLayoutSpec)spec;
- (void)setSpec:(id)a3;
@end

@implementation PXFeedViewLayoutSpecManager

- (void)setSpec:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_spec != v5)
  {
    v8 = v5;
    v7 = [(PXFeedViewLayoutSpec *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_spec, a3);
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
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PXFeedViewLayoutSpecManager.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"_spec != nil"}];

    spec = self->_spec;
  }

  return spec;
}

@end