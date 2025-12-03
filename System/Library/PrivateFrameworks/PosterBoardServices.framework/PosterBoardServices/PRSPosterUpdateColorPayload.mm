@interface PRSPosterUpdateColorPayload
- (PRSPosterUpdateColorPayload)initWithCoder:(id)coder;
- (PRSPosterUpdateColorPayload)initWithColor:(id)color;
- (id)copyWithZone:(_NSZone *)zone;
- (id)rawValue;
@end

@implementation PRSPosterUpdateColorPayload

- (PRSPosterUpdateColorPayload)initWithColor:(id)color
{
  colorCopy = color;
  v9.receiver = self;
  v9.super_class = PRSPosterUpdateColorPayload;
  _init = [(PRSPosterUpdatePayload *)&v9 _init];
  if (_init)
  {
    v6 = [colorCopy copy];
    color = _init->_color;
    _init->_color = v6;
  }

  return _init;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  color = self->_color;

  return [v4 initWithColor:color];
}

- (PRSPosterUpdateColorPayload)initWithCoder:(id)coder
{
  coderCopy = coder;
  _init = [(PRSPosterUpdatePayload *)self _init];
  if (_init)
  {
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"_color"];
    color = _init->_color;
    _init->_color = v7;
  }

  return _init;
}

- (id)rawValue
{
  v2 = [(BSColor *)self->_color copy];

  return v2;
}

@end