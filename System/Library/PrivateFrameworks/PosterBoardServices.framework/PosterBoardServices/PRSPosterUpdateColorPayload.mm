@interface PRSPosterUpdateColorPayload
- (PRSPosterUpdateColorPayload)initWithCoder:(id)a3;
- (PRSPosterUpdateColorPayload)initWithColor:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)rawValue;
@end

@implementation PRSPosterUpdateColorPayload

- (PRSPosterUpdateColorPayload)initWithColor:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PRSPosterUpdateColorPayload;
  v5 = [(PRSPosterUpdatePayload *)&v9 _init];
  if (v5)
  {
    v6 = [v4 copy];
    color = v5->_color;
    v5->_color = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  color = self->_color;

  return [v4 initWithColor:color];
}

- (PRSPosterUpdateColorPayload)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PRSPosterUpdatePayload *)self _init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"_color"];
    color = v5->_color;
    v5->_color = v7;
  }

  return v5;
}

- (id)rawValue
{
  v2 = [(BSColor *)self->_color copy];

  return v2;
}

@end