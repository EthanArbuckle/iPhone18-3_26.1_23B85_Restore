@interface PPNamedEntitySupport
+ (id)fullAddressForStreetAddress:(id)address city:(id)city state:(id)state postalCode:(id)code country:(id)country;
+ (id)streetAddressFromThoroughfare:(id)thoroughfare subThoroughfare:(id)subThoroughfare;
@end

@implementation PPNamedEntitySupport

+ (id)streetAddressFromThoroughfare:(id)thoroughfare subThoroughfare:(id)subThoroughfare
{
  thoroughfareCopy = thoroughfare;
  subThoroughfareCopy = subThoroughfare;
  if (thoroughfareCopy)
  {
    v7 = objc_opt_new();
    if (subThoroughfareCopy && ([thoroughfareCopy hasPrefix:subThoroughfareCopy] & 1) == 0)
    {
      [v7 appendString:subThoroughfareCopy];
      [v7 appendString:@" "];
    }

    [v7 appendString:thoroughfareCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)fullAddressForStreetAddress:(id)address city:(id)city state:(id)state postalCode:(id)code country:(id)country
{
  addressCopy = address;
  cityCopy = city;
  stateCopy = state;
  codeCopy = code;
  countryCopy = country;
  if (![addressCopy length] || !objc_msgSend(cityCopy, "length") && !objc_msgSend(codeCopy, "length"))
  {
    v28 = 0;
    goto LABEL_30;
  }

  v16 = objc_opt_new();
  v17 = v16;
  if (addressCopy)
  {
    [v16 setObject:addressCopy forKeyedSubscript:*MEMORY[0x277CBD980]];
  }

  if (cityCopy)
  {
    [v17 setObject:cityCopy forKeyedSubscript:*MEMORY[0x277CBD948]];
  }

  if (stateCopy)
  {
    [v17 setObject:stateCopy forKeyedSubscript:*MEMORY[0x277CBD978]];
  }

  if (codeCopy)
  {
    [v17 setObject:codeCopy forKeyedSubscript:*MEMORY[0x277CBD968]];
  }

  v32 = codeCopy;
  if (countryCopy)
  {
    [v17 setObject:countryCopy forKeyedSubscript:*MEMORY[0x277CBD950]];
  }

  v18 = stateCopy;
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v20 = objc_alloc(MEMORY[0x277D0EAA8]);
  languageCode = [currentLocale languageCode];
  currentLocaleLanguageCode = languageCode;
  if (!languageCode)
  {
    currentLocaleLanguageCode = [MEMORY[0x277D3A578] currentLocaleLanguageCode];
  }

  countryCode = [currentLocale countryCode];
  localeIdentifier = [currentLocale localeIdentifier];
  v25 = [v20 initWithContactAddressDictionary:v17 language:currentLocaleLanguageCode country:countryCode phoneticLocale:localeIdentifier];

  if (!languageCode)
  {
  }

  stateCopy = v18;
  if (!v25)
  {
    v27 = pp_entities_log_handle();
    countryCopy = v31;
    codeCopy = v32;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *v34 = 0;
      _os_log_error_impl(&dword_23224A000, v27, OS_LOG_TYPE_ERROR, "failed to construct GEOAddressObject", v34, 2u);
    }

    goto LABEL_28;
  }

  v26 = [v25 fullAddressNoCurrentCountryWithMultiline:0];
  v27 = v26;
  countryCopy = v31;
  codeCopy = v32;
  if (!v26 || ![v26 length])
  {
    v29 = pp_entities_log_handle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v29, OS_LOG_TYPE_DEFAULT, "GEOAddressObject returned a nil or empty address", buf, 2u);
    }

LABEL_28:
    v28 = 0;
    goto LABEL_29;
  }

  v27 = v27;
  v28 = v27;
LABEL_29:

LABEL_30:

  return v28;
}

@end