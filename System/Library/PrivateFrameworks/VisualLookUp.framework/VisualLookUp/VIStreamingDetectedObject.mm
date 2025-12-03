@interface VIStreamingDetectedObject
- (CGRect)normalizedBoundingBox;
- (VIStreamingDetectedObject)initWithObjectUUID:(id)d normalizedBoundingBox:(CGRect)box domainKey:(id)key glyphName:(id)name displayLabel:(id)label;
@end

@implementation VIStreamingDetectedObject

- (VIStreamingDetectedObject)initWithObjectUUID:(id)d normalizedBoundingBox:(CGRect)box domainKey:(id)key glyphName:(id)name displayLabel:(id)label
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  dCopy = d;
  keyCopy = key;
  nameCopy = name;
  labelCopy = label;
  v29.receiver = self;
  v29.super_class = VIStreamingDetectedObject;
  v19 = [(VIStreamingDetectedObject *)&v29 init];
  if (v19)
  {
    v20 = [dCopy copy];
    objectUUID = v19->_objectUUID;
    v19->_objectUUID = v20;

    v19->_normalizedBoundingBox.origin.x = x;
    v19->_normalizedBoundingBox.origin.y = y;
    v19->_normalizedBoundingBox.size.width = width;
    v19->_normalizedBoundingBox.size.height = height;
    v22 = [keyCopy copy];
    domainKey = v19->_domainKey;
    v19->_domainKey = v22;

    v24 = [nameCopy copy];
    glyphName = v19->_glyphName;
    v19->_glyphName = v24;

    v26 = [labelCopy copy];
    displayLabel = v19->_displayLabel;
    v19->_displayLabel = v26;
  }

  return v19;
}

- (CGRect)normalizedBoundingBox
{
  x = self->_normalizedBoundingBox.origin.x;
  y = self->_normalizedBoundingBox.origin.y;
  width = self->_normalizedBoundingBox.size.width;
  height = self->_normalizedBoundingBox.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end