@interface VUINowPlayingHybridFeature
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (VUINowPlayingHybridFeature)initWithType:(unint64_t)type startTime:(double)time duration:(double)duration;
- (unint64_t)hash;
@end

@implementation VUINowPlayingHybridFeature

- (VUINowPlayingHybridFeature)initWithType:(unint64_t)type startTime:(double)time duration:(double)duration
{
  v9.receiver = self;
  v9.super_class = VUINowPlayingHybridFeature;
  result = [(VUINowPlayingHybridFeature *)&v9 init];
  if (type && result)
  {
    *&result->_active = 0;
    result->_type = type;
    result->_startTime = time;
    result->_duration = duration;
    result->_skippable = 1;
    result->_activationType = 0;
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
  v4 = _sFeatureTypeDescription([(VUINowPlayingHybridFeature *)self type]);
  [(VUINowPlayingHybridFeature *)self isActive];
  v5 = VUIBoolLogString();
  [(VUINowPlayingHybridFeature *)self startTime];
  v7 = v6;
  [(VUINowPlayingHybridFeature *)self duration];
  v9 = v8;
  [(VUINowPlayingHybridFeature *)self isSkippable];
  v10 = VUIBoolLogString();
  v11 = [v3 stringWithFormat:@"{\ntype: %@, \n active: %@, \n startTime: %f, \n duration: %f, \n isSkippable: %@\n}\n", v4, v5, v7, v9, v10];

  return v11;
}

- (unint64_t)hash
{
  v2 = _sFeatureTypeDescription([(VUINowPlayingHybridFeature *)self type]);
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
    type = [(VUINowPlayingHybridFeature *)self type];
    if (type == [(VUINowPlayingHybridFeature *)v6 type]&& ([(VUINowPlayingHybridFeature *)self startTime], v9 = v8, [(VUINowPlayingHybridFeature *)v6 startTime], v9 == v10))
    {
      [(VUINowPlayingHybridFeature *)self duration];
      v12 = v11;
      [(VUINowPlayingHybridFeature *)v6 duration];
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