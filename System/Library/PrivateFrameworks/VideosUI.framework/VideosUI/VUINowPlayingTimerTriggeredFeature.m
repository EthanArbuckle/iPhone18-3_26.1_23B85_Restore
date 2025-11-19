@interface VUINowPlayingTimerTriggeredFeature
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (VUINowPlayingTimerTriggeredFeature)initWithType:(unint64_t)a3 duration:(double)a4 repeats:(BOOL)a5 backgroundTimer:(BOOL)a6;
- (unint64_t)hash;
@end

@implementation VUINowPlayingTimerTriggeredFeature

- (VUINowPlayingTimerTriggeredFeature)initWithType:(unint64_t)a3 duration:(double)a4 repeats:(BOOL)a5 backgroundTimer:(BOOL)a6
{
  v11.receiver = self;
  v11.super_class = VUINowPlayingTimerTriggeredFeature;
  result = [(VUINowPlayingTimerTriggeredFeature *)&v11 init];
  if (result)
  {
    result->_type = a3;
    result->_duration = a4;
    result->_repeats = a5;
    result->_backgroundTimer = a6;
    *&result->_active = 0;
  }

  return result;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = _sFeatureTypeDescription([(VUINowPlayingTimerTriggeredFeature *)self type]);
  [(VUINowPlayingTimerTriggeredFeature *)self isActive];
  v5 = VUIBoolLogString();
  [(VUINowPlayingTimerTriggeredFeature *)self duration];
  v7 = v6;
  [(VUINowPlayingTimerTriggeredFeature *)self repeats];
  v8 = VUIBoolLogString();
  v9 = [v3 stringWithFormat:@"{\ntype: %@, \n active: %@, \n duration: %f, \n repeats: %@\n}\n", v4, v5, v7, v8];

  return v9;
}

- (unint64_t)hash
{
  v2 = [(VUINowPlayingTimerTriggeredFeature *)self description];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    LOBYTE(v12) = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(VUINowPlayingTimerTriggeredFeature *)self type];
    if (v7 == [(VUINowPlayingTimerTriggeredFeature *)v6 type]&& ([(VUINowPlayingTimerTriggeredFeature *)self duration], v9 = v8, [(VUINowPlayingTimerTriggeredFeature *)v6 duration], v9 == v10))
    {
      v11 = [(VUINowPlayingTimerTriggeredFeature *)self repeats];
      v12 = v11 ^ [(VUINowPlayingTimerTriggeredFeature *)v6 repeats]^ 1;
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

@end