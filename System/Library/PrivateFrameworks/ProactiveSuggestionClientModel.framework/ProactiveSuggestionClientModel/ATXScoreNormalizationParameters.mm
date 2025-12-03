@interface ATXScoreNormalizationParameters
- (ATXScoreNormalizationParameters)initWithBufferSize:(id)size;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXScoreNormalizationParameters:(id)parameters;
@end

@implementation ATXScoreNormalizationParameters

- (ATXScoreNormalizationParameters)initWithBufferSize:(id)size
{
  sizeCopy = size;
  v9.receiver = self;
  v9.super_class = ATXScoreNormalizationParameters;
  v6 = [(ATXScoreNormalizationParameters *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bufferSize, size);
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXScoreNormalizationParameters *)self isEqualToATXScoreNormalizationParameters:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXScoreNormalizationParameters:(id)parameters
{
  v4 = self->_bufferSize;
  v5 = v4;
  if (v4 == *(parameters + 1))
  {
    v6 = 1;
  }

  else
  {
    v6 = [(NSNumber *)v4 isEqual:?];
  }

  return v6;
}

@end