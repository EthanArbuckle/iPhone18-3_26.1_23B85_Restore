@interface WAWeatherPlatterViewController
+ (double)defaultViewHeight;
- (CGRect)lastBounds;
- (WAWeatherPlatterViewController)init;
- (WAWeatherPlatterViewController)initWithLocation:(id)a3;
- (WAWeatherPlatterViewController)initWithLocationString:(id)a3;
- (WAWeatherPlatterViewController)initWithURL:(id)a3;
- (WAWeatherPlatterViewController)initWithURLComponents:(id)a3;
- (double)preferredContentWidth;
- (void)_buildModelForLocation:(id)a3;
- (void)_contentSizeDidUpdate:(id)a3;
- (void)_kickoffLoadingWithLocation:(id)a3 orPerhapsALocationString:(id)a4;
- (void)_loadAQIDataForLocation:(id)a3;
- (void)_updateStatus:(int64_t)a3;
- (void)_updateViewContent;
- (void)_updateViewWithAQIFromCity:(id)a3;
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
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 orientation];

  result = 0.0;
  if (v3 <= 6)
  {
    return dbl_272B1FBB8[v3];
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
    v7 = [MEMORY[0x277D7B2D8] sharedObserver];
    [v7 addObserver:v3];
  }

  return v3;
}

- (WAWeatherPlatterViewController)initWithLocationString:(id)a3
{
  v4 = a3;
  v5 = [(WAWeatherPlatterViewController *)self init];
  v6 = v5;
  if (v5)
  {
    [(WAWeatherPlatterViewController *)v5 _kickoffLoadingWithLocation:0 orPerhapsALocationString:v4];
  }

  return v6;
}

- (WAWeatherPlatterViewController)initWithLocation:(id)a3
{
  v4 = a3;
  v5 = [(WAWeatherPlatterViewController *)self init];
  v6 = v5;
  if (v5)
  {
    [(WAWeatherPlatterViewController *)v5 _kickoffLoadingWithLocation:v4 orPerhapsALocationString:0];
  }

  return v6;
}

- (WAWeatherPlatterViewController)initWithURL:(id)a3
{
  v4 = [MEMORY[0x277D7B2E0] componentsForURL:a3];
  if (v4)
  {
    self = [(WAWeatherPlatterViewController *)self initWithURLComponents:v4];
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (WAWeatherPlatterViewController)initWithURLComponents:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 URL];

    if (v6)
    {
      v7 = [v5 location];
      v8 = [(WAWeatherPlatterViewController *)self initWithLocation:v7];

      if (v8)
      {
        [(WAWeatherPlatterViewController *)v8 setURLComponents:v5];
      }

      self = v8;
      v6 = self;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = WAWeatherPlatterViewController;
  [(WAWeatherPlatterViewController *)&v10 viewDidLoad];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel__contentSizeDidUpdate_ name:*MEMORY[0x277D76810] object:0];

  v4 = [(WAWeatherPlatterViewController *)self view];
  v5 = [v4 layer];
  [v5 setCornerRadius:8.0];

  v6 = [MEMORY[0x277D75348] clearColor];
  v7 = [(WAWeatherPlatterViewController *)self view];
  [v7 setBackgroundColor:v6];

  v8 = [(WAWeatherPlatterViewController *)self view];
  [v8 setAutoresizingMask:16];

  [(WAWeatherPlatterViewController *)self setupBackgroundView];
  [(WAWeatherPlatterViewController *)self setupHeaderView];
  [(WAWeatherPlatterViewController *)self setupAfterHeaderDividerView];
  [(WAWeatherPlatterViewController *)self setupAQIView];
  [(WAWeatherPlatterViewController *)self setupAfterAQIDividerView];
  [(WAWeatherPlatterViewController *)self setupHourlyForecast];
  v9 = [(WAWeatherPlatterViewController *)self view];
  [v9 setNeedsUpdateConstraints];
}

- (void)updateViewConstraints
{
  [(WAWeatherPlatterViewController *)self setupConstraints];
  v4.receiver = self;
  v4.super_class = WAWeatherPlatterViewController;
  [(WAWeatherPlatterViewController *)&v4 updateViewConstraints];
  v3 = [(WAWeatherPlatterViewController *)self aqiView];
  [v3 setNeedsLayout];
}

- (void)setupBackgroundView
{
  v3 = [(WAWeatherPlatterViewController *)self backgroundView];

  if (v3)
  {
    v4 = [(WAWeatherPlatterViewController *)self backgroundView];
    [v4 removeFromSuperview];

    [(WAWeatherPlatterViewController *)self setBackgroundView:0];
  }

  v5 = [(WAWeatherPlatterViewController *)self view];
  [v5 bounds];
  [(WAWeatherPlatterViewController *)self setLastBounds:?];

  v6 = objc_opt_new();
  [(WAWeatherPlatterViewController *)self setBackgroundView:v6];

  v7 = [MEMORY[0x277D75348] systemBackgroundColor];
  v8 = [(WAWeatherPlatterViewController *)self backgroundView];
  [v8 setBackgroundColor:v7];

  v9 = [(WAWeatherPlatterViewController *)self backgroundView];
  [v9 setAlpha:0.7];

  v10 = [(WAWeatherPlatterViewController *)self backgroundView];
  [v10 setAutoresizingMask:18];

  [(WAWeatherPlatterViewController *)self lastBounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [(WAWeatherPlatterViewController *)self backgroundView];
  [v19 setFrame:{v12, v14, v16, v18}];

  v21 = [(WAWeatherPlatterViewController *)self view];
  v20 = [(WAWeatherPlatterViewController *)self backgroundView];
  [v21 addSubview:v20];
}

- (void)setupHeaderView
{
  v3 = [(WAWeatherPlatterViewController *)self headerView];

  if (v3)
  {
    v4 = [(WAWeatherPlatterViewController *)self headerView];
    [v4 removeFromSuperview];

    [(WAWeatherPlatterViewController *)self setHeaderView:0];
  }

  v5 = objc_opt_new();
  [(WAWeatherPlatterViewController *)self setHeaderView:v5];

  v6 = [(WAWeatherPlatterViewController *)self headerView];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = [(WAWeatherPlatterViewController *)self view];
  v7 = [(WAWeatherPlatterViewController *)self headerView];
  [v8 addSubview:v7];
}

- (void)setupAfterHeaderDividerView
{
  v3 = [(WAWeatherPlatterViewController *)self afterHeaderDividerLineView];

  if (v3)
  {
    v4 = [(WAWeatherPlatterViewController *)self afterHeaderDividerLineView];
    [v4 removeFromSuperview];

    [(WAWeatherPlatterViewController *)self setAfterHeaderDividerLineView:0];
  }

  v5 = objc_alloc(MEMORY[0x277D75D18]);
  v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(WAWeatherPlatterViewController *)self setAfterHeaderDividerLineView:v6];

  v7 = WADividerLineColor();
  v8 = [(WAWeatherPlatterViewController *)self afterHeaderDividerLineView];
  [v8 setBackgroundColor:v7];

  v9 = [(WAWeatherPlatterViewController *)self afterHeaderDividerLineView];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  v11 = [(WAWeatherPlatterViewController *)self view];
  v10 = [(WAWeatherPlatterViewController *)self afterHeaderDividerLineView];
  [v11 addSubview:v10];
}

- (void)setupAQIView
{
  v3 = [(WAWeatherPlatterViewController *)self aqiView];

  if (v3)
  {
    v4 = [(WAWeatherPlatterViewController *)self aqiView];
    [v4 removeFromSuperview];

    [(WAWeatherPlatterViewController *)self setAqiView:0];
  }

  v5 = [WAAQIView alloc];
  v6 = [(WAWeatherPlatterViewController *)self view];
  [v6 bounds];
  v7 = [(WAAQIView *)v5 initWithFrame:0.0, 0.0];
  [(WAWeatherPlatterViewController *)self setAqiView:v7];

  v8 = [(WAWeatherPlatterViewController *)self aqiView];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  v9 = [(WAWeatherPlatterViewController *)self aqiView];
  v10 = [(WAWeatherPlatterViewController *)self city];
  [v9 updateWithCity:v10 layoutMode:3];

  v12 = [(WAWeatherPlatterViewController *)self view];
  v11 = [(WAWeatherPlatterViewController *)self aqiView];
  [v12 addSubview:v11];
}

- (void)setupAfterAQIDividerView
{
  v3 = [(WAWeatherPlatterViewController *)self afterAQIDividerLineView];

  if (v3)
  {
    v4 = [(WAWeatherPlatterViewController *)self afterAQIDividerLineView];
    [v4 removeFromSuperview];

    [(WAWeatherPlatterViewController *)self setAfterAQIDividerLineView:0];
  }

  v5 = objc_alloc(MEMORY[0x277D75D18]);
  v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(WAWeatherPlatterViewController *)self setAfterAQIDividerLineView:v6];

  v7 = WADividerLineColor();
  v8 = [(WAWeatherPlatterViewController *)self afterAQIDividerLineView];
  [v8 setBackgroundColor:v7];

  v9 = [(WAWeatherPlatterViewController *)self afterAQIDividerLineView];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  v11 = [(WAWeatherPlatterViewController *)self view];
  v10 = [(WAWeatherPlatterViewController *)self afterAQIDividerLineView];
  [v11 addSubview:v10];
}

- (void)setupHourlyForecast
{
  v3 = [(WAWeatherPlatterViewController *)self hourlyBeltView];

  if (v3)
  {
    v4 = [(WAWeatherPlatterViewController *)self hourlyBeltView];
    [v4 removeFromSuperview];

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
  v9 = [(WAWeatherPlatterViewController *)self hourlyForecastViews];
  v10 = [v8 initWithArrangedSubviews:v9];
  [(WAWeatherPlatterViewController *)self setHourlyBeltView:v10];

  v11 = [(WAWeatherPlatterViewController *)self hourlyBeltView];
  [v11 setAxis:0];

  v12 = [(WAWeatherPlatterViewController *)self hourlyBeltView];
  [v12 setDistribution:1];

  v13 = [(WAWeatherPlatterViewController *)self hourlyBeltView];
  [v13 setAlignment:1];

  v14 = [(WAWeatherPlatterViewController *)self hourlyBeltView];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

  v15 = [(WAWeatherPlatterViewController *)self view];
  v16 = [(WAWeatherPlatterViewController *)self hourlyBeltView];
  [v15 addSubview:v16];

  [(WAWeatherPlatterViewController *)self _updateViewContent];
  v17 = [(WAWeatherPlatterViewController *)self view];
  [v17 setNeedsUpdateConstraints];
}

- (void)setupConstraints
{
  v44[4] = *MEMORY[0x277D85DE8];
  v3 = [(WAWeatherPlatterViewController *)self constraints];

  if (v3)
  {
    v4 = MEMORY[0x277CCAAD0];
    v5 = [(WAWeatherPlatterViewController *)self constraints];
    [v4 deactivateConstraints:v5];

    [(WAWeatherPlatterViewController *)self setConstraints:0];
  }

  v6 = _NSDictionaryOfVariableBindings(&cfstr_HeaderviewAfte.isa, self->_headerView, self->_afterHeaderDividerLineView, self->_aqiView, self->_afterAQIDividerLineView, self->_hourlyBeltView, 0);
  v44[0] = &unk_288235718;
  v43[0] = @"DividerLineGap";
  v43[1] = @"DividerLineHeight";
  v7 = MEMORY[0x277CCABB0];
  v8 = [(WAWeatherPlatterViewController *)self traitCollection];
  [v8 displayScale];
  v10 = [v7 numberWithDouble:1.0 / v9];
  v44[1] = v10;
  v43[2] = @"AQIViewHeight";
  v11 = MEMORY[0x277CCABB0];
  v12 = [(WAWeatherPlatterViewController *)self aqiView];
  v13 = [(WAWeatherPlatterViewController *)self view];
  [v13 bounds];
  [v12 sizeThatFits:{v14, v15}];
  v17 = [v11 numberWithDouble:v16];
  v43[3] = @"AQIViewXMargin";
  v44[2] = v17;
  v44[3] = &unk_288235718;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:4];

  v19 = objc_opt_new();
  [(WAWeatherPlatterViewController *)self setConstraints:v19];

  v20 = [(WAWeatherPlatterViewController *)self constraints];
  v21 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[_headerView]|" options:0 metrics:v18 views:v6];
  [v20 addObjectsFromArray:v21];

  v22 = [(WAWeatherPlatterViewController *)self constraints];
  v23 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[_hourlyBeltView]|" options:0 metrics:v18 views:v6];
  [v22 addObjectsFromArray:v23];

  v24 = [(WAWeatherPlatterViewController *)self city];
  LODWORD(v23) = [(WAWeatherPlatterViewController *)self _showingAQIViewForCity:v24];

  v25 = [(WAWeatherPlatterViewController *)self constraints];
  if (v23)
  {
    v26 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-DividerLineGap-[_afterAQIDividerLineView]|" options:0 metrics:v18 views:v6];
    [v25 addObjectsFromArray:v26];

    v27 = [(WAWeatherPlatterViewController *)self constraints];
    v28 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-AQIViewXMargin-[_aqiView]-AQIViewXMargin-|" options:0 metrics:v18 views:v6];
    [v27 addObjectsFromArray:v28];

    v29 = [(WAWeatherPlatterViewController *)self constraints];
    v30 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-DividerLineGap-[_afterHeaderDividerLineView]|" options:0 metrics:v18 views:v6];
    [v29 addObjectsFromArray:v30];

    v31 = [(WAWeatherPlatterViewController *)self constraints];
    v32 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[_headerView][_afterHeaderDividerLineView(==DividerLineHeight)]" options:0 metrics:v18 views:v6];
    [v31 addObjectsFromArray:v32];

    v25 = [(WAWeatherPlatterViewController *)self constraints];
    v33 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:[_afterHeaderDividerLineView][_aqiView(==AQIViewHeight)]" options:0 metrics:v18 views:v6];
    [v25 addObjectsFromArray:v33];
    v34 = @"V:[_afterAQIDividerLineView][_hourlyBeltView]|";
    v35 = @"V:[_aqiView][_afterAQIDividerLineView(==DividerLineHeight)]";
  }

  else
  {
    v33 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-DividerLineGap-[_afterHeaderDividerLineView]|" options:0 metrics:v18 views:v6];
    [v25 addObjectsFromArray:v33];
    v34 = @"V:[_afterHeaderDividerLineView][_hourlyBeltView]|";
    v35 = @"V:|[_headerView][_afterHeaderDividerLineView(==DividerLineHeight)]";
  }

  v36 = [(WAWeatherPlatterViewController *)self constraints];
  v37 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:v35 options:0 metrics:v18 views:v6];
  [v36 addObjectsFromArray:v37];

  v38 = [(WAWeatherPlatterViewController *)self constraints];
  v39 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:v34 options:0 metrics:v18 views:v6];
  [v38 addObjectsFromArray:v39];

  v40 = MEMORY[0x277CCAAD0];
  v41 = [(WAWeatherPlatterViewController *)self constraints];
  [v40 activateConstraints:v41];

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
  v11 = [(WAWeatherPlatterViewController *)self view];
  [v11 bounds];
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
    v17 = [(WAWeatherPlatterViewController *)self view];
    [v17 bounds];
    [(WAWeatherPlatterViewController *)self setLastBounds:?];

    [(WAWeatherPlatterViewController *)self setupHourlyForecast];
    [(WAWeatherPlatterViewController *)self lastBounds];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v26 = [(WAWeatherPlatterViewController *)self backgroundView];
    [v26 setFrame:{v19, v21, v23, v25}];
  }
}

- (void)_updateViewContent
{
  v144 = *MEMORY[0x277D85DE8];
  v3 = [(WAWeatherPlatterViewController *)self headerView];
  if (v3)
  {
    v4 = [(WAWeatherPlatterViewController *)self model];
    v5 = [v4 forecastModel];

    v6 = [v5 currentConditions];
    v7 = [v5 hourlyForecasts];
    v108 = [v5 dailyForecasts];
    v107 = [v5 airQualityConditions];
    v8 = [v5 location];
    v111 = [v8 isDay];
    v9 = [(WAWeatherPlatterViewController *)self URLComponents];
    v10 = [v9 locationName];
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = [v8 displayName];

      if (!v11)
      {
        v13 = 0;
        if (!v7)
        {
          goto LABEL_57;
        }

LABEL_6:
        if (v108 && v6)
        {
          v105 = v7;
          v106 = v5;
          v117 = self;
          if (_updateViewContent_onceToken != -1)
          {
            [WAWeatherPlatterViewController _updateViewContent];
          }

          v14 = [MEMORY[0x277D7B2D8] sharedObserver];
          v15 = [v14 temperatureUnit];
          [_updateViewContent_temperatureFormatter setOutputUnit:v15];

          [_updateViewContent_temperatureFormatter setSymbolType:!WAIsChinaSKUAndSimplifiedChinese()];
          v16 = _updateViewContent_temperatureFormatter;
          v17 = [v6 temperature];
          v18 = [v16 stringForObjectValue:v17];

          v19 = _updateViewContent_temperatureFormatter;
          v20 = [v108 firstObject];
          [v20 low];
          v22 = v21 = v6;
          v23 = [v19 stringForObjectValue:v22];

          v24 = _updateViewContent_temperatureFormatter;
          v25 = [v108 firstObject];
          v26 = [v25 high];
          v27 = [v24 stringForObjectValue:v26];

          v103 = v21;
          v28 = WAConditionsLineStringFromCurrentForecasts(v21);
          v29 = WAAirQualityCategoryFromConditions(v107);
          v30 = [v8 countryAbbreviation];
          v104 = v3;
          if (WAAirQualityIsSignificantForCategory(v29, v30))
          {
            v31 = [v8 countryAbbreviation];
            v32 = WAAirQualityDescriptionForCategory(v29, v31);
          }

          else
          {
            v32 = WAConditionsLine2StringFromHourlyForecasts(v105);
          }

          v33 = +[WeatherInternalPreferences sharedInternalPreferences];
          v34 = [v33 isV3Enabled];

          v101 = v13;
          if (v34)
          {
            v35 = [v106 city];
            v36 = [v35 airQualityScaleCategory];

            v37 = [v36 longDescription];
            if (v37)
            {
              v38 = v37;
              v39 = [v36 categoryIndex];
              v40 = [v36 warningLevel];

              if (v39 > v40)
              {
                v41 = [v36 longDescription];

                v32 = v41;
              }
            }
          }

          v42 = RemapSmallIconForDayOrNight([v103 conditionCode], objc_msgSend(v8, "isDay"));
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
          v46 = [v8 timeZone];
          [v45 setTimeZone:v46];

          v47 = _updateViewContent_ISO6801Calendar;
          v48 = [v106 sunrise];
          v49 = [v47 components:96 fromDate:v48];

          v50 = [v49 minute];
          v51 = v50 + 100 * [v49 hour];
          v52 = _updateViewContent_ISO6801Calendar;
          v53 = [v106 sunset];
          v54 = [v52 components:96 fromDate:v53];

          v55 = [v54 minute];
          v94 = v54;
          v56 = v55 + 100 * [v54 hour];
          v102 = v8;
          v57 = [v8 timeZone];
          v58 = CityTimeDigitForTimeZone(v57);

          [_updateViewContent_temperatureFormatter setSymbolType:0];
          v59 = [v103 temperature];
          *&v109 = v56;
          *(&v109 + 1) = v51;
          v115 = +[WAHourlyForecastParser parseForecasts:temperature:currentTime:condition:sunrise:sunset:](WAHourlyForecastParser, "parseForecasts:temperature:currentTime:condition:sunrise:sunset:", v105, v59, v58, [v103 conditionCode], v51, v56);

          v126 = 0u;
          v127 = 0u;
          v124 = 0u;
          v125 = 0u;
          obj = [(WAWeatherPlatterViewController *)v117 hourlyForecastViews];
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
                v63 = [v62 eventType];
                v64 = [v62 time];
                v65 = Time24StringToInt(v64);

                if (v109 == 0)
                {
                  v66 = 1;
                }

                else
                {
                  v66 = v111;
                  if (!v63)
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
                v74 = [v62 eventType];
                switch(v74)
                {
                  case 1:
                    v75 = WAImageForSunrise(3);
                    goto LABEL_47;
                  case 3:
                    v76 = WAImageForLegacyConditionCode(v73, 3uLL);
                    v77 = objc_alloc(MEMORY[0x277CCA898]);
                    v78 = [v62 time];
                    v141 = v110;
                    v142 = v71;
                    v79 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v142 forKeys:&v141 count:1];
                    v80 = [v77 initWithString:v78 attributes:v79];

                    break;
                  case 2:
                    v75 = WAImageForSunset(3);
LABEL_47:
                    v76 = v75;
                    v81 = [v62 forecastDetail];
                    v82 = [v62 time];
                    v80 = WATimeInRegionFormat(v82, v71);
                    goto LABEL_50;
                  default:
                    v76 = WAImageForLegacyConditionCode(v73, 3uLL);
                    v78 = [v62 time];
                    v80 = WACondensedTimeInRegionFormat(v78, v71);
                    break;
                }

                v83 = _updateViewContent_temperatureFormatter;
                v82 = [v62 temperature];
                v81 = [v83 stringForObjectValue:v82];
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
                v121 = v81;
                v122 = v72;
                v123 = v76;
                v87 = v76;
                v88 = v72;
                v89 = v81;
                v90 = v84;
                [v86 performWithoutAnimation:v119];
                ++v60;
              }

              v116 = [obj countByEnumeratingWithState:&v124 objects:v143 count:16];
            }

            while (v116);
          }

          v6 = v103;
          v3 = v104;
          v7 = v105;
          v5 = v106;
          v13 = v101;
          v8 = v102;
          v91 = v100;
          goto LABEL_58;
        }

LABEL_57:
        v92 = MEMORY[0x277D75D18];
        v136[0] = MEMORY[0x277D85DD0];
        v136[1] = 3221225472;
        v136[2] = __52__WAWeatherPlatterViewController__updateViewContent__block_invoke_2;
        v136[3] = &unk_279E67C98;
        v137 = v3;
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
    v139 = v3;
    v13 = v11;
    v140 = v13;
    [v12 performWithoutAnimation:v138];

    if (!v7)
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

- (void)_contentSizeDidUpdate:(id)a3
{
  v4 = WALogForCategory(10);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [WAWeatherPlatterViewController _contentSizeDidUpdate:v4];
  }

  v5 = [(WAWeatherPlatterViewController *)self view];
  [v5 setNeedsUpdateConstraints];
}

- (void)_kickoffLoadingWithLocation:(id)a3 orPerhapsALocationString:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __87__WAWeatherPlatterViewController__kickoffLoadingWithLocation_orPerhapsALocationString___block_invoke;
  v13[3] = &unk_279E68AC8;
  v8 = v6;
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
    if (!v7)
    {
      v12 = 0;
      goto LABEL_6;
    }

    v11 = [objc_alloc(MEMORY[0x277D7B278]) initWithSearchString:v7 resultHandler:v9];
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

- (void)_buildModelForLocation:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(WAWeatherPlatterViewController *)a2 _buildModelForLocation:?];
  }

  [(WAWeatherPlatterViewController *)self _updateStatus:2];
  [(WAWeatherPlatterViewController *)self _loadAQIDataForLocation:v5];
  objc_initWeak(&location, self);
  v6 = [WATodayModel modelWithLocation:v5];
  [(WAWeatherPlatterViewController *)self setModel:v6];

  v7 = [(WAWeatherPlatterViewController *)self model];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__WAWeatherPlatterViewController__buildModelForLocation___block_invoke;
  v9[3] = &unk_279E68B18;
  v8 = v5;
  v10 = v8;
  objc_copyWeak(&v11, &location);
  [v7 executeModelUpdateWithCompletion:v9];

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

- (void)_loadAQIDataForLocation:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(City);
  v6 = [v4 displayName];
  [(City *)v5 setName:v6];

  v7 = [v4 geoLocation];
  [(City *)v5 setLocation:v7];

  [(City *)v5 setWfLocation:v4];
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
  v2 = [MEMORY[0x277D759A0] mainScreen];
  [v2 nativeBounds];
  v4 = v3;

  result = 374.0;
  if (v4 <= 374.0)
  {
    return v4;
  }

  return result;
}

- (void)_updateViewWithAQIFromCity:(id)a3
{
  v4 = a3;
  [(WAWeatherPlatterViewController *)self setCity:v4];
  v5 = [(WAWeatherPlatterViewController *)self _showingAQIViewForCity:v4];

  v6 = [(WAWeatherPlatterViewController *)self aqiView];
  v7 = v6;
  if (v5)
  {
    v8 = [(WAWeatherPlatterViewController *)self city];
    [v7 updateWithCity:v8 layoutMode:3];

    v9 = [(WAWeatherPlatterViewController *)self aqiView];
    [v9 setNeedsLayout];

    v10 = [(WAWeatherPlatterViewController *)self aqiView];
    v11 = [(WAWeatherPlatterViewController *)self view];
    [v11 bounds];
    [v10 sizeThatFits:{v12, v13}];

    v14 = [(WAWeatherPlatterViewController *)self traitCollection];
    [v14 displayScale];

    +[WAWeatherPlatterViewController defaultViewHeight];
    [(WAWeatherPlatterViewController *)self preferredContentWidth];
    [(WAWeatherPlatterViewController *)self setPreferredContentSize:?];
    v15 = [(WAWeatherPlatterViewController *)self aqiView];
    [v15 setHidden:0];

    v16 = [(WAWeatherPlatterViewController *)self afterAQIDividerLineView];
    [v16 setHidden:0];
  }

  else
  {
    [v6 setHidden:1];

    v17 = [(WAWeatherPlatterViewController *)self afterAQIDividerLineView];
    [v17 setHidden:1];

    [(WAWeatherPlatterViewController *)self preferredContentWidth];
    v19 = v18;
    +[WAWeatherPlatterViewController defaultViewHeight];
    [(WAWeatherPlatterViewController *)self setPreferredContentSize:v19, v20];
  }

  [(WAWeatherPlatterViewController *)self updateViewConstraints];
}

- (void)_updateStatus:(int64_t)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __48__WAWeatherPlatterViewController__updateStatus___block_invoke;
  v3[3] = &unk_279E68B90;
  v3[4] = self;
  v3[5] = a3;
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