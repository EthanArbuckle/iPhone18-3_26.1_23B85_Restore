@interface WAGreetingView
- (WAGreetingView)init;
- (WAGreetingView)initWithColor:(id)color;
- (WAGreetingView)initWithFrame:(CGRect)frame;
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

- (WAGreetingView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = WAGreetingView;
  v3 = [(WAGreetingView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(WAGreetingView *)v3 setIsViewCreated:0];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(WAGreetingView *)v4 setBackgroundColor:clearColor];

    [(WAGreetingView *)v4 createViews];
    [(WAGreetingView *)v4 startService];
  }

  return v4;
}

- (WAGreetingView)initWithColor:(id)color
{
  colorCopy = color;
  v8.receiver = self;
  v8.super_class = WAGreetingView;
  v5 = [(WAGreetingView *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(WAGreetingView *)v5 setLabelColor:colorCopy];
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
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(WAGreetingView *)v3 setBackgroundColor:clearColor];

    [(WAGreetingView *)v3 createViews];
    [(WAGreetingView *)v3 startService];
  }

  return v3;
}

- (void)startService
{
  todayModel = [(WAGreetingView *)self todayModel];

  if (!todayModel)
  {
    [(WAGreetingView *)self _setupWeatherModel];
  }

  objc_initWeak(&location, self);
  todayModel2 = [(WAGreetingView *)self todayModel];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __30__WAGreetingView_startService__block_invoke;
  v5[3] = &unk_279E682F0;
  objc_copyWeak(&v6, &location);
  [todayModel2 executeModelUpdateWithCompletion:v5];

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

  todayModel = [(WAGreetingView *)self todayModel];
  [todayModel configureWithInitialCitySource:1 locationServicesActive:1];

  todayModel2 = [(WAGreetingView *)self todayModel];
  [todayModel2 addObserver:self];
}

- (void)_teardownWeatherModel
{
  todayModel = [(WAGreetingView *)self todayModel];
  [todayModel removeObserver:self];

  [(WAGreetingView *)self setTodayModel:0];
}

- (void)updateLabelColors
{
  natualLanguageDescriptionLabel = [(WAGreetingView *)self natualLanguageDescriptionLabel];
  labelColor = [(WAGreetingView *)self labelColor];
  [natualLanguageDescriptionLabel setTextColor:labelColor];

  temperatureLabel = [(WAGreetingView *)self temperatureLabel];
  labelColor2 = [(WAGreetingView *)self labelColor];
  [temperatureLabel setTextColor:labelColor2];
}

- (void)createViews
{
  if (!self->_natualLanguageDescriptionLabel)
  {
    v3 = objc_alloc_init(MEMORY[0x277D756B8]);
    natualLanguageDescriptionLabel = self->_natualLanguageDescriptionLabel;
    self->_natualLanguageDescriptionLabel = v3;

    labelColor = [(WAGreetingView *)self labelColor];
    if (labelColor)
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

    labelColor2 = [(WAGreetingView *)self labelColor];
    if (labelColor2)
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
    natualLanguageDescriptionLabel = [(WAGreetingView *)self natualLanguageDescriptionLabel];
    centerXAnchor = [natualLanguageDescriptionLabel centerXAnchor];
    centerXAnchor2 = [(WAGreetingView *)self centerXAnchor];
    v9 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [(NSMutableArray *)v5 addObject:v9];

    v10 = self->_constraints;
    natualLanguageDescriptionLabel2 = [(WAGreetingView *)self natualLanguageDescriptionLabel];
    firstBaselineAnchor = [natualLanguageDescriptionLabel2 firstBaselineAnchor];
    topAnchor = [(WAGreetingView *)self topAnchor];
    v14 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:32.0];
    [(NSMutableArray *)v10 addObject:v14];

    v15 = self->_constraints;
    natualLanguageDescriptionLabel3 = [(WAGreetingView *)self natualLanguageDescriptionLabel];
    leadingAnchor = [natualLanguageDescriptionLabel3 leadingAnchor];
    leadingAnchor2 = [(WAGreetingView *)self leadingAnchor];
    v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:25.0];
    [(NSMutableArray *)v15 addObject:v19];

    v20 = self->_constraints;
    natualLanguageDescriptionLabel4 = [(WAGreetingView *)self natualLanguageDescriptionLabel];
    trailingAnchor = [natualLanguageDescriptionLabel4 trailingAnchor];
    trailingAnchor2 = [(WAGreetingView *)self trailingAnchor];
    v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-25.0];
    [(NSMutableArray *)v20 addObject:v24];

    v25 = self->_constraints;
    conditionImageView = [(WAGreetingView *)self conditionImageView];
    widthAnchor = [conditionImageView widthAnchor];
    v28 = [widthAnchor constraintEqualToConstant:65.0];
    [(NSMutableArray *)v25 addObject:v28];

    v29 = self->_constraints;
    conditionImageView2 = [(WAGreetingView *)self conditionImageView];
    heightAnchor = [conditionImageView2 heightAnchor];
    v32 = [heightAnchor constraintEqualToConstant:65.0];
    [(NSMutableArray *)v29 addObject:v32];

    v33 = self->_constraints;
    conditionImageView3 = [(WAGreetingView *)self conditionImageView];
    trailingAnchor3 = [conditionImageView3 trailingAnchor];
    centerXAnchor3 = [(WAGreetingView *)self centerXAnchor];
    v37 = [trailingAnchor3 constraintEqualToAnchor:centerXAnchor3];
    [(NSMutableArray *)v33 addObject:v37];

    v38 = self->_constraints;
    conditionImageView4 = [(WAGreetingView *)self conditionImageView];
    centerYAnchor = [conditionImageView4 centerYAnchor];
    temperatureLabel = [(WAGreetingView *)self temperatureLabel];
    centerYAnchor2 = [temperatureLabel centerYAnchor];
    v43 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [(NSMutableArray *)v38 addObject:v43];

    v44 = self->_constraints;
    temperatureLabel2 = [(WAGreetingView *)self temperatureLabel];
    firstBaselineAnchor2 = [temperatureLabel2 firstBaselineAnchor];
    natualLanguageDescriptionLabel5 = [(WAGreetingView *)self natualLanguageDescriptionLabel];
    lastBaselineAnchor = [natualLanguageDescriptionLabel5 lastBaselineAnchor];
    v49 = [firstBaselineAnchor2 constraintEqualToAnchor:lastBaselineAnchor constant:68.0];
    [(NSMutableArray *)v44 addObject:v49];

    v50 = self->_constraints;
    temperatureLabel3 = [(WAGreetingView *)self temperatureLabel];
    leadingAnchor3 = [temperatureLabel3 leadingAnchor];
    centerXAnchor4 = [(WAGreetingView *)self centerXAnchor];
    v54 = [leadingAnchor3 constraintEqualToAnchor:centerXAnchor4];
    [(NSMutableArray *)v50 addObject:v54];

    v55 = self->_constraints;
    temperatureLabel4 = [(WAGreetingView *)self temperatureLabel];
    trailingAnchor4 = [temperatureLabel4 trailingAnchor];
    trailingAnchor5 = [(WAGreetingView *)self trailingAnchor];
    v59 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
    [(NSMutableArray *)v55 addObject:v59];

    v60 = MEMORY[0x277CCAAD0];
    v61 = self->_constraints;

    [v60 activateConstraints:v61];
  }
}

- (void)updateView
{
  natualLanguageDescriptionLabel = [(WAGreetingView *)self natualLanguageDescriptionLabel];
  todayModel = [(WAGreetingView *)self todayModel];
  forecastModel = [todayModel forecastModel];
  city = [forecastModel city];
  naturalLanguageDescription = [city naturalLanguageDescription];
  [natualLanguageDescriptionLabel setText:naturalLanguageDescription];

  conditionImageView = [(WAGreetingView *)self conditionImageView];
  _conditionsImage = [(WAGreetingView *)self _conditionsImage];
  [conditionImageView setImage:_conditionsImage];

  temperatureLabel = [(WAGreetingView *)self temperatureLabel];
  _temperature = [(WAGreetingView *)self _temperature];
  [temperatureLabel setText:_temperature];
}

- (id)_temperature
{
  if (_temperature_onceToken_0 != -1)
  {
    [WAGreetingView _temperature];
  }

  mEMORY[0x277D7B2D8] = [MEMORY[0x277D7B2D8] sharedObserver];
  temperatureUnit = [mEMORY[0x277D7B2D8] temperatureUnit];
  [_temperature_temperatureFormatter_0 setOutputUnit:temperatureUnit];

  [_temperature_temperatureFormatter_0 setSymbolType:!WAIsChinaSKUAndSimplifiedChinese()];
  v5 = _temperature_temperatureFormatter_0;
  todayModel = [(WAGreetingView *)self todayModel];
  forecastModel = [todayModel forecastModel];
  currentConditions = [forecastModel currentConditions];
  temperature = [currentConditions temperature];
  v10 = [v5 stringForObjectValue:temperature];

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
  todayModel = [(WAGreetingView *)self todayModel];
  forecastModel = [todayModel forecastModel];
  currentConditions = [forecastModel currentConditions];
  v5 = WAImageForLegacyConditionCode([currentConditions conditionCode], 0);

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