@interface PRErrorModel
- (BOOL)hasCustomInsertionErrorScores;
- (BOOL)hasCustomOmissionErrorScores;
- (BOOL)hasCustomReplacementErrorScores;
- (BOOL)hasCustomTranspositionErrorScores;
- (PRErrorModel)initWithCustomErrorModel:(id)a3;
- (double)errorScoreForType:(unint64_t)a3;
- (void)dealloc;
@end

@implementation PRErrorModel

- (PRErrorModel)initWithCustomErrorModel:(id)a3
{
  v6.receiver = self;
  v6.super_class = PRErrorModel;
  v4 = [(PRErrorModel *)&v6 init];
  if (v4)
  {
    v4->_customErrorModel = a3;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PRErrorModel;
  [(PRErrorModel *)&v3 dealloc];
}

- (double)errorScoreForType:(unint64_t)a3
{
  result = -5.0;
  if (a3 <= 0xD)
  {
    return errorScoreForType__errorScores[a3];
  }

  return result;
}

- (BOOL)hasCustomReplacementErrorScores
{
  customErrorModel = self->_customErrorModel;
  if (customErrorModel)
  {
    LOBYTE(customErrorModel) = objc_opt_respondsToSelector();
  }

  return customErrorModel & 1;
}

- (BOOL)hasCustomTranspositionErrorScores
{
  customErrorModel = self->_customErrorModel;
  if (customErrorModel)
  {
    LOBYTE(customErrorModel) = objc_opt_respondsToSelector();
  }

  return customErrorModel & 1;
}

- (BOOL)hasCustomInsertionErrorScores
{
  customErrorModel = self->_customErrorModel;
  if (customErrorModel)
  {
    LOBYTE(customErrorModel) = objc_opt_respondsToSelector();
  }

  return customErrorModel & 1;
}

- (BOOL)hasCustomOmissionErrorScores
{
  customErrorModel = self->_customErrorModel;
  if (customErrorModel)
  {
    LOBYTE(customErrorModel) = objc_opt_respondsToSelector();
  }

  return customErrorModel & 1;
}

@end