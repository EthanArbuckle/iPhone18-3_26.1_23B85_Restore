@interface WAGreetingView
- (WAGreetingView)init;
- (WAGreetingView)initWithColor:(id)a3;
- (WAGreetingView)initWithFrame:(CGRect)a3;
- (id)_conditionsImage;
- (id)_temperature;
- (void)_setupWeatherModel;
- (void)_teardownWeatherModel;
- (void)createViews;
- (void)dealloc;
- (void)setupConstraints;
- (void)startService;
- (void)updateConstraints;
- (void)updateLabelColors;
- (void)updateView;
@end

@implementation WAGreetingView

- (WAGreetingView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = WAGreetingView;
  v3 = [(WAGreetingView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(WAGreetingView *)v3 setIsViewCreated:0];
    v5 = [MEMORY[0x277D75348] clearColor];
    [(WAGreetingView *)v4 setBackgroundColor:v5];

    [(WAGreetingView *)v4 createViews];
    [(WAGreetingView *)v4 startService];
  }

  return v4;
}

- (WAGreetingView)initWithColor:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = WAGreetingView;
  v5 = [(WAGreetingView *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(WAGreetingView *)v5 setLabelColor:v4];
    [(WAGreetingView *)v6 updateLabelColors];
  }

  return v6;
}

- (WAGreetingView)init
{
  v6.receiver = self;
  v6.super_class = WAGreetingView;
  v2 = [(WAGreetingView *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(WAGreetingView *)v2 setIsViewCreated:0];
    v4 = [MEMORY[0x277D75348] clearColor];
    [(WAGreetingView *)v3 setBackgroundColor:v4];

    [(WAGreetingView *)v3 createViews];
    [(WAGreetingView *)v3 startService];
  }

  return v3;
}

- (void)startService
{
  v3 = [(WAGreetingView *)self todayModel];

  if (!v3)
  {
    [(WAGreetingView *)self _setupWeatherModel];
  }

  objc_initWeak(&location, self);
  v4 = [(WAGreetingView *)self todayModel];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __30__WAGreetingView_startService__block_invoke;
  v5[3] = &unk_279E682F0;
  objc_copyWeak(&v6, &location);
  [v4 executeModelUpdateWithCompletion:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __30__WAGreetingView_startService__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = WALogForCategory(3);
  v6 = os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR);
  if (v4)
  {
    if (v6)
    {
      __30__WAGreetingView_startService__block_invoke_cold_1(v4, WeakRetained);
    }
  }

  else
  {
    if (v6)
    {
      __30__WAGreetingView_startService__block_invoke_cold_2(WeakRetained);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained updateView];
  }
}

- (void)dealloc
{
  [(WAGreetingView *)self _teardownWeatherModel];
  v3.receiver = self;
  v3.super_class = WAGreetingView;
  [(WAGreetingView *)&v3 dealloc];
}

- (void)_setupWeatherModel
{
  v3 = [WATodayAutoupdatingLocationModel alloc];
  v4 = objc_opt_new();
  v5 = [(WATodayAutoupdatingLocationModel *)v3 initWithPreferences:v4 effectiveBundleIdentifier:@"com.apple.weather"];
  [(WAGreetingView *)self setTodayModel:v5];

  v6 = [(WAGreetingView *)self todayModel];
  [v6 configureWithInitialCitySource:1 locationServicesActive:1];

  v7 = [(WAGreetingView *)self todayModel];
  [v7 addObserver:self];
}

- (void)_teardownWeatherModel
{
  v3 = [(WAGreetingView *)self todayModel];
  [v3 removeObserver:self];

  [(WAGreetingView *)self setTodayModel:0];
}

- (void)updateLabelColors
{
  v3 = [(WAGreetingView *)self natualLanguageDescriptionLabel];
  v4 = [(WAGreetingView *)self labelColor];
  [v3 setTextColor:v4];

  v6 = [(WAGreetingView *)self temperatureLabel];
  v5 = [(WAGreetingView *)self labelColor];
  [v6 setTextColor:v5];
}

- (void)createViews
{
  if (!self->_natualLanguageDescriptionLabel)
  {
    v3 = objc_alloc_init(MEMORY[0x277D756B8]);
    natualLanguageDescriptionLabel = self->_natualLanguageDescriptionLabel;
    self->_natualLanguageDescriptionLabel = v3;

    v5 = [(WAGreetingView *)self labelColor];
    if (v5)
    {
      [(WAGreetingView *)self labelColor];
    }

    else
    {
      [MEMORY[0x277D75348] whiteColor];
    }
    v6 = ;
    [(UILabel *)self->_natualLanguageDescriptionLabel setTextColor:v6];

    [(UILabel *)self->_natualLanguageDescriptionLabel setTextAlignment:1];
    v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    [(UILabel *)self->_natualLanguageDescriptionLabel setFont:v7];

    [(UILabel *)self->_natualLanguageDescriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)self->_natualLanguageDescriptionLabel setNumberOfLines:0];
    [(UILabel *)self->_natualLanguageDescriptionLabel setLineBreakMode:0];
  }

  if (!self->_conditionImageView)
  {
    v8 = objc_alloc_init(MEMORY[0x277D755E8]);
    conditionImageView = self->_conditionImageView;
    self->_conditionImageView = v8;

    [(UIImageView *)self->_conditionImageView setContentMode:1];
    [(UIImageView *)self->_conditionImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  if (!self->_temperatureLabel)
  {
    v10 = objc_alloc_init(MEMORY[0x277D756B8]);
    temperatureLabel = self->_temperatureLabel;
    self->_temperatureLabel = v10;

    v12 = [(WAGreetingView *)self labelColor];
    if (v12)
    {
      [(WAGreetingView *)self labelColor];
    }

    else
    {
      [MEMORY[0x277D75348] whiteColor];
    }
    v13 = ;
    [(UILabel *)self->_temperatureLabel setTextColor:v13];

    [(UILabel *)self->_temperatureLabel setTextAlignment:4];
    v14 = [MEMORY[0x277D74300] systemFontOfSize:52.0 weight:*MEMORY[0x277D74408]];
    [(UILabel *)self->_temperatureLabel setFont:v14];

    [(UILabel *)self->_temperatureLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  [(WAGreetingView *)self addSubview:self->_natualLanguageDescriptionLabel];
  [(WAGreetingView *)self addSubview:self->_conditionImageView];
  [(WAGreetingView *)self addSubview:self->_temperatureLabel];
  self->_isViewCreated = 1;
}

- (void)updateConstraints
{
  v3.receiver = self;
  v3.super_class = WAGreetingView;
  [(WAGreetingView *)&v3 updateConstraints];
  [(WAGreetingView *)self setupConstraints];
}

- (void)setupConstraints
{
  if (![(NSMutableArray *)self->_constraints count]&& self->_isViewCreated)
  {
    v3 = objc_opt_new();
    constraints = self->_constraints;
    self->_constraints = v3;

    v5 = self->_constraints;
    v6 = [(WAGreetingView *)self natualLanguageDescriptionLabel];
    v7 = [v6 centerXAnchor];
    v8 = [(WAGreetingView *)self centerXAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];
    [(NSMutableArray *)v5 addObject:v9];

    v10 = self->_constraints;
    v11 = [(WAGreetingView *)self natualLanguageDescriptionLabel];
    v12 = [v11 firstBaselineAnchor];
    v13 = [(WAGreetingView *)self topAnchor];
    v14 = [v12 constraintEqualToAnchor:v13 constant:32.0];
    [(NSMutableArray *)v10 addObject:v14];

    v15 = self->_constraints;
    v16 = [(WAGreetingView *)self natualLanguageDescriptionLabel];
    v17 = [v16 leadingAnchor];
    v18 = [(WAGreetingView *)self leadingAnchor];
    v19 = [v17 constraintEqualToAnchor:v18 constant:25.0];
    [(NSMutableArray *)v15 addObject:v19];

    v20 = self->_constraints;
    v21 = [(WAGreetingView *)self natualLanguageDescriptionLabel];
    v22 = [v21 trailingAnchor];
    v23 = [(WAGreetingView *)self trailingAnchor];
    v24 = [v22 constraintEqualToAnchor:v23 constant:-25.0];
    [(NSMutableArray *)v20 addObject:v24];

    v25 = self->_constraints;
    v26 = [(WAGreetingView *)self conditionImageView];
    v27 = [v26 widthAnchor];
    v28 = [v27 constraintEqualToConstant:65.0];
    [(NSMutableArray *)v25 addObject:v28];

    v29 = self->_constraints;
    v30 = [(WAGreetingView *)self conditionImageView];
    v31 = [v30 heightAnchor];
    v32 = [v31 constraintEqualToConstant:65.0];
    [(NSMutableArray *)v29 addObject:v32];

    v33 = self->_constraints;
    v34 = [(WAGreetingView *)self conditionImageView];
    v35 = [v34 trailingAnchor];
    v36 = [(WAGreetingView *)self centerXAnchor];
    v37 = [v35 constraintEqualToAnchor:v36];
    [(NSMutableArray *)v33 addObject:v37];

    v38 = self->_constraints;
    v39 = [(WAGreetingView *)self conditionImageView];
    v40 = [v39 centerYAnchor];
    v41 = [(WAGreetingView *)self temperatureLabel];
    v42 = [v41 centerYAnchor];
    v43 = [v40 constraintEqualToAnchor:v42];
    [(NSMutableArray *)v38 addObject:v43];

    v44 = self->_constraints;
    v45 = [(WAGreetingView *)self temperatureLabel];
    v46 = [v45 firstBaselineAnchor];
    v47 = [(WAGreetingView *)self natualLanguageDescriptionLabel];
    v48 = [v47 lastBaselineAnchor];
    v49 = [v46 constraintEqualToAnchor:v48 constant:68.0];
    [(NSMutableArray *)v44 addObject:v49];

    v50 = self->_constraints;
    v51 = [(WAGreetingView *)self temperatureLabel];
    v52 = [v51 leadingAnchor];
    v53 = [(WAGreetingView *)self centerXAnchor];
    v54 = [v52 constraintEqualToAnchor:v53];
    [(NSMutableArray *)v50 addObject:v54];

    v55 = self->_constraints;
    v56 = [(WAGreetingView *)self temperatureLabel];
    v57 = [v56 trailingAnchor];
    v58 = [(WAGreetingView *)self trailingAnchor];
    v59 = [v57 constraintEqualToAnchor:v58];
    [(NSMutableArray *)v55 addObject:v59];

    v60 = MEMORY[0x277CCAAD0];
    v61 = self->_constraints;

    [v60 activateConstraints:v61];
  }
}

- (void)updateView
{
  v3 = [(WAGreetingView *)self natualLanguageDescriptionLabel];
  v4 = [(WAGreetingView *)self todayModel];
  v5 = [v4 forecastModel];
  v6 = [v5 city];
  v7 = [v6 naturalLanguageDescription];
  [v3 setText:v7];

  v8 = [(WAGreetingView *)self conditionImageView];
  v9 = [(WAGreetingView *)self _conditionsImage];
  [v8 setImage:v9];

  v11 = [(WAGreetingView *)self temperatureLabel];
  v10 = [(WAGreetingView *)self _temperature];
  [v11 setText:v10];
}

- (id)_temperature
{
  if (_temperature_onceToken_0 != -1)
  {
    [WAGreetingView _temperature];
  }

  v3 = [MEMORY[0x277D7B2D8] sharedObserver];
  v4 = [v3 temperatureUnit];
  [_temperature_temperatureFormatter_0 setOutputUnit:v4];

  [_temperature_temperatureFormatter_0 setSymbolType:!WAIsChinaSKUAndSimplifiedChinese()];
  v5 = _temperature_temperatureFormatter_0;
  v6 = [(WAGreetingView *)self todayModel];
  v7 = [v6 forecastModel];
  v8 = [v7 currentConditions];
  v9 = [v8 temperature];
  v10 = [v5 stringForObjectValue:v9];

  return v10;
}

uint64_t __30__WAGreetingView__temperature__block_invoke()
{
  v0 = objc_opt_new();
  v1 = _temperature_temperatureFormatter_0;
  _temperature_temperatureFormatter_0 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (id)_conditionsImage
{
  v2 = [(WAGreetingView *)self todayModel];
  v3 = [v2 forecastModel];
  v4 = [v3 currentConditions];
  v5 = WAImageForLegacyConditionCode([v4 conditionCode], 0);

  return v5;
}

void __30__WAGreetingView_startService__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_272ACF000, a2, OS_LOG_TYPE_ERROR, "Update Error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end