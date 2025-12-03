@interface TITypingSessionParams
- (TITypingSessionParams)initWithActiveInputModes:(id)modes wordSeparator:(id)separator testingParameters:(id)parameters assetAvailabilityStatus:(int64_t)status;
@end

@implementation TITypingSessionParams

- (TITypingSessionParams)initWithActiveInputModes:(id)modes wordSeparator:(id)separator testingParameters:(id)parameters assetAvailabilityStatus:(int64_t)status
{
  modesCopy = modes;
  separatorCopy = separator;
  parametersCopy = parameters;
  v17.receiver = self;
  v17.super_class = TITypingSessionParams;
  v14 = [(TITypingSessionParams *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_activeInputModes, modes);
    objc_storeStrong(&v15->_wordSeparator, separator);
    objc_storeStrong(&v15->_testingParameters, parameters);
    v15->_assetAvailabilityStatus = status;
  }

  return v15;
}

@end