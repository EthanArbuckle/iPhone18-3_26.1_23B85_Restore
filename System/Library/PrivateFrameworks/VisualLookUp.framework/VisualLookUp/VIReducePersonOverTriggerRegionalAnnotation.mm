@interface VIReducePersonOverTriggerRegionalAnnotation
- (BOOL)isEqual:(id)equal;
- (CGRect)boundingBox;
- (VIReducePersonOverTriggerRegionalAnnotation)initWithLabel:(id)label boundingBox:(CGRect)box confidence:(float)confidence faceCount:(int)count;
@end

@implementation VIReducePersonOverTriggerRegionalAnnotation

- (VIReducePersonOverTriggerRegionalAnnotation)initWithLabel:(id)label boundingBox:(CGRect)box confidence:(float)confidence faceCount:(int)count
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  labelCopy = label;
  v18.receiver = self;
  v18.super_class = VIReducePersonOverTriggerRegionalAnnotation;
  v15 = [(VIReducePersonOverTriggerRegionalAnnotation *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_label, label);
    v16->_boundingBox.origin.x = x;
    v16->_boundingBox.origin.y = y;
    v16->_boundingBox.size.width = width;
    v16->_boundingBox.size.height = height;
    v16->_confidence = confidence;
    v16->_faceCount = count;
  }

  return v16;
}

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
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    [(VIReducePersonOverTriggerRegionalAnnotation *)v6 boundingBox];
    v18.origin.x = v7;
    v18.origin.y = v8;
    v18.size.width = v9;
    v18.size.height = v10;
    if (CGRectEqualToRect(self->_boundingBox, v18))
    {
      label = self->_label;
      label = [(VIReducePersonOverTriggerRegionalAnnotation *)v6 label];
      if (label == label && (confidence = self->_confidence, [(VIReducePersonOverTriggerRegionalAnnotation *)v6 confidence], confidence == v15))
      {
        faceCount = self->_faceCount;
        v13 = faceCount == [(VIReducePersonOverTriggerRegionalAnnotation *)v6 faceCount];
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