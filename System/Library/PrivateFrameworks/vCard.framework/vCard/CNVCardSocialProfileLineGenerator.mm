@interface CNVCardSocialProfileLineGenerator
- (BOOL)isStandardServiceName:(id)name;
- (id)lineWithValue:(id)value label:(id)label;
@end

@implementation CNVCardSocialProfileLineGenerator

- (id)lineWithValue:(id)value label:(id)label
{
  valueCopy = value;
  labelCopy = label;
  v7 = [valueCopy valueForKey:@"service"];
  if ([v7 length])
  {
    v8 = [(CNVCardSocialProfileLineGenerator *)self isStandardServiceName:v7];
    v9 = v8;
    if (v8)
    {
      lowercaseString = [v7 lowercaseString];

      v7 = lowercaseString;
    }

    v7 = v7;
    v11 = v7;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = [valueCopy valueForKey:@"urlString"];
  if ([v12 length])
  {
    if (v9)
    {
      v26 = 0;
    }

    else
    {
      v26 = [valueCopy valueForKey:@"username"];
    }

    v17 = v12;
    v27 = v17;
  }

  else
  {
    v13 = [valueCopy valueForKey:@"username"];

    v27 = v13;
    if ([v13 length])
    {
      v14 = MEMORY[0x277CCACA8];
      uRLPathAllowedCharacterSet = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
      v16 = [v13 stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet];
      v17 = [v14 stringWithFormat:@"%@:%@", @"x-apple", v16];

      v26 = 0;
    }

    else
    {
      v26 = 0;
      v17 = 0;
    }
  }

  v18 = [valueCopy valueForKey:@"userIdentifier"];
  v19 = [valueCopy valueForKey:@"displayname"];
  v20 = [valueCopy objectForKeyedSubscript:@"bundleIdentifiers"];
  if ([v20 count])
  {
    v21 = [v20 componentsJoinedByString:{@", "}];
  }

  else
  {
    v21 = 0;
  }

  v22 = [valueCopy objectForKeyedSubscript:@"teamIdentifier"];
  v29.receiver = self;
  v29.super_class = CNVCardSocialProfileLineGenerator;
  [(CNVCardLineGenerator *)&v29 lineWithValue:v17 label:labelCopy];
  v23 = v25 = v17;

  [v23 addParameterWithName:@"type" value:v11];
  [v23 addParameterWithName:@"x-user" value:v26];
  [v23 addParameterWithName:@"x-userid" value:v18];
  [v23 addParameterWithName:@"x-displayname" value:v19];
  [v23 addParameterWithName:@"x-bundleidentifiers" value:v21];
  [v23 addParameterWithName:@"x-teamidentifier" value:v22];

  return v23;
}

- (BOOL)isStandardServiceName:(id)name
{
  v8[6] = *MEMORY[0x277D85DE8];
  v8[0] = @"Twitter";
  v8[1] = @"Facebook";
  v8[2] = @"LinkedIn";
  v8[3] = @"Flickr";
  v8[4] = @"MySpace";
  v8[5] = @"SinaWeibo";
  v3 = MEMORY[0x277CBEA60];
  nameCopy = name;
  v5 = [v3 arrayWithObjects:v8 count:6];
  LOBYTE(v3) = [v5 containsObject:nameCopy];

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

@end