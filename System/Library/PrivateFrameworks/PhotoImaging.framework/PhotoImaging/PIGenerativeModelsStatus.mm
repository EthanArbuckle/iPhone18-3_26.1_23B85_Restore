@interface PIGenerativeModelsStatus
- (PIGenerativeModelsStatus)initWithStatus:(int64_t)status;
@end

@implementation PIGenerativeModelsStatus

- (PIGenerativeModelsStatus)initWithStatus:(int64_t)status
{
  v5.receiver = self;
  v5.super_class = PIGenerativeModelsStatus;
  result = [(PIGenerativeModelsStatus *)&v5 init];
  result->_availabilityStatus = status;
  return result;
}

@end