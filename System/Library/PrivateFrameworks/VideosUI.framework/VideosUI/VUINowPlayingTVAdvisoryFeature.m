@interface VUINowPlayingTVAdvisoryFeature
- (BOOL)isEqual:(id)a3;
- (VUINowPlayingTVAdvisoryFeature)initWithType:(unint64_t)a3 startTime:(double)a4 duration:(double)a5;
- (unint64_t)hash;
@end

@implementation VUINowPlayingTVAdvisoryFeature

- (VUINowPlayingTVAdvisoryFeature)initWithType:(unint64_t)a3 startTime:(double)a4 duration:(double)a5
{
  v6.receiver = self;
  v6.super_class = VUINowPlayingTVAdvisoryFeature;
  return [(VUINowPlayingTimeBoundFeature *)&v6 initWithType:a3 startTime:a4 duration:a5];
}

- (unint64_t)hash
{
  v2 = _sFeatureTypeDescription([(VUINowPlayingTimeBoundFeature *)self type]);
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v16 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(VUINowPlayingTimeBoundFeature *)self type];
    if (v7 == [(VUINowPlayingTimeBoundFeature *)v6 type]&& ([(VUINowPlayingTimeBoundFeature *)self startTime], v9 = v8, [(VUINowPlayingTimeBoundFeature *)v6 startTime], v9 == v10) && ([(VUINowPlayingTimeBoundFeature *)self duration], v12 = v11, [(VUINowPlayingTimeBoundFeature *)v6 duration], v12 == v13))
    {
      v14 = [(VUINowPlayingTVAdvisoryFeature *)self advisoryDisabledTimeRanges];
      v15 = [(VUINowPlayingTVAdvisoryFeature *)v6 advisoryDisabledTimeRanges];
      v16 = v14 == v15;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end