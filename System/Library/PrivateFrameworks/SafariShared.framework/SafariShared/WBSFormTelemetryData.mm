@interface WBSFormTelemetryData
- (WBSFormTelemetryData)initWithFormType:(unint64_t)type formID:(int64_t)d;
@end

@implementation WBSFormTelemetryData

- (WBSFormTelemetryData)initWithFormType:(unint64_t)type formID:(int64_t)d
{
  v11.receiver = self;
  v11.super_class = WBSFormTelemetryData;
  v6 = [(WBSFormTelemetryData *)&v11 init];
  v7 = v6;
  if (v6)
  {
    typeCopy = 3;
    if (type < 6)
    {
      typeCopy = type;
    }

    v6->_formID = d;
    v6->_formType = typeCopy;
    v9 = v6;
  }

  return v7;
}

@end