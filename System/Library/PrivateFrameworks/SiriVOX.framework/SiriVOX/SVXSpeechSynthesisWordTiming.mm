@interface SVXSpeechSynthesisWordTiming
+ (id)newWithBuilder:(id)builder;
- (BOOL)isEqual:(id)equal;
- (SVXSpeechSynthesisWordTiming)initWithCoder:(id)coder;
- (SVXSpeechSynthesisWordTiming)initWithRange:(_NSRange)range timeInterval:(double)interval;
- (_NSRange)range;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SVXSpeechSynthesisWordTiming

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCAE60];
  location = self->_range.location;
  length = self->_range.length;
  coderCopy = coder;
  v8 = [v4 valueWithRange:{location, length}];
  [coderCopy encodeObject:v8 forKey:@"SVXSpeechSynthesisWordTiming::range"];

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timeInterval];
  [coderCopy encodeObject:v9 forKey:@"SVXSpeechSynthesisWordTiming::timeInterval"];
}

- (SVXSpeechSynthesisWordTiming)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXSpeechSynthesisWordTiming::range"];
  rangeValue = [v5 rangeValue];
  v8 = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXSpeechSynthesisWordTiming::timeInterval"];

  [v9 doubleValue];
  v11 = v10;

  return [(SVXSpeechSynthesisWordTiming *)self initWithRange:rangeValue timeInterval:v8, v11];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v7 = 0;
      if (self->_range.location == [(SVXSpeechSynthesisWordTiming *)v5 range]&& self->_range.length == v6)
      {
        timeInterval = self->_timeInterval;
        [(SVXSpeechSynthesisWordTiming *)v5 timeInterval];
        v7 = timeInterval == v9;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CCAE60] valueWithRange:{self->_range.location, self->_range.length}];
  v4 = [v3 hash];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timeInterval];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v9.receiver = self;
  v9.super_class = SVXSpeechSynthesisWordTiming;
  v5 = [(SVXSpeechSynthesisWordTiming *)&v9 description];
  v6 = NSStringFromRange(self->_range);
  v7 = [v4 initWithFormat:@"%@ {range = %@, timeInterval = %f}", v5, v6, *&self->_timeInterval];

  return v7;
}

- (SVXSpeechSynthesisWordTiming)initWithRange:(_NSRange)range timeInterval:(double)interval
{
  length = range.length;
  location = range.location;
  v8.receiver = self;
  v8.super_class = SVXSpeechSynthesisWordTiming;
  result = [(SVXSpeechSynthesisWordTiming *)&v8 init];
  if (result)
  {
    result->_range.location = location;
    result->_range.length = length;
    result->_timeInterval = interval;
  }

  return result;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_SVXSpeechSynthesisWordTimingMutation alloc] initWithBaseModel:self];
    mutatorCopy[2](mutatorCopy, v5);
    generate = [(_SVXSpeechSynthesisWordTimingMutation *)v5 generate];
  }

  else
  {
    generate = [(SVXSpeechSynthesisWordTiming *)self copy];
  }

  return generate;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = objc_alloc_init(_SVXSpeechSynthesisWordTimingMutation);
  if (builderCopy)
  {
    builderCopy[2](builderCopy, v4);
  }

  generate = [(_SVXSpeechSynthesisWordTimingMutation *)v4 generate];

  return generate;
}

@end