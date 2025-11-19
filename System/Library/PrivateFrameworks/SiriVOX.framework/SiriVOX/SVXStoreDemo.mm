@interface SVXStoreDemo
+ (id)newWithBuilder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SVXStoreDemo)initWithCoder:(id)a3;
- (SVXStoreDemo)initWithTranscriptID:(int64_t)a3 languageCode:(id)a4 gender:(int64_t)a5 outputVolume:(float)a6;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SVXStoreDemo

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  transcriptID = self->_transcriptID;
  v6 = a3;
  v7 = [v4 numberWithInteger:transcriptID];
  [v6 encodeObject:v7 forKey:@"SVXStoreDemo::transcriptID"];

  [v6 encodeObject:self->_languageCode forKey:@"SVXStoreDemo::languageCode"];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:self->_gender];
  [v6 encodeObject:v8 forKey:@"SVXStoreDemo::gender"];

  *&v9 = self->_outputVolume;
  v10 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
  [v6 encodeObject:v10 forKey:@"SVXStoreDemo::outputVolume"];
}

- (SVXStoreDemo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVXStoreDemo::transcriptID"];
  v6 = [v5 integerValue];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVXStoreDemo::languageCode"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVXStoreDemo::gender"];
  v9 = [v8 integerValue];

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVXStoreDemo::outputVolume"];

  [v10 floatValue];
  v12 = v11;

  LODWORD(v13) = v12;
  v14 = [(SVXStoreDemo *)self initWithTranscriptID:v6 languageCode:v7 gender:v9 outputVolume:v13];

  return v14;
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
      transcriptID = self->_transcriptID;
      if (transcriptID == [(SVXStoreDemo *)v5 transcriptID]&& (gender = self->_gender, gender == [(SVXStoreDemo *)v5 gender]) && (outputVolume = self->_outputVolume, [(SVXStoreDemo *)v5 outputVolume], outputVolume == v9))
      {
        v12 = [(SVXStoreDemo *)v5 languageCode];
        languageCode = self->_languageCode;
        v10 = languageCode == v12 || [(NSString *)languageCode isEqual:v12];
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

- (id)_descriptionWithIndent:(unint64_t)a3
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

- (SVXStoreDemo)initWithTranscriptID:(int64_t)a3 languageCode:(id)a4 gender:(int64_t)a5 outputVolume:(float)a6
{
  v10 = a4;
  v16.receiver = self;
  v16.super_class = SVXStoreDemo;
  v11 = [(SVXStoreDemo *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_transcriptID = a3;
    v13 = [v10 copy];
    languageCode = v12->_languageCode;
    v12->_languageCode = v13;

    v12->_gender = a5;
    v12->_outputVolume = a6;
  }

  return v12;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_SVXStoreDemoMutation alloc] initWithBaseModel:self];
    v4[2](v4, v5);
    v6 = [(_SVXStoreDemoMutation *)v5 generate];
  }

  else
  {
    v6 = [(SVXStoreDemo *)self copy];
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_SVXStoreDemoMutation);
  if (v3)
  {
    v3[2](v3, v4);
  }

  v5 = [(_SVXStoreDemoMutation *)v4 generate];

  return v5;
}

@end