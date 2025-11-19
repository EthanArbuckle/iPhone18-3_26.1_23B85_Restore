@interface _SBProactiveAppSuggestion
- (BOOL)isBluetoothAudioPrediction;
- (BOOL)isBluetoothPrediction;
- (BOOL)isCarPlayPrediction;
- (BOOL)isEqual:(id)a3;
- (BOOL)isFirstWakePrediction;
- (BOOL)isHeadphonesPrediction;
- (BOOL)isLocationBasedSuggestion;
- (_SBProactiveAppSuggestion)initWithAppSuggestion:(id)a3;
- (id)bundleIdentifier;
- (unint64_t)hash;
@end

@implementation _SBProactiveAppSuggestion

- (_SBProactiveAppSuggestion)initWithAppSuggestion:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _SBProactiveAppSuggestion;
  v6 = [(_SBProactiveAppSuggestion *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_appSuggestion, a3);
  }

  return v7;
}

- (id)bundleIdentifier
{
  v2 = [(ATXProactiveSuggestion *)self->_appSuggestion executableSpecification];
  v3 = [v2 executableObject];

  return v3;
}

- (BOOL)isLocationBasedSuggestion
{
  v2 = [(ATXProactiveSuggestion *)self->_appSuggestion uiSpecification];
  v3 = [v2 predictionReasons];

  return (*&v3 & 0x11800) != 0;
}

- (BOOL)isHeadphonesPrediction
{
  v2 = [(ATXProactiveSuggestion *)self->_appSuggestion uiSpecification];
  v3 = [v2 predictionReasons] == 4;

  return v3;
}

- (BOOL)isBluetoothPrediction
{
  v2 = [(ATXProactiveSuggestion *)self->_appSuggestion uiSpecification];
  v3 = [v2 predictionReasons] == 16;

  return v3;
}

- (BOOL)isBluetoothAudioPrediction
{
  v2 = [(ATXProactiveSuggestion *)self->_appSuggestion uiSpecification];
  v3 = (~[v2 predictionReasons] & 0x14) == 0;

  return v3;
}

- (BOOL)isCarPlayPrediction
{
  v2 = [(ATXProactiveSuggestion *)self->_appSuggestion uiSpecification];
  v3 = ([v2 predictionReasons] >> 6) & 1;

  return v3;
}

- (BOOL)isFirstWakePrediction
{
  v2 = [(ATXProactiveSuggestion *)self->_appSuggestion uiSpecification];
  v3 = ([v2 predictionReasons] >> 10) & 1;

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(_SBProactiveAppSuggestion *)v4 resultUUID];
      v6 = [(_SBProactiveAppSuggestion *)self resultUUID];
      v7 = [v5 isEqual:v6];
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
  v2 = [(_SBProactiveAppSuggestion *)self resultUUID];
  v3 = [v2 hash];

  return v3;
}

@end