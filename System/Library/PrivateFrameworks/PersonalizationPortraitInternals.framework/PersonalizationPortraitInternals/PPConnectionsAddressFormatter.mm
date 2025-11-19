@interface PPConnectionsAddressFormatter
+ (BOOL)isValidAddressDictionary:(id)a3;
+ (id)addressComponentValueWithLocationField:(unsigned __int8)a3 forAddress:(id)a4 duetEvent:(id)a5;
+ (id)addressDictionaryFromAttributeSet:(id)a3;
+ (id)formattedCityAndStateWithCity:(id)a3 state:(id)a4;
+ (id)formattedStreetNameWithThoroughfare:(id)a3 subThoroughfare:(id)a4;
+ (id)postalAddressFromAttributeSet:(id)a3;
+ (id)postalAddressFromDuetEvent:(id)a3;
+ (id)singleLineFormattedAddressWithPostalAddress:(id)a3 shortStyle:(BOOL)a4;
@end

@implementation PPConnectionsAddressFormatter

+ (id)addressDictionaryFromAttributeSet:(id)a3
{
  v27[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [objc_opt_class() postalAddressFromAttributeSet:v3];
  v6 = [PPConnectionsAddressFormatter singleLineFormattedAddressWithPostalAddress:v5 shortStyle:0];

  if ([v6 length])
  {
    v27[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
    [v4 setObject:v7 forKeyedSubscript:@"FormattedAddressLines"];
  }

  v26 = v6;
  v8 = [v3 subThoroughfare];
  v9 = PPCollapseWhitespaceAndStrip();

  if ([v9 length])
  {
    [v4 setObject:v9 forKeyedSubscript:@"SubThoroughfare"];
  }

  v10 = [v3 thoroughfare];
  v11 = PPCollapseWhitespaceAndStrip();

  if ([v11 length])
  {
    [v4 setObject:v11 forKeyedSubscript:@"Thoroughfare"];
  }

  v12 = [v3 postalCode];
  v13 = PPCollapseWhitespaceAndStrip();

  if ([v13 length])
  {
    [v4 setObject:v13 forKeyedSubscript:@"ZIP"];
  }

  v14 = [v3 city];
  v15 = PPCollapseWhitespaceAndStrip();

  if ([v15 length])
  {
    [v4 setObject:v15 forKeyedSubscript:@"City"];
  }

  v16 = [v3 stateOrProvince];
  v17 = PPCollapseWhitespaceAndStrip();

  if ([v17 length])
  {
    [v4 setObject:v17 forKeyedSubscript:@"State"];
  }

  v18 = [v3 country];
  v19 = PPCollapseWhitespaceAndStrip();

  if ([v19 length])
  {
    [v4 setObject:v19 forKeyedSubscript:@"Country"];
  }

  v20 = [v3 namedLocation];
  v21 = PPCollapseWhitespaceAndStrip();

  if ([v21 length])
  {
    [v4 setObject:v21 forKeyedSubscript:@"Name"];
  }

  if ([v4 count])
  {
    v22 = v4;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;

  v24 = *MEMORY[0x277D85DE8];
  return v22;
}

+ (id)postalAddressFromAttributeSet:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = objc_opt_class();
  v6 = [v3 thoroughfare];
  v7 = [v3 subThoroughfare];
  v8 = [v5 formattedStreetNameWithThoroughfare:v6 subThoroughfare:v7];
  [v4 setStreet:v8];

  v9 = [v3 city];
  v10 = PPCollapseWhitespaceAndStrip();
  [v4 setCity:v10];

  v11 = [v3 postalCode];
  v12 = PPCollapseWhitespaceAndStrip();
  [v4 setPostalCode:v12];

  v13 = [v3 stateOrProvince];
  v14 = PPCollapseWhitespaceAndStrip();
  [v4 setState:v14];

  v15 = [v3 country];

  v16 = PPCollapseWhitespaceAndStrip();
  [v4 setCountry:v16];

  return v4;
}

+ (id)postalAddressFromDuetEvent:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v32 = [MEMORY[0x277CCA890] currentHandler];
    [v32 handleFailureInMethod:a2 object:a1 file:@"PPConnectionsAddressFormatter.m" lineNumber:156 description:@"_DKEvent is nil"];
  }

  v6 = objc_opt_class();
  v7 = [v5 metadata];
  v8 = [MEMORY[0x277CFE210] thoroughfare];
  v9 = [v7 objectForKeyedSubscript:v8];
  v10 = [v5 metadata];
  v11 = [MEMORY[0x277CFE210] subThoroughfare];
  v12 = [v10 objectForKeyedSubscript:v11];
  v13 = [v6 formattedStreetNameWithThoroughfare:v9 subThoroughfare:v12];

  v14 = objc_opt_new();
  [v14 setStreet:v13];
  v15 = [v5 metadata];
  v16 = [MEMORY[0x277CFE210] city];
  v17 = [v15 objectForKeyedSubscript:v16];
  v18 = PPCollapseWhitespaceAndStrip();
  [v14 setCity:v18];

  v19 = [v5 metadata];
  v20 = [MEMORY[0x277CFE210] postalCode];
  v21 = [v19 objectForKeyedSubscript:v20];
  v22 = PPCollapseWhitespaceAndStrip();
  [v14 setPostalCode:v22];

  v23 = [v5 metadata];
  v24 = [MEMORY[0x277CFE210] stateOrProvince];
  v25 = [v23 objectForKeyedSubscript:v24];
  v26 = PPCollapseWhitespaceAndStrip();
  [v14 setState:v26];

  v27 = [v5 metadata];
  v28 = [MEMORY[0x277CFE210] country];
  v29 = [v27 objectForKeyedSubscript:v28];
  v30 = PPCollapseWhitespaceAndStrip();
  [v14 setCountry:v30];

  return v14;
}

+ (id)singleLineFormattedAddressWithPostalAddress:(id)a3 shortStyle:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = v5;
  if (v4)
  {
    v6 = objc_opt_new();
    v7 = [v5 street];
    [v6 setStreet:v7];

    v8 = [v5 city];
    [v6 setCity:v8];
  }

  v9 = [MEMORY[0x277CBDB80] singleLineStringFromPostalAddress:v6 addCountryName:0];
  v10 = PPCollapseWhitespaceAndStrip();

  return v10;
}

+ (id)formattedCityAndStateWithCity:(id)a3 state:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 length] && objc_msgSend(v6, "length"))
  {
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@, %@", v5, v6];
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;
  v9 = PPCollapseWhitespaceAndStrip();

  return v9;
}

+ (id)formattedStreetNameWithThoroughfare:(id)a3 subThoroughfare:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 length] && objc_msgSend(v6, "length") && !objc_msgSend(v5, "hasPrefix:", v6))
  {
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ %@", v6, v5];
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;
  v9 = PPCollapseWhitespaceAndStrip();

  return v9;
}

+ (BOOL)isValidAddressDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"Thoroughfare"];
  if (!v5)
  {
    v3 = [v4 objectForKeyedSubscript:@"Street"];
    if (!v3)
    {
      v7 = 0;
LABEL_9:

      goto LABEL_10;
    }
  }

  v6 = [v4 objectForKeyedSubscript:@"ZIP"];
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = [v4 objectForKeyedSubscript:@"City"];
    v7 = v8 != 0;
  }

  if (!v5)
  {
    goto LABEL_9;
  }

LABEL_10:

  return v7;
}

+ (id)addressComponentValueWithLocationField:(unsigned __int8)a3 forAddress:(id)a4 duetEvent:(id)a5
{
  v6 = a3;
  v7 = a4;
  v8 = a5;
  v9 = v8;
  v10 = 0;
  if (v6 <= 5)
  {
    if (v6 <= 3)
    {
      if (v6 != 2)
      {
        if (v6 != 3)
        {
          goto LABEL_24;
        }

        v11 = [v7 street];
        goto LABEL_22;
      }

      v13 = [v8 metadata];
      v14 = [MEMORY[0x277CFE210] locationName];
      v15 = [v13 objectForKeyedSubscript:v14];
      v10 = PPCollapseWhitespaceAndStrip();
      goto LABEL_17;
    }

    if (v6 == 4)
    {
      [v7 city];
    }

    else
    {
      [v7 postalCode];
    }
    v11 = ;
LABEL_22:
    v13 = v11;
    v10 = PPCollapseWhitespaceAndStrip();
    goto LABEL_23;
  }

  if (v6 <= 8)
  {
    if (v6 != 6)
    {
      if (v6 != 7)
      {
        goto LABEL_24;
      }

      v12 = objc_opt_class();
      v13 = [v7 city];
      v14 = [v7 state];
      v10 = [v12 formattedCityAndStateWithCity:v13 state:v14];
      goto LABEL_18;
    }

    v11 = [v7 state];
    goto LABEL_22;
  }

  if (v6 == 9)
  {
    v11 = [v7 country];
    goto LABEL_22;
  }

  if (v6 != 10)
  {
    goto LABEL_24;
  }

  v13 = [v8 metadata];
  v14 = [MEMORY[0x277CFE210] phoneNumbers];
  v15 = [v13 objectForKeyedSubscript:v14];
  v16 = [v15 firstObject];
  v10 = PPCollapseWhitespaceAndStrip();

LABEL_17:
LABEL_18:

LABEL_23:
LABEL_24:

  return v10;
}

@end