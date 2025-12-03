@interface RBSPrewarmAttribute
+ (id)attributeWithIdentity:(id)identity interval:(double)interval;
- (BOOL)isEqual:(id)equal;
- (RBSPrewarmAttribute)initWithRBSXPCCoder:(id)coder;
- (id)_initWithidentity:(id)withidentity interval:(double)interval;
- (id)description;
- (void)encodeWithRBSXPCCoder:(id)coder;
@end

@implementation RBSPrewarmAttribute

- (id)_initWithidentity:(id)withidentity interval:(double)interval
{
  withidentityCopy = withidentity;
  v12.receiver = self;
  v12.super_class = RBSPrewarmAttribute;
  _init = [(RBSAttribute *)&v12 _init];
  v9 = _init;
  if (_init)
  {
    *(_init + 1) = interval;
    objc_storeStrong(_init + 2, withidentity);
    v10 = v9;
  }

  return v9;
}

+ (id)attributeWithIdentity:(id)identity interval:(double)interval
{
  if (identity)
  {
    identityCopy = identity;
    v6 = [[RBSPrewarmAttribute alloc] _initWithidentity:identityCopy interval:interval];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v13.receiver = self;
  v13.super_class = RBSPrewarmAttribute;
  if (-[RBSAttribute isEqual:](&v13, sel_isEqual_, equalCopy) && (-[RBSPrewarmAttribute interval](self, "interval"), v6 = v5, [equalCopy interval], v6 == v7))
  {
    identity = [(RBSPrewarmAttribute *)self identity];
    identity2 = [equalCopy identity];
    v10 = identity2;
    if (identity == identity2)
    {
      v11 = 1;
    }

    else
    {
      v11 = 0;
      if (identity && identity2)
      {
        v11 = [identity isEqual:identity2];
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  v5 = [v3 initWithFormat:@"<%@| identity:%@ interval:%.2f>", v4, self->_identity, *&self->_interval];

  return v5;
}

- (void)encodeWithRBSXPCCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = RBSPrewarmAttribute;
  coderCopy = coder;
  [(RBSAttribute *)&v6 encodeWithRBSXPCCoder:coderCopy];
  [(RBSPrewarmAttribute *)self interval:v6.receiver];
  [coderCopy encodeDouble:@"_interval" forKey:?];
  identity = [(RBSPrewarmAttribute *)self identity];
  [coderCopy encodeObject:identity forKey:@"_identity"];
}

- (RBSPrewarmAttribute)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = RBSPrewarmAttribute;
  v5 = [(RBSAttribute *)&v11 initWithRBSXPCCoder:coderCopy];
  if (v5 && ([coderCopy decodeDoubleForKey:@"_interval"], v5->_interval = v6, objc_msgSend(coderCopy, "decodeObjectOfClass:forKey:", objc_opt_class(), @"_identity"), v7 = objc_claimAutoreleasedReturnValue(), identity = v5->_identity, v5->_identity = v7, identity, v5->_identity))
  {
    v9 = v5;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end