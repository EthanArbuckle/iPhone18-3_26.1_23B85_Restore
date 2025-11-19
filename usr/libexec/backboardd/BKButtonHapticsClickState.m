@interface BKButtonHapticsClickState
+ (id)clickStateWithState:(unint64_t)a3;
+ (void)inspectChangesFromState:(id)a3 toState:(id)a4 withBlock:(id)a5;
- (BKButtonHapticsClickState)init;
- (BOOL)isEnabled;
- (BOOL)shouldUseHaptic;
- (double)maximumTimeInterval;
- (double)minimumTimeInterval;
- (id)_baseConfigDictionary;
- (id)_initWithSettings:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)fastConfigDictionaryForHAButtonHapticType:(int64_t)a3;
- (id)normalConfigDictionaryForHAButtonHapticType:(int64_t)a3;
- (id)slowConfigDictionaryForHAButtonHapticType:(int64_t)a3;
- (int64_t)assetType;
- (int64_t)hapticClickCount;
- (unint64_t)clickState;
- (void)_applyGainForHapticType:(int64_t)a3 toConfigDictionary:(id)a4 clickSpeed:(unint64_t)a5;
- (void)setAssetType:(int64_t)a3;
- (void)setClickState:(unint64_t)a3;
- (void)setMaximumTimeInterval:(double)a3;
- (void)setMinimumTimeInterval:(double)a3;
@end

@implementation BKButtonHapticsClickState

- (BOOL)isEnabled
{
  v2 = [(BSMutableSettings *)self->_settings objectForSetting:2];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setMaximumTimeInterval:(double)a3
{
  settings = self->_settings;
  v4 = [NSNumber numberWithDouble:a3];
  [(BSMutableSettings *)settings setObject:v4 forSetting:4];
}

- (double)maximumTimeInterval
{
  v2 = [(BSMutableSettings *)self->_settings objectForSetting:4];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (void)setMinimumTimeInterval:(double)a3
{
  settings = self->_settings;
  v4 = [NSNumber numberWithDouble:a3];
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
  v3 = [(BKButtonHapticsClickState *)self clickState];

  return [(BKButtonHapticsClickState *)self _shouldUseHapticForClickState:v3];
}

- (void)setAssetType:(int64_t)a3
{
  settings = self->_settings;
  v4 = [NSNumber numberWithInteger:a3];
  [(BSMutableSettings *)settings setObject:v4 forSetting:3];
}

- (int64_t)assetType
{
  v2 = [(BSMutableSettings *)self->_settings objectForSetting:3];
  v3 = [v2 integerValue];

  return v3;
}

- (void)setClickState:(unint64_t)a3
{
  settings = self->_settings;
  v4 = [NSNumber numberWithUnsignedInteger:a3];
  [(BSMutableSettings *)settings setObject:v4 forSetting:1];
}

- (unint64_t)clickState
{
  v2 = [(BSMutableSettings *)self->_settings objectForSetting:1];
  v3 = [v2 integerValue];

  return v3;
}

- (id)fastConfigDictionaryForHAButtonHapticType:(int64_t)a3
{
  v5 = [(BKButtonHapticsClickState *)self _baseConfigDictionary];
  [(BKButtonHapticsClickState *)self _applyGainForHapticType:a3 toConfigDictionary:v5 clickSpeed:2];
  [v5 setObject:&off_1001078E0 forKey:BRConfigSpeedKey];

  return v5;
}

- (id)normalConfigDictionaryForHAButtonHapticType:(int64_t)a3
{
  v5 = [(BKButtonHapticsClickState *)self _baseConfigDictionary];
  [(BKButtonHapticsClickState *)self _applyGainForHapticType:a3 toConfigDictionary:v5 clickSpeed:1];
  [v5 setObject:&off_1001078C8 forKey:BRConfigSpeedKey];

  return v5;
}

- (id)slowConfigDictionaryForHAButtonHapticType:(int64_t)a3
{
  v5 = [(BKButtonHapticsClickState *)self _baseConfigDictionary];
  [(BKButtonHapticsClickState *)self _applyGainForHapticType:a3 toConfigDictionary:v5 clickSpeed:0];
  [v5 setObject:&off_1001078B0 forKey:BRConfigSpeedKey];

  return v5;
}

- (void)_applyGainForHapticType:(int64_t)a3 toConfigDictionary:(id)a4 clickSpeed:(unint64_t)a5
{
  v10 = a4;
  v7 = [(BKButtonHapticsClickState *)self clickState];
  if ([(BKButtonHapticsClickState *)self _shouldUseHapticForClickState:v7])
  {
    v8 = +[HAButtonHapticsLoader sharedInstance];
    if ([(BKButtonHapticsClickState *)self _shouldUseSplitGainForClickState:v7])
    {
      if ([(BKButtonHapticsClickState *)self _isUpClickStateType:v7])
      {
        [v8 defaultUpGainForType:a3];
      }

      else
      {
        [v8 defaultDownGainForType:a3];
      }
    }

    else
    {
      [v8 hapticGainForType:a3];
    }

    v9 = [NSNumber numberWithFloat:?];
    [v10 setObject:v9 forKey:BRConfigGainKey];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
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
  v12 = [v3 build];

  return v12;
}

- (BKButtonHapticsClickState)init
{
  v3 = objc_alloc_init(BSMutableSettings);
  v4 = [(BKButtonHapticsClickState *)self _initWithSettings:v3];

  return v4;
}

- (id)_initWithSettings:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = BKButtonHapticsClickState;
  v5 = [(BKButtonHapticsClickState *)&v11 init];
  if (v5)
  {
    if (v4)
    {
      v6 = [v4 mutableCopy];
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

+ (void)inspectChangesFromState:(id)a3 toState:(id)a4 withBlock:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [a3 settings];
  v10 = [v8 settings];

  v11 = [BSSettingsDiff diffFromSettings:v9 toSettings:v10];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100025784;
  v13[3] = &unk_1000FA610;
  v14 = v7;
  v12 = v7;
  [v11 inspectChangesWithBlock:v13];
}

+ (id)clickStateWithState:(unint64_t)a3
{
  v4 = objc_alloc_init(a1);
  [v4 setClickState:a3];

  return v4;
}

@end