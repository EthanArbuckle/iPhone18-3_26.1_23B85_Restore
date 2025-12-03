@interface CNVCardLegacyInstantMessagingLineGenerator
- (id)makeLineWithName:(id)name value:(id)value;
@end

@implementation CNVCardLegacyInstantMessagingLineGenerator

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

  v11 = [v10 objectForKey:@"username"];
  v14.receiver = self;
  v14.super_class = CNVCardLegacyInstantMessagingLineGenerator;
  v12 = [(CNVCardLineGenerator *)&v14 makeLineWithName:nameCopy value:v11];

  return v12;
}

@end