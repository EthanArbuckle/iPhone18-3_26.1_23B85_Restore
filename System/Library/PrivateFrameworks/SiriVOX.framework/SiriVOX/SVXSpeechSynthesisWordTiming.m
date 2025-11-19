@interface SVXSpeechSynthesisWordTiming
+ (id)newWithBuilder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SVXSpeechSynthesisWordTiming)initWithCoder:(id)a3;
- (SVXSpeechSynthesisWordTiming)initWithRange:(_NSRange)a3 timeInterval:(double)a4;
- (_NSRange)range;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCAE60];
  location = self->_range.location;
  length = self->_range.length;
  v7 = a3;
  v8 = [v4 valueWithRange:{location, length}];
  [v7 encodeObject:v8 forKey:@"SVXSpeechSynthesisWordTiming::range"];

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timeInterval];
  [v7 encodeObject:v9 forKey:@"SVXSpeechSynthesisWordTiming::timeInterval"];
}

- (SVXSpeechSynthesisWordTiming)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVXSpeechSynthesisWordTiming::range"];
  v6 = [v5 rangeValue];
  v8 = v7;

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVXSpeechSynthesisWordTiming::timeInterval"];

  [v9 doubleValue];
  v11 = v10;

  return [(SVXSpeechSynthesisWordTiming *)self initWithRange:v6 timeInterval:v8, v11];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v9.receiver = self;
  v9.super_class = SVXSpeechSynthesisWordTiming;
  v5 = [(SVXSpeechSynthesisWordTiming *)&v9 description];
  v6 = NSStringFromRange(self->_range);
  v7 = [v4 initWithFormat:@"%@ {range = %@, timeInterval = %f}", v5, v6, *&self->_timeInterval];

  return v7;
}

- (SVXSpeechSynthesisWordTiming)initWithRange:(_NSRange)a3 timeInterval:(double)a4
{
  length = a3.length;
  location = a3.location;
  v8.receiver = self;
  v8.super_class = SVXSpeechSynthesisWordTiming;
  result = [(SVXSpeechSynthesisWordTiming *)&v8 init];
  if (result)
  {
    result->_range.location = location;
    result->_range.length = length;
    result->_timeInterval = a4;
  }

  return result;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_SVXSpeechSynthesisWordTimingMutation alloc] initWithBaseModel:self];
    v4[2](v4, v5);
    v6 = [(_SVXSpeechSynthesisWordTimingMutation *)v5 generate];
  }

  else
  {
    v6 = [(SVXSpeechSynthesisWordTiming *)self copy];
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_SVXSpeechSynthesisWordTimingMutation);
  if (v3)
  {
    v3[2](v3, v4);
  }

  v5 = [(_SVXSpeechSynthesisWordTimingMutation *)v4 generate];

  return v5;
}

@end