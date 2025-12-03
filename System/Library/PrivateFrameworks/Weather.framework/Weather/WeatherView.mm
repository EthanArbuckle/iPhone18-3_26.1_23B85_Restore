@interface WeatherView
- (BOOL)_setCity:(id)city associateAsDelegate:(BOOL)delegate;
- (BOOL)updateWeatherDisplayForCity:(id)city;
- (WeatherView)initWithFrame:(CGRect)frame;
- (id)bundle;
- (void)cityDidStartWeatherUpdate:(id)update;
- (void)cleanupWindView;
- (void)dealloc;
- (void)refreshLocalization;
- (void)resetLocale:(id)locale;
- (void)showCity:(id)city;
@end

@implementation WeatherView

- (WeatherView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = WeatherView;
  v3 = [(WeatherView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    lastLocale = v3->_lastLocale;
    v3->_lastLocale = currentLocale;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_resetLocale_ name:*MEMORY[0x277CBE620] object:0];
  }

  return v3;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(City *)self->_city removeUpdateObserver:self];
  [(WeatherView *)self cleanupWindView];
  v4.receiver = self;
  v4.super_class = WeatherView;
  [(WeatherView *)&v4 dealloc];
}

- (void)resetLocale:(id)locale
{
  lastLocale = self->_lastLocale;
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  LOBYTE(lastLocale) = [(NSLocale *)lastLocale isEqualToLocaleForWeather:currentLocale];

  if ((lastLocale & 1) == 0)
  {
    city = [(WeatherView *)self city];
    [(WeatherView *)self showCity:city];
  }

  currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
  v8 = self->_lastLocale;
  self->_lastLocale = currentLocale2;

  MEMORY[0x2821F96F8](currentLocale2, v8);
}

- (BOOL)_setCity:(id)city associateAsDelegate:(BOOL)delegate
{
  delegateCopy = delegate;
  cityCopy = city;
  city = self->_city;
  if (city != cityCopy)
  {
    [(City *)self->_city removeUpdateObserver:self];
    if (([MEMORY[0x277D75128] shouldMakeUIForDefaultPNG] & 1) == 0)
    {
      objc_storeStrong(&self->_city, city);
      if (self->_city)
      {
        v9 = !delegateCopy;
      }

      else
      {
        v9 = 1;
      }

      if (!v9)
      {
        [(City *)cityCopy addUpdateObserver:self];
      }
    }
  }

  return city != cityCopy;
}

- (void)showCity:(id)city
{
  cityCopy = city;
  if ([WeatherView _setCity:"_setCity:associateAsDelegate:" associateAsDelegate:?])
  {
    [(WeatherView *)self updateWeatherDisplayForCity:cityCopy];
  }
}

- (BOOL)updateWeatherDisplayForCity:(id)city
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"WeatherView.m" lineNumber:113 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[WeatherView updateWeatherDisplayForCity:]", objc_opt_class()}];

  return 0;
}

- (void)cityDidStartWeatherUpdate:(id)update
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"WeatherView.m" lineNumber:119 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[WeatherView cityDidStartWeatherUpdate:]", objc_opt_class()}];
}

- (void)refreshLocalization
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"WeatherView.m" lineNumber:124 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[WeatherView refreshLocalization]", objc_opt_class()}];
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
    layer = [(UIView *)windView layer];
    [layer removeAnimationForKey:@"contents"];

    [(UIView *)self->_windView removeFromSuperview];
    v5 = self->_windView;
    self->_windView = 0;
  }
}

@end