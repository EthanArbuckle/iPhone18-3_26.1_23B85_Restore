@interface SRCSPhraseMatchResult
- (SRCSPhraseMatchResult)initWithMarkerRange:(id)range matchedString:(id)string userInfo:(id)info;
- (id)description;
@end

@implementation SRCSPhraseMatchResult

- (SRCSPhraseMatchResult)initWithMarkerRange:(id)range matchedString:(id)string userInfo:(id)info
{
  rangeCopy = range;
  stringCopy = string;
  infoCopy = info;
  v15.receiver = self;
  v15.super_class = SRCSPhraseMatchResult;
  v12 = [(SRCSPhraseMatchResult *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_markerRange, range);
    objc_storeStrong(&v13->_matchedString, string);
    objc_storeStrong(&v13->_userInfo, info);
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  userInfo = self->_userInfo;
  matchedString = self->_matchedString;
  nsRange = [(SRCSTextMarkerRangeProtocol *)self->_markerRange nsRange];
  [(SRCSTextMarkerRangeProtocol *)self->_markerRange nsRange];
  return [v3 stringWithFormat:@"%@: %@ (%ld, %ld)", userInfo, matchedString, nsRange, v7];
}

@end