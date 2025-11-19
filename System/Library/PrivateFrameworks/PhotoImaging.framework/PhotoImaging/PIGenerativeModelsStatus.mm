@interface PIGenerativeModelsStatus
- (PIGenerativeModelsStatus)initWithStatus:(int64_t)a3;
@end

@implementation PIGenerativeModelsStatus

- (PIGenerativeModelsStatus)initWithStatus:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = PIGenerativeModelsStatus;
  result = [(PIGenerativeModelsStatus *)&v5 init];
  result->_availabilityStatus = a3;
  return result;
}

@end