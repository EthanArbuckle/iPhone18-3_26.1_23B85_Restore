@interface SVXUserFeedback
+ (id)newWithBuilder:(id)builder;
- (BOOL)isEqual:(id)equal;
- (SVXUserFeedback)initWithCoder:(id)coder;
- (SVXUserFeedback)initWithIdentifier:(id)identifier contentType:(int64_t)type audioContent:(id)content voiceContent:(id)voiceContent;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SVXUserFeedback

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"SVXUserFeedback::identifier"];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_contentType];
  [coderCopy encodeObject:v5 forKey:@"SVXUserFeedback::contentType"];

  [coderCopy encodeObject:self->_audioContent forKey:@"SVXUserFeedback::audioContent"];
  [coderCopy encodeObject:self->_voiceContent forKey:@"SVXUserFeedback::voiceContent"];
}

- (SVXUserFeedback)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXUserFeedback::identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXUserFeedback::contentType"];
  integerValue = [v6 integerValue];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXUserFeedback::audioContent"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXUserFeedback::voiceContent"];

  v10 = [(SVXUserFeedback *)self initWithIdentifier:v5 contentType:integerValue audioContent:v8 voiceContent:v9];
  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      contentType = self->_contentType;
      if (contentType == [(SVXUserFeedback *)v5 contentType])
      {
        identifier = [(SVXUserFeedback *)v5 identifier];
        identifier = self->_identifier;
        if (identifier == identifier || [(NSString *)identifier isEqual:identifier])
        {
          audioContent = [(SVXUserFeedback *)v5 audioContent];
          audioContent = self->_audioContent;
          if (audioContent == audioContent || [(SVXUserFeedbackAudioContent *)audioContent isEqual:audioContent])
          {
            voiceContent = [(SVXUserFeedback *)v5 voiceContent];
            voiceContent = self->_voiceContent;
            v13 = voiceContent == voiceContent || [(SVXUserFeedbackVoiceContent *)voiceContent isEqual:voiceContent];
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:self->_contentType];
  v5 = [v4 hash];
  v6 = v3 ^ [(SVXUserFeedbackAudioContent *)self->_audioContent hash];
  v7 = v6 ^ [(SVXUserFeedbackVoiceContent *)self->_voiceContent hash];

  return v5 ^ v7;
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v12.receiver = self;
  v12.super_class = SVXUserFeedback;
  v5 = [(SVXUserFeedback *)&v12 description];
  identifier = self->_identifier;
  contentType = self->_contentType;
  if (contentType > 2)
  {
    v8 = @"(unknown)";
  }

  else
  {
    v8 = off_279C66BF0[contentType];
  }

  v9 = v8;
  v10 = [v4 initWithFormat:@"%@ {identifier = %@, contentType = %@, audioContent = %@, voiceContent = %@}", v5, identifier, v9, self->_audioContent, self->_voiceContent];

  return v10;
}

- (SVXUserFeedback)initWithIdentifier:(id)identifier contentType:(int64_t)type audioContent:(id)content voiceContent:(id)voiceContent
{
  identifierCopy = identifier;
  contentCopy = content;
  voiceContentCopy = voiceContent;
  v21.receiver = self;
  v21.super_class = SVXUserFeedback;
  v13 = [(SVXUserFeedback *)&v21 init];
  if (v13)
  {
    v14 = [identifierCopy copy];
    identifier = v13->_identifier;
    v13->_identifier = v14;

    v13->_contentType = type;
    v16 = [contentCopy copy];
    audioContent = v13->_audioContent;
    v13->_audioContent = v16;

    v18 = [voiceContentCopy copy];
    voiceContent = v13->_voiceContent;
    v13->_voiceContent = v18;
  }

  return v13;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_SVXUserFeedbackMutation alloc] initWithBaseModel:self];
    mutatorCopy[2](mutatorCopy, v5);
    generate = [(_SVXUserFeedbackMutation *)v5 generate];
  }

  else
  {
    generate = [(SVXUserFeedback *)self copy];
  }

  return generate;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = objc_alloc_init(_SVXUserFeedbackMutation);
  if (builderCopy)
  {
    builderCopy[2](builderCopy, v4);
  }

  generate = [(_SVXUserFeedbackMutation *)v4 generate];

  return generate;
}

@end