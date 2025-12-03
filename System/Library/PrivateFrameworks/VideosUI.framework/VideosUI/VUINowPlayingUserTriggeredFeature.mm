@interface VUINowPlayingUserTriggeredFeature
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (VUINowPlayingUserTriggeredFeature)initWithType:(unint64_t)type;
- (unint64_t)hash;
@end

@implementation VUINowPlayingUserTriggeredFeature

- (VUINowPlayingUserTriggeredFeature)initWithType:(unint64_t)type
{
  v5.receiver = self;
  v5.super_class = VUINowPlayingUserTriggeredFeature;
  result = [(VUINowPlayingUserTriggeredFeature *)&v5 init];
  if (type && result)
  {
    *&result->_active = 0;
    result->_type = type;
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
  v4 = _sFeatureTypeDescription([(VUINowPlayingUserTriggeredFeature *)self type]);
  [(VUINowPlayingUserTriggeredFeature *)self isActive];
  v5 = VUIBoolLogString();
  v6 = [v3 stringWithFormat:@"{\ntype: %@, \n active: %@\n}\n", v4, v5];

  return v6;
}

- (unint64_t)hash
{
  v2 = _sFeatureTypeDescription([(VUINowPlayingUserTriggeredFeature *)self type]);
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    type = [(VUINowPlayingUserTriggeredFeature *)self type];
    v7 = type == [(VUINowPlayingUserTriggeredFeature *)v5 type];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end