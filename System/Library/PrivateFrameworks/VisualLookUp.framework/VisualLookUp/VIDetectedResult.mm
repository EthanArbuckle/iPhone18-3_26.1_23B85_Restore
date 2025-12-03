@interface VIDetectedResult
- (CGRect)boundingBox;
- (VIDetectedResult)initWithOntologyNode:(id)node position:(int64_t)position boundingBox:(CGRect)box score:(float)score;
@end

@implementation VIDetectedResult

- (VIDetectedResult)initWithOntologyNode:(id)node position:(int64_t)position boundingBox:(CGRect)box score:(float)score
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  nodeCopy = node;
  v18.receiver = self;
  v18.super_class = VIDetectedResult;
  v15 = [(VIDetectedResult *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_ontologyNode, node);
    v16->_position = position;
    v16->_boundingBox.origin.x = x;
    v16->_boundingBox.origin.y = y;
    v16->_boundingBox.size.width = width;
    v16->_boundingBox.size.height = height;
    v16->_score = score;
  }

  return v16;
}

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

@end