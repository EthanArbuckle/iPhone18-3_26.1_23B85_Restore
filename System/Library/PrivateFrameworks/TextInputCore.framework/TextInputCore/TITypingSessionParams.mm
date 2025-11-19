@interface TITypingSessionParams
- (TITypingSessionParams)initWithActiveInputModes:(id)a3 wordSeparator:(id)a4 testingParameters:(id)a5 assetAvailabilityStatus:(int64_t)a6;
@end

@implementation TITypingSessionParams

- (TITypingSessionParams)initWithActiveInputModes:(id)a3 wordSeparator:(id)a4 testingParameters:(id)a5 assetAvailabilityStatus:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = TITypingSessionParams;
  v14 = [(TITypingSessionParams *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_activeInputModes, a3);
    objc_storeStrong(&v15->_wordSeparator, a4);
    objc_storeStrong(&v15->_testingParameters, a5);
    v15->_assetAvailabilityStatus = a6;
  }

  return v15;
}

@end