@interface SVXSpeechSynthesisResult
+ (id)newWithBuilder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SVXSpeechSynthesisResult)initWithCoder:(id)a3;
- (SVXSpeechSynthesisResult)initWithType:(int64_t)a3 utteranceInfo:(id)a4 error:(id)a5;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SVXSpeechSynthesisResult

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  type = self->_type;
  v7 = a3;
  v6 = [v4 numberWithInteger:type];
  [v7 encodeObject:v6 forKey:@"SVXSpeechSynthesisResult::type"];

  [v7 encodeObject:self->_utteranceInfo forKey:@"SVXSpeechSynthesisResult::utteranceInfo"];
  [v7 encodeObject:self->_error forKey:@"SVXSpeechSynthesisResult::error"];
}

- (SVXSpeechSynthesisResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVXSpeechSynthesisResult::type"];
  v6 = [v5 integerValue];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVXSpeechSynthesisResult::utteranceInfo"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVXSpeechSynthesisResult::error"];

  v9 = [(SVXSpeechSynthesisResult *)self initWithType:v6 utteranceInfo:v7 error:v8];
  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      type = self->_type;
      if (type == [(SVXSpeechSynthesisResult *)v5 type])
      {
        v7 = [(SVXSpeechSynthesisResult *)v5 utteranceInfo];
        utteranceInfo = self->_utteranceInfo;
        if (utteranceInfo == v7 || [(SVXSpeechSynthesisUtteranceInfo *)utteranceInfo isEqual:v7])
        {
          v9 = [(SVXSpeechSynthesisResult *)v5 error];
          error = self->_error;
          v11 = error == v9 || [(NSError *)error isEqual:v9];
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:self->_type];
  v4 = [v3 hash];
  v5 = [(SVXSpeechSynthesisUtteranceInfo *)self->_utteranceInfo hash];
  v6 = v5 ^ [(NSError *)self->_error hash];

  return v6 ^ v4;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v11.receiver = self;
  v11.super_class = SVXSpeechSynthesisResult;
  v5 = [(SVXSpeechSynthesisResult *)&v11 description];
  type = self->_type;
  if (type > 4)
  {
    v7 = @"(unknown)";
  }

  else
  {
    v7 = off_279C678A8[type];
  }

  v8 = v7;
  v9 = [v4 initWithFormat:@"%@ {type = %@, utteranceInfo = %@, error = %@}", v5, v8, self->_utteranceInfo, self->_error];

  return v9;
}

- (SVXSpeechSynthesisResult)initWithType:(int64_t)a3 utteranceInfo:(id)a4 error:(id)a5
{
  v8 = a4;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = SVXSpeechSynthesisResult;
  v10 = [(SVXSpeechSynthesisResult *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = a3;
    v12 = [v8 copy];
    utteranceInfo = v11->_utteranceInfo;
    v11->_utteranceInfo = v12;

    v14 = [v9 copy];
    error = v11->_error;
    v11->_error = v14;
  }

  return v11;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_SVXSpeechSynthesisResultMutation alloc] initWithBaseModel:self];
    v4[2](v4, v5);
    v6 = [(_SVXSpeechSynthesisResultMutation *)v5 generate];
  }

  else
  {
    v6 = [(SVXSpeechSynthesisResult *)self copy];
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_SVXSpeechSynthesisResultMutation);
  if (v3)
  {
    v3[2](v3, v4);
  }

  v5 = [(_SVXSpeechSynthesisResultMutation *)v4 generate];

  return v5;
}

@end