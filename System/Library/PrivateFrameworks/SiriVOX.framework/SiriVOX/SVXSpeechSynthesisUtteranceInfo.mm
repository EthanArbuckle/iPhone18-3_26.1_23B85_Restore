@interface SVXSpeechSynthesisUtteranceInfo
+ (id)newWithBuilder:(id)builder;
- (BOOL)isEqual:(id)equal;
- (SVXSpeechSynthesisUtteranceInfo)initWithCoder:(id)coder;
- (SVXSpeechSynthesisUtteranceInfo)initWithUtterance:(id)utterance wordTimings:(id)timings;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SVXSpeechSynthesisUtteranceInfo

- (void)encodeWithCoder:(id)coder
{
  utterance = self->_utterance;
  coderCopy = coder;
  [coderCopy encodeObject:utterance forKey:@"SVXSpeechSynthesisUtteranceInfo::utterance"];
  [coderCopy encodeObject:self->_wordTimings forKey:@"SVXSpeechSynthesisUtteranceInfo::wordTimings"];
}

- (SVXSpeechSynthesisUtteranceInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXSpeechSynthesisUtteranceInfo::utterance"];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"SVXSpeechSynthesisUtteranceInfo::wordTimings"];

  v10 = [(SVXSpeechSynthesisUtteranceInfo *)self initWithUtterance:v5 wordTimings:v9];
  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      utterance = [(SVXSpeechSynthesisUtteranceInfo *)v5 utterance];
      utterance = self->_utterance;
      if (utterance == utterance || [(NSString *)utterance isEqual:utterance])
      {
        wordTimings = [(SVXSpeechSynthesisUtteranceInfo *)v5 wordTimings];
        wordTimings = self->_wordTimings;
        v10 = wordTimings == wordTimings || [(NSArray *)wordTimings isEqual:wordTimings];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v8.receiver = self;
  v8.super_class = SVXSpeechSynthesisUtteranceInfo;
  v5 = [(SVXSpeechSynthesisUtteranceInfo *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {utterance = %@, wordTimings = %@}", v5, self->_utterance, self->_wordTimings];

  return v6;
}

- (SVXSpeechSynthesisUtteranceInfo)initWithUtterance:(id)utterance wordTimings:(id)timings
{
  utteranceCopy = utterance;
  timingsCopy = timings;
  v14.receiver = self;
  v14.super_class = SVXSpeechSynthesisUtteranceInfo;
  v8 = [(SVXSpeechSynthesisUtteranceInfo *)&v14 init];
  if (v8)
  {
    v9 = [utteranceCopy copy];
    utterance = v8->_utterance;
    v8->_utterance = v9;

    v11 = [timingsCopy copy];
    wordTimings = v8->_wordTimings;
    v8->_wordTimings = v11;
  }

  return v8;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_SVXSpeechSynthesisUtteranceInfoMutation alloc] initWithBaseModel:self];
    mutatorCopy[2](mutatorCopy, v5);
    generate = [(_SVXSpeechSynthesisUtteranceInfoMutation *)v5 generate];
  }

  else
  {
    generate = [(SVXSpeechSynthesisUtteranceInfo *)self copy];
  }

  return generate;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = objc_alloc_init(_SVXSpeechSynthesisUtteranceInfoMutation);
  if (builderCopy)
  {
    builderCopy[2](builderCopy, v4);
  }

  generate = [(_SVXSpeechSynthesisUtteranceInfoMutation *)v4 generate];

  return generate;
}

@end