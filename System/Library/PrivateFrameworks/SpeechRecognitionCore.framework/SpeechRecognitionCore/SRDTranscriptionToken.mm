@interface SRDTranscriptionToken
- (SRDTranscriptionToken)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SRDTranscriptionToken

- (void)encodeWithCoder:(id)coder
{
  tokenName = self->_tokenName;
  coderCopy = coder;
  [coderCopy encodeObject:tokenName forKey:@"tokenName"];
  [coderCopy encodeDouble:@"start" forKey:self->_start];
  [coderCopy encodeDouble:@"end" forKey:self->_end];
  [coderCopy encodeDouble:@"silenceStart" forKey:self->_silenceStart];
  [coderCopy encodeDouble:@"confidence" forKey:self->_confidence];
  [coderCopy encodeBool:self->_hasSpaceAfter forKey:@"hasSpaceAfter"];
  [coderCopy encodeBool:self->_hasSpaceBefore forKey:@"hasSpaceBefore"];
  [coderCopy encodeObject:self->_phoneSequence forKey:@"phoneSequence"];
  [coderCopy encodeObject:self->_ipaPhoneSequence forKey:@"ipaPhoneSequence"];
}

- (SRDTranscriptionToken)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = SRDTranscriptionToken;
  v5 = [(SRDTranscriptionToken *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tokenName"];
    tokenName = v5->_tokenName;
    v5->_tokenName = v6;

    [coderCopy decodeDoubleForKey:@"start"];
    v5->_start = v8;
    [coderCopy decodeDoubleForKey:@"end"];
    v5->_end = v9;
    [coderCopy decodeDoubleForKey:@"silenceStart"];
    v5->_silenceStart = v10;
    [coderCopy decodeDoubleForKey:@"confidence"];
    v5->_confidence = v11;
    v5->_hasSpaceAfter = [coderCopy decodeBoolForKey:@"hasSpaceAfter"];
    v5->_hasSpaceBefore = [coderCopy decodeBoolForKey:@"hasSpaceBefore"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phoneSequence"];
    phoneSequence = v5->_phoneSequence;
    v5->_phoneSequence = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ipaPhoneSequence"];
    ipaPhoneSequence = v5->_ipaPhoneSequence;
    v5->_ipaPhoneSequence = v14;
  }

  return v5;
}

@end