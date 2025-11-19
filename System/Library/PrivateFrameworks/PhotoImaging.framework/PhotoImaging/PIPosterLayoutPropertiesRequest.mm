@interface PIPosterLayoutPropertiesRequest
- (PIPosterLayoutPropertiesRequest)initWithSegmentationItem:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)newRenderJob;
@end

@implementation PIPosterLayoutPropertiesRequest

- (id)newRenderJob
{
  v3 = [_PIPosterLayoutPropertiesJob alloc];

  return [(_PIPosterLayoutPropertiesJob *)v3 initWithLayoutPropertiesRequest:self];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = PIPosterLayoutPropertiesRequest;
  v4 = [(NURenderRequest *)&v6 copyWithZone:a3];
  objc_storeStrong(v4 + 21, self->_segmentationItem);
  objc_storeStrong(v4 + 22, self->_layout);
  *(v4 + 160) = self->_calculateAdaptiveFrame;
  return v4;
}

- (PIPosterLayoutPropertiesRequest)initWithSegmentationItem:(id)a3
{
  v5 = a3;
  v6 = [v5 composition];
  v9.receiver = self;
  v9.super_class = PIPosterLayoutPropertiesRequest;
  v7 = [(NURenderRequest *)&v9 initWithComposition:v6];

  if (v7)
  {
    objc_storeStrong(&v7->_segmentationItem, a3);
  }

  return v7;
}

@end