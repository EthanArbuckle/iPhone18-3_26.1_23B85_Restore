@interface BKButtonHapticsClickState
+ (id)clickStateWithState:(unint64_t)state;
+ (void)inspectChangesFromState:(id)state toState:(id)toState withBlock:(id)block;
- (BKButtonHapticsClickState)init;
- (BOOL)isEnabled;
- (BOOL)shouldUseHaptic;
- (double)maximumTimeInterval;
- (double)minimumTimeInterval;
- (id)_baseConfigDictionary;
- (id)_initWithSettings:(id)settings;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)fastConfigDictionaryForHAButtonHapticType:(int64_t)type;
- (id)normalConfigDictionaryForHAButtonHapticType:(int64_t)type;
- (id)slowConfigDictionaryForHAButtonHapticType:(int64_t)type;
- (int64_t)assetType;
- (int64_t)hapticClickCount;
- (unint64_t)clickState;
- (void)_applyGainForHapticType:(int64_t)type toConfigDictionary:(id)dictionary clickSpeed:(unint64_t)speed;
- (void)setAssetType:(int64_t)type;
- (void)setClickState:(unint64_t)state;
- (void)setMaximumTimeInterval:(double)interval;
- (void)setMinimumTimeInterval:(double)interval;
@end

@implementation BKButtonHapticsClickState

- (BOOL)isEnabled
{
  v2 = [(BSMutableSettings *)self->_settings objectForSetting:2];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setMaximumTimeInterval:(double)interval
{
  settings = self->_settings;
  v4 = [NSNumber numberWithDouble:interval];
  [(BSMutableSettings *)settings setObject:v4 forSetting:4];
}

- (double)maximumTimeInterval
{
  v2 = [(BSMutableSettings *)self->_settings objectForSetting:4];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (void)setMinimumTimeInterval:(double)interval
{
  settings = self->_settings;
  v4 = [NSNumber numberWithDouble:interval];
  [(BSMutableSettings *)settings setObject:v4 forSetting:5];
}

- (double)minimumTimeInterval
{
  v2 = [(BSMutableSettings *)self->_settings objectForSetting:5];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (int64_t)hapticClickCount
{
  if ([(BKButtonHapticsClickState *)self _shouldUseDoublePressAssetForClickStateType:[(BKButtonHapticsClickState *)self clickState]])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (BOOL)shouldUseHaptic
{
  clickState = [(BKButtonHapticsClickState *)self clickState];

  return [(BKButtonHapticsClickState *)self _shouldUseHapticForClickState:clickState];
}

- (void)setAssetType:(int64_t)type
{
  settings = self->_settings;
  v4 = [NSNumber numberWithInteger:type];
  [(BSMutableSettings *)settings setObject:v4 forSetting:3];
}

- (int64_t)assetType
{
  v2 = [(BSMutableSettings *)self->_settings objectForSetting:3];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setClickState:(unint64_t)state
{
  settings = self->_settings;
  v4 = [NSNumber numberWithUnsignedInteger:state];
  [(BSMutableSettings *)settings setObject:v4 forSetting:1];
}

- (unint64_t)clickState
{
  v2 = [(BSMutableSettings *)self->_settings objectForSetting:1];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (id)fastConfigDictionaryForHAButtonHapticType:(int64_t)type
{
  _baseConfigDictionary = [(BKButtonHapticsClickState *)self _baseConfigDictionary];
  [(BKButtonHapticsClickState *)self _applyGainForHapticType:type toConfigDictionary:_baseConfigDictionary clickSpeed:2];
  [_baseConfigDictionary setObject:&off_1001078E0 forKey:BRConfigSpeedKey];

  return _baseConfigDictionary;
}

- (id)normalConfigDictionaryForHAButtonHapticType:(int64_t)type
{
  _baseConfigDictionary = [(BKButtonHapticsClickState *)self _baseConfigDictionary];
  [(BKButtonHapticsClickState *)self _applyGainForHapticType:type toConfigDictionary:_baseConfigDictionary clickSpeed:1];
  [_baseConfigDictionary setObject:&off_1001078C8 forKey:BRConfigSpeedKey];

  return _baseConfigDictionary;
}

- (id)slowConfigDictionaryForHAButtonHapticType:(int64_t)type
{
  _baseConfigDictionary = [(BKButtonHapticsClickState *)self _baseConfigDictionary];
  [(BKButtonHapticsClickState *)self _applyGainForHapticType:type toConfigDictionary:_baseConfigDictionary clickSpeed:0];
  [_baseConfigDictionary setObject:&off_1001078B0 forKey:BRConfigSpeedKey];

  return _baseConfigDictionary;
}

- (void)_applyGainForHapticType:(int64_t)type toConfigDictionary:(id)dictionary clickSpeed:(unint64_t)speed
{
  dictionaryCopy = dictionary;
  clickState = [(BKButtonHapticsClickState *)self clickState];
  if ([(BKButtonHapticsClickState *)self _shouldUseHapticForClickState:clickState])
  {
    v8 = +[HAButtonHapticsLoader sharedInstance];
    if ([(BKButtonHapticsClickState *)self _shouldUseSplitGainForClickState:clickState])
    {
      if ([(BKButtonHapticsClickState *)self _isUpClickStateType:clickState])
      {
        [v8 defaultUpGainForType:type];
      }

      else
      {
        [v8 defaultDownGainForType:type];
      }
    }

    else
    {
      [v8 hapticGainForType:type];
    }

    v9 = [NSNumber numberWithFloat:?];
    [dictionaryCopy setObject:v9 forKey:BRConfigGainKey];
  }
}

- (id)_baseConfigDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  [(BKButtonHapticsClickState *)self maximumTimeInterval];
  if (v4 > 0.0)
  {
    v5 = [NSNumber numberWithUnsignedInteger:(v4 * 1000000.0)];
    [v3 setObject:v5 forKey:BRConfigMaxTimeKey];
  }

  [(BKButtonHapticsClickState *)self minimumTimeInterval];
  if (v6 > 0.0)
  {
    v7 = [NSNumber numberWithUnsignedInteger:(v6 * 1000000.0)];
    [v3 setObject:v7 forKey:BRConfigMinTimeKey];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  settings = self->_settings;

  return [v4 _initWithSettings:settings];
}

- (id)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  v4 = [v3 appendInteger:-[BKButtonHapticsClickState clickState](self withName:{"clickState"), @"clickState"}];
  v5 = [v3 appendBool:-[BKButtonHapticsClickState isEnabled](self withName:{"isEnabled"), @"isEnabled"}];
  v6 = [v3 appendBool:-[BKButtonHapticsClickState shouldUseHaptic](self withName:{"shouldUseHaptic"), @"shouldUseHaptic"}];
  v7 = [v3 appendInteger:-[BKButtonHapticsClickState hapticClickCount](self withName:{"hapticClickCount"), @"hapticClickCount"}];
  [(BKButtonHapticsClickState *)self assetType];
  v8 = NSStringFromBKSButtonHapticAssetType();
  v9 = [v3 appendObject:v8 withName:@"assetType"];

  [(BKButtonHapticsClickState *)self minimumTimeInterval];
  v10 = [v3 appendDouble:@"minimumTimeInterval" withName:2 decimalPrecision:?];
  [(BKButtonHapticsClickState *)self maximumTimeInterval];
  v11 = [v3 appendDouble:@"maximumTimeInterval" withName:2 decimalPrecision:?];
  build = [v3 build];

  return build;
}

- (BKButtonHapticsClickState)init
{
  v3 = objc_alloc_init(BSMutableSettings);
  v4 = [(BKButtonHapticsClickState *)self _initWithSettings:v3];

  return v4;
}

- (id)_initWithSettings:(id)settings
{
  settingsCopy = settings;
  v11.receiver = self;
  v11.super_class = BKButtonHapticsClickState;
  v5 = [(BKButtonHapticsClickState *)&v11 init];
  if (v5)
  {
    if (settingsCopy)
    {
      v6 = [settingsCopy mutableCopy];
      settings = v5->_settings;
      v5->_settings = v6;
    }

    else
    {
      v8 = objc_alloc_init(BSMutableSettings);
      v9 = v5->_settings;
      v5->_settings = v8;

      [(BKButtonHapticsClickState *)v5 setClickState:17];
    }
  }

  return v5;
}

+ (void)inspectChangesFromState:(id)state toState:(id)toState withBlock:(id)block
{
  blockCopy = block;
  toStateCopy = toState;
  settings = [state settings];
  settings2 = [toStateCopy settings];

  v11 = [BSSettingsDiff diffFromSettings:settings toSettings:settings2];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100025784;
  v13[3] = &unk_1000FA610;
  v14 = blockCopy;
  v12 = blockCopy;
  [v11 inspectChangesWithBlock:v13];
}

+ (id)clickStateWithState:(unint64_t)state
{
  v4 = objc_alloc_init(self);
  [v4 setClickState:state];

  return v4;
}

@end