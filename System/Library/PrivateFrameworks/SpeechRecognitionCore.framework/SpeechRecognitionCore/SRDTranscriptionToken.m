@interface SRDTranscriptionToken
- (SRDTranscriptionToken)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SRDTranscriptionToken

- (void)encodeWithCoder:(id)a3
{
  tokenName = self->_tokenName;
  v5 = a3;
  [v5 encodeObject:tokenName forKey:@"tokenName"];
  [v5 encodeDouble:@"start" forKey:self->_start];
  [v5 encodeDouble:@"end" forKey:self->_end];
  [v5 encodeDouble:@"silenceStart" forKey:self->_silenceStart];
  [v5 encodeDouble:@"confidence" forKey:self->_confidence];
  [v5 encodeBool:self->_hasSpaceAfter forKey:@"hasSpaceAfter"];
  [v5 encodeBool:self->_hasSpaceBefore forKey:@"hasSpaceBefore"];
  [v5 encodeObject:self->_phoneSequence forKey:@"phoneSequence"];
  [v5 encodeObject:self->_ipaPhoneSequence forKey:@"ipaPhoneSequence"];
}

- (SRDTranscriptionToken)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = SRDTranscriptionToken;
  v5 = [(SRDTranscriptionToken *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tokenName"];
    tokenName = v5->_tokenName;
    v5->_tokenName = v6;

    [v4 decodeDoubleForKey:@"start"];
    v5->_start = v8;
    [v4 decodeDoubleForKey:@"end"];
    v5->_end = v9;
    [v4 decodeDoubleForKey:@"silenceStart"];
    v5->_silenceStart = v10;
    [v4 decodeDoubleForKey:@"confidence"];
    v5->_confidence = v11;
    v5->_hasSpaceAfter = [v4 decodeBoolForKey:@"hasSpaceAfter"];
    v5->_hasSpaceBefore = [v4 decodeBoolForKey:@"hasSpaceBefore"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"phoneSequence"];
    phoneSequence = v5->_phoneSequence;
    v5->_phoneSequence = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ipaPhoneSequence"];
    ipaPhoneSequence = v5->_ipaPhoneSequence;
    v5->_ipaPhoneSequence = v14;
  }

  return v5;
}

@end