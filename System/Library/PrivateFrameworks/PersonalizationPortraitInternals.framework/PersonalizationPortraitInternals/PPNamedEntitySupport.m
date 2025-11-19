@interface PPNamedEntitySupport
+ (id)fullAddressForStreetAddress:(id)a3 city:(id)a4 state:(id)a5 postalCode:(id)a6 country:(id)a7;
+ (id)streetAddressFromThoroughfare:(id)a3 subThoroughfare:(id)a4;
@end

@implementation PPNamedEntitySupport

+ (id)streetAddressFromThoroughfare:(id)a3 subThoroughfare:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = objc_opt_new();
    if (v6 && ([v5 hasPrefix:v6] & 1) == 0)
    {
      [v7 appendString:v6];
      [v7 appendString:@" "];
    }

    [v7 appendString:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)fullAddressForStreetAddress:(id)a3 city:(id)a4 state:(id)a5 postalCode:(id)a6 country:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (![v11 length] || !objc_msgSend(v12, "length") && !objc_msgSend(v14, "length"))
  {
    v28 = 0;
    goto LABEL_30;
  }

  v16 = objc_opt_new();
  v17 = v16;
  if (v11)
  {
    [v16 setObject:v11 forKeyedSubscript:*MEMORY[0x277CBD980]];
  }

  if (v12)
  {
    [v17 setObject:v12 forKeyedSubscript:*MEMORY[0x277CBD948]];
  }

  if (v13)
  {
    [v17 setObject:v13 forKeyedSubscript:*MEMORY[0x277CBD978]];
  }

  if (v14)
  {
    [v17 setObject:v14 forKeyedSubscript:*MEMORY[0x277CBD968]];
  }

  v32 = v14;
  if (v15)
  {
    [v17 setObject:v15 forKeyedSubscript:*MEMORY[0x277CBD950]];
  }

  v18 = v13;
  v19 = [MEMORY[0x277CBEAF8] currentLocale];
  v20 = objc_alloc(MEMORY[0x277D0EAA8]);
  v21 = [v19 languageCode];
  v22 = v21;
  if (!v21)
  {
    v22 = [MEMORY[0x277D3A578] currentLocaleLanguageCode];
  }

  v23 = [v19 countryCode];
  v24 = [v19 localeIdentifier];
  v25 = [v20 initWithContactAddressDictionary:v17 language:v22 country:v23 phoneticLocale:v24];

  if (!v21)
  {
  }

  v13 = v18;
  if (!v25)
  {
    v27 = pp_entities_log_handle();
    v15 = v31;
    v14 = v32;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *v34 = 0;
      _os_log_error_impl(&dword_23224A000, v27, OS_LOG_TYPE_ERROR, "failed to construct GEOAddressObject", v34, 2u);
    }

    goto LABEL_28;
  }

  v26 = [v25 fullAddressNoCurrentCountryWithMultiline:0];
  v27 = v26;
  v15 = v31;
  v14 = v32;
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