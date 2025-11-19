@interface RBSPrewarmAttribute
+ (id)attributeWithIdentity:(id)a3 interval:(double)a4;
- (BOOL)isEqual:(id)a3;
- (RBSPrewarmAttribute)initWithRBSXPCCoder:(id)a3;
- (id)_initWithidentity:(id)a3 interval:(double)a4;
- (id)description;
- (void)encodeWithRBSXPCCoder:(id)a3;
@end

@implementation RBSPrewarmAttribute

- (id)_initWithidentity:(id)a3 interval:(double)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = RBSPrewarmAttribute;
  v8 = [(RBSAttribute *)&v12 _init];
  v9 = v8;
  if (v8)
  {
    *(v8 + 1) = a4;
    objc_storeStrong(v8 + 2, a3);
    v10 = v9;
  }

  return v9;
}

+ (id)attributeWithIdentity:(id)a3 interval:(double)a4
{
  if (a3)
  {
    v5 = a3;
    v6 = [[RBSPrewarmAttribute alloc] _initWithidentity:v5 interval:a4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = RBSPrewarmAttribute;
  if (-[RBSAttribute isEqual:](&v13, sel_isEqual_, v4) && (-[RBSPrewarmAttribute interval](self, "interval"), v6 = v5, [v4 interval], v6 == v7))
  {
    v8 = [(RBSPrewarmAttribute *)self identity];
    v9 = [v4 identity];
    v10 = v9;
    if (v8 == v9)
    {
      v11 = 1;
    }

    else
    {
      v11 = 0;
      if (v8 && v9)
      {
        v11 = [v8 isEqual:v9];
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

- (void)encodeWithRBSXPCCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = RBSPrewarmAttribute;
  v4 = a3;
  [(RBSAttribute *)&v6 encodeWithRBSXPCCoder:v4];
  [(RBSPrewarmAttribute *)self interval:v6.receiver];
  [v4 encodeDouble:@"_interval" forKey:?];
  v5 = [(RBSPrewarmAttribute *)self identity];
  [v4 encodeObject:v5 forKey:@"_identity"];
}

- (RBSPrewarmAttribute)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = RBSPrewarmAttribute;
  v5 = [(RBSAttribute *)&v11 initWithRBSXPCCoder:v4];
  if (v5 && ([v4 decodeDoubleForKey:@"_interval"], v5->_interval = v6, objc_msgSend(v4, "decodeObjectOfClass:forKey:", objc_opt_class(), @"_identity"), v7 = objc_claimAutoreleasedReturnValue(), identity = v5->_identity, v5->_identity = v7, identity, v5->_identity))
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