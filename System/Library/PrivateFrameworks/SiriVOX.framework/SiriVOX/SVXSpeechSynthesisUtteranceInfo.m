@interface SVXSpeechSynthesisUtteranceInfo
+ (id)newWithBuilder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SVXSpeechSynthesisUtteranceInfo)initWithCoder:(id)a3;
- (SVXSpeechSynthesisUtteranceInfo)initWithUtterance:(id)a3 wordTimings:(id)a4;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SVXSpeechSynthesisUtteranceInfo

- (void)encodeWithCoder:(id)a3
{
  utterance = self->_utterance;
  v5 = a3;
  [v5 encodeObject:utterance forKey:@"SVXSpeechSynthesisUtteranceInfo::utterance"];
  [v5 encodeObject:self->_wordTimings forKey:@"SVXSpeechSynthesisUtteranceInfo::wordTimings"];
}

- (SVXSpeechSynthesisUtteranceInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVXSpeechSynthesisUtteranceInfo::utterance"];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"SVXSpeechSynthesisUtteranceInfo::wordTimings"];

  v10 = [(SVXSpeechSynthesisUtteranceInfo *)self initWithUtterance:v5 wordTimings:v9];
  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SVXSpeechSynthesisUtteranceInfo *)v5 utterance];
      utterance = self->_utterance;
      if (utterance == v6 || [(NSString *)utterance isEqual:v6])
      {
        v8 = [(SVXSpeechSynthesisUtteranceInfo *)v5 wordTimings];
        wordTimings = self->_wordTimings;
        v10 = wordTimings == v8 || [(NSArray *)wordTimings isEqual:v8];
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

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v8.receiver = self;
  v8.super_class = SVXSpeechSynthesisUtteranceInfo;
  v5 = [(SVXSpeechSynthesisUtteranceInfo *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {utterance = %@, wordTimings = %@}", v5, self->_utterance, self->_wordTimings];

  return v6;
}

- (SVXSpeechSynthesisUtteranceInfo)initWithUtterance:(id)a3 wordTimings:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = SVXSpeechSynthesisUtteranceInfo;
  v8 = [(SVXSpeechSynthesisUtteranceInfo *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    utterance = v8->_utterance;
    v8->_utterance = v9;

    v11 = [v7 copy];
    wordTimings = v8->_wordTimings;
    v8->_wordTimings = v11;
  }

  return v8;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_SVXSpeechSynthesisUtteranceInfoMutation alloc] initWithBaseModel:self];
    v4[2](v4, v5);
    v6 = [(_SVXSpeechSynthesisUtteranceInfoMutation *)v5 generate];
  }

  else
  {
    v6 = [(SVXSpeechSynthesisUtteranceInfo *)self copy];
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_SVXSpeechSynthesisUtteranceInfoMutation);
  if (v3)
  {
    v3[2](v3, v4);
  }

  v5 = [(_SVXSpeechSynthesisUtteranceInfoMutation *)v4 generate];

  return v5;
}

@end