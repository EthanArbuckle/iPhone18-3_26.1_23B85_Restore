@interface PIPosterLayoutPropertiesRequest
- (PIPosterLayoutPropertiesRequest)initWithSegmentationItem:(id)item;
- (id)copyWithZone:(_NSZone *)zone;
- (id)newRenderJob;
@end

@implementation PIPosterLayoutPropertiesRequest

- (id)newRenderJob
{
  v3 = [_PIPosterLayoutPropertiesJob alloc];

  return [(_PIPosterLayoutPropertiesJob *)v3 initWithLayoutPropertiesRequest:self];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = PIPosterLayoutPropertiesRequest;
  v4 = [(NURenderRequest *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 21, self->_segmentationItem);
  objc_storeStrong(v4 + 22, self->_layout);
  *(v4 + 160) = self->_calculateAdaptiveFrame;
  return v4;
}

- (PIPosterLayoutPropertiesRequest)initWithSegmentationItem:(id)item
{
  itemCopy = item;
  composition = [itemCopy composition];
  v9.receiver = self;
  v9.super_class = PIPosterLayoutPropertiesRequest;
  v7 = [(NURenderRequest *)&v9 initWithComposition:composition];

  if (v7)
  {
    objc_storeStrong(&v7->_segmentationItem, item);
  }

  return v7;
}

@end