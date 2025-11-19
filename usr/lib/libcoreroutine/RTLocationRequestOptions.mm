@interface RTLocationRequestOptions
- (RTLocationRequestOptions)initWithDesiredAccuracy:(double)a3 horizontalAccuracy:(double)a4 maxAge:(double)a5 yieldLastLocation:(BOOL)a6 timeout:(double)a7 fallback:(BOOL)a8 fallbackHorizontalAccuracy:(double)a9 fallbackMaxAge:(double)a10;
- (id)description;
@end

@implementation RTLocationRequestOptions

- (RTLocationRequestOptions)initWithDesiredAccuracy:(double)a3 horizontalAccuracy:(double)a4 maxAge:(double)a5 yieldLastLocation:(BOOL)a6 timeout:(double)a7 fallback:(BOOL)a8 fallbackHorizontalAccuracy:(double)a9 fallbackMaxAge:(double)a10
{
  v19.receiver = self;
  v19.super_class = RTLocationRequestOptions;
  result = [(RTLocationRequestOptions *)&v19 init];
  if (result)
  {
    result->_desiredAccuracy = a3;
    result->_horizontalAccuracy = a4;
    result->_yieldLastLocation = a6;
    result->_fallback = a8;
    result->_maxAge = a5;
    result->_fallbackHorizontalAccuracy = a9;
    result->_fallbackMaxAge = a10;
    result->_timeout = a7;
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