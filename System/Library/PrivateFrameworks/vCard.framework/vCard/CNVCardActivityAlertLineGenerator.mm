@interface CNVCardActivityAlertLineGenerator
- (id)lineWithValue:(id)a3 label:(id)a4;
- (id)typeParameterForToneType:(id)a3;
@end

@implementation CNVCardActivityAlertLineGenerator

- (id)lineWithValue:(id)a3 label:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  v8 = [v6 allValues];
  v9 = [v8 firstObject];
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
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
    v12 = [v6 allKeys];
    v13 = [v12 firstObject];
    v14 = [(CNVCardActivityAlertLineGenerator *)self typeParameterForToneType:v13];

    v15 = [(CNVCardActivityAlertLineGenerator *)self serializeType:v14 elements:v11];
    v18.receiver = self;
    v18.super_class = CNVCardActivityAlertLineGenerator;
    v16 = [(CNVCardLineGenerator *)&v18 lineWithValue:v15 label:v7];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)typeParameterForToneType:(id)a3
{
  v3 = a3;
  if ([v3 _cn_caseInsensitiveIsEqual:@"com.apple.activityalert.call"])
  {
    v4 = @"call";
  }

  else if ([v3 _cn_caseInsensitiveIsEqual:@"com.apple.activityalert.text"])
  {
    v4 = @"text";
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

@end