@interface SXComponentAnchor
- (NSString)description;
- (SXComponentAnchor)initWithTargetComponentIdentifier:(id)a3;
- (_NSRange)range;
@end

@implementation SXComponentAnchor

- (SXComponentAnchor)initWithTargetComponentIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SXComponentAnchor;
  v6 = [(SXComponentAnchor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_targetComponentIdentifier, a3);
  }

  return v7;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p", objc_opt_class(), self];
  v4 = [(SXComponentAnchor *)self targetComponentIdentifier];
  [v3 appendFormat:@"; target component: %@", v4];

  v8.location = [(SXComponentAnchor *)self range];
  v5 = NSStringFromRange(v8);
  [v3 appendFormat:@"; range: %@", v5];

  return v3;
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

@end