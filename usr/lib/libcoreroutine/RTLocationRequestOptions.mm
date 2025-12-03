@interface RTLocationRequestOptions
- (RTLocationRequestOptions)initWithDesiredAccuracy:(double)accuracy horizontalAccuracy:(double)horizontalAccuracy maxAge:(double)age yieldLastLocation:(BOOL)location timeout:(double)timeout fallback:(BOOL)fallback fallbackHorizontalAccuracy:(double)fallbackHorizontalAccuracy fallbackMaxAge:(double)self0;
- (id)description;
@end

@implementation RTLocationRequestOptions

- (RTLocationRequestOptions)initWithDesiredAccuracy:(double)accuracy horizontalAccuracy:(double)horizontalAccuracy maxAge:(double)age yieldLastLocation:(BOOL)location timeout:(double)timeout fallback:(BOOL)fallback fallbackHorizontalAccuracy:(double)fallbackHorizontalAccuracy fallbackMaxAge:(double)self0
{
  v19.receiver = self;
  v19.super_class = RTLocationRequestOptions;
  result = [(RTLocationRequestOptions *)&v19 init];
  if (result)
  {
    result->_desiredAccuracy = accuracy;
    result->_horizontalAccuracy = horizontalAccuracy;
    result->_yieldLastLocation = location;
    result->_fallback = fallback;
    result->_maxAge = age;
    result->_fallbackHorizontalAccuracy = fallbackHorizontalAccuracy;
    result->_fallbackMaxAge = maxAge;
    result->_timeout = timeout;
  }

  return result;
}

- (id)description
{
  v2 = @"NO";
  if (self->_yieldLastLocation)
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  if (self->_fallback)
  {
    v2 = @"YES";
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"desired accuracy, %.2f, horizontalAccuracy, %.2f, maxAge, %.2f, yieldLastLocation, %@, fallback, %@, fallbackHorizontalAccuracy, %.2f, fallbackMaxAge, %.2f, timeout, %.2f", *&self->_desiredAccuracy, *&self->_maxAge, v3, v2, *&self->_fallbackHorizontalAccuracy, *&self->_fallbackMaxAge, *&self->_timeout];
}

@end