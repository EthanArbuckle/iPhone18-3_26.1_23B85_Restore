@interface SVXSpeechSynthesisResult
+ (id)newWithBuilder:(id)builder;
- (BOOL)isEqual:(id)equal;
- (SVXSpeechSynthesisResult)initWithCoder:(id)coder;
- (SVXSpeechSynthesisResult)initWithType:(int64_t)type utteranceInfo:(id)info error:(id)error;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SVXSpeechSynthesisResult

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  type = self->_type;
  coderCopy = coder;
  v6 = [v4 numberWithInteger:type];
  [coderCopy encodeObject:v6 forKey:@"SVXSpeechSynthesisResult::type"];

  [coderCopy encodeObject:self->_utteranceInfo forKey:@"SVXSpeechSynthesisResult::utteranceInfo"];
  [coderCopy encodeObject:self->_error forKey:@"SVXSpeechSynthesisResult::error"];
}

- (SVXSpeechSynthesisResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXSpeechSynthesisResult::type"];
  integerValue = [v5 integerValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXSpeechSynthesisResult::utteranceInfo"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXSpeechSynthesisResult::error"];

  v9 = [(SVXSpeechSynthesisResult *)self initWithType:integerValue utteranceInfo:v7 error:v8];
  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      type = self->_type;
      if (type == [(SVXSpeechSynthesisResult *)v5 type])
      {
        utteranceInfo = [(SVXSpeechSynthesisResult *)v5 utteranceInfo];
        utteranceInfo = self->_utteranceInfo;
        if (utteranceInfo == utteranceInfo || [(SVXSpeechSynthesisUtteranceInfo *)utteranceInfo isEqual:utteranceInfo])
        {
          error = [(SVXSpeechSynthesisResult *)v5 error];
          error = self->_error;
          v11 = error == error || [(NSError *)error isEqual:error];
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

- (id)_descriptionWithIndent:(unint64_t)indent
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

- (SVXSpeechSynthesisResult)initWithType:(int64_t)type utteranceInfo:(id)info error:(id)error
{
  infoCopy = info;
  errorCopy = error;
  v17.receiver = self;
  v17.super_class = SVXSpeechSynthesisResult;
  v10 = [(SVXSpeechSynthesisResult *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = type;
    v12 = [infoCopy copy];
    utteranceInfo = v11->_utteranceInfo;
    v11->_utteranceInfo = v12;

    v14 = [errorCopy copy];
    error = v11->_error;
    v11->_error = v14;
  }

  return v11;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_SVXSpeechSynthesisResultMutation alloc] initWithBaseModel:self];
    mutatorCopy[2](mutatorCopy, v5);
    generate = [(_SVXSpeechSynthesisResultMutation *)v5 generate];
  }

  else
  {
    generate = [(SVXSpeechSynthesisResult *)self copy];
  }

  return generate;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = objc_alloc_init(_SVXSpeechSynthesisResultMutation);
  if (builderCopy)
  {
    builderCopy[2](builderCopy, v4);
  }

  generate = [(_SVXSpeechSynthesisResultMutation *)v4 generate];

  return generate;
}

@end