@interface WBSSingleFieldTelemetryData
- (WBSSingleFieldTelemetryData)initWithFieldType:(int64_t)type fieldID:(id)d elementType:(unint64_t)elementType;
@end

@implementation WBSSingleFieldTelemetryData

- (WBSSingleFieldTelemetryData)initWithFieldType:(int64_t)type fieldID:(id)d elementType:(unint64_t)elementType
{
  dCopy = d;
  v14.receiver = self;
  v14.super_class = WBSSingleFieldTelemetryData;
  v10 = [(WBSSingleFieldTelemetryData *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_fieldType = type;
    objc_storeStrong(&v10->_fieldID, d);
    v11->_elementType = elementType;
    v12 = v11;
  }

  return v11;
}

@end