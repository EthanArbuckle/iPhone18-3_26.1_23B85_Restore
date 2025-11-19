@interface CNVCardLegacyInstantMessagingLineGenerator
- (id)makeLineWithName:(id)a3 value:(id)a4;
@end

@implementation CNVCardLegacyInstantMessagingLineGenerator

- (id)makeLineWithName:(id)a3 value:(id)a4
{
  v6 = a4;
  v7 = a3;
  objc_opt_class();
  v8 = v6;
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
  v12 = [(CNVCardLineGenerator *)&v14 makeLineWithName:v7 value:v11];

  return v12;
}

@end