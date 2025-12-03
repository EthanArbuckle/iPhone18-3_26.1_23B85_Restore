@interface PPConnectionsAddressFormatter
+ (BOOL)isValidAddressDictionary:(id)dictionary;
+ (id)addressComponentValueWithLocationField:(unsigned __int8)field forAddress:(id)address duetEvent:(id)event;
+ (id)addressDictionaryFromAttributeSet:(id)set;
+ (id)formattedCityAndStateWithCity:(id)city state:(id)state;
+ (id)formattedStreetNameWithThoroughfare:(id)thoroughfare subThoroughfare:(id)subThoroughfare;
+ (id)postalAddressFromAttributeSet:(id)set;
+ (id)postalAddressFromDuetEvent:(id)event;
+ (id)singleLineFormattedAddressWithPostalAddress:(id)address shortStyle:(BOOL)style;
@end

@implementation PPConnectionsAddressFormatter

+ (id)addressDictionaryFromAttributeSet:(id)set
{
  v27[1] = *MEMORY[0x277D85DE8];
  setCopy = set;
  v4 = objc_opt_new();
  v5 = [objc_opt_class() postalAddressFromAttributeSet:setCopy];
  v6 = [PPConnectionsAddressFormatter singleLineFormattedAddressWithPostalAddress:v5 shortStyle:0];

  if ([v6 length])
  {
    v27[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
    [v4 setObject:v7 forKeyedSubscript:@"FormattedAddressLines"];
  }

  v26 = v6;
  subThoroughfare = [setCopy subThoroughfare];
  v9 = PPCollapseWhitespaceAndStrip();

  if ([v9 length])
  {
    [v4 setObject:v9 forKeyedSubscript:@"SubThoroughfare"];
  }

  thoroughfare = [setCopy thoroughfare];
  v11 = PPCollapseWhitespaceAndStrip();

  if ([v11 length])
  {
    [v4 setObject:v11 forKeyedSubscript:@"Thoroughfare"];
  }

  postalCode = [setCopy postalCode];
  v13 = PPCollapseWhitespaceAndStrip();

  if ([v13 length])
  {
    [v4 setObject:v13 forKeyedSubscript:@"ZIP"];
  }

  city = [setCopy city];
  v15 = PPCollapseWhitespaceAndStrip();

  if ([v15 length])
  {
    [v4 setObject:v15 forKeyedSubscript:@"City"];
  }

  stateOrProvince = [setCopy stateOrProvince];
  v17 = PPCollapseWhitespaceAndStrip();

  if ([v17 length])
  {
    [v4 setObject:v17 forKeyedSubscript:@"State"];
  }

  country = [setCopy country];
  v19 = PPCollapseWhitespaceAndStrip();

  if ([v19 length])
  {
    [v4 setObject:v19 forKeyedSubscript:@"Country"];
  }

  namedLocation = [setCopy namedLocation];
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

+ (id)postalAddressFromAttributeSet:(id)set
{
  setCopy = set;
  v4 = objc_opt_new();
  v5 = objc_opt_class();
  thoroughfare = [setCopy thoroughfare];
  subThoroughfare = [setCopy subThoroughfare];
  v8 = [v5 formattedStreetNameWithThoroughfare:thoroughfare subThoroughfare:subThoroughfare];
  [v4 setStreet:v8];

  city = [setCopy city];
  v10 = PPCollapseWhitespaceAndStrip();
  [v4 setCity:v10];

  postalCode = [setCopy postalCode];
  v12 = PPCollapseWhitespaceAndStrip();
  [v4 setPostalCode:v12];

  stateOrProvince = [setCopy stateOrProvince];
  v14 = PPCollapseWhitespaceAndStrip();
  [v4 setState:v14];

  country = [setCopy country];

  v16 = PPCollapseWhitespaceAndStrip();
  [v4 setCountry:v16];

  return v4;
}

+ (id)postalAddressFromDuetEvent:(id)event
{
  eventCopy = event;
  if (!eventCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPConnectionsAddressFormatter.m" lineNumber:156 description:@"_DKEvent is nil"];
  }

  v6 = objc_opt_class();
  metadata = [eventCopy metadata];
  thoroughfare = [MEMORY[0x277CFE210] thoroughfare];
  v9 = [metadata objectForKeyedSubscript:thoroughfare];
  metadata2 = [eventCopy metadata];
  subThoroughfare = [MEMORY[0x277CFE210] subThoroughfare];
  v12 = [metadata2 objectForKeyedSubscript:subThoroughfare];
  v13 = [v6 formattedStreetNameWithThoroughfare:v9 subThoroughfare:v12];

  v14 = objc_opt_new();
  [v14 setStreet:v13];
  metadata3 = [eventCopy metadata];
  city = [MEMORY[0x277CFE210] city];
  v17 = [metadata3 objectForKeyedSubscript:city];
  v18 = PPCollapseWhitespaceAndStrip();
  [v14 setCity:v18];

  metadata4 = [eventCopy metadata];
  postalCode = [MEMORY[0x277CFE210] postalCode];
  v21 = [metadata4 objectForKeyedSubscript:postalCode];
  v22 = PPCollapseWhitespaceAndStrip();
  [v14 setPostalCode:v22];

  metadata5 = [eventCopy metadata];
  stateOrProvince = [MEMORY[0x277CFE210] stateOrProvince];
  v25 = [metadata5 objectForKeyedSubscript:stateOrProvince];
  v26 = PPCollapseWhitespaceAndStrip();
  [v14 setState:v26];

  metadata6 = [eventCopy metadata];
  country = [MEMORY[0x277CFE210] country];
  v29 = [metadata6 objectForKeyedSubscript:country];
  v30 = PPCollapseWhitespaceAndStrip();
  [v14 setCountry:v30];

  return v14;
}

+ (id)singleLineFormattedAddressWithPostalAddress:(id)address shortStyle:(BOOL)style
{
  styleCopy = style;
  addressCopy = address;
  v6 = addressCopy;
  if (styleCopy)
  {
    v6 = objc_opt_new();
    street = [addressCopy street];
    [v6 setStreet:street];

    city = [addressCopy city];
    [v6 setCity:city];
  }

  v9 = [MEMORY[0x277CBDB80] singleLineStringFromPostalAddress:v6 addCountryName:0];
  v10 = PPCollapseWhitespaceAndStrip();

  return v10;
}

+ (id)formattedCityAndStateWithCity:(id)city state:(id)state
{
  cityCopy = city;
  stateCopy = state;
  if ([cityCopy length] && objc_msgSend(stateCopy, "length"))
  {
    stateCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@, %@", cityCopy, stateCopy];
  }

  else
  {
    stateCopy = cityCopy;
  }

  v8 = stateCopy;
  v9 = PPCollapseWhitespaceAndStrip();

  return v9;
}

+ (id)formattedStreetNameWithThoroughfare:(id)thoroughfare subThoroughfare:(id)subThoroughfare
{
  thoroughfareCopy = thoroughfare;
  subThoroughfareCopy = subThoroughfare;
  if ([thoroughfareCopy length] && objc_msgSend(subThoroughfareCopy, "length") && !objc_msgSend(thoroughfareCopy, "hasPrefix:", subThoroughfareCopy))
  {
    thoroughfareCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ %@", subThoroughfareCopy, thoroughfareCopy];
  }

  else
  {
    thoroughfareCopy = thoroughfareCopy;
  }

  v8 = thoroughfareCopy;
  v9 = PPCollapseWhitespaceAndStrip();

  return v9;
}

+ (BOOL)isValidAddressDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"Thoroughfare"];
  if (!v5)
  {
    v3 = [dictionaryCopy objectForKeyedSubscript:@"Street"];
    if (!v3)
    {
      v7 = 0;
LABEL_9:

      goto LABEL_10;
    }
  }

  v6 = [dictionaryCopy objectForKeyedSubscript:@"ZIP"];
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = [dictionaryCopy objectForKeyedSubscript:@"City"];
    v7 = v8 != 0;
  }

  if (!v5)
  {
    goto LABEL_9;
  }

LABEL_10:

  return v7;
}

+ (id)addressComponentValueWithLocationField:(unsigned __int8)field forAddress:(id)address duetEvent:(id)event
{
  fieldCopy = field;
  addressCopy = address;
  eventCopy = event;
  v9 = eventCopy;
  v10 = 0;
  if (fieldCopy <= 5)
  {
    if (fieldCopy <= 3)
    {
      if (fieldCopy != 2)
      {
        if (fieldCopy != 3)
        {
          goto LABEL_24;
        }

        street = [addressCopy street];
        goto LABEL_22;
      }

      metadata = [eventCopy metadata];
      locationName = [MEMORY[0x277CFE210] locationName];
      v15 = [metadata objectForKeyedSubscript:locationName];
      v10 = PPCollapseWhitespaceAndStrip();
      goto LABEL_17;
    }

    if (fieldCopy == 4)
    {
      [addressCopy city];
    }

    else
    {
      [addressCopy postalCode];
    }
    street = ;
LABEL_22:
    metadata = street;
    v10 = PPCollapseWhitespaceAndStrip();
    goto LABEL_23;
  }

  if (fieldCopy <= 8)
  {
    if (fieldCopy != 6)
    {
      if (fieldCopy != 7)
      {
        goto LABEL_24;
      }

      v12 = objc_opt_class();
      metadata = [addressCopy city];
      locationName = [addressCopy state];
      v10 = [v12 formattedCityAndStateWithCity:metadata state:locationName];
      goto LABEL_18;
    }

    street = [addressCopy state];
    goto LABEL_22;
  }

  if (fieldCopy == 9)
  {
    street = [addressCopy country];
    goto LABEL_22;
  }

  if (fieldCopy != 10)
  {
    goto LABEL_24;
  }

  metadata = [eventCopy metadata];
  locationName = [MEMORY[0x277CFE210] phoneNumbers];
  v15 = [metadata objectForKeyedSubscript:locationName];
  firstObject = [v15 firstObject];
  v10 = PPCollapseWhitespaceAndStrip();

LABEL_17:
LABEL_18:

LABEL_23:
LABEL_24:

  return v10;
}

@end