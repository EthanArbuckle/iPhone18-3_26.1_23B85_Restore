@interface SVXDeactivationOptions
+ (id)newWithBuilder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SVXDeactivationOptions)initWithAudioSessionDeactivationDelay:(double)a3;
- (SVXDeactivationOptions)initWithCoder:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SVXDeactivationOptions

- (void)encodeWithCoder:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  audioSessionDeactivationDelay = self->_audioSessionDeactivationDelay;
  v5 = a3;
  v6 = [v3 numberWithDouble:audioSessionDeactivationDelay];
  [v5 encodeObject:v6 forKey:@"SVXDeactivationOptions::audioSessionDeactivationDelay"];
}

- (SVXDeactivationOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVXDeactivationOptions::audioSessionDeactivationDelay"];

  [v5 doubleValue];
  v7 = v6;

  return [(SVXDeactivationOptions *)self initWithAudioSessionDeactivationDelay:v7];
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
      audioSessionDeactivationDelay = self->_audioSessionDeactivationDelay;
      [(SVXDeactivationOptions *)v4 audioSessionDeactivationDelay];
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

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v8.receiver = self;
  v8.super_class = SVXDeactivationOptions;
  v5 = [(SVXDeactivationOptions *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {audioSessionDeactivationDelay = %f}", v5, *&self->_audioSessionDeactivationDelay];

  return v6;
}

- (SVXDeactivationOptions)initWithAudioSessionDeactivationDelay:(double)a3
{
  v5.receiver = self;
  v5.super_class = SVXDeactivationOptions;
  result = [(SVXDeactivationOptions *)&v5 init];
  if (result)
  {
    result->_audioSessionDeactivationDelay = a3;
  }

  return result;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_SVXDeactivationOptionsMutation alloc] initWithBaseModel:self];
    v4[2](v4, v5);
    v6 = [(_SVXDeactivationOptionsMutation *)v5 generate];
  }

  else
  {
    v6 = [(SVXDeactivationOptions *)self copy];
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_SVXDeactivationOptionsMutation);
  if (v3)
  {
    v3[2](v3, v4);
  }

  v5 = [(_SVXDeactivationOptionsMutation *)v4 generate];

  return v5;
}

@end