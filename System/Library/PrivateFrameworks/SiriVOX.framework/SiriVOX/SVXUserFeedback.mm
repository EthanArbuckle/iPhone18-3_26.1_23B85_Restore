@interface SVXUserFeedback
+ (id)newWithBuilder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SVXUserFeedback)initWithCoder:(id)a3;
- (SVXUserFeedback)initWithIdentifier:(id)a3 contentType:(int64_t)a4 audioContent:(id)a5 voiceContent:(id)a6;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SVXUserFeedback

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v6 = a3;
  [v6 encodeObject:identifier forKey:@"SVXUserFeedback::identifier"];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_contentType];
  [v6 encodeObject:v5 forKey:@"SVXUserFeedback::contentType"];

  [v6 encodeObject:self->_audioContent forKey:@"SVXUserFeedback::audioContent"];
  [v6 encodeObject:self->_voiceContent forKey:@"SVXUserFeedback::voiceContent"];
}

- (SVXUserFeedback)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVXUserFeedback::identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVXUserFeedback::contentType"];
  v7 = [v6 integerValue];

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVXUserFeedback::audioContent"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVXUserFeedback::voiceContent"];

  v10 = [(SVXUserFeedback *)self initWithIdentifier:v5 contentType:v7 audioContent:v8 voiceContent:v9];
  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      contentType = self->_contentType;
      if (contentType == [(SVXUserFeedback *)v5 contentType])
      {
        v7 = [(SVXUserFeedback *)v5 identifier];
        identifier = self->_identifier;
        if (identifier == v7 || [(NSString *)identifier isEqual:v7])
        {
          v9 = [(SVXUserFeedback *)v5 audioContent];
          audioContent = self->_audioContent;
          if (audioContent == v9 || [(SVXUserFeedbackAudioContent *)audioContent isEqual:v9])
          {
            v11 = [(SVXUserFeedback *)v5 voiceContent];
            voiceContent = self->_voiceContent;
            v13 = voiceContent == v11 || [(SVXUserFeedbackVoiceContent *)voiceContent isEqual:v11];
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

- (id)_descriptionWithIndent:(unint64_t)a3
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

- (SVXUserFeedback)initWithIdentifier:(id)a3 contentType:(int64_t)a4 audioContent:(id)a5 voiceContent:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v21.receiver = self;
  v21.super_class = SVXUserFeedback;
  v13 = [(SVXUserFeedback *)&v21 init];
  if (v13)
  {
    v14 = [v10 copy];
    identifier = v13->_identifier;
    v13->_identifier = v14;

    v13->_contentType = a4;
    v16 = [v11 copy];
    audioContent = v13->_audioContent;
    v13->_audioContent = v16;

    v18 = [v12 copy];
    voiceContent = v13->_voiceContent;
    v13->_voiceContent = v18;
  }

  return v13;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_SVXUserFeedbackMutation alloc] initWithBaseModel:self];
    v4[2](v4, v5);
    v6 = [(_SVXUserFeedbackMutation *)v5 generate];
  }

  else
  {
    v6 = [(SVXUserFeedback *)self copy];
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_SVXUserFeedbackMutation);
  if (v3)
  {
    v3[2](v3, v4);
  }

  v5 = [(_SVXUserFeedbackMutation *)v4 generate];

  return v5;
}

@end