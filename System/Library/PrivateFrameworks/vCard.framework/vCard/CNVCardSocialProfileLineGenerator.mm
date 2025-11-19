@interface CNVCardSocialProfileLineGenerator
- (BOOL)isStandardServiceName:(id)a3;
- (id)lineWithValue:(id)a3 label:(id)a4;
@end

@implementation CNVCardSocialProfileLineGenerator

- (id)lineWithValue:(id)a3 label:(id)a4
{
  v6 = a3;
  v28 = a4;
  v7 = [v6 valueForKey:@"service"];
  if ([v7 length])
  {
    v8 = [(CNVCardSocialProfileLineGenerator *)self isStandardServiceName:v7];
    v9 = v8;
    if (v8)
    {
      v10 = [v7 lowercaseString];

      v7 = v10;
    }

    v7 = v7;
    v11 = v7;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = [v6 valueForKey:@"urlString"];
  if ([v12 length])
  {
    if (v9)
    {
      v26 = 0;
    }

    else
    {
      v26 = [v6 valueForKey:@"username"];
    }

    v17 = v12;
    v27 = v17;
  }

  else
  {
    v13 = [v6 valueForKey:@"username"];

    v27 = v13;
    if ([v13 length])
    {
      v14 = MEMORY[0x277CCACA8];
      v15 = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
      v16 = [v13 stringByAddingPercentEncodingWithAllowedCharacters:v15];
      v17 = [v14 stringWithFormat:@"%@:%@", @"x-apple", v16];

      v26 = 0;
    }

    else
    {
      v26 = 0;
      v17 = 0;
    }
  }

  v18 = [v6 valueForKey:@"userIdentifier"];
  v19 = [v6 valueForKey:@"displayname"];
  v20 = [v6 objectForKeyedSubscript:@"bundleIdentifiers"];
  if ([v20 count])
  {
    v21 = [v20 componentsJoinedByString:{@", "}];
  }

  else
  {
    v21 = 0;
  }

  v22 = [v6 objectForKeyedSubscript:@"teamIdentifier"];
  v29.receiver = self;
  v29.super_class = CNVCardSocialProfileLineGenerator;
  [(CNVCardLineGenerator *)&v29 lineWithValue:v17 label:v28];
  v23 = v25 = v17;

  [v23 addParameterWithName:@"type" value:v11];
  [v23 addParameterWithName:@"x-user" value:v26];
  [v23 addParameterWithName:@"x-userid" value:v18];
  [v23 addParameterWithName:@"x-displayname" value:v19];
  [v23 addParameterWithName:@"x-bundleidentifiers" value:v21];
  [v23 addParameterWithName:@"x-teamidentifier" value:v22];

  return v23;
}

- (BOOL)isStandardServiceName:(id)a3
{
  v8[6] = *MEMORY[0x277D85DE8];
  v8[0] = @"Twitter";
  v8[1] = @"Facebook";
  v8[2] = @"LinkedIn";
  v8[3] = @"Flickr";
  v8[4] = @"MySpace";
  v8[5] = @"SinaWeibo";
  v3 = MEMORY[0x277CBEA60];
  v4 = a3;
  v5 = [v3 arrayWithObjects:v8 count:6];
  LOBYTE(v3) = [v5 containsObject:v4];

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

@end