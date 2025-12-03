@interface WFURLComponents
+ (id)componentsForLocation:(id)location;
+ (id)componentsForURL:(id)l;
+ (void)locationForURL:(id)l completion:(id)completion;
+ (void)locationForURLComponents:(id)components completion:(id)completion;
- (BOOL)_canBuildURLWithProvidedComponents;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToComponents:(id)components;
- (NSURL)URL;
- (WFURLComponents)init;
- (WFURLComponents)initWithCoder:(id)coder;
- (WFURLComponents)initWithLocation:(id)location;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFURLComponents

+ (void)locationForURLComponents:(id)components completion:(id)completion
{
  componentsCopy = components;
  completionCopy = completion;
  if (completionCopy)
  {
    if ([componentsCopy cityIndex] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = [WFGeocodeRequest alloc];
      location = [componentsCopy location];
      [location coordinate];
      v10 = v9;
      v12 = v11;
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __55__WFURLComponents_locationForURLComponents_completion___block_invoke;
      v18 = &unk_279E6F010;
      v20 = completionCopy;
      v19 = componentsCopy;
      v13 = [(WFGeocodeRequest *)v7 initWithCoordinate:&v15 resultHandler:v10, v12];

      [(WFTask *)v13 start:v15];
    }

    else
    {
      v14 = [MEMORY[0x277CCA9B8] wf_errorWithCode:5];
      (*(completionCopy + 2))(completionCopy, 0, v14);
    }
  }
}

void __55__WFURLComponents_locationForURLComponents_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  if (a3)
  {
    v5 = *(*(a1 + 40) + 16);
  }

  else
  {
    v6 = [*(a1 + 32) locationName];

    if (v6)
    {
      v7 = [*(a1 + 32) locationName];
      [v9 setDisplayName:v7];
    }

    v8 = [*(a1 + 32) location];
    [v9 setGeoLocation:v8];

    v5 = *(*(a1 + 40) + 16);
  }

  v5();
}

+ (void)locationForURL:(id)l completion:(id)completion
{
  completionCopy = completion;
  lCopy = l;
  v7 = objc_opt_class();
  v8 = [WFURLComponents componentsForURL:lCopy];

  [v7 locationForURLComponents:v8 completion:completionCopy];
}

+ (id)componentsForURL:(id)l
{
  lCopy = l;
  v4 = objc_opt_new();
  host = [lCopy host];
  v6 = [host isEqualToString:@"weather.apple.com"];

  if (v6)
  {
    v7 = 1;
LABEL_4:
    [v4 setDestination:v7];
    v11 = [MEMORY[0x277CCACE0] componentsWithURL:lCopy resolvingAgainstBaseURL:0];
    v23 = 0;
    v24 = &v23;
    v25 = 0x3010000000;
    v26 = &unk_272BEF6E2;
    v27 = *MEMORY[0x277CE4278];
    queryItems = [v11 queryItems];
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __36__WFURLComponents_componentsForURL___block_invoke;
    v20 = &unk_279E6F038;
    v22 = &v23;
    v13 = v4;
    v21 = v13;
    [queryItems enumerateObjectsUsingBlock:&v17];

    if (CLLocationCoordinate2DIsValid(v24[2]))
    {
      v14 = objc_alloc(MEMORY[0x277CE41F8]);
      v15 = [v14 initWithLatitude:v24[2].latitude longitude:{v24[2].longitude, v17, v18, v19, v20}];
      [v13 setLocation:v15];

      v10 = v13;
    }

    else
    {
      v10 = 0;
    }

    _Block_object_dispose(&v23, 8);
    goto LABEL_8;
  }

  host2 = [lCopy host];
  v9 = [host2 hasSuffix:@"weather.com"];

  v7 = 0;
  v10 = 0;
  if (v9)
  {
    goto LABEL_4;
  }

LABEL_8:

  return v10;
}

void __36__WFURLComponents_componentsForURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = [v3 name];
  v4 = [v3 value];

  if (([v9 isEqualToString:@"lat"] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"lat"))
  {
    [v4 doubleValue];
    *(*(*(a1 + 40) + 8) + 32) = v5;
  }

  else if (([v9 isEqualToString:@"long"] & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"lon") & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"lng"))
  {
    [v4 doubleValue];
    *(*(*(a1 + 40) + 8) + 40) = v6;
  }

  else if ([v9 isEqualToString:@"city"])
  {
    [*(a1 + 32) setLocationName:v4];
  }

  else if ([v9 isEqualToString:@"isShowingHourly"])
  {
    [*(a1 + 32) setShowHourlyWeatherOnly:{objc_msgSend(v4, "BOOLValue")}];
  }

  else if ([v9 isEqualToString:@"par"])
  {
    [*(a1 + 32) setPlatform:v4];
  }

  else if ([v9 isEqualToString:@"locale"])
  {
    v7 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v4];
    if (v7)
    {
      [*(a1 + 32) setLocale:v7];
    }

    else
    {
      v8 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
      [*(a1 + 32) setLocale:v8];
    }
  }

  else if ([v9 isEqualToString:@"isLocal"])
  {
    [*(a1 + 32) setIsLocalWeatherCity:{objc_msgSend(v4, "BOOLValue")}];
  }

  else if ([v9 isEqualToString:@"index"])
  {
    [*(a1 + 32) setCityIndex:{objc_msgSend(v4, "integerValue")}];
  }
}

+ (id)componentsForLocation:(id)location
{
  locationCopy = location;
  v4 = [objc_alloc(objc_opt_class()) initWithLocation:locationCopy];

  return v4;
}

- (WFURLComponents)init
{
  v7.receiver = self;
  v7.super_class = WFURLComponents;
  v2 = [(WFURLComponents *)&v7 init];
  if (v2)
  {
    autoupdatingCurrentLocale = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
    [(WFURLComponents *)v2 setLocale:autoupdatingCurrentLocale];

    processInfo = [MEMORY[0x277CCAC38] processInfo];
    processName = [processInfo processName];
    [(WFURLComponents *)v2 setPlatform:processName];

    [(WFURLComponents *)v2 setCityIndex:0x7FFFFFFFFFFFFFFFLL];
  }

  return v2;
}

- (WFURLComponents)initWithLocation:(id)location
{
  locationCopy = location;
  v5 = [(WFURLComponents *)self init];
  if (v5)
  {
    geoLocation = [locationCopy geoLocation];
    [(WFURLComponents *)v5 setLocation:geoLocation];

    displayName = [locationCopy displayName];
    [(WFURLComponents *)v5 setLocationName:displayName];
  }

  return v5;
}

- (WFURLComponents)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(WFURLComponents *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"location"];
    [(WFURLComponents *)v5 setLocation:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locationName"];
    [(WFURLComponents *)v5 setLocationName:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locale"];
    [(WFURLComponents *)v5 setLocale:v8];

    -[WFURLComponents setShowHourlyWeatherOnly:](v5, "setShowHourlyWeatherOnly:", [coderCopy decodeBoolForKey:@"showHourlyWeatherOnly"]);
    -[WFURLComponents setDestination:](v5, "setDestination:", [coderCopy decodeIntegerForKey:@"destination"]);
    -[WFURLComponents setIsLocalWeatherCity:](v5, "setIsLocalWeatherCity:", [coderCopy decodeBoolForKey:@"isLocalWeatherCity"]);
    -[WFURLComponents setCityIndex:](v5, "setCityIndex:", [coderCopy decodeIntegerForKey:@"cityIndex"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  location = [(WFURLComponents *)self location];
  [coderCopy encodeObject:location forKey:@"location"];

  locationName = [(WFURLComponents *)self locationName];
  [coderCopy encodeObject:locationName forKey:@"locationName"];

  locale = [(WFURLComponents *)self locale];
  [coderCopy encodeObject:locale forKey:@"locale"];

  [coderCopy encodeBool:-[WFURLComponents showHourlyWeatherOnly](self forKey:{"showHourlyWeatherOnly"), @"showHourlyWeatherOnly"}];
  [coderCopy encodeInteger:-[WFURLComponents destination](self forKey:{"destination"), @"destination"}];
  [coderCopy encodeBool:-[WFURLComponents isLocalWeatherCity](self forKey:{"isLocalWeatherCity"), @"isLocalWeatherCity"}];
  [coderCopy encodeInteger:-[WFURLComponents cityIndex](self forKey:{"cityIndex"), @"cityIndex"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v4 = objc_opt_new();
  location = [(WFURLComponents *)self location];
  [v4 setLocation:location];

  locationName = [(WFURLComponents *)self locationName];
  [v4 setLocationName:locationName];

  locale = [(WFURLComponents *)self locale];
  [v4 setLocale:locale];

  [v4 setShowHourlyWeatherOnly:{-[WFURLComponents showHourlyWeatherOnly](self, "showHourlyWeatherOnly")}];
  [v4 setDestination:{-[WFURLComponents destination](self, "destination")}];
  [v4 setIsLocalWeatherCity:{-[WFURLComponents isLocalWeatherCity](self, "isLocalWeatherCity")}];
  [v4 setCityIndex:{-[WFURLComponents cityIndex](self, "cityIndex")}];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(WFURLComponents *)self isEqualToComponents:equalCopy];

  return v5;
}

- (BOOL)isEqualToComponents:(id)components
{
  componentsCopy = components;
  if (componentsCopy == self || (v11.receiver = self, v11.super_class = WFURLComponents, [(WFURLComponents *)&v11 isEqual:componentsCopy]))
  {
    v5 = 1;
  }

  else
  {
    v6 = [(WFURLComponents *)self URL];
    absoluteString = [v6 absoluteString];
    v8 = [(WFURLComponents *)componentsCopy URL];
    absoluteString2 = [v8 absoluteString];
    v5 = [absoluteString isEqualToString:absoluteString2];
  }

  return v5;
}

- (unint64_t)hash
{
  v2 = [(WFURLComponents *)self URL];
  v3 = [v2 hash];

  return v3;
}

- (NSURL)URL
{
  if (![(WFURLComponents *)self _canBuildURLWithProvidedComponents])
  {
    v30 = 0;
    goto LABEL_19;
  }

  destination = [(WFURLComponents *)self destination];
  if (!destination)
  {
    v4 = [MEMORY[0x277CCACE0] componentsWithString:@"https://www.weather.com/wx/today/"];
    v5 = objc_opt_new();
    location = [(WFURLComponents *)self location];
    location2 = location;
    if (location)
    {
      v32 = MEMORY[0x277CCAD18];
      v33 = MEMORY[0x277CCACA8];
      [location coordinate];
      v35 = [v33 stringWithFormat:@"%.2f", v34];
      v36 = [v32 queryItemWithName:@"lat" value:v35];
      [v5 addObject:v36];

      v37 = MEMORY[0x277CCAD18];
      v38 = MEMORY[0x277CCACA8];
      [location2 coordinate];
      v40 = [v38 stringWithFormat:@"%.2f", v39];
      v41 = [v37 queryItemWithName:@"lon" value:v40];
      [v5 addObject:v41];
    }

    locale = [(WFURLComponents *)self locale];
    v42 = [locale objectForKey:*MEMORY[0x277CBE690]];
    uppercaseString = [v42 uppercaseString];

    v43 = [locale objectForKey:*MEMORY[0x277CBE6C8]];
    lowercaseString = [v43 lowercaseString];

    v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", lowercaseString, uppercaseString];
    v46 = [MEMORY[0x277CCAD18] queryItemWithName:@"locale" value:v45];
    [v5 addObject:v46];

    v47 = MEMORY[0x277CCAD18];
    platform = [(WFURLComponents *)self platform];
    v49 = [v47 queryItemWithName:@"par" value:platform];
    [v5 addObject:v49];

    goto LABEL_15;
  }

  if (destination == 1)
  {
    v4 = objc_opt_new();
    [v4 setScheme:@"https"];
    [v4 setHost:@"weather.apple.com"];
    [v4 setPath:@"/"];
    v5 = objc_opt_new();
    if ([(WFURLComponents *)self cityIndex]== 0x7FFFFFFFFFFFFFFFLL)
    {
      location2 = [(WFURLComponents *)self location];
      v7 = MEMORY[0x277CCAD18];
      v8 = MEMORY[0x277CCABB0];
      [location2 coordinate];
      v9 = [v8 numberWithDouble:?];
      stringValue = [v9 stringValue];
      v11 = [v7 queryItemWithName:@"lat" value:stringValue];
      [v5 addObject:v11];

      v12 = MEMORY[0x277CCAD18];
      v13 = MEMORY[0x277CCABB0];
      [location2 coordinate];
      v15 = [v13 numberWithDouble:v14];
      stringValue2 = [v15 stringValue];
      v17 = [v12 queryItemWithName:@"long" value:stringValue2];
      [v5 addObject:v17];

      locationName = [(WFURLComponents *)self locationName];

      if (locationName)
      {
        v19 = MEMORY[0x277CCAD18];
        locationName2 = [(WFURLComponents *)self locationName];
        v21 = [v19 queryItemWithName:@"city" value:locationName2];
        [v5 addObject:v21];
      }

      v22 = MEMORY[0x277CCAD18];
      v23 = [MEMORY[0x277CCABB0] numberWithInt:{-[WFURLComponents showHourlyWeatherOnly](self, "showHourlyWeatherOnly")}];
      stringValue3 = [v23 stringValue];
      v25 = [v22 queryItemWithName:@"isShowingHourly" value:stringValue3];
      [v5 addObject:v25];

      if (![(WFURLComponents *)self isLocalWeatherCity])
      {
        goto LABEL_16;
      }

      v26 = MEMORY[0x277CCAD18];
      locale = [MEMORY[0x277CCABB0] numberWithInt:{-[WFURLComponents isLocalWeatherCity](self, "isLocalWeatherCity")}];
      uppercaseString = [locale stringValue];
      v29 = [v26 queryItemWithName:@"isLocal" value:uppercaseString];
      [v5 addObject:v29];
    }

    else
    {
      v50 = MEMORY[0x277CCAD18];
      location2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[WFURLComponents cityIndex](self, "cityIndex")}];
      locale = [location2 stringValue];
      uppercaseString = [v50 queryItemWithName:@"index" value:locale];
      [v5 addObject:uppercaseString];
    }

LABEL_15:

LABEL_16:
    if (v5)
    {
      [v4 setQueryItems:v5];
    }

    goto LABEL_18;
  }

  v4 = 0;
  v5 = 0;
LABEL_18:
  v30 = [v4 URL];

LABEL_19:

  return v30;
}

- (BOOL)_canBuildURLWithProvidedComponents
{
  destination = [(WFURLComponents *)self destination];
  if (!destination)
  {
    return 1;
  }

  if (destination != 1)
  {
    return 0;
  }

  location = [(WFURLComponents *)self location];
  if (location)
  {
    v5 = 1;
  }

  else
  {
    v5 = [(WFURLComponents *)self cityIndex]!= 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

@end