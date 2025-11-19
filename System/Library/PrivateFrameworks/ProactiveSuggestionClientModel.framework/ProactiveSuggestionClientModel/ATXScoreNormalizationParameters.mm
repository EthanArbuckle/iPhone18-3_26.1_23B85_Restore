@interface ATXScoreNormalizationParameters
- (ATXScoreNormalizationParameters)initWithBufferSize:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXScoreNormalizationParameters:(id)a3;
@end

@implementation ATXScoreNormalizationParameters

- (ATXScoreNormalizationParameters)initWithBufferSize:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXScoreNormalizationParameters;
  v6 = [(ATXScoreNormalizationParameters *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bufferSize, a3);
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXScoreNormalizationParameters *)self isEqualToATXScoreNormalizationParameters:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXScoreNormalizationParameters:(id)a3
{
  v4 = self->_bufferSize;
  v5 = v4;
  if (v4 == *(a3 + 1))
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