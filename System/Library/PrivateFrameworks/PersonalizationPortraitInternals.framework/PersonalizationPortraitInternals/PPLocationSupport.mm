@interface PPLocationSupport
+ (BOOL)fuzzyMatchingLocations:(id)locations and:(id)and;
+ (id)fullAddressOfLocation:(id)location;
+ (id)locationFromThoroughfare:(id)thoroughfare subThoroughfare:(id)subThoroughfare locality:(id)locality subLocality:(id)subLocality administrativeArea:(id)area postalCode:(id)code category:(unsigned __int16)category;
+ (id)mapTitleForLocation:(id)location;
+ (id)streetAddressOfLocation:(id)location;
@end

@implementation PPLocationSupport

+ (id)locationFromThoroughfare:(id)thoroughfare subThoroughfare:(id)subThoroughfare locality:(id)locality subLocality:(id)subLocality administrativeArea:(id)area postalCode:(id)code category:(unsigned __int16)category
{
  codeCopy = code;
  areaCopy = area;
  subLocalityCopy = subLocality;
  localityCopy = locality;
  subThoroughfareCopy = subThoroughfare;
  thoroughfareCopy = thoroughfare;
  v20 = objc_opt_new();
  [v20 setObject:thoroughfareCopy forKeyedSubscript:@"Thoroughfare"];

  [v20 setObject:subThoroughfareCopy forKeyedSubscript:@"SubThoroughfare"];
  [v20 setObject:localityCopy forKeyedSubscript:@"City"];

  [v20 setObject:subLocalityCopy forKeyedSubscript:@"SubLocality"];
  [v20 setObject:areaCopy forKeyedSubscript:@"State"];

  [v20 setObject:codeCopy forKeyedSubscript:@"ZIP"];
  v21 = [objc_alloc(MEMORY[0x277CBFC40]) initWithLocation:0 addressDictionary:v20 region:0 areasOfInterest:0];
  v22 = [objc_alloc(MEMORY[0x277D3A3D8]) initWithPlacemark:v21 category:category mostRelevantRecord:0];

  return v22;
}

+ (BOOL)fuzzyMatchingLocations:(id)locations and:(id)and
{
  locationsCopy = locations;
  andCopy = and;
  if (locationsCopy == andCopy)
  {
    v16 = 1;
    goto LABEL_42;
  }

  placemark = [locationsCopy placemark];
  name = [placemark name];
  if (!name)
  {

LABEL_8:
    placemark2 = [locationsCopy placemark];
    postalCode = [placemark2 postalCode];
    if (postalCode)
    {
      v19 = postalCode;
      placemark3 = [andCopy placemark];
      postalCode2 = [placemark3 postalCode];

      if (postalCode2)
      {
        placemark4 = [locationsCopy placemark];
        postalCode3 = [placemark4 postalCode];
        placemark5 = [andCopy placemark];
        postalCode4 = [placemark5 postalCode];
        v26 = [postalCode3 caseInsensitiveCompare:postalCode4];

        if (v26)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
    }

    placemark6 = [locationsCopy placemark];
    country = [placemark6 country];
    if (country)
    {
      v29 = country;
      placemark7 = [andCopy placemark];
      country2 = [placemark7 country];

      if (country2)
      {
        placemark8 = [locationsCopy placemark];
        country3 = [placemark8 country];
        placemark9 = [andCopy placemark];
        country4 = [placemark9 country];
        v36 = [country3 caseInsensitiveCompare:country4];

        if (v36)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
    }

    placemark10 = [locationsCopy placemark];
    locality = [placemark10 locality];
    if (locality)
    {
      v39 = locality;
      placemark11 = [andCopy placemark];
      locality2 = [placemark11 locality];

      if (locality2)
      {
        placemark12 = [locationsCopy placemark];
        locality3 = [placemark12 locality];
        placemark13 = [andCopy placemark];
        locality4 = [placemark13 locality];
        v46 = [locality3 caseInsensitiveCompare:locality4];

        if (v46)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
    }

    placemark14 = [locationsCopy placemark];
    subLocality = [placemark14 subLocality];
    if (subLocality)
    {
      v49 = subLocality;
      placemark15 = [andCopy placemark];
      subLocality2 = [placemark15 subLocality];

      if (subLocality2)
      {
        placemark16 = [locationsCopy placemark];
        subLocality3 = [placemark16 subLocality];
        placemark17 = [andCopy placemark];
        subLocality4 = [placemark17 subLocality];
        v56 = [subLocality3 caseInsensitiveCompare:subLocality4];

        if (v56)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
    }

    placemark18 = [locationsCopy placemark];
    thoroughfare = [placemark18 thoroughfare];
    if (thoroughfare)
    {
      v59 = thoroughfare;
      placemark19 = [andCopy placemark];
      thoroughfare2 = [placemark19 thoroughfare];

      if (thoroughfare2)
      {
        placemark20 = [locationsCopy placemark];
        thoroughfare3 = [placemark20 thoroughfare];
        placemark21 = [andCopy placemark];
        thoroughfare4 = [placemark21 thoroughfare];
        v66 = [thoroughfare3 caseInsensitiveCompare:thoroughfare4];

        if (v66)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
    }

    placemark22 = [locationsCopy placemark];
    subThoroughfare = [placemark22 subThoroughfare];
    if (subThoroughfare)
    {
      v69 = subThoroughfare;
      placemark23 = [andCopy placemark];
      subThoroughfare2 = [placemark23 subThoroughfare];

      if (subThoroughfare2)
      {
        placemark24 = [locationsCopy placemark];
        subThoroughfare3 = [placemark24 subThoroughfare];
        placemark25 = [andCopy placemark];
        subThoroughfare4 = [placemark25 subThoroughfare];
        v76 = [subThoroughfare3 caseInsensitiveCompare:subThoroughfare4];

        if (v76)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
    }

    placemark26 = [locationsCopy placemark];
    administrativeArea = [placemark26 administrativeArea];
    if (administrativeArea)
    {
      v79 = administrativeArea;
      placemark27 = [andCopy placemark];
      administrativeArea2 = [placemark27 administrativeArea];

      if (administrativeArea2)
      {
        placemark28 = [locationsCopy placemark];
        administrativeArea3 = [placemark28 administrativeArea];
        placemark29 = [andCopy placemark];
        administrativeArea4 = [placemark29 administrativeArea];
        v86 = [administrativeArea3 caseInsensitiveCompare:administrativeArea4];

        if (v86)
        {
LABEL_41:
          v16 = 0;
          goto LABEL_42;
        }
      }
    }

    else
    {
    }

    placemark31 = [PPLocationSupport fullAddressOfLocation:locationsCopy];
    v88 = [PPLocationSupport fullAddressOfLocation:andCopy];
    name3 = v88;
    v16 = 0;
    if (placemark31 && v88)
    {
      v16 = [placemark31 caseInsensitiveCompare:v88] == 0;
    }

    goto LABEL_5;
  }

  v9 = name;
  placemark30 = [andCopy placemark];
  name2 = [placemark30 name];

  if (!name2)
  {
    goto LABEL_8;
  }

  placemark31 = [locationsCopy placemark];
  name3 = [placemark31 name];
  placemark32 = [andCopy placemark];
  name4 = [placemark32 name];
  v16 = [name3 caseInsensitiveCompare:name4] == 0;

LABEL_5:
LABEL_42:

  return v16;
}

+ (id)mapTitleForLocation:(id)location
{
  locationCopy = location;
  placemark = [locationCopy placemark];
  name = [placemark name];

  if (name)
  {
    placemark2 = [locationCopy placemark];

    name2 = [placemark2 name];
    locationCopy = placemark2;
  }

  else
  {
    name2 = [self streetAddressOfLocation:locationCopy];
  }

  return name2;
}

+ (id)fullAddressOfLocation:(id)location
{
  locationCopy = location;
  v5 = [self streetAddressOfLocation:locationCopy];
  placemark = [locationCopy placemark];
  locality = [placemark locality];
  placemark2 = [locationCopy placemark];
  administrativeArea = [placemark2 administrativeArea];
  placemark3 = [locationCopy placemark];
  postalCode = [placemark3 postalCode];
  placemark4 = [locationCopy placemark];

  country = [placemark4 country];
  v14 = [PPNamedEntitySupport fullAddressForStreetAddress:v5 city:locality state:administrativeArea postalCode:postalCode country:country];

  return v14;
}

+ (id)streetAddressOfLocation:(id)location
{
  locationCopy = location;
  placemark = [locationCopy placemark];
  thoroughfare = [placemark thoroughfare];
  placemark2 = [locationCopy placemark];

  subThoroughfare = [placemark2 subThoroughfare];
  v8 = [PPNamedEntitySupport streetAddressFromThoroughfare:thoroughfare subThoroughfare:subThoroughfare];

  return v8;
}

@end