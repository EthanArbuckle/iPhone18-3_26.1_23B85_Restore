@interface SRCSPhraseMatchResult
- (SRCSPhraseMatchResult)initWithMarkerRange:(id)a3 matchedString:(id)a4 userInfo:(id)a5;
- (id)description;
@end

@implementation SRCSPhraseMatchResult

- (SRCSPhraseMatchResult)initWithMarkerRange:(id)a3 matchedString:(id)a4 userInfo:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SRCSPhraseMatchResult;
  v12 = [(SRCSPhraseMatchResult *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_markerRange, a3);
    objc_storeStrong(&v13->_matchedString, a4);
    objc_storeStrong(&v13->_userInfo, a5);
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  userInfo = self->_userInfo;
  matchedString = self->_matchedString;
  v6 = [(SRCSTextMarkerRangeProtocol *)self->_markerRange nsRange];
  [(SRCSTextMarkerRangeProtocol *)self->_markerRange nsRange];
  return [v3 stringWithFormat:@"%@: %@ (%ld, %ld)", userInfo, matchedString, v6, v7];
}

@end