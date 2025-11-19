@interface HVConsumerState
- (HVConsumerState)init;
- (id)description;
@end

@implementation HVConsumerState

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<HVConsumerState l:%hhu d:%u i:%u ex:%u int:%u err:%u>", self->_levelOfService, self->_documentsConsumed, self->_documentsIgnored, self->_numberOfExtractions, self->_numberOfInterruptions, self->_errorsReported];

  return v2;
}

- (HVConsumerState)init
{
  v3.receiver = self;
  v3.super_class = HVConsumerState;
  result = [(HVConsumerState *)&v3 init];
  if (result)
  {
    result->_levelOfService = 0;
    *&result->_numberOfExtractions = 0;
    *&result->_documentsConsumed = 0;
    result->_errorsReported = 0;
  }

  return result;
}

@end