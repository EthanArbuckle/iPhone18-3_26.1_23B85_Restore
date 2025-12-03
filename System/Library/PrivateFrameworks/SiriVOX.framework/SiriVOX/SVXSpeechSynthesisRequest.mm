@interface SVXSpeechSynthesisRequest
+ (id)newWithBuilder:(id)builder;
- (BOOL)isEqual:(id)equal;
- (SVXSpeechSynthesisRequest)initWithCoder:(id)coder;
- (SVXSpeechSynthesisRequest)initWithPriority:(int64_t)priority options:(unint64_t)options speakableText:(id)text speakableContext:(id)context localizationKey:(id)key presynthesizedAudio:(id)audio streamID:(id)d;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SVXSpeechSynthesisRequest

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  priority = self->_priority;
  coderCopy = coder;
  v6 = [v4 numberWithInteger:priority];
  [coderCopy encodeObject:v6 forKey:@"SVXSpeechSynthesisRequest::priority"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_options];
  [coderCopy encodeObject:v7 forKey:@"SVXSpeechSynthesisRequest::options"];

  [coderCopy encodeObject:self->_speakableText forKey:@"SVXSpeechSynthesisRequest::speakableText"];
  [coderCopy encodeObject:self->_speakableContext forKey:@"SVXSpeechSynthesisRequest::speakableContext"];
  [coderCopy encodeObject:self->_localizationKey forKey:@"SVXSpeechSynthesisRequest::localizationKey"];
  [coderCopy encodeObject:self->_presynthesizedAudio forKey:@"SVXSpeechSynthesisRequest::presynthesizedAudio"];
  [coderCopy encodeObject:self->_streamID forKey:@"SVXSpeechSynthesisRequest::streamID"];
}

- (SVXSpeechSynthesisRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXSpeechSynthesisRequest::priority"];
  integerValue = [v5 integerValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXSpeechSynthesisRequest::options"];
  unsignedIntegerValue = [v7 unsignedIntegerValue];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXSpeechSynthesisRequest::speakableText"];
  v10 = MEMORY[0x277CBEB98];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v10 setWithObjects:{v11, v12, objc_opt_class(), 0}];
  v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"SVXSpeechSynthesisRequest::speakableContext"];

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXSpeechSynthesisRequest::localizationKey"];
  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXSpeechSynthesisRequest::presynthesizedAudio"];
  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXSpeechSynthesisRequest::streamID"];

  v18 = [(SVXSpeechSynthesisRequest *)self initWithPriority:integerValue options:unsignedIntegerValue speakableText:v9 speakableContext:v14 localizationKey:v15 presynthesizedAudio:v16 streamID:v17];
  return v18;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      priority = self->_priority;
      if (priority == [(SVXSpeechSynthesisRequest *)v5 priority]&& (options = self->_options, options == [(SVXSpeechSynthesisRequest *)v5 options]))
      {
        speakableText = [(SVXSpeechSynthesisRequest *)v5 speakableText];
        speakableText = self->_speakableText;
        if (speakableText == speakableText || [(NSString *)speakableText isEqual:speakableText])
        {
          speakableContext = [(SVXSpeechSynthesisRequest *)v5 speakableContext];
          speakableContext = self->_speakableContext;
          if (speakableContext == speakableContext || [(NSDictionary *)speakableContext isEqual:speakableContext])
          {
            localizationKey = [(SVXSpeechSynthesisRequest *)v5 localizationKey];
            localizationKey = self->_localizationKey;
            if (localizationKey == localizationKey || [(NSString *)localizationKey isEqual:localizationKey])
            {
              presynthesizedAudio = [(SVXSpeechSynthesisRequest *)v5 presynthesizedAudio];
              presynthesizedAudio = self->_presynthesizedAudio;
              if (presynthesizedAudio == presynthesizedAudio || [(SVXSpeechSynthesisAudio *)presynthesizedAudio isEqual:presynthesizedAudio])
              {
                streamID = [(SVXSpeechSynthesisRequest *)v5 streamID];
                streamID = self->_streamID;
                v18 = streamID == streamID || [(NSString *)streamID isEqual:streamID];
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

- (id)_descriptionWithIndent:(unint64_t)indent
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

- (SVXSpeechSynthesisRequest)initWithPriority:(int64_t)priority options:(unint64_t)options speakableText:(id)text speakableContext:(id)context localizationKey:(id)key presynthesizedAudio:(id)audio streamID:(id)d
{
  textCopy = text;
  contextCopy = context;
  keyCopy = key;
  audioCopy = audio;
  dCopy = d;
  v33.receiver = self;
  v33.super_class = SVXSpeechSynthesisRequest;
  v20 = [(SVXSpeechSynthesisRequest *)&v33 init];
  v21 = v20;
  if (v20)
  {
    v20->_priority = priority;
    v20->_options = options;
    v22 = [textCopy copy];
    speakableText = v21->_speakableText;
    v21->_speakableText = v22;

    v24 = [contextCopy copy];
    speakableContext = v21->_speakableContext;
    v21->_speakableContext = v24;

    v26 = [keyCopy copy];
    localizationKey = v21->_localizationKey;
    v21->_localizationKey = v26;

    v28 = [audioCopy copy];
    presynthesizedAudio = v21->_presynthesizedAudio;
    v21->_presynthesizedAudio = v28;

    v30 = [dCopy copy];
    streamID = v21->_streamID;
    v21->_streamID = v30;
  }

  return v21;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_SVXSpeechSynthesisRequestMutation alloc] initWithBaseModel:self];
    mutatorCopy[2](mutatorCopy, v5);
    generate = [(_SVXSpeechSynthesisRequestMutation *)v5 generate];
  }

  else
  {
    generate = [(SVXSpeechSynthesisRequest *)self copy];
  }

  return generate;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = objc_alloc_init(_SVXSpeechSynthesisRequestMutation);
  if (builderCopy)
  {
    builderCopy[2](builderCopy, v4);
  }

  generate = [(_SVXSpeechSynthesisRequestMutation *)v4 generate];

  return generate;
}

@end