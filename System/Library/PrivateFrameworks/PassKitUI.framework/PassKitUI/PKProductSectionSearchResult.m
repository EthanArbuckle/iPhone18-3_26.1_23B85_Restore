@interface PKProductSectionSearchResult
- (double)normalizedSearchDistance;
@end

@implementation PKProductSectionSearchResult

- (double)normalizedSearchDistance
{
  result = self->_normalizedSearchDistance;
  if (result == 0.0)
  {
    result = self->_searchDistance / self->_numberOfResults;
    self->_normalizedSearchDistance = result;
  }

  return result;
}

@end