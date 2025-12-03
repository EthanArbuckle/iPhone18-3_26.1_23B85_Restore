@interface SBActionButtonParameters
- (SBActionButtonParameters)init;
- (double)longPressTime;
- (double)longPressTimeWhenSuppressed;
- (id)copyWithZone:(_NSZone *)zone;
- (uint64_t)setLongPressTime:(uint64_t)result;
- (uint64_t)setLongPressTimeWhenSuppressed:(uint64_t)result;
- (uint64_t)setViewObstructionEligibility:(uint64_t)result;
- (void)appendDescriptionToFormatter:(id)formatter;
@end

@implementation SBActionButtonParameters

- (SBActionButtonParameters)init
{
  v3.receiver = self;
  v3.super_class = SBActionButtonParameters;
  result = [(SBActionButtonParameters *)&v3 init];
  if (result)
  {
    *&result->_longPressTime = xmmword_21F8A6AA0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = objc_alloc_init(SBActionButtonParameters);
  *(result + 1) = *&self->_longPressTime;
  *(result + 2) = *&self->_longPressTimeWhenSuppressed;
  return result;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__SBActionButtonParameters_appendDescriptionToFormatter___block_invoke;
  v6[3] = &unk_2783A92D8;
  v7 = formatterCopy;
  selfCopy = self;
  v5 = formatterCopy;
  [v5 appendProem:0 block:v6];
}

- (double)longPressTime
{
  if (self)
  {
    return *(self + 8);
  }

  else
  {
    return 0.0;
  }
}

- (uint64_t)setLongPressTime:(uint64_t)result
{
  if (result)
  {
    *(result + 8) = a2;
  }

  return result;
}

- (double)longPressTimeWhenSuppressed
{
  if (self)
  {
    return *(self + 16);
  }

  else
  {
    return 0.0;
  }
}

- (uint64_t)setLongPressTimeWhenSuppressed:(uint64_t)result
{
  if (result)
  {
    *(result + 16) = a2;
  }

  return result;
}

- (uint64_t)setViewObstructionEligibility:(uint64_t)result
{
  if (result)
  {
    *(result + 24) = a2;
  }

  return result;
}

@end