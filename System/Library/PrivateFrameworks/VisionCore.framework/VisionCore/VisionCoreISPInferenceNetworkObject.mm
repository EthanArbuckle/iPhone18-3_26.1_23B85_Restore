@interface VisionCoreISPInferenceNetworkObject
- (CGRect)boundingBox;
- (VisionCoreISPInferenceNetworkObject)initWithANSTObject:(id)object;
@end

@implementation VisionCoreISPInferenceNetworkObject

- (CGRect)boundingBox
{
  x = self->_boundingBox.origin.x;
  y = self->_boundingBox.origin.y;
  width = self->_boundingBox.size.width;
  height = self->_boundingBox.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (VisionCoreISPInferenceNetworkObject)initWithANSTObject:(id)object
{
  objectCopy = object;
  v11.receiver = self;
  v11.super_class = VisionCoreISPInferenceNetworkObject;
  v5 = [(VisionCoreISPInferenceNetworkObject *)&v11 init];
  if (v5)
  {
    [objectCopy boundingBox];
    v5->_boundingBox.origin.x = v6;
    v5->_boundingBox.origin.y = v7;
    v5->_boundingBox.size.width = v8;
    v5->_boundingBox.size.height = v9;
    v5->_groupID = [objectCopy groupID];
    v5->_confidence = [objectCopy confidence];
  }

  return v5;
}

@end