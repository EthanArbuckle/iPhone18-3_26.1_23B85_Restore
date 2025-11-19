@interface WBSSingleFieldTelemetryData
- (WBSSingleFieldTelemetryData)initWithFieldType:(int64_t)a3 fieldID:(id)a4 elementType:(unint64_t)a5;
@end

@implementation WBSSingleFieldTelemetryData

- (WBSSingleFieldTelemetryData)initWithFieldType:(int64_t)a3 fieldID:(id)a4 elementType:(unint64_t)a5
{
  v9 = a4;
  v14.receiver = self;
  v14.super_class = WBSSingleFieldTelemetryData;
  v10 = [(WBSSingleFieldTelemetryData *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_fieldType = a3;
    objc_storeStrong(&v10->_fieldID, a4);
    v11->_elementType = a5;
    v12 = v11;
  }

  return v11;
}

@end