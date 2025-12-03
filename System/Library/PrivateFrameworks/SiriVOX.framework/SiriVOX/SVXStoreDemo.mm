@interface SVXStoreDemo
+ (id)newWithBuilder:(id)builder;
- (BOOL)isEqual:(id)equal;
- (SVXStoreDemo)initWithCoder:(id)coder;
- (SVXStoreDemo)initWithTranscriptID:(int64_t)d languageCode:(id)code gender:(int64_t)gender outputVolume:(float)volume;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SVXStoreDemo

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  transcriptID = self->_transcriptID;
  coderCopy = coder;
  v7 = [v4 numberWithInteger:transcriptID];
  [coderCopy encodeObject:v7 forKey:@"SVXStoreDemo::transcriptID"];

  [coderCopy encodeObject:self->_languageCode forKey:@"SVXStoreDemo::languageCode"];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:self->_gender];
  [coderCopy encodeObject:v8 forKey:@"SVXStoreDemo::gender"];

  *&v9 = self->_outputVolume;
  v10 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
  [coderCopy encodeObject:v10 forKey:@"SVXStoreDemo::outputVolume"];
}

- (SVXStoreDemo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXStoreDemo::transcriptID"];
  integerValue = [v5 integerValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXStoreDemo::languageCode"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXStoreDemo::gender"];
  integerValue2 = [v8 integerValue];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXStoreDemo::outputVolume"];

  [v10 floatValue];
  v12 = v11;

  LODWORD(v13) = v12;
  v14 = [(SVXStoreDemo *)self initWithTranscriptID:integerValue languageCode:v7 gender:integerValue2 outputVolume:v13];

  return v14;
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
      transcriptID = self->_transcriptID;
      if (transcriptID == [(SVXStoreDemo *)v5 transcriptID]&& (gender = self->_gender, gender == [(SVXStoreDemo *)v5 gender]) && (outputVolume = self->_outputVolume, [(SVXStoreDemo *)v5 outputVolume], outputVolume == v9))
      {
        languageCode = [(SVXStoreDemo *)v5 languageCode];
        languageCode = self->_languageCode;
        v10 = languageCode == languageCode || [(NSString *)languageCode isEqual:languageCode];
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

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:self->_transcriptID];
  v4 = [v3 hash];
  v5 = [(NSString *)self->_languageCode hash]^ v4;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:self->_gender];
  v7 = [v6 hash];
  *&v8 = self->_outputVolume;
  v9 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
  v10 = v7 ^ [v9 hash];

  return v5 ^ v10;
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v15.receiver = self;
  v15.super_class = SVXStoreDemo;
  v5 = [(SVXStoreDemo *)&v15 description];
  transcriptID = self->_transcriptID;
  if (transcriptID > 0x15)
  {
    v7 = @"(unknown)";
  }

  else
  {
    v7 = off_279C66870[transcriptID];
  }

  v8 = v7;
  languageCode = self->_languageCode;
  gender = self->_gender;
  if (gender > 3)
  {
    v11 = @"(unknown)";
  }

  else
  {
    v11 = off_279C66CC8[gender];
  }

  v12 = v11;
  v13 = [v4 initWithFormat:@"%@ {transcriptID = %@, languageCode = %@, gender = %@, outputVolume = %f}", v5, v8, languageCode, v12, self->_outputVolume];

  return v13;
}

- (SVXStoreDemo)initWithTranscriptID:(int64_t)d languageCode:(id)code gender:(int64_t)gender outputVolume:(float)volume
{
  codeCopy = code;
  v16.receiver = self;
  v16.super_class = SVXStoreDemo;
  v11 = [(SVXStoreDemo *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_transcriptID = d;
    v13 = [codeCopy copy];
    languageCode = v12->_languageCode;
    v12->_languageCode = v13;

    v12->_gender = gender;
    v12->_outputVolume = volume;
  }

  return v12;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_SVXStoreDemoMutation alloc] initWithBaseModel:self];
    mutatorCopy[2](mutatorCopy, v5);
    generate = [(_SVXStoreDemoMutation *)v5 generate];
  }

  else
  {
    generate = [(SVXStoreDemo *)self copy];
  }

  return generate;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = objc_alloc_init(_SVXStoreDemoMutation);
  if (builderCopy)
  {
    builderCopy[2](builderCopy, v4);
  }

  generate = [(_SVXStoreDemoMutation *)v4 generate];

  return generate;
}

@end