@interface PUSlideshowViewControllerSpec
- (PUSlideshowViewControllerSpec)initWithMode:(unint64_t)mode;
- (PUSlideshowViewControllerSpecChange)currentChange;
- (void)_setShouldObserveAirplayRoute:(BOOL)route;
- (void)_setShouldShowAirplayButton:(BOOL)button;
- (void)_setShouldShowChromeBars:(BOOL)bars;
- (void)_setShouldShowPlaceholder:(BOOL)placeholder;
- (void)updateIfNeeded;
@end

@implementation PUSlideshowViewControllerSpec

- (void)_setShouldShowAirplayButton:(BOOL)button
{
  buttonCopy = button;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_shouldShowAirplayButton != buttonCopy)
  {
    self->_shouldShowAirplayButton = buttonCopy;
    currentChange = [(PUSlideshowViewControllerSpec *)self currentChange];
    [currentChange _setShouldShowAirplayButtonChanged:1];
  }
}

- (void)_setShouldObserveAirplayRoute:(BOOL)route
{
  routeCopy = route;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_shouldObserveAirplayRoute != routeCopy)
  {
    self->_shouldObserveAirplayRoute = routeCopy;
    currentChange = [(PUSlideshowViewControllerSpec *)self currentChange];
    [currentChange _setShouldObserveAirplayRouteChanged:1];
  }
}

- (void)_setShouldShowChromeBars:(BOOL)bars
{
  barsCopy = bars;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_shouldShowChromeBars != barsCopy)
  {
    self->_shouldShowChromeBars = barsCopy;
    currentChange = [(PUSlideshowViewControllerSpec *)self currentChange];
    [currentChange _setShouldShowChromeBarsChanged:1];
  }
}

- (void)_setShouldShowPlaceholder:(BOOL)placeholder
{
  placeholderCopy = placeholder;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_shouldShowPlaceholder != placeholderCopy)
  {
    self->_shouldShowPlaceholder = placeholderCopy;
    currentChange = [(PUSlideshowViewControllerSpec *)self currentChange];
    [currentChange _setShouldShowPlaceholderChanged:1];
  }
}

- (void)updateIfNeeded
{
  v9.receiver = self;
  v9.super_class = PUSlideshowViewControllerSpec;
  [(PUViewControllerSpec *)&v9 updateIfNeeded];
  isChromeVisible = [(PUSlideshowViewControllerSpec *)self isChromeVisible];
  isAirplayScreenAvailable = [(PUSlideshowViewControllerSpec *)self isAirplayScreenAvailable];
  isAirplayRouteAvailable = [(PUSlideshowViewControllerSpec *)self isAirplayRouteAvailable];
  v6 = self->_mode == 0;
  v7 = v6 & (isChromeVisible | isAirplayScreenAvailable);
  shouldRegisterToAirplay = [(PUSlideshowViewControllerSpec *)self shouldRegisterToAirplay];
  [(PUSlideshowViewControllerSpec *)self _setShouldShowPlaceholder:v6 & isAirplayScreenAvailable];
  [(PUSlideshowViewControllerSpec *)self _setShouldShowChromeBars:v7];
  [(PUSlideshowViewControllerSpec *)self _setShouldObserveAirplayRoute:shouldRegisterToAirplay & v7];
  [(PUSlideshowViewControllerSpec *)self _setShouldShowAirplayButton:v7 & isAirplayRouteAvailable];
}

- (PUSlideshowViewControllerSpec)initWithMode:(unint64_t)mode
{
  v5.receiver = self;
  v5.super_class = PUSlideshowViewControllerSpec;
  result = [(PUViewControllerSpec *)&v5 init];
  if (result)
  {
    result->_mode = mode;
  }

  return result;
}

- (PUSlideshowViewControllerSpecChange)currentChange
{
  v4.receiver = self;
  v4.super_class = PUSlideshowViewControllerSpec;
  currentChange = [(PUViewControllerSpec *)&v4 currentChange];

  return currentChange;
}

@end