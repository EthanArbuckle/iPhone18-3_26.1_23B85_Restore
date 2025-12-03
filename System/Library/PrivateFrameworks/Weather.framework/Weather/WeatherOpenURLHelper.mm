@interface WeatherOpenURLHelper
+ (BOOL)handleOpenURL:(id)l withContainerViewController:(id)controller completion:(id)completion;
+ (id)URLForCity:(id)city;
+ (id)URLForWeatherCityComponents:(id)components;
+ (id)cityFromURL:(id)l withContainerViewController:(id)controller;
+ (id)cityFromURLComponents:(id)components listedCities:(id)cities;
+ (id)transientCityFromURLComponents:(id)components;
+ (void)displayCity:(id)city usingController:(id)controller completion:(id)completion;
+ (void)presentAddTransientCityDialog:(id)dialog usingController:(id)controller;
@end

@implementation WeatherOpenURLHelper

+ (id)URLForCity:(id)city
{
  urlComponents = [city urlComponents];
  v5 = [self URLForWeatherCityComponents:urlComponents];

  return v5;
}

+ (id)URLForWeatherCityComponents:(id)components
{
  componentsCopy = components;
  v4 = [componentsCopy objectForKeyedSubscript:@"lat"];
  if (v4)
  {
    v5 = [componentsCopy objectForKeyedSubscript:@"long"];
    if (v5)
    {
      v6 = 1;
    }

    else
    {
      v7 = [componentsCopy objectForKeyedSubscript:@"lng"];
      v6 = v7 != 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v8 = [componentsCopy objectForKeyedSubscript:@"index"];

  v9 = [componentsCopy objectForKeyedSubscript:@"isLocal"];
  bOOLValue = [v9 BOOLValue];

  if (v6 || v8 || bOOLValue)
  {
    array = [MEMORY[0x277CBEB18] array];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __52__WeatherOpenURLHelper_URLForWeatherCityComponents___block_invoke;
    v16[3] = &unk_279E68F68;
    v17 = array;
    v13 = array;
    [componentsCopy enumerateKeysAndObjectsUsingBlock:v16];
    v14 = objc_alloc_init(MEMORY[0x277CCACE0]);
    [v14 setScheme:@"weather"];
    [v14 setQueryItems:v13];
    v11 = [v14 URL];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __52__WeatherOpenURLHelper_URLForWeatherCityComponents___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 stringValue];

    v5 = v6;
  }

  v7 = *(a1 + 32);
  v8 = [MEMORY[0x277CCAD18] queryItemWithName:v9 value:v5];
  [v7 addObject:v8];
}

+ (id)cityFromURL:(id)l withContainerViewController:(id)controller
{
  v28 = *MEMORY[0x277D85DE8];
  lCopy = l;
  controllerCopy = controller;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v8 = [MEMORY[0x277CCACE0] componentsWithURL:lCopy resolvingAgainstBaseURL:0];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  queryItems = [v8 queryItems];
  v10 = [queryItems countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(queryItems);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        value = [v14 value];
        name = [v14 name];
        [dictionary setObject:value forKeyedSubscript:name];
      }

      v11 = [queryItems countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  v17 = [dictionary objectForKey:@"index"];
  cities = [controllerCopy cities];
  if (v17)
  {
    [cities objectAtIndex:{objc_msgSend(v17, "integerValue")}];
  }

  else
  {
    [self cityFromURLComponents:dictionary listedCities:cities];
  }
  v19 = ;

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (BOOL)handleOpenURL:(id)l withContainerViewController:(id)controller completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  v10 = [self cityFromURL:l withContainerViewController:controllerCopy];
  if (v10)
  {
    [self displayCity:v10 usingController:controllerCopy completion:completionCopy];
  }

  return v10 != 0;
}

+ (void)displayCity:(id)city usingController:(id)controller completion:(id)completion
{
  cityCopy = city;
  controllerCopy = controller;
  completionCopy = completion;
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __63__WeatherOpenURLHelper_displayCity_usingController_completion___block_invoke;
  v18 = &unk_279E68F90;
  v11 = controllerCopy;
  v19 = v11;
  v12 = cityCopy;
  v20 = v12;
  v13 = completionCopy;
  v21 = v13;
  selfCopy = self;
  v14 = MEMORY[0x2743D4690](&v15);
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v14[2](v14);
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], v14);
  }
}

void __63__WeatherOpenURLHelper_displayCity_usingController_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cities];
  v3 = [v2 indexOfObject:*(a1 + 40)];

  if ([*(a1 + 40) isTransient])
  {
    v4 = v3 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    [*(a1 + 32) addAndUpdateViewsForCity:*(a1 + 40)];
    v5 = [*(a1 + 32) cities];
    v3 = [v5 indexOfObject:*(a1 + 40)];
  }

  [*(a1 + 32) showPageForCityAtIndex:v3 animated:0 completion:0];
  v6 = +[WeatherPreferences sharedPreferences];
  [v6 setActiveCity:v3];

  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))();
  }

  v8 = [*(a1 + 32) cities];
  v9 = [v8 count];

  if (v9 < 0x14)
  {
    v10 = *(a1 + 56);
    v12 = *(a1 + 32);
    v11 = *(a1 + 40);

    [v10 presentAddTransientCityDialog:v11 usingController:v12];
  }
}

+ (void)presentAddTransientCityDialog:(id)dialog usingController:(id)controller
{
  dialogCopy = dialog;
  controllerCopy = controller;
  if ([dialogCopy isTransient])
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"ADD_TRANSIENT_CITY_ALERT_TITLE-%@" value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];
    name = [dialogCopy name];
    v24 = [v7 stringWithFormat:v9, name];

    v11 = [MEMORY[0x277D75110] alertControllerWithTitle:v24 message:0 preferredStyle:1];
    v12 = MEMORY[0x277CCACA8];
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"ADD_TRANSIENT_CITY_ALERT_CANCEL_TITLE" value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];
    v15 = [v12 stringWithFormat:v14];

    v16 = [MEMORY[0x277D750F8] actionWithTitle:v15 style:1 handler:&__block_literal_global_18];
    [v11 addAction:v16];

    v17 = MEMORY[0x277CCACA8];
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"ADD_TRANSIENT_CITY_ALERT_ADD_TITLE" value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];
    v20 = [v17 stringWithFormat:v19];

    v21 = MEMORY[0x277D750F8];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __70__WeatherOpenURLHelper_presentAddTransientCityDialog_usingController___block_invoke_2;
    v25[3] = &unk_279E68FD8;
    v26 = dialogCopy;
    v22 = controllerCopy;
    v27 = v22;
    v23 = [v21 actionWithTitle:v20 style:0 handler:v25];
    [v11 addAction:v23];

    [v22 presentViewController:v11 animated:1 completion:0];
  }
}

uint64_t __70__WeatherOpenURLHelper_presentAddTransientCityDialog_usingController___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setTransient:0];
  v2 = *(a1 + 40);

  return [v2 saveStateToDisk];
}

+ (id)cityFromURLComponents:(id)components listedCities:(id)cities
{
  componentsCopy = components;
  citiesCopy = cities;
  v8 = [componentsCopy objectForKey:@"lat"];
  v9 = [componentsCopy objectForKey:@"long"];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [componentsCopy objectForKey:@"lng"];
  }

  v12 = v11;

  v13 = [componentsCopy objectForKey:@"city"];
  v14 = objc_alloc(MEMORY[0x277CE41F8]);
  [v8 floatValue];
  v16 = v15;
  [v12 floatValue];
  v18 = [v14 initWithLatitude:v16 longitude:v17];
  v19 = [componentsCopy objectForKey:@"isLocal"];
  bOOLValue = [v19 BOOLValue];

  if (!bOOLValue || ([citiesCopy na_firstObjectPassingTest:&__block_literal_global_56], (v21 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v21 = [City cityContainingLocation:v18 expectedName:v13 fromCities:citiesCopy];
    if (!v21)
    {
      v21 = [self transientCityFromURLComponents:componentsCopy];
    }
  }

  v22 = v21;

  return v22;
}

+ (id)transientCityFromURLComponents:(id)components
{
  componentsCopy = components;
  v4 = [componentsCopy objectForKey:@"lat"];
  v5 = [componentsCopy objectForKey:@"long"];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [componentsCopy objectForKey:@"lng"];
  }

  v8 = v7;

  v9 = [componentsCopy objectForKey:@"city"];
  v10 = objc_opt_new();
  [v10 setName:v9];
  [v4 floatValue];
  [v10 setLatitude:v11];
  [v8 floatValue];
  [v10 setLongitude:v12];
  [v10 setTransient:1];
  [v10 update];

  return v10;
}

@end