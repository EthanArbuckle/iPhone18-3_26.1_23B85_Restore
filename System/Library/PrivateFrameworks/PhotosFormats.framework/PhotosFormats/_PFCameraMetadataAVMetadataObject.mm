@interface _PFCameraMetadataAVMetadataObject
+ (id)objectWithFigEmbeddedCaptureDeviceObjectDictionary:(id)dictionary type:(id)type;
- (CGRect)bounds;
- (_PFCameraMetadataAVMetadataObject)initWithType:(id)type bounds:(CGRect)bounds confidence:(int)confidence;
@end

@implementation _PFCameraMetadataAVMetadataObject

- (CGRect)bounds
{
  objc_copyStruct(v6, &self->_bounds, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (_PFCameraMetadataAVMetadataObject)initWithType:(id)type bounds:(CGRect)bounds confidence:(int)confidence
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  typeCopy = type;
  v16.receiver = self;
  v16.super_class = _PFCameraMetadataAVMetadataObject;
  v13 = [(_PFCameraMetadataAVMetadataObject *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_bounds.origin.x = x;
    v13->_bounds.origin.y = y;
    v13->_bounds.size.width = width;
    v13->_bounds.size.height = height;
    objc_storeStrong(&v13->_type, type);
    v14->_confidence = confidence;
  }

  return v14;
}

+ (id)objectWithFigEmbeddedCaptureDeviceObjectDictionary:(id)dictionary type:(id)type
{
  v5 = *(MEMORY[0x1E695F058] + 16);
  v15.origin = *MEMORY[0x1E695F058];
  v15.size = v5;
  v6 = *MEMORY[0x1E69910D8];
  typeCopy = type;
  dictionaryCopy = dictionary;
  v9 = [dictionaryCopy objectForKeyedSubscript:v6];
  CGRectMakeWithDictionaryRepresentation(v9, &v15);

  v10 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E6990FA0]];

  intValue = [v10 intValue];
  v12 = [_PFCameraMetadataAVMetadataObject alloc];
  v13 = [(_PFCameraMetadataAVMetadataObject *)v12 initWithType:typeCopy bounds:intValue confidence:*&v15.origin, *&v15.size];

  return v13;
}

@end