@interface CSVTUITrainingResult
- (CSVTUITrainingResult)initWithCoder:(id)a3;
- (CSVTUITrainingResult)initWithSessionId:(int64_t)a3 sessionStatus:(int)a4 audioStatus:(int)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CSVTUITrainingResult

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  sessionId = self->_sessionId;
  v6 = a3;
  v7 = [v4 numberWithInteger:sessionId];
  [v6 encodeObject:v7 forKey:@"VTUITrainingResultSessionId"];

  v8 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_sessionStatus];
  [v6 encodeObject:v8 forKey:@"VTUITrainingResultStatus"];

  v9 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_audioStatus];
  [v6 encodeObject:v9 forKey:@"VTUITrainingAudioStatus"];
}

- (CSVTUITrainingResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"VTUITrainingResultSessionId"];
  v6 = [v5 longLongValue];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"VTUITrainingResultStatus"];
  v8 = [v7 longLongValue];

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"VTUITrainingAudioStatus"];

  v10 = [v9 longLongValue];

  return [(CSVTUITrainingResult *)self initWithSessionId:v6 sessionStatus:v8 audioStatus:v10];
}

- (CSVTUITrainingResult)initWithSessionId:(int64_t)a3 sessionStatus:(int)a4 audioStatus:(int)a5
{
  v9.receiver = self;
  v9.super_class = CSVTUITrainingResult;
  result = [(CSVTUITrainingResult *)&v9 init];
  if (result)
  {
    result->_sessionId = a3;
    result->_sessionStatus = a4;
    result->_audioStatus = a5;
  }

  return result;
}

@end