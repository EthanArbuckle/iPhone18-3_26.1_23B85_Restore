@interface WeatherView
- (BOOL)_setCity:(id)a3 associateAsDelegate:(BOOL)a4;
- (BOOL)updateWeatherDisplayForCity:(id)a3;
- (WeatherView)initWithFrame:(CGRect)a3;
- (id)bundle;
- (void)cityDidStartWeatherUpdate:(id)a3;
- (void)cleanupWindView;
- (void)dealloc;
- (void)refreshLocalization;
- (void)resetLocale:(id)a3;
- (void)showCity:(id)a3;
@end

@implementation WeatherView

- (WeatherView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = WeatherView;
  v3 = [(WeatherView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEAF8] currentLocale];
    lastLocale = v3->_lastLocale;
    v3->_lastLocale = v4;

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:v3 selector:sel_resetLocale_ name:*MEMORY[0x277CBE620] object:0];
  }

  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  [(City *)self->_city removeUpdateObserver:self];
  [(WeatherView *)self cleanupWindView];
  v4.receiver = self;
  v4.super_class = WeatherView;
  [(WeatherView *)&v4 dealloc];
}

- (void)resetLocale:(id)a3
{
  lastLocale = self->_lastLocale;
  v5 = [MEMORY[0x277CBEAF8] currentLocale];
  LOBYTE(lastLocale) = [(NSLocale *)lastLocale isEqualToLocaleForWeather:v5];

  if ((lastLocale & 1) == 0)
  {
    v6 = [(WeatherView *)self city];
    [(WeatherView *)self showCity:v6];
  }

  v7 = [MEMORY[0x277CBEAF8] currentLocale];
  v8 = self->_lastLocale;
  self->_lastLocale = v7;

  MEMORY[0x2821F96F8](v7, v8);
}

- (BOOL)_setCity:(id)a3 associateAsDelegate:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  city = self->_city;
  if (city != v7)
  {
    [(City *)self->_city removeUpdateObserver:self];
    if (([MEMORY[0x277D75128] shouldMakeUIForDefaultPNG] & 1) == 0)
    {
      objc_storeStrong(&self->_city, a3);
      if (self->_city)
      {
        v9 = !v4;
      }

      else
      {
        v9 = 1;
      }

      if (!v9)
      {
        [(City *)v7 addUpdateObserver:self];
      }
    }
  }

  return city != v7;
}

- (void)showCity:(id)a3
{
  v4 = a3;
  if ([WeatherView _setCity:"_setCity:associateAsDelegate:" associateAsDelegate:?])
  {
    [(WeatherView *)self updateWeatherDisplayForCity:v4];
  }
}

- (BOOL)updateWeatherDisplayForCity:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"WeatherView.m" lineNumber:113 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[WeatherView updateWeatherDisplayForCity:]", objc_opt_class()}];

  return 0;
}

- (void)cityDidStartWeatherUpdate:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"WeatherView.m" lineNumber:119 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[WeatherView cityDidStartWeatherUpdate:]", objc_opt_class()}];
}

- (void)refreshLocalization
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"WeatherView.m" lineNumber:124 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[WeatherView refreshLocalization]", objc_opt_class()}];
}

- (id)bundle
{
  v2 = bundle___bundle;
  if (!bundle___bundle)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = bundle___bundle;
    bundle___bundle = v3;

    v2 = bundle___bundle;
  }

  return v2;
}

- (void)cleanupWindView
{
  windView = self->_windView;
  if (windView)
  {
    v4 = [(UIView *)windView layer];
    [v4 removeAnimationForKey:@"contents"];

    [(UIView *)self->_windView removeFromSuperview];
    v5 = self->_windView;
    self->_windView = 0;
  }
}

@end