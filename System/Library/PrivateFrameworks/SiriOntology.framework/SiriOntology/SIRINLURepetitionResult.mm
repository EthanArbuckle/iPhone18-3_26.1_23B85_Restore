@interface SIRINLURepetitionResult
- (SIRINLURepetitionResult)initWithAsrHypothesisIndex:(unsigned int)index repetitionType:(unsigned int)type;
- (SIRINLURepetitionResult)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SIRINLURepetitionResult

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  asrHypothesisIndex = self->_asrHypothesisIndex;
  coderCopy = coder;
  v8 = [v4 numberWithUnsignedInt:asrHypothesisIndex];
  [coderCopy encodeObject:v8 forKey:@"asrHypothesisIndex"];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_repetitionType];
  [coderCopy encodeObject:v7 forKey:@"repetitionType"];
}

- (SIRINLURepetitionResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SIRINLURepetitionResult;
  v5 = [(SIRINLURepetitionResult *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"asrHypothesisIndex"];
    v5->_asrHypothesisIndex = [v6 unsignedIntValue];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"repetitionType"];
    v5->_repetitionType = [v7 unsignedIntValue];
  }

  return v5;
}

- (SIRINLURepetitionResult)initWithAsrHypothesisIndex:(unsigned int)index repetitionType:(unsigned int)type
{
  v7.receiver = self;
  v7.super_class = SIRINLURepetitionResult;
  result = [(SIRINLURepetitionResult *)&v7 init];
  if (result)
  {
    result->_asrHypothesisIndex = index;
    result->_repetitionType = type;
  }

  return result;
}

@end