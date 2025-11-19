@interface TSTravelModeFlow
- (TSTravelModeFlow)initWithOptions:(id)a3;
- (id)_getCellularPlanItemForTravelSIM;
- (id)firstViewController;
- (id)nextViewControllerFrom:(id)a3;
- (void)firstViewController;
- (void)firstViewController:(id)a3;
@end

@implementation TSTravelModeFlow

- (TSTravelModeFlow)initWithOptions:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TSTravelModeFlow;
  v5 = [(TSSIMSetupFlow *)&v8 init];
  options = v5->_options;
  v5->_options = v4;

  return v5;
}

- (id)firstViewController
{
  v2 = _TSLogDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [(TSTravelModeFlow *)v2 firstViewController];
  }

  return 0;
}

- (void)firstViewController:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (v4)
  {
    v5 = [(NSDictionary *)self->_options objectForKeyedSubscript:@"options"];
    v6 = [v5 integerValue];

    v7 = [(NSDictionary *)self->_options objectForKeyedSubscript:@"isUserAbroad"];
    v8 = [v7 integerValue];

    v9 = [(NSDictionary *)self->_options objectForKeyedSubscript:@"travelSIMIccid"];
    v10 = [(NSDictionary *)self->_options objectForKeyedSubscript:@"homeSIMIccid"];
    v11 = [(NSDictionary *)self->_options objectForKeyedSubscript:@"voiceSIMIccid"];
    if (v6)
    {
      v12 = objc_alloc_init(TSRoamingEducationViewController);
    }

    else if ((v6 & 2) != 0)
    {
      v13 = [TSTravelModeIntroViewController alloc];
      v14 = [(NSDictionary *)self->_options objectForKeyedSubscript:@"extractionSource"];
      v15 = [(NSDictionary *)self->_options objectForKeyedSubscript:@"arrivalCountry"];
      v12 = [(TSTravelModeIntroViewController *)v13 initWithOptions:v8 extractionSource:v14 reduceEducation:0 arrivalCountry:v15];
    }

    else if ((v6 & 4) != 0)
    {
      v12 = [[TSTravelBuddyViewController alloc] initWithIccids:v9 homeIccid:v10 voiceIccid:v11 postArrivalInstallation:0];
      objc_storeStrong(&self->_travelSIM, v9);
    }

    else
    {
      v12 = 0;
    }

    v16 = _TSLogDomain();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 134218242;
      v19 = v6;
      v20 = 2080;
      v21 = "[TSTravelModeFlow firstViewController:]";
      _os_log_impl(&dword_262AA8000, v16, OS_LOG_TYPE_DEFAULT, "options: %lu @%s", &v18, 0x16u);
    }

    [(TSRoamingEducationViewController *)v12 setDelegate:self];
    [(TSSIMSetupFlow *)self setTopViewController:v12];
    v4[2](v4, v12);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)nextViewControllerFrom:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(TSTravelModeFlow *)self _getCellularPlanItemForTravelSIM];
    v7 = _TSLogDomain();
    v8 = v7;
    if (v6)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v17 = v6;
        v18 = 2080;
        v19 = "[TSTravelModeFlow nextViewControllerFrom:]";
        _os_log_impl(&dword_262AA8000, &v8->super, OS_LOG_TYPE_DEFAULT, "Found a matching cellular plan item %@ @%s", buf, 0x16u);
      }

      v8 = [[SSInstallPlanInformation alloc] initWithItem:v6];
      -[SSInstallPlanInformation setUseTravelOnly:](v8, "setUseTravelOnly:", [v5 travelOnlySelected]);
      v9 = [TSLowDataModeConfigViewController alloc];
      v15 = v8;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
      v11 = [v10 mutableCopy];
      v12 = [(TSLowDataModeConfigViewController *)v9 initWithPlans:v11];
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [TSTravelModeFlow nextViewControllerFrom:?];
      }

      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_getCellularPlanItemForTravelSIM
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CF96D8] sharedManager];
  v4 = [v3 planItemsShouldUpdate:0];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if ([v10 isSelected])
        {
          v11 = [v10 iccid];
          v12 = [v11 isEqualToString:self->_travelSIM];

          if (v12)
          {
            v13 = v10;
            goto LABEL_12;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_12:

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)firstViewController
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[TSTravelModeFlow firstViewController]";
  _os_log_error_impl(&dword_262AA8000, log, OS_LOG_TYPE_ERROR, "[E](UIViewController *)firstViewController is deprecated, please use (void)firstViewController:(void (^)(UIViewController *))completion @%s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)nextViewControllerFrom:(os_log_t)log .cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[TSTravelModeFlow nextViewControllerFrom:]";
  _os_log_error_impl(&dword_262AA8000, log, OS_LOG_TYPE_ERROR, "[E]Could not find matching cellular plan item for travel SIM @%s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end