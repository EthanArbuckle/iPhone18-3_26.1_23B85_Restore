@interface SRDTranscriptionResult
- (SRDTranscriptionResult)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SRDTranscriptionResult

- (void)encodeWithCoder:(id)coder
{
  tokenSausage = self->_tokenSausage;
  coderCopy = coder;
  [coderCopy encodeObject:tokenSausage forKey:@"tokenSausage"];
  [coderCopy encodeObject:self->_nBestResults forKey:@"nBestResults"];
  [coderCopy encodeObject:self->_firstBestResult forKey:@"firstBestResult"];
  [coderCopy encodeObject:self->_preITN_tokenSausage forKey:@"preITN_tokenSausage"];
  [coderCopy encodeObject:self->_preITN_nBestResults forKey:@"preITN_nBestResults"];
  [coderCopy encodeObject:self->_preITN_firstBestResult forKey:@"preITN_firstBestResult"];
  [coderCopy encodeBool:self->_isPartialResult forKey:@"isPartial"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_utteranceID];
  [coderCopy encodeObject:v6 forKey:@"utteranceID"];
}

- (SRDTranscriptionResult)initWithCoder:(id)coder
{
  v25[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = SRDTranscriptionResult;
  v5 = [(SRDTranscriptionResult *)&v24 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v25[0] = objc_opt_class();
    v25[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
    v8 = [v6 setWithArray:v7];

    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"tokenSausage"];
    tokenSausage = v5->_tokenSausage;
    v5->_tokenSausage = v9;

    v11 = [coderCopy decodeObjectOfClasses:v8 forKey:@"nBestResults"];
    nBestResults = v5->_nBestResults;
    v5->_nBestResults = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"firstBestResult"];
    firstBestResult = v5->_firstBestResult;
    v5->_firstBestResult = v13;

    v15 = [coderCopy decodeObjectOfClasses:v8 forKey:@"preITN_tokenSausage"];
    preITN_tokenSausage = v5->_preITN_tokenSausage;
    v5->_preITN_tokenSausage = v15;

    v17 = [coderCopy decodeObjectOfClasses:v8 forKey:@"preITN_nBestResults"];
    preITN_nBestResults = v5->_preITN_nBestResults;
    v5->_preITN_nBestResults = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preITN_firstBestResult"];
    preITN_firstBestResult = v5->_preITN_firstBestResult;
    v5->_preITN_firstBestResult = v19;

    v5->_isPartialResult = [coderCopy decodeBoolForKey:@"isPartial"];
    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"utteranceID"];
    v5->_utteranceID = [v21 unsignedIntegerValue];
  }

  v22 = *MEMORY[0x277D85DE8];
  return v5;
}

@end