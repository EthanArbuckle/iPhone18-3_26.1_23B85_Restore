@interface PUSlideshowViewControllerSpec
- (PUSlideshowViewControllerSpec)initWithMode:(unint64_t)a3;
- (PUSlideshowViewControllerSpecChange)currentChange;
- (void)_setShouldObserveAirplayRoute:(BOOL)a3;
- (void)_setShouldShowAirplayButton:(BOOL)a3;
- (void)_setShouldShowChromeBars:(BOOL)a3;
- (void)_setShouldShowPlaceholder:(BOOL)a3;
- (void)updateIfNeeded;
@end

@implementation PUSlideshowViewControllerSpec

- (void)_setShouldShowAirplayButton:(BOOL)a3
{
  v3 = a3;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_shouldShowAirplayButton != v3)
  {
    self->_shouldShowAirplayButton = v3;
    v5 = [(PUSlideshowViewControllerSpec *)self currentChange];
    [v5 _setShouldShowAirplayButtonChanged:1];
  }
}

- (void)_setShouldObserveAirplayRoute:(BOOL)a3
{
  v3 = a3;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_shouldObserveAirplayRoute != v3)
  {
    self->_shouldObserveAirplayRoute = v3;
    v5 = [(PUSlideshowViewControllerSpec *)self currentChange];
    [v5 _setShouldObserveAirplayRouteChanged:1];
  }
}

- (void)_setShouldShowChromeBars:(BOOL)a3
{
  v3 = a3;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_shouldShowChromeBars != v3)
  {
    self->_shouldShowChromeBars = v3;
    v5 = [(PUSlideshowViewControllerSpec *)self currentChange];
    [v5 _setShouldShowChromeBarsChanged:1];
  }
}

- (void)_setShouldShowPlaceholder:(BOOL)a3
{
  v3 = a3;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_shouldShowPlaceholder != v3)
  {
    self->_shouldShowPlaceholder = v3;
    v5 = [(PUSlideshowViewControllerSpec *)self currentChange];
    [v5 _setShouldShowPlaceholderChanged:1];
  }
}

- (void)updateIfNeeded
{
  v9.receiver = self;
  v9.super_class = PUSlideshowViewControllerSpec;
  [(PUViewControllerSpec *)&v9 updateIfNeeded];
  v3 = [(PUSlideshowViewControllerSpec *)self isChromeVisible];
  v4 = [(PUSlideshowViewControllerSpec *)self isAirplayScreenAvailable];
  v5 = [(PUSlideshowViewControllerSpec *)self isAirplayRouteAvailable];
  v6 = self->_mode == 0;
  v7 = v6 & (v3 | v4);
  v8 = [(PUSlideshowViewControllerSpec *)self shouldRegisterToAirplay];
  [(PUSlideshowViewControllerSpec *)self _setShouldShowPlaceholder:v6 & v4];
  [(PUSlideshowViewControllerSpec *)self _setShouldShowChromeBars:v7];
  [(PUSlideshowViewControllerSpec *)self _setShouldObserveAirplayRoute:v8 & v7];
  [(PUSlideshowViewControllerSpec *)self _setShouldShowAirplayButton:v7 & v5];
}

- (PUSlideshowViewControllerSpec)initWithMode:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = PUSlideshowViewControllerSpec;
  result = [(PUViewControllerSpec *)&v5 init];
  if (result)
  {
    result->_mode = a3;
  }

  return result;
}

- (PUSlideshowViewControllerSpecChange)currentChange
{
  v4.receiver = self;
  v4.super_class = PUSlideshowViewControllerSpec;
  v2 = [(PUViewControllerSpec *)&v4 currentChange];

  return v2;
}

@end