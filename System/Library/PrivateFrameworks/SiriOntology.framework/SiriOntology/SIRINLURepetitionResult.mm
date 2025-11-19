@interface SIRINLURepetitionResult
- (SIRINLURepetitionResult)initWithAsrHypothesisIndex:(unsigned int)a3 repetitionType:(unsigned int)a4;
- (SIRINLURepetitionResult)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SIRINLURepetitionResult

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  asrHypothesisIndex = self->_asrHypothesisIndex;
  v6 = a3;
  v8 = [v4 numberWithUnsignedInt:asrHypothesisIndex];
  [v6 encodeObject:v8 forKey:@"asrHypothesisIndex"];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_repetitionType];
  [v6 encodeObject:v7 forKey:@"repetitionType"];
}

- (SIRINLURepetitionResult)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SIRINLURepetitionResult;
  v5 = [(SIRINLURepetitionResult *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"asrHypothesisIndex"];
    v5->_asrHypothesisIndex = [v6 unsignedIntValue];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"repetitionType"];
    v5->_repetitionType = [v7 unsignedIntValue];
  }

  return v5;
}

- (SIRINLURepetitionResult)initWithAsrHypothesisIndex:(unsigned int)a3 repetitionType:(unsigned int)a4
{
  v7.receiver = self;
  v7.super_class = SIRINLURepetitionResult;
  result = [(SIRINLURepetitionResult *)&v7 init];
  if (result)
  {
    result->_asrHypothesisIndex = a3;
    result->_repetitionType = a4;
  }

  return result;
}

@end