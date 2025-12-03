@interface SVXDeactivationOptions
+ (id)newWithBuilder:(id)builder;
- (BOOL)isEqual:(id)equal;
- (SVXDeactivationOptions)initWithAudioSessionDeactivationDelay:(double)delay;
- (SVXDeactivationOptions)initWithCoder:(id)coder;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SVXDeactivationOptions

- (void)encodeWithCoder:(id)coder
{
  v3 = MEMORY[0x277CCABB0];
  audioSessionDeactivationDelay = self->_audioSessionDeactivationDelay;
  coderCopy = coder;
  v6 = [v3 numberWithDouble:audioSessionDeactivationDelay];
  [coderCopy encodeObject:v6 forKey:@"SVXDeactivationOptions::audioSessionDeactivationDelay"];
}

- (SVXDeactivationOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXDeactivationOptions::audioSessionDeactivationDelay"];

  [v5 doubleValue];
  v7 = v6;

  return [(SVXDeactivationOptions *)self initWithAudioSessionDeactivationDelay:v7];
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
      audioSessionDeactivationDelay = self->_audioSessionDeactivationDelay;
      [(SVXDeactivationOptions *)equalCopy audioSessionDeactivationDelay];
      v7 = audioSessionDeactivationDelay == v6;
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
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:self->_audioSessionDeactivationDelay];
  v3 = [v2 hash];

  return v3;
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v8.receiver = self;
  v8.super_class = SVXDeactivationOptions;
  v5 = [(SVXDeactivationOptions *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {audioSessionDeactivationDelay = %f}", v5, *&self->_audioSessionDeactivationDelay];

  return v6;
}

- (SVXDeactivationOptions)initWithAudioSessionDeactivationDelay:(double)delay
{
  v5.receiver = self;
  v5.super_class = SVXDeactivationOptions;
  result = [(SVXDeactivationOptions *)&v5 init];
  if (result)
  {
    result->_audioSessionDeactivationDelay = delay;
  }

  return result;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_SVXDeactivationOptionsMutation alloc] initWithBaseModel:self];
    mutatorCopy[2](mutatorCopy, v5);
    generate = [(_SVXDeactivationOptionsMutation *)v5 generate];
  }

  else
  {
    generate = [(SVXDeactivationOptions *)self copy];
  }

  return generate;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = objc_alloc_init(_SVXDeactivationOptionsMutation);
  if (builderCopy)
  {
    builderCopy[2](builderCopy, v4);
  }

  generate = [(_SVXDeactivationOptionsMutation *)v4 generate];

  return generate;
}

@end