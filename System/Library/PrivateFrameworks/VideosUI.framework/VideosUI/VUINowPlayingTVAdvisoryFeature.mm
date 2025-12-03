@interface VUINowPlayingTVAdvisoryFeature
- (BOOL)isEqual:(id)equal;
- (VUINowPlayingTVAdvisoryFeature)initWithType:(unint64_t)type startTime:(double)time duration:(double)duration;
- (unint64_t)hash;
@end

@implementation VUINowPlayingTVAdvisoryFeature

- (VUINowPlayingTVAdvisoryFeature)initWithType:(unint64_t)type startTime:(double)time duration:(double)duration
{
  v6.receiver = self;
  v6.super_class = VUINowPlayingTVAdvisoryFeature;
  return [(VUINowPlayingTimeBoundFeature *)&v6 initWithType:type startTime:time duration:duration];
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
    v16 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    type = [(VUINowPlayingTimeBoundFeature *)self type];
    if (type == [(VUINowPlayingTimeBoundFeature *)v6 type]&& ([(VUINowPlayingTimeBoundFeature *)self startTime], v9 = v8, [(VUINowPlayingTimeBoundFeature *)v6 startTime], v9 == v10) && ([(VUINowPlayingTimeBoundFeature *)self duration], v12 = v11, [(VUINowPlayingTimeBoundFeature *)v6 duration], v12 == v13))
    {
      advisoryDisabledTimeRanges = [(VUINowPlayingTVAdvisoryFeature *)self advisoryDisabledTimeRanges];
      advisoryDisabledTimeRanges2 = [(VUINowPlayingTVAdvisoryFeature *)v6 advisoryDisabledTimeRanges];
      v16 = advisoryDisabledTimeRanges == advisoryDisabledTimeRanges2;
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