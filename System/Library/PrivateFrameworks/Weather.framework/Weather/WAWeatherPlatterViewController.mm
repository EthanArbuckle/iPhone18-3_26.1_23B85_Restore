@interface WAWeatherPlatterViewController
+ (double)defaultViewHeight;
- (CGRect)lastBounds;
- (WAWeatherPlatterViewController)init;
- (WAWeatherPlatterViewController)initWithLocation:(id)location;
- (WAWeatherPlatterViewController)initWithLocationString:(id)string;
- (WAWeatherPlatterViewController)initWithURL:(id)l;
- (WAWeatherPlatterViewController)initWithURLComponents:(id)components;
- (double)preferredContentWidth;
- (void)_buildModelForLocation:(id)location;
- (void)_contentSizeDidUpdate:(id)update;
- (void)_kickoffLoadingWithLocation:(id)location orPerhapsALocationString:(id)string;
- (void)_loadAQIDataForLocation:(id)location;
- (void)_updateStatus:(int64_t)status;
- (void)_updateViewContent;
- (void)_updateViewWithAQIFromCity:(id)city;
- (void)setupAQIView;
- (void)setupAfterAQIDividerView;
- (void)setupAfterHeaderDividerView;
- (void)setupBackgroundView;
- (void)setupConstraints;
- (void)setupHeaderView;
- (void)setupHourlyForecast;
- (void)updateViewConstraints;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation WAWeatherPlatterViewController

+ (double)defaultViewHeight
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  orientation = [currentDevice orientation];

  result = 0.0;
  if (orientation <= 6)
  {
    return dbl_272B1FBB8[orientation];
  }

  return result;
}

- (WAWeatherPlatterViewController)init
{
  v9.receiver = self;
  v9.super_class = WAWeatherPlatterViewController;
  v2 = [(WAWeatherPlatterViewController *)&v9 init];
  v3 = v2;
  if (v2)
  {
    [(WAWeatherPlatterViewController *)v2 setLastBounds:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    [(WAWeatherPlatterViewController *)v3 preferredContentWidth];
    v5 = v4;
    +[WAWeatherPlatterViewController defaultViewHeight];
    [(WAWeatherPlatterViewController *)v3 setPreferredContentSize:v5, v6];
    mEMORY[0x277D7B2D8] = [MEMORY[0x277D7B2D8] sharedObserver];
    [mEMORY[0x277D7B2D8] addObserver:v3];
  }

  return v3;
}

- (WAWeatherPlatterViewController)initWithLocationString:(id)string
{
  stringCopy = string;
  v5 = [(WAWeatherPlatterViewController *)self init];
  v6 = v5;
  if (v5)
  {
    [(WAWeatherPlatterViewController *)v5 _kickoffLoadingWithLocation:0 orPerhapsALocationString:stringCopy];
  }

  return v6;
}

- (WAWeatherPlatterViewController)initWithLocation:(id)location
{
  locationCopy = location;
  v5 = [(WAWeatherPlatterViewController *)self init];
  v6 = v5;
  if (v5)
  {
    [(WAWeatherPlatterViewController *)v5 _kickoffLoadingWithLocation:locationCopy orPerhapsALocationString:0];
  }

  return v6;
}

- (WAWeatherPlatterViewController)initWithURL:(id)l
{
  v4 = [MEMORY[0x277D7B2E0] componentsForURL:l];
  if (v4)
  {
    self = [(WAWeatherPlatterViewController *)self initWithURLComponents:v4];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (WAWeatherPlatterViewController)initWithURLComponents:(id)components
{
  componentsCopy = components;
  v5 = componentsCopy;
  if (componentsCopy)
  {
    selfCopy = [componentsCopy URL];

    if (selfCopy)
    {
      location = [v5 location];
      v8 = [(WAWeatherPlatterViewController *)self initWithLocation:location];

      if (v8)
      {
        [(WAWeatherPlatterViewController *)v8 setURLComponents:v5];
      }

      self = v8;
      selfCopy = self;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = WAWeatherPlatterViewController;
  [(WAWeatherPlatterViewController *)&v10 viewDidLoad];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__contentSizeDidUpdate_ name:*MEMORY[0x277D76810] object:0];

  view = [(WAWeatherPlatterViewController *)self view];
  layer = [view layer];
  [layer setCornerRadius:8.0];

  clearColor = [MEMORY[0x277D75348] clearColor];
  view2 = [(WAWeatherPlatterViewController *)self view];
  [view2 setBackgroundColor:clearColor];

  view3 = [(WAWeatherPlatterViewController *)self view];
  [view3 setAutoresizingMask:16];

  [(WAWeatherPlatterViewController *)self setupBackgroundView];
  [(WAWeatherPlatterViewController *)self setupHeaderView];
  [(WAWeatherPlatterViewController *)self setupAfterHeaderDividerView];
  [(WAWeatherPlatterViewController *)self setupAQIView];
  [(WAWeatherPlatterViewController *)self setupAfterAQIDividerView];
  [(WAWeatherPlatterViewController *)self setupHourlyForecast];
  view4 = [(WAWeatherPlatterViewController *)self view];
  [view4 setNeedsUpdateConstraints];
}

- (void)updateViewConstraints
{
  [(WAWeatherPlatterViewController *)self setupConstraints];
  v4.receiver = self;
  v4.super_class = WAWeatherPlatterViewController;
  [(WAWeatherPlatterViewController *)&v4 updateViewConstraints];
  aqiView = [(WAWeatherPlatterViewController *)self aqiView];
  [aqiView setNeedsLayout];
}

- (void)setupBackgroundView
{
  backgroundView = [(WAWeatherPlatterViewController *)self backgroundView];

  if (backgroundView)
  {
    backgroundView2 = [(WAWeatherPlatterViewController *)self backgroundView];
    [backgroundView2 removeFromSuperview];

    [(WAWeatherPlatterViewController *)self setBackgroundView:0];
  }

  view = [(WAWeatherPlatterViewController *)self view];
  [view bounds];
  [(WAWeatherPlatterViewController *)self setLastBounds:?];

  v6 = objc_opt_new();
  [(WAWeatherPlatterViewController *)self setBackgroundView:v6];

  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  backgroundView3 = [(WAWeatherPlatterViewController *)self backgroundView];
  [backgroundView3 setBackgroundColor:systemBackgroundColor];

  backgroundView4 = [(WAWeatherPlatterViewController *)self backgroundView];
  [backgroundView4 setAlpha:0.7];

  backgroundView5 = [(WAWeatherPlatterViewController *)self backgroundView];
  [backgroundView5 setAutoresizingMask:18];

  [(WAWeatherPlatterViewController *)self lastBounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  backgroundView6 = [(WAWeatherPlatterViewController *)self backgroundView];
  [backgroundView6 setFrame:{v12, v14, v16, v18}];

  view2 = [(WAWeatherPlatterViewController *)self view];
  backgroundView7 = [(WAWeatherPlatterViewController *)self backgroundView];
  [view2 addSubview:backgroundView7];
}

- (void)setupHeaderView
{
  headerView = [(WAWeatherPlatterViewController *)self headerView];

  if (headerView)
  {
    headerView2 = [(WAWeatherPlatterViewController *)self headerView];
    [headerView2 removeFromSuperview];

    [(WAWeatherPlatterViewController *)self setHeaderView:0];
  }

  v5 = objc_opt_new();
  [(WAWeatherPlatterViewController *)self setHeaderView:v5];

  headerView3 = [(WAWeatherPlatterViewController *)self headerView];
  [headerView3 setTranslatesAutoresizingMaskIntoConstraints:0];

  view = [(WAWeatherPlatterViewController *)self view];
  headerView4 = [(WAWeatherPlatterViewController *)self headerView];
  [view addSubview:headerView4];
}

- (void)setupAfterHeaderDividerView
{
  afterHeaderDividerLineView = [(WAWeatherPlatterViewController *)self afterHeaderDividerLineView];

  if (afterHeaderDividerLineView)
  {
    afterHeaderDividerLineView2 = [(WAWeatherPlatterViewController *)self afterHeaderDividerLineView];
    [afterHeaderDividerLineView2 removeFromSuperview];

    [(WAWeatherPlatterViewController *)self setAfterHeaderDividerLineView:0];
  }

  v5 = objc_alloc(MEMORY[0x277D75D18]);
  v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(WAWeatherPlatterViewController *)self setAfterHeaderDividerLineView:v6];

  v7 = WADividerLineColor();
  afterHeaderDividerLineView3 = [(WAWeatherPlatterViewController *)self afterHeaderDividerLineView];
  [afterHeaderDividerLineView3 setBackgroundColor:v7];

  afterHeaderDividerLineView4 = [(WAWeatherPlatterViewController *)self afterHeaderDividerLineView];
  [afterHeaderDividerLineView4 setTranslatesAutoresizingMaskIntoConstraints:0];

  view = [(WAWeatherPlatterViewController *)self view];
  afterHeaderDividerLineView5 = [(WAWeatherPlatterViewController *)self afterHeaderDividerLineView];
  [view addSubview:afterHeaderDividerLineView5];
}

- (void)setupAQIView
{
  aqiView = [(WAWeatherPlatterViewController *)self aqiView];

  if (aqiView)
  {
    aqiView2 = [(WAWeatherPlatterViewController *)self aqiView];
    [aqiView2 removeFromSuperview];

    [(WAWeatherPlatterViewController *)self setAqiView:0];
  }

  v5 = [WAAQIView alloc];
  view = [(WAWeatherPlatterViewController *)self view];
  [view bounds];
  v7 = [(WAAQIView *)v5 initWithFrame:0.0, 0.0];
  [(WAWeatherPlatterViewController *)self setAqiView:v7];

  aqiView3 = [(WAWeatherPlatterViewController *)self aqiView];
  [aqiView3 setTranslatesAutoresizingMaskIntoConstraints:0];

  aqiView4 = [(WAWeatherPlatterViewController *)self aqiView];
  city = [(WAWeatherPlatterViewController *)self city];
  [aqiView4 updateWithCity:city layoutMode:3];

  view2 = [(WAWeatherPlatterViewController *)self view];
  aqiView5 = [(WAWeatherPlatterViewController *)self aqiView];
  [view2 addSubview:aqiView5];
}

- (void)setupAfterAQIDividerView
{
  afterAQIDividerLineView = [(WAWeatherPlatterViewController *)self afterAQIDividerLineView];

  if (afterAQIDividerLineView)
  {
    afterAQIDividerLineView2 = [(WAWeatherPlatterViewController *)self afterAQIDividerLineView];
    [afterAQIDividerLineView2 removeFromSuperview];

    [(WAWeatherPlatterViewController *)self setAfterAQIDividerLineView:0];
  }

  v5 = objc_alloc(MEMORY[0x277D75D18]);
  v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(WAWeatherPlatterViewController *)self setAfterAQIDividerLineView:v6];

  v7 = WADividerLineColor();
  afterAQIDividerLineView3 = [(WAWeatherPlatterViewController *)self afterAQIDividerLineView];
  [afterAQIDividerLineView3 setBackgroundColor:v7];

  afterAQIDividerLineView4 = [(WAWeatherPlatterViewController *)self afterAQIDividerLineView];
  [afterAQIDividerLineView4 setTranslatesAutoresizingMaskIntoConstraints:0];

  view = [(WAWeatherPlatterViewController *)self view];
  afterAQIDividerLineView5 = [(WAWeatherPlatterViewController *)self afterAQIDividerLineView];
  [view addSubview:afterAQIDividerLineView5];
}

- (void)setupHourlyForecast
{
  hourlyBeltView = [(WAWeatherPlatterViewController *)self hourlyBeltView];

  if (hourlyBeltView)
  {
    hourlyBeltView2 = [(WAWeatherPlatterViewController *)self hourlyBeltView];
    [hourlyBeltView2 removeFromSuperview];

    [(WAWeatherPlatterViewController *)self setHourlyBeltView:0];
  }

  v18 = objc_opt_new();
  [(WAWeatherPlatterViewController *)self lastBounds];
  for (i = (v5 / 50.0); i; --i)
  {
    v7 = objc_opt_new();
    [v18 addObject:v7];
  }

  [(WAWeatherPlatterViewController *)self setHourlyForecastViews:v18];
  v8 = objc_alloc(MEMORY[0x277D75A68]);
  hourlyForecastViews = [(WAWeatherPlatterViewController *)self hourlyForecastViews];
  v10 = [v8 initWithArrangedSubviews:hourlyForecastViews];
  [(WAWeatherPlatterViewController *)self setHourlyBeltView:v10];

  hourlyBeltView3 = [(WAWeatherPlatterViewController *)self hourlyBeltView];
  [hourlyBeltView3 setAxis:0];

  hourlyBeltView4 = [(WAWeatherPlatterViewController *)self hourlyBeltView];
  [hourlyBeltView4 setDistribution:1];

  hourlyBeltView5 = [(WAWeatherPlatterViewController *)self hourlyBeltView];
  [hourlyBeltView5 setAlignment:1];

  hourlyBeltView6 = [(WAWeatherPlatterViewController *)self hourlyBeltView];
  [hourlyBeltView6 setTranslatesAutoresizingMaskIntoConstraints:0];

  view = [(WAWeatherPlatterViewController *)self view];
  hourlyBeltView7 = [(WAWeatherPlatterViewController *)self hourlyBeltView];
  [view addSubview:hourlyBeltView7];

  [(WAWeatherPlatterViewController *)self _updateViewContent];
  view2 = [(WAWeatherPlatterViewController *)self view];
  [view2 setNeedsUpdateConstraints];
}

- (void)setupConstraints
{
  v44[4] = *MEMORY[0x277D85DE8];
  constraints = [(WAWeatherPlatterViewController *)self constraints];

  if (constraints)
  {
    v4 = MEMORY[0x277CCAAD0];
    constraints2 = [(WAWeatherPlatterViewController *)self constraints];
    [v4 deactivateConstraints:constraints2];

    [(WAWeatherPlatterViewController *)self setConstraints:0];
  }

  v6 = _NSDictionaryOfVariableBindings(&cfstr_HeaderviewAfte.isa, self->_headerView, self->_afterHeaderDividerLineView, self->_aqiView, self->_afterAQIDividerLineView, self->_hourlyBeltView, 0);
  v44[0] = &unk_288235718;
  v43[0] = @"DividerLineGap";
  v43[1] = @"DividerLineHeight";
  v7 = MEMORY[0x277CCABB0];
  traitCollection = [(WAWeatherPlatterViewController *)self traitCollection];
  [traitCollection displayScale];
  v10 = [v7 numberWithDouble:1.0 / v9];
  v44[1] = v10;
  v43[2] = @"AQIViewHeight";
  v11 = MEMORY[0x277CCABB0];
  aqiView = [(WAWeatherPlatterViewController *)self aqiView];
  view = [(WAWeatherPlatterViewController *)self view];
  [view bounds];
  [aqiView sizeThatFits:{v14, v15}];
  v17 = [v11 numberWithDouble:v16];
  v43[3] = @"AQIViewXMargin";
  v44[2] = v17;
  v44[3] = &unk_288235718;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:4];

  v19 = objc_opt_new();
  [(WAWeatherPlatterViewController *)self setConstraints:v19];

  constraints3 = [(WAWeatherPlatterViewController *)self constraints];
  v21 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[_headerView]|" options:0 metrics:v18 views:v6];
  [constraints3 addObjectsFromArray:v21];

  constraints4 = [(WAWeatherPlatterViewController *)self constraints];
  v23 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[_hourlyBeltView]|" options:0 metrics:v18 views:v6];
  [constraints4 addObjectsFromArray:v23];

  city = [(WAWeatherPlatterViewController *)self city];
  LODWORD(v23) = [(WAWeatherPlatterViewController *)self _showingAQIViewForCity:city];

  constraints5 = [(WAWeatherPlatterViewController *)self constraints];
  if (v23)
  {
    v26 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-DividerLineGap-[_afterAQIDividerLineView]|" options:0 metrics:v18 views:v6];
    [constraints5 addObjectsFromArray:v26];

    constraints6 = [(WAWeatherPlatterViewController *)self constraints];
    v28 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-AQIViewXMargin-[_aqiView]-AQIViewXMargin-|" options:0 metrics:v18 views:v6];
    [constraints6 addObjectsFromArray:v28];

    constraints7 = [(WAWeatherPlatterViewController *)self constraints];
    v30 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-DividerLineGap-[_afterHeaderDividerLineView]|" options:0 metrics:v18 views:v6];
    [constraints7 addObjectsFromArray:v30];

    constraints8 = [(WAWeatherPlatterViewController *)self constraints];
    v32 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[_headerView][_afterHeaderDividerLineView(==DividerLineHeight)]" options:0 metrics:v18 views:v6];
    [constraints8 addObjectsFromArray:v32];

    constraints5 = [(WAWeatherPlatterViewController *)self constraints];
    v33 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:[_afterHeaderDividerLineView][_aqiView(==AQIViewHeight)]" options:0 metrics:v18 views:v6];
    [constraints5 addObjectsFromArray:v33];
    v34 = @"V:[_afterAQIDividerLineView][_hourlyBeltView]|";
    v35 = @"V:[_aqiView][_afterAQIDividerLineView(==DividerLineHeight)]";
  }

  else
  {
    v33 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-DividerLineGap-[_afterHeaderDividerLineView]|" options:0 metrics:v18 views:v6];
    [constraints5 addObjectsFromArray:v33];
    v34 = @"V:[_afterHeaderDividerLineView][_hourlyBeltView]|";
    v35 = @"V:|[_headerView][_afterHeaderDividerLineView(==DividerLineHeight)]";
  }

  constraints9 = [(WAWeatherPlatterViewController *)self constraints];
  v37 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:v35 options:0 metrics:v18 views:v6];
  [constraints9 addObjectsFromArray:v37];

  constraints10 = [(WAWeatherPlatterViewController *)self constraints];
  v39 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:v34 options:0 metrics:v18 views:v6];
  [constraints10 addObjectsFromArray:v39];

  v40 = MEMORY[0x277CCAAD0];
  constraints11 = [(WAWeatherPlatterViewController *)self constraints];
  [v40 activateConstraints:constraints11];

  v42 = *MEMORY[0x277D85DE8];
}

- (void)viewDidLayoutSubviews
{
  v27.receiver = self;
  v27.super_class = WAWeatherPlatterViewController;
  [(WAWeatherPlatterViewController *)&v27 viewDidLayoutSubviews];
  [(WAWeatherPlatterViewController *)self lastBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  view = [(WAWeatherPlatterViewController *)self view];
  [view bounds];
  v29.origin.x = v12;
  v29.origin.y = v13;
  v29.size.width = v14;
  v29.size.height = v15;
  v28.origin.x = v4;
  v28.origin.y = v6;
  v28.size.width = v8;
  v28.size.height = v10;
  v16 = CGRectEqualToRect(v28, v29);

  if (!v16)
  {
    view2 = [(WAWeatherPlatterViewController *)self view];
    [view2 bounds];
    [(WAWeatherPlatterViewController *)self setLastBounds:?];

    [(WAWeatherPlatterViewController *)self setupHourlyForecast];
    [(WAWeatherPlatterViewController *)self lastBounds];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    backgroundView = [(WAWeatherPlatterViewController *)self backgroundView];
    [backgroundView setFrame:{v19, v21, v23, v25}];
  }
}

- (void)_updateViewContent
{
  v144 = *MEMORY[0x277D85DE8];
  headerView = [(WAWeatherPlatterViewController *)self headerView];
  if (headerView)
  {
    model = [(WAWeatherPlatterViewController *)self model];
    forecastModel = [model forecastModel];

    currentConditions = [forecastModel currentConditions];
    hourlyForecasts = [forecastModel hourlyForecasts];
    dailyForecasts = [forecastModel dailyForecasts];
    airQualityConditions = [forecastModel airQualityConditions];
    location = [forecastModel location];
    isDay = [location isDay];
    uRLComponents = [(WAWeatherPlatterViewController *)self URLComponents];
    locationName = [uRLComponents locationName];
    if (locationName)
    {
      displayName = locationName;
    }

    else
    {
      displayName = [location displayName];

      if (!displayName)
      {
        v13 = 0;
        if (!hourlyForecasts)
        {
          goto LABEL_57;
        }

LABEL_6:
        if (dailyForecasts && currentConditions)
        {
          v105 = hourlyForecasts;
          v106 = forecastModel;
          selfCopy = self;
          if (_updateViewContent_onceToken != -1)
          {
            [WAWeatherPlatterViewController _updateViewContent];
          }

          mEMORY[0x277D7B2D8] = [MEMORY[0x277D7B2D8] sharedObserver];
          temperatureUnit = [mEMORY[0x277D7B2D8] temperatureUnit];
          [_updateViewContent_temperatureFormatter setOutputUnit:temperatureUnit];

          [_updateViewContent_temperatureFormatter setSymbolType:!WAIsChinaSKUAndSimplifiedChinese()];
          v16 = _updateViewContent_temperatureFormatter;
          temperature = [currentConditions temperature];
          v18 = [v16 stringForObjectValue:temperature];

          v19 = _updateViewContent_temperatureFormatter;
          firstObject = [dailyForecasts firstObject];
          [firstObject low];
          v22 = v21 = currentConditions;
          v23 = [v19 stringForObjectValue:v22];

          v24 = _updateViewContent_temperatureFormatter;
          firstObject2 = [dailyForecasts firstObject];
          high = [firstObject2 high];
          v27 = [v24 stringForObjectValue:high];

          v103 = v21;
          v28 = WAConditionsLineStringFromCurrentForecasts(v21);
          v29 = WAAirQualityCategoryFromConditions(airQualityConditions);
          countryAbbreviation = [location countryAbbreviation];
          v104 = headerView;
          if (WAAirQualityIsSignificantForCategory(v29, countryAbbreviation))
          {
            countryAbbreviation2 = [location countryAbbreviation];
            v32 = WAAirQualityDescriptionForCategory(v29, countryAbbreviation2);
          }

          else
          {
            v32 = WAConditionsLine2StringFromHourlyForecasts(v105);
          }

          v33 = +[WeatherInternalPreferences sharedInternalPreferences];
          isV3Enabled = [v33 isV3Enabled];

          v101 = v13;
          if (isV3Enabled)
          {
            city = [v106 city];
            airQualityScaleCategory = [city airQualityScaleCategory];

            longDescription = [airQualityScaleCategory longDescription];
            if (longDescription)
            {
              v38 = longDescription;
              categoryIndex = [airQualityScaleCategory categoryIndex];
              warningLevel = [airQualityScaleCategory warningLevel];

              if (categoryIndex > warningLevel)
              {
                longDescription2 = [airQualityScaleCategory longDescription];

                v32 = longDescription2;
              }
            }
          }

          v42 = RemapSmallIconForDayOrNight([v103 conditionCode], objc_msgSend(location, "isDay"));
          v43 = WAImageForLegacyConditionCode(v42, 2uLL);
          v44 = MEMORY[0x277D75D18];
          v128[0] = MEMORY[0x277D85DD0];
          v128[1] = 3221225472;
          v128[2] = __52__WAWeatherPlatterViewController__updateViewContent__block_invoke_4;
          v128[3] = &unk_279E68A78;
          v129 = v104;
          v100 = v18;
          v130 = v100;
          v99 = v23;
          v131 = v99;
          v98 = v27;
          v132 = v98;
          v97 = v28;
          v133 = v97;
          v96 = v32;
          v134 = v96;
          v95 = v43;
          v135 = v95;
          [v44 performWithoutAnimation:v128];
          v45 = _updateViewContent_ISO6801Calendar;
          timeZone = [location timeZone];
          [v45 setTimeZone:timeZone];

          v47 = _updateViewContent_ISO6801Calendar;
          sunrise = [v106 sunrise];
          v49 = [v47 components:96 fromDate:sunrise];

          minute = [v49 minute];
          v51 = minute + 100 * [v49 hour];
          v52 = _updateViewContent_ISO6801Calendar;
          sunset = [v106 sunset];
          v54 = [v52 components:96 fromDate:sunset];

          minute2 = [v54 minute];
          v94 = v54;
          v56 = minute2 + 100 * [v54 hour];
          v102 = location;
          timeZone2 = [location timeZone];
          v58 = CityTimeDigitForTimeZone(timeZone2);

          [_updateViewContent_temperatureFormatter setSymbolType:0];
          temperature2 = [v103 temperature];
          *&v109 = v56;
          *(&v109 + 1) = v51;
          v115 = +[WAHourlyForecastParser parseForecasts:temperature:currentTime:condition:sunrise:sunset:](WAHourlyForecastParser, "parseForecasts:temperature:currentTime:condition:sunrise:sunset:", v105, temperature2, v58, [v103 conditionCode], v51, v56);

          v126 = 0u;
          v127 = 0u;
          v124 = 0u;
          v125 = 0u;
          obj = [(WAWeatherPlatterViewController *)selfCopy hourlyForecastViews];
          v116 = [obj countByEnumeratingWithState:&v124 objects:v143 count:16];
          if (v116)
          {
            v60 = 0;
            v114 = *v125;
            v110 = *MEMORY[0x277D740A8];
            v113 = *MEMORY[0x277D740C0];
            do
            {
              for (i = 0; i != v116; ++i)
              {
                if (*v125 != v114)
                {
                  objc_enumerationMutation(obj);
                }

                v118 = *(*(&v124 + 1) + 8 * i);
                v62 = [v115 objectAtIndexedSubscript:v60];
                eventType = [v62 eventType];
                time = [v62 time];
                v65 = Time24StringToInt(time);

                if (v109 == 0)
                {
                  v66 = 1;
                }

                else
                {
                  v66 = isDay;
                  if (!eventType)
                  {
                    v68 = *(&v109 + 1) < v65 || v109 > v65;
                    v70 = *(&v109 + 1) < v65 && v109 > v65;
                    if (*(&v109 + 1) < v109)
                    {
                      v66 = v70;
                    }

                    else
                    {
                      v66 = v68;
                    }
                  }
                }

                v71 = WAHourlyConditionsTimeLabelFont(v60 == 0);
                v72 = WAHourlyConditionsTemperatureLabelAttributesDictionary(v60 == 0);
                v73 = RemapSmallIconForDayOrNight([v62 conditionCode], v66);
                eventType2 = [v62 eventType];
                switch(eventType2)
                {
                  case 1:
                    v75 = WAImageForSunrise(3);
                    goto LABEL_47;
                  case 3:
                    v76 = WAImageForLegacyConditionCode(v73, 3uLL);
                    v77 = objc_alloc(MEMORY[0x277CCA898]);
                    time2 = [v62 time];
                    v141 = v110;
                    v142 = v71;
                    v79 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v142 forKeys:&v141 count:1];
                    v80 = [v77 initWithString:time2 attributes:v79];

                    break;
                  case 2:
                    v75 = WAImageForSunset(3);
LABEL_47:
                    v76 = v75;
                    forecastDetail = [v62 forecastDetail];
                    time3 = [v62 time];
                    v80 = WATimeInRegionFormat(time3, v71);
                    goto LABEL_50;
                  default:
                    v76 = WAImageForLegacyConditionCode(v73, 3uLL);
                    time2 = [v62 time];
                    v80 = WACondensedTimeInRegionFormat(time2, v71);
                    break;
                }

                v83 = _updateViewContent_temperatureFormatter;
                time3 = [v62 temperature];
                forecastDetail = [v83 stringForObjectValue:time3];
LABEL_50:

                v84 = [v80 mutableCopy];
                if (v60)
                {
                  WADetailColor();
                }

                else
                {
                  WAContentColor();
                }
                v85 = ;
                [v84 addAttribute:v113 value:v85 range:{0, objc_msgSend(v80, "length")}];

                v86 = MEMORY[0x277D75D18];
                v119[0] = MEMORY[0x277D85DD0];
                v119[1] = 3221225472;
                v119[2] = __52__WAWeatherPlatterViewController__updateViewContent__block_invoke_5;
                v119[3] = &unk_279E68AA0;
                v119[4] = v118;
                v120 = v84;
                v121 = forecastDetail;
                v122 = v72;
                v123 = v76;
                v87 = v76;
                v88 = v72;
                v89 = forecastDetail;
                v90 = v84;
                [v86 performWithoutAnimation:v119];
                ++v60;
              }

              v116 = [obj countByEnumeratingWithState:&v124 objects:v143 count:16];
            }

            while (v116);
          }

          currentConditions = v103;
          headerView = v104;
          hourlyForecasts = v105;
          forecastModel = v106;
          v13 = v101;
          location = v102;
          v91 = v100;
          goto LABEL_58;
        }

LABEL_57:
        v92 = MEMORY[0x277D75D18];
        v136[0] = MEMORY[0x277D85DD0];
        v136[1] = 3221225472;
        v136[2] = __52__WAWeatherPlatterViewController__updateViewContent__block_invoke_2;
        v136[3] = &unk_279E67C98;
        v137 = headerView;
        [v92 performWithoutAnimation:v136];
        v91 = v137;
LABEL_58:

        goto LABEL_59;
      }
    }

    v12 = MEMORY[0x277D75D18];
    v138[0] = MEMORY[0x277D85DD0];
    v138[1] = 3221225472;
    v138[2] = __52__WAWeatherPlatterViewController__updateViewContent__block_invoke;
    v138[3] = &unk_279E67CC0;
    v139 = headerView;
    v13 = displayName;
    v140 = v13;
    [v12 performWithoutAnimation:v138];

    if (!hourlyForecasts)
    {
      goto LABEL_57;
    }

    goto LABEL_6;
  }

LABEL_59:

  v93 = *MEMORY[0x277D85DE8];
}

uint64_t __52__WAWeatherPlatterViewController__updateViewContent__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setTemperature:@"--"];
  [*(a1 + 32) setTemperatureLow:@"--"];
  [*(a1 + 32) setTemperatureHigh:@"--"];
  [*(a1 + 32) setConditionsLine1:0];
  [*(a1 + 32) setConditionsLine2:0];
  v2 = *(a1 + 32);

  return [v2 setConditionsImage:0];
}

uint64_t __52__WAWeatherPlatterViewController__updateViewContent__block_invoke_3()
{
  v0 = objc_opt_new();
  v1 = _updateViewContent_temperatureFormatter;
  _updateViewContent_temperatureFormatter = v0;

  v2 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  [_updateViewContent_temperatureFormatter setLocale:v2];

  v3 = objc_alloc(MEMORY[0x277CBEA80]);
  v4 = [v3 initWithCalendarIdentifier:*MEMORY[0x277CBE5D0]];
  v5 = _updateViewContent_ISO6801Calendar;
  _updateViewContent_ISO6801Calendar = v4;

  return MEMORY[0x2821F96F8](v4, v5);
}

uint64_t __52__WAWeatherPlatterViewController__updateViewContent__block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setTemperature:*(a1 + 40)];
  [*(a1 + 32) setTemperatureLow:*(a1 + 48)];
  [*(a1 + 32) setTemperatureHigh:*(a1 + 56)];
  [*(a1 + 32) setConditionsLine1:*(a1 + 64)];
  [*(a1 + 32) setConditionsLine2:*(a1 + 72)];
  v2 = *(a1 + 80);
  v3 = *(a1 + 32);

  return [v3 setConditionsImage:v2];
}

uint64_t __52__WAWeatherPlatterViewController__updateViewContent__block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) setTime:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:*(a1 + 48) attributes:*(a1 + 56)];
  [v2 setTemperature:v3];

  v4 = *(a1 + 32);
  v5 = *(a1 + 64);

  return [v4 setConditionsImage:v5];
}

- (void)_contentSizeDidUpdate:(id)update
{
  v4 = WALogForCategory(10);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [WAWeatherPlatterViewController _contentSizeDidUpdate:v4];
  }

  view = [(WAWeatherPlatterViewController *)self view];
  [view setNeedsUpdateConstraints];
}

- (void)_kickoffLoadingWithLocation:(id)location orPerhapsALocationString:(id)string
{
  locationCopy = location;
  stringCopy = string;
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __87__WAWeatherPlatterViewController__kickoffLoadingWithLocation_orPerhapsALocationString___block_invoke;
  v13[3] = &unk_279E68AC8;
  v8 = locationCopy;
  v14 = v8;
  objc_copyWeak(&v15, &location);
  v9 = MEMORY[0x2743D4690](v13);
  if (v8)
  {
    v10 = objc_alloc(MEMORY[0x277D7B278]);
    [v8 coordinate];
    v11 = [v10 initWithCoordinate:v9 resultHandler:?];
  }

  else
  {
    if (!stringCopy)
    {
      v12 = 0;
      goto LABEL_6;
    }

    v11 = [objc_alloc(MEMORY[0x277D7B278]) initWithSearchString:stringCopy resultHandler:v9];
  }

  v12 = v11;
LABEL_6:
  [v12 start];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __87__WAWeatherPlatterViewController__kickoffLoadingWithLocation_orPerhapsALocationString___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = WALogForCategory(8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __87__WAWeatherPlatterViewController__kickoffLoadingWithLocation_orPerhapsALocationString___block_invoke_cold_1(a1);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _updateStatus:-1];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _buildModelForLocation:v5];
  }
}

- (void)_buildModelForLocation:(id)location
{
  locationCopy = location;
  if (!locationCopy)
  {
    [(WAWeatherPlatterViewController *)a2 _buildModelForLocation:?];
  }

  [(WAWeatherPlatterViewController *)self _updateStatus:2];
  [(WAWeatherPlatterViewController *)self _loadAQIDataForLocation:locationCopy];
  objc_initWeak(&location, self);
  v6 = [WATodayModel modelWithLocation:locationCopy];
  [(WAWeatherPlatterViewController *)self setModel:v6];

  model = [(WAWeatherPlatterViewController *)self model];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__WAWeatherPlatterViewController__buildModelForLocation___block_invoke;
  v9[3] = &unk_279E68B18;
  v8 = locationCopy;
  v10 = v8;
  objc_copyWeak(&v11, &location);
  [model executeModelUpdateWithCompletion:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __57__WAWeatherPlatterViewController__buildModelForLocation___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = WALogForCategory(8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __57__WAWeatherPlatterViewController__buildModelForLocation___block_invoke_cold_1(a1);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _updateStatus:-1];
  }

  else
  {
    v7 = objc_loadWeakRetained((a1 + 40));
    [v7 _updateStatus:3];

    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __57__WAWeatherPlatterViewController__buildModelForLocation___block_invoke_86;
    v12 = &unk_279E68AF0;
    objc_copyWeak(&v14, (a1 + 40));
    v13 = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], &v9);
    v8 = objc_loadWeakRetained((a1 + 40));
    [v8 _updateStatus:{4, v9, v10, v11, v12}];

    objc_destroyWeak(&v14);
  }
}

void __57__WAWeatherPlatterViewController__buildModelForLocation___block_invoke_86(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained URLComponents];

  if (!v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D7B2E0]) initWithLocation:*(a1 + 32)];
    v5 = objc_loadWeakRetained((a1 + 40));
    [v5 setURLComponents:v4];

    v6 = [MEMORY[0x277D75418] currentDevice];
    v7 = [v6 userInterfaceIdiom] == 0;
    v8 = objc_loadWeakRetained((a1 + 40));
    v9 = [v8 URLComponents];
    [v9 setDestination:v7];
  }

  v10 = objc_loadWeakRetained((a1 + 40));
  v11 = [v10 URLComponents];
  v12 = [v11 URL];
  v13 = objc_loadWeakRetained((a1 + 40));
  [v13 setCommitURL:v12];

  v14 = objc_loadWeakRetained((a1 + 40));
  [v14 _updateViewContent];
}

- (void)_loadAQIDataForLocation:(id)location
{
  v14[1] = *MEMORY[0x277D85DE8];
  locationCopy = location;
  v5 = objc_alloc_init(City);
  displayName = [locationCopy displayName];
  [(City *)v5 setName:displayName];

  geoLocation = [locationCopy geoLocation];
  [(City *)v5 setLocation:geoLocation];

  [(City *)v5 setWfLocation:locationCopy];
  v8 = +[TWCCityUpdater sharedCityUpdater];
  v14[0] = v5;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__WAWeatherPlatterViewController__loadAQIDataForLocation___block_invoke;
  v12[3] = &unk_279E68B68;
  v12[4] = self;
  v13 = v5;
  v10 = v5;
  [v8 updateWeatherForCities:v9 withCompletionHandler:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __58__WAWeatherPlatterViewController__loadAQIDataForLocation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__WAWeatherPlatterViewController__loadAQIDataForLocation___block_invoke_2;
  v11[3] = &unk_279E68B40;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12 = v6;
  v13 = v7;
  v14 = v8;
  v15 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v11);
}

void __58__WAWeatherPlatterViewController__loadAQIDataForLocation___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);
    v3 = *(a1 + 48);

    [v2 _updateViewWithAQIFromCity:v3];
  }

  else
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __58__WAWeatherPlatterViewController__loadAQIDataForLocation___block_invoke_3;
    v6[3] = &unk_279E67CC0;
    v4 = *(a1 + 56);
    v5 = *(a1 + 40);
    v7 = v4;
    v8 = v5;
    dispatch_async(MEMORY[0x277D85CD0], v6);
  }
}

void __58__WAWeatherPlatterViewController__loadAQIDataForLocation___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) firstObject];
  [*(a1 + 40) _updateViewWithAQIFromCity:v2];
}

- (double)preferredContentWidth
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen nativeBounds];
  v4 = v3;

  result = 374.0;
  if (v4 <= 374.0)
  {
    return v4;
  }

  return result;
}

- (void)_updateViewWithAQIFromCity:(id)city
{
  cityCopy = city;
  [(WAWeatherPlatterViewController *)self setCity:cityCopy];
  v5 = [(WAWeatherPlatterViewController *)self _showingAQIViewForCity:cityCopy];

  aqiView = [(WAWeatherPlatterViewController *)self aqiView];
  v7 = aqiView;
  if (v5)
  {
    city = [(WAWeatherPlatterViewController *)self city];
    [v7 updateWithCity:city layoutMode:3];

    aqiView2 = [(WAWeatherPlatterViewController *)self aqiView];
    [aqiView2 setNeedsLayout];

    aqiView3 = [(WAWeatherPlatterViewController *)self aqiView];
    view = [(WAWeatherPlatterViewController *)self view];
    [view bounds];
    [aqiView3 sizeThatFits:{v12, v13}];

    traitCollection = [(WAWeatherPlatterViewController *)self traitCollection];
    [traitCollection displayScale];

    +[WAWeatherPlatterViewController defaultViewHeight];
    [(WAWeatherPlatterViewController *)self preferredContentWidth];
    [(WAWeatherPlatterViewController *)self setPreferredContentSize:?];
    aqiView4 = [(WAWeatherPlatterViewController *)self aqiView];
    [aqiView4 setHidden:0];

    afterAQIDividerLineView = [(WAWeatherPlatterViewController *)self afterAQIDividerLineView];
    [afterAQIDividerLineView setHidden:0];
  }

  else
  {
    [aqiView setHidden:1];

    afterAQIDividerLineView2 = [(WAWeatherPlatterViewController *)self afterAQIDividerLineView];
    [afterAQIDividerLineView2 setHidden:1];

    [(WAWeatherPlatterViewController *)self preferredContentWidth];
    v19 = v18;
    +[WAWeatherPlatterViewController defaultViewHeight];
    [(WAWeatherPlatterViewController *)self setPreferredContentSize:v19, v20];
  }

  [(WAWeatherPlatterViewController *)self updateViewConstraints];
}

- (void)_updateStatus:(int64_t)status
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __48__WAWeatherPlatterViewController__updateStatus___block_invoke;
  v3[3] = &unk_279E68B90;
  v3[4] = self;
  v3[5] = status;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

- (CGRect)lastBounds
{
  x = self->_lastBounds.origin.x;
  y = self->_lastBounds.origin.y;
  width = self->_lastBounds.size.width;
  height = self->_lastBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

void __87__WAWeatherPlatterViewController__kickoffLoadingWithLocation_orPerhapsALocationString___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_272ACF000, v2, v3, "Error geocoding location '%@': %@");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_buildModelForLocation:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"WAWeatherPlatterViewController.m" lineNumber:498 description:{@"Invalid parameter not satisfying: %@", @"location"}];
}

void __57__WAWeatherPlatterViewController__buildModelForLocation___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_272ACF000, v2, v3, "Error executing model update for location'%@': %@");
  v4 = *MEMORY[0x277D85DE8];
}

@end