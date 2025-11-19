@interface WBSFormTelemetryData
- (WBSFormTelemetryData)initWithFormType:(unint64_t)a3 formID:(int64_t)a4;
@end

@implementation WBSFormTelemetryData

- (WBSFormTelemetryData)initWithFormType:(unint64_t)a3 formID:(int64_t)a4
{
  v11.receiver = self;
  v11.super_class = WBSFormTelemetryData;
  v6 = [(WBSFormTelemetryData *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v8 = 3;
    if (a3 < 6)
    {
      v8 = a3;
    }

    v6->_formID = a4;
    v6->_formType = v8;
    v9 = v6;
  }

  return v7;
}

@end