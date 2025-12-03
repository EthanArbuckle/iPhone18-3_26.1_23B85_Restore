@interface VUINowPlayingTimeBoundFeature
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (VUINowPlayingTimeBoundFeature)initWithType:(unint64_t)type startTime:(double)time restartTime:(double)restartTime duration:(double)duration;
- (unint64_t)hash;
@end

@implementation VUINowPlayingTimeBoundFeature

- (VUINowPlayingTimeBoundFeature)initWithType:(unint64_t)type startTime:(double)time restartTime:(double)restartTime duration:(double)duration
{
  v11.receiver = self;
  v11.super_class = VUINowPlayingTimeBoundFeature;
  result = [(VUINowPlayingTimeBoundFeature *)&v11 init];
  if (type && result)
  {
    *&result->_active = 0;
    result->_type = type;
    result->_startTime = time;
    result->_restartTime = restartTime;
    result->_duration = duration;
    result->_skippable = 1;
  }

  else
  {

    return 0;
  }

  return result;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = _sFeatureTypeDescription([(VUINowPlayingTimeBoundFeature *)self type]);
  [(VUINowPlayingTimeBoundFeature *)self isActive];
  v5 = VUIBoolLogString();
  [(VUINowPlayingTimeBoundFeature *)self startTime];
  v7 = v6;
  [(VUINowPlayingTimeBoundFeature *)self duration];
  v9 = v8;
  [(VUINowPlayingTimeBoundFeature *)self isSkippable];
  v10 = VUIBoolLogString();
  v11 = [v3 stringWithFormat:@"{\ntype: %@, \n active: %@, \n startTime: %f, \n duration: %f, \n isSkippable: %@\n}\n", v4, v5, v7, v9, v10];

  return v11;
}

- (unint64_t)hash
{
  v2 = _sFeatureTypeDescription([(VUINowPlayingTimeBoundFeature *)self type]);
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    type = [(VUINowPlayingTimeBoundFeature *)self type];
    if (type == [(VUINowPlayingTimeBoundFeature *)v6 type]&& ([(VUINowPlayingTimeBoundFeature *)self startTime], v9 = v8, [(VUINowPlayingTimeBoundFeature *)v6 startTime], v9 == v10))
    {
      [(VUINowPlayingTimeBoundFeature *)self duration];
      v12 = v11;
      [(VUINowPlayingTimeBoundFeature *)v6 duration];
      v14 = v12 == v13;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end