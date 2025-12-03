@interface SXComponentAnchor
- (NSString)description;
- (SXComponentAnchor)initWithTargetComponentIdentifier:(id)identifier;
- (_NSRange)range;
@end

@implementation SXComponentAnchor

- (SXComponentAnchor)initWithTargetComponentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = SXComponentAnchor;
  v6 = [(SXComponentAnchor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_targetComponentIdentifier, identifier);
  }

  return v7;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p", objc_opt_class(), self];
  targetComponentIdentifier = [(SXComponentAnchor *)self targetComponentIdentifier];
  [v3 appendFormat:@"; target component: %@", targetComponentIdentifier];

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