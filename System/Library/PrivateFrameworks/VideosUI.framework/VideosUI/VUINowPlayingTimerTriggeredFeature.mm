@interface VUINowPlayingTimerTriggeredFeature
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (VUINowPlayingTimerTriggeredFeature)initWithType:(unint64_t)type duration:(double)duration repeats:(BOOL)repeats backgroundTimer:(BOOL)timer;
- (unint64_t)hash;
@end

@implementation VUINowPlayingTimerTriggeredFeature

- (VUINowPlayingTimerTriggeredFeature)initWithType:(unint64_t)type duration:(double)duration repeats:(BOOL)repeats backgroundTimer:(BOOL)timer
{
  v11.receiver = self;
  v11.super_class = VUINowPlayingTimerTriggeredFeature;
  result = [(VUINowPlayingTimerTriggeredFeature *)&v11 init];
  if (result)
  {
    result->_type = type;
    result->_duration = duration;
    result->_repeats = repeats;
    result->_backgroundTimer = timer;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    LOBYTE(v12) = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    type = [(VUINowPlayingTimerTriggeredFeature *)self type];
    if (type == [(VUINowPlayingTimerTriggeredFeature *)v6 type]&& ([(VUINowPlayingTimerTriggeredFeature *)self duration], v9 = v8, [(VUINowPlayingTimerTriggeredFeature *)v6 duration], v9 == v10))
    {
      repeats = [(VUINowPlayingTimerTriggeredFeature *)self repeats];
      v12 = repeats ^ [(VUINowPlayingTimerTriggeredFeature *)v6 repeats]^ 1;
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