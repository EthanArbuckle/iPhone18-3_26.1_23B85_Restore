@interface SVXSpeechSynthesisRequest
+ (id)newWithBuilder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SVXSpeechSynthesisRequest)initWithCoder:(id)a3;
- (SVXSpeechSynthesisRequest)initWithPriority:(int64_t)a3 options:(unint64_t)a4 speakableText:(id)a5 speakableContext:(id)a6 localizationKey:(id)a7 presynthesizedAudio:(id)a8 streamID:(id)a9;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SVXSpeechSynthesisRequest

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  priority = self->_priority;
  v8 = a3;
  v6 = [v4 numberWithInteger:priority];
  [v8 encodeObject:v6 forKey:@"SVXSpeechSynthesisRequest::priority"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_options];
  [v8 encodeObject:v7 forKey:@"SVXSpeechSynthesisRequest::options"];

  [v8 encodeObject:self->_speakableText forKey:@"SVXSpeechSynthesisRequest::speakableText"];
  [v8 encodeObject:self->_speakableContext forKey:@"SVXSpeechSynthesisRequest::speakableContext"];
  [v8 encodeObject:self->_localizationKey forKey:@"SVXSpeechSynthesisRequest::localizationKey"];
  [v8 encodeObject:self->_presynthesizedAudio forKey:@"SVXSpeechSynthesisRequest::presynthesizedAudio"];
  [v8 encodeObject:self->_streamID forKey:@"SVXSpeechSynthesisRequest::streamID"];
}

- (SVXSpeechSynthesisRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVXSpeechSynthesisRequest::priority"];
  v6 = [v5 integerValue];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVXSpeechSynthesisRequest::options"];
  v8 = [v7 unsignedIntegerValue];

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVXSpeechSynthesisRequest::speakableText"];
  v10 = MEMORY[0x277CBEB98];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v10 setWithObjects:{v11, v12, objc_opt_class(), 0}];
  v14 = [v4 decodeObjectOfClasses:v13 forKey:@"SVXSpeechSynthesisRequest::speakableContext"];

  v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVXSpeechSynthesisRequest::localizationKey"];
  v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVXSpeechSynthesisRequest::presynthesizedAudio"];
  v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVXSpeechSynthesisRequest::streamID"];

  v18 = [(SVXSpeechSynthesisRequest *)self initWithPriority:v6 options:v8 speakableText:v9 speakableContext:v14 localizationKey:v15 presynthesizedAudio:v16 streamID:v17];
  return v18;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      priority = self->_priority;
      if (priority == [(SVXSpeechSynthesisRequest *)v5 priority]&& (options = self->_options, options == [(SVXSpeechSynthesisRequest *)v5 options]))
      {
        v8 = [(SVXSpeechSynthesisRequest *)v5 speakableText];
        speakableText = self->_speakableText;
        if (speakableText == v8 || [(NSString *)speakableText isEqual:v8])
        {
          v10 = [(SVXSpeechSynthesisRequest *)v5 speakableContext];
          speakableContext = self->_speakableContext;
          if (speakableContext == v10 || [(NSDictionary *)speakableContext isEqual:v10])
          {
            v12 = [(SVXSpeechSynthesisRequest *)v5 localizationKey];
            localizationKey = self->_localizationKey;
            if (localizationKey == v12 || [(NSString *)localizationKey isEqual:v12])
            {
              v14 = [(SVXSpeechSynthesisRequest *)v5 presynthesizedAudio];
              presynthesizedAudio = self->_presynthesizedAudio;
              if (presynthesizedAudio == v14 || [(SVXSpeechSynthesisAudio *)presynthesizedAudio isEqual:v14])
              {
                v16 = [(SVXSpeechSynthesisRequest *)v5 streamID];
                streamID = self->_streamID;
                v18 = streamID == v16 || [(NSString *)streamID isEqual:v16];
              }

              else
              {
                v18 = 0;
              }
            }

            else
            {
              v18 = 0;
            }
          }

          else
          {
            v18 = 0;
          }
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  return v18;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:self->_priority];
  v4 = [v3 hash];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_options];
  v6 = [v5 hash] ^ v4;
  v7 = [(NSString *)self->_speakableText hash];
  v8 = v7 ^ [(NSDictionary *)self->_speakableContext hash];
  v9 = v8 ^ [(NSString *)self->_localizationKey hash];
  v10 = v6 ^ v9 ^ [(SVXSpeechSynthesisAudio *)self->_presynthesizedAudio hash];
  v11 = [(NSString *)self->_streamID hash];

  return v10 ^ v11;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v13.receiver = self;
  v13.super_class = SVXSpeechSynthesisRequest;
  v5 = [(SVXSpeechSynthesisRequest *)&v13 description];
  priority = self->_priority;
  if (priority > 3)
  {
    v7 = @"(unknown)";
  }

  else
  {
    v7 = off_279C67498[priority];
  }

  v8 = v7;
  v9 = SVXSpeechSynthesisOptionsGetNames(self->_options);
  v10 = [v9 componentsJoinedByString:@"|"];
  v11 = [v4 initWithFormat:@"%@ {priority = %@, options = %@, speakableText = %@, speakableContext = %@, localizationKey = %@, presynthesizedAudio = %@, streamID = %@}", v5, v8, v10, self->_speakableText, self->_speakableContext, self->_localizationKey, self->_presynthesizedAudio, self->_streamID];

  return v11;
}

- (SVXSpeechSynthesisRequest)initWithPriority:(int64_t)a3 options:(unint64_t)a4 speakableText:(id)a5 speakableContext:(id)a6 localizationKey:(id)a7 presynthesizedAudio:(id)a8 streamID:(id)a9
{
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v33.receiver = self;
  v33.super_class = SVXSpeechSynthesisRequest;
  v20 = [(SVXSpeechSynthesisRequest *)&v33 init];
  v21 = v20;
  if (v20)
  {
    v20->_priority = a3;
    v20->_options = a4;
    v22 = [v15 copy];
    speakableText = v21->_speakableText;
    v21->_speakableText = v22;

    v24 = [v16 copy];
    speakableContext = v21->_speakableContext;
    v21->_speakableContext = v24;

    v26 = [v17 copy];
    localizationKey = v21->_localizationKey;
    v21->_localizationKey = v26;

    v28 = [v18 copy];
    presynthesizedAudio = v21->_presynthesizedAudio;
    v21->_presynthesizedAudio = v28;

    v30 = [v19 copy];
    streamID = v21->_streamID;
    v21->_streamID = v30;
  }

  return v21;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_SVXSpeechSynthesisRequestMutation alloc] initWithBaseModel:self];
    v4[2](v4, v5);
    v6 = [(_SVXSpeechSynthesisRequestMutation *)v5 generate];
  }

  else
  {
    v6 = [(SVXSpeechSynthesisRequest *)self copy];
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_SVXSpeechSynthesisRequestMutation);
  if (v3)
  {
    v3[2](v3, v4);
  }

  v5 = [(_SVXSpeechSynthesisRequestMutation *)v4 generate];

  return v5;
}

@end