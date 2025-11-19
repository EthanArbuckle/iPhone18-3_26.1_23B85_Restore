@interface PRSPosterUpdateTristatePayload
- (PRSPosterUpdateTristatePayload)initWithCoder:(id)a3;
- (PRSPosterUpdateTristatePayload)initWithState:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)rawValue;
@end

@implementation PRSPosterUpdateTristatePayload

- (PRSPosterUpdateTristatePayload)initWithState:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PRSPosterUpdateTristatePayload;
  v5 = [(PRSPosterUpdatePayload *)&v9 _init];
  if (v5)
  {
    v6 = [v4 copy];
    tristate = v5->_tristate;
    v5->_tristate = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  tristate = self->_tristate;

  return [v4 initWithState:tristate];
}

- (PRSPosterUpdateTristatePayload)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PRSPosterUpdatePayload *)self _init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"_tristate"];
    tristate = v5->_tristate;
    v5->_tristate = v7;
  }

  return v5;
}

- (id)rawValue
{
  v2 = [(NSNumber *)self->_tristate copy];

  return v2;
}

@end