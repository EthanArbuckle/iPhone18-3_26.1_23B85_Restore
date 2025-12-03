@interface CNVCardActivityAlertLineGenerator
- (id)lineWithValue:(id)value label:(id)label;
- (id)typeParameterForToneType:(id)type;
@end

@implementation CNVCardActivityAlertLineGenerator

- (id)lineWithValue:(id)value label:(id)label
{
  valueCopy = value;
  labelCopy = label;
  objc_opt_class();
  allValues = [valueCopy allValues];
  firstObject = [allValues firstObject];
  if (firstObject)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = firstObject;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if ([v11 count])
  {
    allKeys = [valueCopy allKeys];
    firstObject2 = [allKeys firstObject];
    v14 = [(CNVCardActivityAlertLineGenerator *)self typeParameterForToneType:firstObject2];

    v15 = [(CNVCardActivityAlertLineGenerator *)self serializeType:v14 elements:v11];
    v18.receiver = self;
    v18.super_class = CNVCardActivityAlertLineGenerator;
    v16 = [(CNVCardLineGenerator *)&v18 lineWithValue:v15 label:labelCopy];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)typeParameterForToneType:(id)type
{
  typeCopy = type;
  if ([typeCopy _cn_caseInsensitiveIsEqual:@"com.apple.activityalert.call"])
  {
    v4 = @"call";
  }

  else if ([typeCopy _cn_caseInsensitiveIsEqual:@"com.apple.activityalert.text"])
  {
    v4 = @"text";
  }

  else
  {
    v4 = typeCopy;
  }

  return v4;
}

@end