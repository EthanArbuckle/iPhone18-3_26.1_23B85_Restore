@interface _SBProactiveAppSuggestion
- (BOOL)isBluetoothAudioPrediction;
- (BOOL)isBluetoothPrediction;
- (BOOL)isCarPlayPrediction;
- (BOOL)isEqual:(id)equal;
- (BOOL)isFirstWakePrediction;
- (BOOL)isHeadphonesPrediction;
- (BOOL)isLocationBasedSuggestion;
- (_SBProactiveAppSuggestion)initWithAppSuggestion:(id)suggestion;
- (id)bundleIdentifier;
- (unint64_t)hash;
@end

@implementation _SBProactiveAppSuggestion

- (_SBProactiveAppSuggestion)initWithAppSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  v9.receiver = self;
  v9.super_class = _SBProactiveAppSuggestion;
  v6 = [(_SBProactiveAppSuggestion *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_appSuggestion, suggestion);
  }

  return v7;
}

- (id)bundleIdentifier
{
  executableSpecification = [(ATXProactiveSuggestion *)self->_appSuggestion executableSpecification];
  executableObject = [executableSpecification executableObject];

  return executableObject;
}

- (BOOL)isLocationBasedSuggestion
{
  uiSpecification = [(ATXProactiveSuggestion *)self->_appSuggestion uiSpecification];
  predictionReasons = [uiSpecification predictionReasons];

  return (*&predictionReasons & 0x11800) != 0;
}

- (BOOL)isHeadphonesPrediction
{
  uiSpecification = [(ATXProactiveSuggestion *)self->_appSuggestion uiSpecification];
  v3 = [uiSpecification predictionReasons] == 4;

  return v3;
}

- (BOOL)isBluetoothPrediction
{
  uiSpecification = [(ATXProactiveSuggestion *)self->_appSuggestion uiSpecification];
  v3 = [uiSpecification predictionReasons] == 16;

  return v3;
}

- (BOOL)isBluetoothAudioPrediction
{
  uiSpecification = [(ATXProactiveSuggestion *)self->_appSuggestion uiSpecification];
  v3 = (~[uiSpecification predictionReasons] & 0x14) == 0;

  return v3;
}

- (BOOL)isCarPlayPrediction
{
  uiSpecification = [(ATXProactiveSuggestion *)self->_appSuggestion uiSpecification];
  v3 = ([uiSpecification predictionReasons] >> 6) & 1;

  return v3;
}

- (BOOL)isFirstWakePrediction
{
  uiSpecification = [(ATXProactiveSuggestion *)self->_appSuggestion uiSpecification];
  v3 = ([uiSpecification predictionReasons] >> 10) & 1;

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      resultUUID = [(_SBProactiveAppSuggestion *)equalCopy resultUUID];
      resultUUID2 = [(_SBProactiveAppSuggestion *)self resultUUID];
      v7 = [resultUUID isEqual:resultUUID2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  resultUUID = [(_SBProactiveAppSuggestion *)self resultUUID];
  v3 = [resultUUID hash];

  return v3;
}

@end