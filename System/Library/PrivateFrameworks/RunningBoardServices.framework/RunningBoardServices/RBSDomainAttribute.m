@interface RBSDomainAttribute
+ (id)attributeWithDomain:(id)a3 name:(id)a4;
+ (id)attributeWithDomain:(id)a3 name:(id)a4 sourceEnvironment:(id)a5;
- (BOOL)isEqual:(id)a3;
- (RBSDomainAttribute)initWithRBSXPCCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)_initWithDomain:(void *)a3 name:(void *)a4 sourceEnvironment:;
- (void)encodeWithRBSXPCCoder:(id)a3;
@end

@implementation RBSDomainAttribute

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  name = self->_name;
  v6 = [v3 initWithFormat:@"<%@| domain:%@ name:%@ sourceEnvironment:%@>", v4, self->_domain, name, self->_sourceEnvironment];

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_domain hash];
  v4 = [(NSString *)self->_name hash]^ v3;
  return v4 ^ [(NSString *)self->_sourceEnvironment hash];
}

+ (id)attributeWithDomain:(id)a3 name:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(RBSDomainAttribute *)[a1 alloc] _initWithDomain:v7 name:v6 sourceEnvironment:0];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = RBSDomainAttribute;
  v8 = 0;
  if ([(RBSAttribute *)&v10 isEqual:v4])
  {
    domain = self->_domain;
    if (domain == v4[1] || [(NSString *)domain isEqualToString:?])
    {
      name = self->_name;
      if (name == v4[2] || [(NSString *)name isEqualToString:?])
      {
        sourceEnvironment = self->_sourceEnvironment;
        if (sourceEnvironment == v4[3] || [(NSString *)sourceEnvironment isEqualToString:?])
        {
          v8 = 1;
        }
      }
    }
  }

  return v8;
}

- (void)encodeWithRBSXPCCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = RBSDomainAttribute;
  v4 = a3;
  [(RBSAttribute *)&v8 encodeWithRBSXPCCoder:v4];
  v5 = [(RBSDomainAttribute *)self domain:v8.receiver];
  [v4 encodeObject:v5 forKey:@"domain"];

  v6 = [(RBSDomainAttribute *)self name];
  [v4 encodeObject:v6 forKey:@"name"];

  v7 = [(RBSDomainAttribute *)self sourceEnvironment];
  [v4 encodeObject:v7 forKey:@"sourceEnvironment"];
}

- (RBSDomainAttribute)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = RBSDomainAttribute;
  v5 = [(RBSAttribute *)&v10 initWithRBSXPCCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"domain"];
    [(RBSDomainAttribute *)v5 setDomain:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    [(RBSDomainAttribute *)v5 setName:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceEnvironment"];
    [(RBSDomainAttribute *)v5 setSourceEnvironment:v8];
  }

  return v5;
}

- (void)_initWithDomain:(void *)a3 name:(void *)a4 sourceEnvironment:
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v17.receiver = a1;
    v17.super_class = RBSDomainAttribute;
    a1 = objc_msgSendSuper2(&v17, sel__init);
    if (a1)
    {
      v10 = [v7 copy];
      v11 = a1[1];
      a1[1] = v10;

      v12 = [v8 copy];
      v13 = a1[2];
      a1[2] = v12;

      v14 = [v9 copy];
      v15 = a1[3];
      a1[3] = v14;
    }
  }

  return a1;
}

+ (id)attributeWithDomain:(id)a3 name:(id)a4 sourceEnvironment:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(RBSDomainAttribute *)[a1 alloc] _initWithDomain:v10 name:v9 sourceEnvironment:v8];

  return v11;
}

@end