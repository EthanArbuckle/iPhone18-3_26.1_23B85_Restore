@interface CNVCardADRParser
+ (BOOL)parseNextStringWithParser:(id)parser components:(id)components key:(id)key;
+ (id)addressValueWithPrimaryAddress:(id)address extendedAddress:(id)extendedAddress poBox:(id)box;
+ (id)countryCodeForLine:(id)line validCountryCodes:(id)codes parser:(id)parser;
+ (id)parseStreetAddressComponentsWithParser:(id)parser;
+ (id)valueWithParser:(id)parser;
+ (void)collectStreetAddressComponentsIntoSingleKeyInAddress:(id)address;
+ (void)processExtensionValuesForLines:(id)lines validCountryCodes:(id)codes parser:(id)parser;
@end

@implementation CNVCardADRParser

+ (id)valueWithParser:(id)parser
{
  v4 = [self parseStreetAddressComponentsWithParser:parser];
  [self collectStreetAddressComponentsIntoSingleKeyInAddress:v4];

  return v4;
}

+ (id)parseStreetAddressComponentsWithParser:(id)parser
{
  v18[7] = *MEMORY[0x277D85DE8];
  parserCopy = parser;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
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

      if (![self parseNextStringWithParser:parserCopy components:dictionary key:{*(*(&v13 + 1) + 8 * v10), v13}])
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

  return dictionary;
}

+ (BOOL)parseNextStringWithParser:(id)parser components:(id)components key:(id)key
{
  componentsCopy = components;
  keyCopy = key;
  parserCopy = parser;
  parseStringValue = [parserCopy parseStringValue];
  if ((*(*MEMORY[0x277CFBD30] + 16))())
  {

    parseStringValue = 0;
  }

  [componentsCopy setObject:parseStringValue forKeyedSubscript:keyCopy];
  advancePastSemicolon = [parserCopy advancePastSemicolon];

  return advancePastSemicolon;
}

+ (void)collectStreetAddressComponentsIntoSingleKeyInAddress:(id)address
{
  v11[3] = *MEMORY[0x277D85DE8];
  addressCopy = address;
  v5 = [addressCopy objectForKey:@"street"];
  v6 = [addressCopy objectForKey:@"extendedStreet"];
  v7 = [addressCopy objectForKey:@"postOfficeBox"];
  v8 = [self addressValueWithPrimaryAddress:v5 extendedAddress:v6 poBox:v7];
  v11[0] = @"street";
  v11[1] = @"extendedStreet";
  v11[2] = @"postOfficeBox";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:3];
  [addressCopy removeObjectsForKeys:v9];

  [addressCopy setObject:v8 forKey:@"street"];
  v10 = *MEMORY[0x277D85DE8];
}

+ (id)addressValueWithPrimaryAddress:(id)address extendedAddress:(id)extendedAddress poBox:(id)box
{
  v7 = MEMORY[0x277CBEB18];
  boxCopy = box;
  extendedAddressCopy = extendedAddress;
  addressCopy = address;
  array = [v7 array];
  [array _cn_addNonNilObject:boxCopy];

  [array _cn_addNonNilObject:addressCopy];
  [array _cn_addNonNilObject:extendedAddressCopy];

  v12 = [array componentsJoinedByString:@"\n"];

  return v12;
}

+ (void)processExtensionValuesForLines:(id)lines validCountryCodes:(id)codes parser:(id)parser
{
  v30 = *MEMORY[0x277D85DE8];
  linesCopy = lines;
  codesCopy = codes;
  parserCopy = parser;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = linesCopy;
  v9 = [linesCopy countByEnumeratingWithState:&v25 objects:v29 count:16];
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
        grouping = [v12 grouping];
        v14 = [parserCopy firstValueForKey:@"X-APPLE-SUBLOCALITY" inExtensionGroup:grouping];

        grouping2 = [v12 grouping];
        v16 = [parserCopy firstValueForKey:@"X-APPLE-SUBADMINISTRATIVEAREA" inExtensionGroup:grouping2];

        v17 = [self countryCodeForLine:v12 validCountryCodes:codesCopy parser:parserCopy];
        value = [v12 value];
        v19 = [value mutableCopy];

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

+ (id)countryCodeForLine:(id)line validCountryCodes:(id)codes parser:(id)parser
{
  codesCopy = codes;
  parserCopy = parser;
  grouping = [line grouping];
  v10 = [parserCopy firstValueForKey:@"X-ABADR" inExtensionGroup:grouping];

  if ((*(*MEMORY[0x277CFBD30] + 16))())
  {
    v11 = 0;
  }

  else
  {
    if (codesCopy)
    {
      lowercaseString = [v10 lowercaseString];
      v13 = [codesCopy containsObject:lowercaseString];

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