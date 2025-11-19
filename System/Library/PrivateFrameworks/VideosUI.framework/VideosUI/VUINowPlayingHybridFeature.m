@interface VUINowPlayingHybridFeature
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (VUINowPlayingHybridFeature)initWithType:(unint64_t)a3 startTime:(double)a4 duration:(double)a5;
- (unint64_t)hash;
@end

@implementation VUINowPlayingHybridFeature

- (VUINowPlayingHybridFeature)initWithType:(unint64_t)a3 startTime:(double)a4 duration:(double)a5
{
  v9.receiver = self;
  v9.super_class = VUINowPlayingHybridFeature;
  result = [(VUINowPlayingHybridFeature *)&v9 init];
  if (a3 && result)
  {
    *&result->_active = 0;
    result->_type = a3;
    result->_startTime = a4;
    result->_duration = a5;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v14 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(VUINowPlayingHybridFeature *)self type];
    if (v7 == [(VUINowPlayingHybridFeature *)v6 type]&& ([(VUINowPlayingHybridFeature *)self startTime], v9 = v8, [(VUINowPlayingHybridFeature *)v6 startTime], v9 == v10))
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