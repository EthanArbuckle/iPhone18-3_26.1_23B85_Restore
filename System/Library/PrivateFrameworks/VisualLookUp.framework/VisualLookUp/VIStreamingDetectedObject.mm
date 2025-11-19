@interface VIStreamingDetectedObject
- (CGRect)normalizedBoundingBox;
- (VIStreamingDetectedObject)initWithObjectUUID:(id)a3 normalizedBoundingBox:(CGRect)a4 domainKey:(id)a5 glyphName:(id)a6 displayLabel:(id)a7;
@end

@implementation VIStreamingDetectedObject

- (VIStreamingDetectedObject)initWithObjectUUID:(id)a3 normalizedBoundingBox:(CGRect)a4 domainKey:(id)a5 glyphName:(id)a6 displayLabel:(id)a7
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v29.receiver = self;
  v29.super_class = VIStreamingDetectedObject;
  v19 = [(VIStreamingDetectedObject *)&v29 init];
  if (v19)
  {
    v20 = [v15 copy];
    objectUUID = v19->_objectUUID;
    v19->_objectUUID = v20;

    v19->_normalizedBoundingBox.origin.x = x;
    v19->_normalizedBoundingBox.origin.y = y;
    v19->_normalizedBoundingBox.size.width = width;
    v19->_normalizedBoundingBox.size.height = height;
    v22 = [v16 copy];
    domainKey = v19->_domainKey;
    v19->_domainKey = v22;

    v24 = [v17 copy];
    glyphName = v19->_glyphName;
    v19->_glyphName = v24;

    v26 = [v18 copy];
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