@interface CNVCardADRParser
+ (BOOL)parseNextStringWithParser:(id)a3 components:(id)a4 key:(id)a5;
+ (id)addressValueWithPrimaryAddress:(id)a3 extendedAddress:(id)a4 poBox:(id)a5;
+ (id)countryCodeForLine:(id)a3 validCountryCodes:(id)a4 parser:(id)a5;
+ (id)parseStreetAddressComponentsWithParser:(id)a3;
+ (id)valueWithParser:(id)a3;
+ (void)collectStreetAddressComponentsIntoSingleKeyInAddress:(id)a3;
+ (void)processExtensionValuesForLines:(id)a3 validCountryCodes:(id)a4 parser:(id)a5;
@end

@implementation CNVCardADRParser

+ (id)valueWithParser:(id)a3
{
  v4 = [a1 parseStreetAddressComponentsWithParser:a3];
  [a1 collectStreetAddressComponentsIntoSingleKeyInAddress:v4];

  return v4;
}

+ (id)parseStreetAddressComponentsWithParser:(id)a3
{
  v18[7] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v18[0] = @"postOfficeBox";
  v18[1] = @"extendedStreet";
  v18[2] = @"street";
  v18[3] = @"city";
  v18[4] = @"state";
  v18[5] = @"postalCode";
  v18[6] = @"country";
  [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:7];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v16 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v14 != v9)
      {
        objc_enumerationMutation(v6);
      }

      if (![a1 parseNextStringWithParser:v4 components:v5 key:{*(*(&v13 + 1) + 8 * v10), v13}])
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (BOOL)parseNextStringWithParser:(id)a3 components:(id)a4 key:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [v9 parseStringValue];
  if ((*(*MEMORY[0x277CFBD30] + 16))())
  {

    v10 = 0;
  }

  [v7 setObject:v10 forKeyedSubscript:v8];
  v11 = [v9 advancePastSemicolon];

  return v11;
}

+ (void)collectStreetAddressComponentsIntoSingleKeyInAddress:(id)a3
{
  v11[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKey:@"street"];
  v6 = [v4 objectForKey:@"extendedStreet"];
  v7 = [v4 objectForKey:@"postOfficeBox"];
  v8 = [a1 addressValueWithPrimaryAddress:v5 extendedAddress:v6 poBox:v7];
  v11[0] = @"street";
  v11[1] = @"extendedStreet";
  v11[2] = @"postOfficeBox";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:3];
  [v4 removeObjectsForKeys:v9];

  [v4 setObject:v8 forKey:@"street"];
  v10 = *MEMORY[0x277D85DE8];
}

+ (id)addressValueWithPrimaryAddress:(id)a3 extendedAddress:(id)a4 poBox:(id)a5
{
  v7 = MEMORY[0x277CBEB18];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v7 array];
  [v11 _cn_addNonNilObject:v8];

  [v11 _cn_addNonNilObject:v10];
  [v11 _cn_addNonNilObject:v9];

  v12 = [v11 componentsJoinedByString:@"\n"];

  return v12;
}

+ (void)processExtensionValuesForLines:(id)a3 validCountryCodes:(id)a4 parser:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v24 = a4;
  v8 = a5;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v7;
  v9 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v22 = *v26;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        v13 = [v12 grouping];
        v14 = [v8 firstValueForKey:@"X-APPLE-SUBLOCALITY" inExtensionGroup:v13];

        v15 = [v12 grouping];
        v16 = [v8 firstValueForKey:@"X-APPLE-SUBADMINISTRATIVEAREA" inExtensionGroup:v15];

        v17 = [a1 countryCodeForLine:v12 validCountryCodes:v24 parser:v8];
        v18 = [v12 value];
        v19 = [v18 mutableCopy];

        [v19 setObject:v14 forKeyedSubscript:@"subLocality"];
        [v19 setObject:v16 forKeyedSubscript:@"subAdministrativeArea"];
        [v19 setObject:v17 forKeyedSubscript:@"ISOCountryCode"];
        [v12 setValue:v19];
      }

      v10 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v10);
  }

  v20 = *MEMORY[0x277D85DE8];
}

+ (id)countryCodeForLine:(id)a3 validCountryCodes:(id)a4 parser:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [a3 grouping];
  v10 = [v8 firstValueForKey:@"X-ABADR" inExtensionGroup:v9];

  if ((*(*MEMORY[0x277CFBD30] + 16))())
  {
    v11 = 0;
  }

  else
  {
    if (v7)
    {
      v12 = [v10 lowercaseString];
      v13 = [v7 containsObject:v12];

      if ((v13 & 1) == 0)
      {

        v10 = 0;
      }
    }

    v11 = v10;
    v10 = v11;
  }

  return v11;
}

@end