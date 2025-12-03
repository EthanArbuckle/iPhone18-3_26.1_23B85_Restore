@interface PRSPosterUpdateTristatePayload
- (PRSPosterUpdateTristatePayload)initWithCoder:(id)coder;
- (PRSPosterUpdateTristatePayload)initWithState:(id)state;
- (id)copyWithZone:(_NSZone *)zone;
- (id)rawValue;
@end

@implementation PRSPosterUpdateTristatePayload

- (PRSPosterUpdateTristatePayload)initWithState:(id)state
{
  stateCopy = state;
  v9.receiver = self;
  v9.super_class = PRSPosterUpdateTristatePayload;
  _init = [(PRSPosterUpdatePayload *)&v9 _init];
  if (_init)
  {
    v6 = [stateCopy copy];
    tristate = _init->_tristate;
    _init->_tristate = v6;
  }

  return _init;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  tristate = self->_tristate;

  return [v4 initWithState:tristate];
}

- (PRSPosterUpdateTristatePayload)initWithCoder:(id)coder
{
  coderCopy = coder;
  _init = [(PRSPosterUpdatePayload *)self _init];
  if (_init)
  {
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"_tristate"];
    tristate = _init->_tristate;
    _init->_tristate = v7;
  }

  return _init;
}

- (id)rawValue
{
  v2 = [(NSNumber *)self->_tristate copy];

  return v2;
}

@end