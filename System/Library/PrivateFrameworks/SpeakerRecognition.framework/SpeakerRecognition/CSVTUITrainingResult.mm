@interface CSVTUITrainingResult
- (CSVTUITrainingResult)initWithCoder:(id)coder;
- (CSVTUITrainingResult)initWithSessionId:(int64_t)id sessionStatus:(int)status audioStatus:(int)audioStatus;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CSVTUITrainingResult

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  sessionId = self->_sessionId;
  coderCopy = coder;
  v7 = [v4 numberWithInteger:sessionId];
  [coderCopy encodeObject:v7 forKey:@"VTUITrainingResultSessionId"];

  v8 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_sessionStatus];
  [coderCopy encodeObject:v8 forKey:@"VTUITrainingResultStatus"];

  v9 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_audioStatus];
  [coderCopy encodeObject:v9 forKey:@"VTUITrainingAudioStatus"];
}

- (CSVTUITrainingResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"VTUITrainingResultSessionId"];
  longLongValue = [v5 longLongValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"VTUITrainingResultStatus"];
  longLongValue2 = [v7 longLongValue];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"VTUITrainingAudioStatus"];

  longLongValue3 = [v9 longLongValue];

  return [(CSVTUITrainingResult *)self initWithSessionId:longLongValue sessionStatus:longLongValue2 audioStatus:longLongValue3];
}

- (CSVTUITrainingResult)initWithSessionId:(int64_t)id sessionStatus:(int)status audioStatus:(int)audioStatus
{
  v9.receiver = self;
  v9.super_class = CSVTUITrainingResult;
  result = [(CSVTUITrainingResult *)&v9 init];
  if (result)
  {
    result->_sessionId = id;
    result->_sessionStatus = status;
    result->_audioStatus = audioStatus;
  }

  return result;
}

@end