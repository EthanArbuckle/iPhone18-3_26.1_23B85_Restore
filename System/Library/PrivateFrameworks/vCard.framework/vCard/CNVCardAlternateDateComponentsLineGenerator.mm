@interface CNVCardAlternateDateComponentsLineGenerator
- (id)makeLineWithName:(id)name value:(id)value;
@end

@implementation CNVCardAlternateDateComponentsLineGenerator

- (id)makeLineWithName:(id)name value:(id)value
{
  valueCopy = value;
  nameCopy = name;
  objc_opt_class();
  v8 = valueCopy;
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = objc_alloc_init(CNVCardDateComponentsFormatter);
  v12 = [(CNVCardDateComponentsFormatter *)v11 altBDAYStringFromDateComponents:v10];
  v17.receiver = self;
  v17.super_class = CNVCardAlternateDateComponentsLineGenerator;
  v13 = [(CNVCardLineGenerator *)&v17 makeLineWithName:nameCopy value:v12];

  calendar = [v10 calendar];
  calendarIdentifier = [calendar calendarIdentifier];
  [v13 addParameterWithName:@"CALSCALE" value:calendarIdentifier];

  return v13;
}

@end