@interface RBSSavedEndowmentGrant
+ (id)grantWithNamespace:(id)namespace key:(id)key;
- (BOOL)isEqual:(id)equal;
- (RBSSavedEndowmentGrant)initWithRBSXPCCoder:(id)coder;
- (id)description;
- (void)encodeWithRBSXPCCoder:(id)coder;
@end

@implementation RBSSavedEndowmentGrant

+ (id)grantWithNamespace:(id)namespace key:(id)key
{
  namespaceCopy = namespace;
  keyCopy = key;
  _init = [[self alloc] _init];
  if (_init)
  {
    v9 = [namespaceCopy copy];
    v10 = _init[1];
    _init[1] = v9;

    v11 = [keyCopy copy];
    v12 = _init[2];
    _init[2] = v11;
  }

  return _init;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v13.receiver = self;
  v13.super_class = RBSSavedEndowmentGrant;
  if (![(RBSAttribute *)&v13 isEqual:equalCopy])
  {
    goto LABEL_14;
  }

  endowmentNamespace = self->_endowmentNamespace;
  v6 = equalCopy[1];
  if (endowmentNamespace != v6)
  {
    v7 = !endowmentNamespace || v6 == 0;
    if (v7 || ![(NSString *)endowmentNamespace isEqualToString:?])
    {
      goto LABEL_14;
    }
  }

  key = self->_key;
  v9 = equalCopy[2];
  if (key == v9)
  {
    v12 = 1;
    goto LABEL_15;
  }

  if (key && v9 != 0)
  {
    v12 = [(NSString *)key isEqualToString:?];
  }

  else
  {
LABEL_14:
    v12 = 0;
  }

LABEL_15:

  return v12;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  endowmentNamespace = self->_endowmentNamespace;
  v6 = [v3 initWithFormat:@"<%@| namespace:%@ key:%@>", v4, endowmentNamespace, self->_key];

  return v6;
}

- (void)encodeWithRBSXPCCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = RBSSavedEndowmentGrant;
  coderCopy = coder;
  [(RBSAttribute *)&v5 encodeWithRBSXPCCoder:coderCopy];
  [coderCopy encodeObject:self->_endowmentNamespace forKey:{@"_endowmentNamespace", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_key forKey:@"_key"];
}

- (RBSSavedEndowmentGrant)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeStringForKey:@"_endowmentNamespace"];
  if (v5)
  {
    v6 = [coderCopy decodeStringForKey:@"_key"];
    if (v6)
    {
      v11.receiver = self;
      v11.super_class = RBSSavedEndowmentGrant;
      v7 = [(RBSAttribute *)&v11 initWithRBSXPCCoder:coderCopy];
      p_isa = &v7->super.super.super.isa;
      if (v7)
      {
        objc_storeStrong(&v7->_endowmentNamespace, v5);
        objc_storeStrong(p_isa + 2, v6);
      }

      self = p_isa;
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end