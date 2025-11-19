@interface E5RunnerLastForwardLogits
- (E5RunnerLastForwardLogits)initWithLogits:(Logits)a3;
- (id).cxx_construct;
@end

@implementation E5RunnerLastForwardLogits

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

- (E5RunnerLastForwardLogits)initWithLogits:(Logits)a3
{
  numTokens = a3.numTokens;
  v10.receiver = self;
  v10.super_class = E5RunnerLastForwardLogits;
  result = [(E5RunnerLastForwardLogits *)&v10 init:a3.numTokens];
  if (result)
  {
    v8 = *numTokens;
    v9 = *(numTokens + 16);
    *&result[1]._logits.m_size.m_size = *(numTokens + 32);
    *&result[1].super.isa = v9;
    result->_logits = v8;
  }

  return result;
}

@end