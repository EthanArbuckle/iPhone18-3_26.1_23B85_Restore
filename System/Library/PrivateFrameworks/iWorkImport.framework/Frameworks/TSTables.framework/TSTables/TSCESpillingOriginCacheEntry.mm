@interface TSCESpillingOriginCacheEntry
- (TSUCellRect)spillRange;
@end

@implementation TSCESpillingOriginCacheEntry

- (TSUCellRect)spillRange
{
  size = self->_spillRange.size;
  origin = self->_spillRange.origin;
  result.size = size;
  result.origin = origin;
  return result;
}

@end