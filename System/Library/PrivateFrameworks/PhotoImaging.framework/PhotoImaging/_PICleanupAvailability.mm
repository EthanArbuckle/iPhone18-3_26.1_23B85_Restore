@interface _PICleanupAvailability
- (_PICleanupAvailability)initWithStatus:(int64_t)a3;
@end

@implementation _PICleanupAvailability

- (_PICleanupAvailability)initWithStatus:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = _PICleanupAvailability;
  result = [(_PICleanupAvailability *)&v5 init];
  result->_status = a3;
  return result;
}

@end