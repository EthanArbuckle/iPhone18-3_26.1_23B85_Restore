@interface _PICleanupAvailability
- (_PICleanupAvailability)initWithStatus:(int64_t)status;
@end

@implementation _PICleanupAvailability

- (_PICleanupAvailability)initWithStatus:(int64_t)status
{
  v5.receiver = self;
  v5.super_class = _PICleanupAvailability;
  result = [(_PICleanupAvailability *)&v5 init];
  result->_status = status;
  return result;
}

@end