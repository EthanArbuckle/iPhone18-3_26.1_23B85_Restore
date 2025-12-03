@interface RBSDomainAttribute
+ (id)attributeWithDomain:(id)domain name:(id)name;
+ (id)attributeWithDomain:(id)domain name:(id)name sourceEnvironment:(id)environment;
- (BOOL)isEqual:(id)equal;
- (RBSDomainAttribute)initWithRBSXPCCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)_initWithDomain:(void *)domain name:(void *)name sourceEnvironment:;
- (void)encodeWithRBSXPCCoder:(id)coder;
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

+ (id)attributeWithDomain:(id)domain name:(id)name
{
  nameCopy = name;
  domainCopy = domain;
  v8 = [(RBSDomainAttribute *)[self alloc] _initWithDomain:domainCopy name:nameCopy sourceEnvironment:0];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v10.receiver = self;
  v10.super_class = RBSDomainAttribute;
  v8 = 0;
  if ([(RBSAttribute *)&v10 isEqual:equalCopy])
  {
    domain = self->_domain;
    if (domain == equalCopy[1] || [(NSString *)domain isEqualToString:?])
    {
      name = self->_name;
      if (name == equalCopy[2] || [(NSString *)name isEqualToString:?])
      {
        sourceEnvironment = self->_sourceEnvironment;
        if (sourceEnvironment == equalCopy[3] || [(NSString *)sourceEnvironment isEqualToString:?])
        {
          v8 = 1;
        }
      }
    }
  }

  return v8;
}

- (void)encodeWithRBSXPCCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = RBSDomainAttribute;
  coderCopy = coder;
  [(RBSAttribute *)&v8 encodeWithRBSXPCCoder:coderCopy];
  v5 = [(RBSDomainAttribute *)self domain:v8.receiver];
  [coderCopy encodeObject:v5 forKey:@"domain"];

  name = [(RBSDomainAttribute *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  sourceEnvironment = [(RBSDomainAttribute *)self sourceEnvironment];
  [coderCopy encodeObject:sourceEnvironment forKey:@"sourceEnvironment"];
}

- (RBSDomainAttribute)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = RBSDomainAttribute;
  v5 = [(RBSAttribute *)&v10 initWithRBSXPCCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"domain"];
    [(RBSDomainAttribute *)v5 setDomain:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    [(RBSDomainAttribute *)v5 setName:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceEnvironment"];
    [(RBSDomainAttribute *)v5 setSourceEnvironment:v8];
  }

  return v5;
}

- (void)_initWithDomain:(void *)domain name:(void *)name sourceEnvironment:
{
  v7 = a2;
  domainCopy = domain;
  nameCopy = name;
  if (self)
  {
    v17.receiver = self;
    v17.super_class = RBSDomainAttribute;
    self = objc_msgSendSuper2(&v17, sel__init);
    if (self)
    {
      v10 = [v7 copy];
      v11 = self[1];
      self[1] = v10;

      v12 = [domainCopy copy];
      v13 = self[2];
      self[2] = v12;

      v14 = [nameCopy copy];
      v15 = self[3];
      self[3] = v14;
    }
  }

  return self;
}

+ (id)attributeWithDomain:(id)domain name:(id)name sourceEnvironment:(id)environment
{
  environmentCopy = environment;
  nameCopy = name;
  domainCopy = domain;
  v11 = [(RBSDomainAttribute *)[self alloc] _initWithDomain:domainCopy name:nameCopy sourceEnvironment:environmentCopy];

  return v11;
}

@end