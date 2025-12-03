@interface RBSEndowmentGrant
+ (id)grantWithNamespace:(id)namespace endowment:(id)endowment;
- (BOOL)isEqual:(id)equal;
- (RBSEndowmentGrant)initWithRBSXPCCoder:(id)coder;
- (id)description;
- (void)encodeWithRBSXPCCoder:(id)coder;
@end

@implementation RBSEndowmentGrant

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  v5 = v4;
  endowmentNamespace = self->_endowmentNamespace;
  if (self->_encodedEndowment)
  {
    v7 = @" hasEndowment";
  }

  else
  {
    v7 = &stru_1F01CD8F0;
  }

  v8 = [v3 initWithFormat:@"<%@| namespace:%@%@>", v4, self->_endowmentNamespace, v7];

  return v8;
}

+ (id)grantWithNamespace:(id)namespace endowment:(id)endowment
{
  namespaceCopy = namespace;
  endowmentCopy = endowment;
  if (!namespaceCopy)
  {
    [RBSEndowmentGrant grantWithNamespace:a2 endowment:self];
  }

  _init = [[self alloc] _init];
  if (_init)
  {
    v10 = [namespaceCopy copy];
    v11 = _init[1];
    _init[1] = v10;

    v12 = RBSEndowmentEncode(endowmentCopy);
    v13 = _init[2];
    _init[2] = v12;
  }

  return _init;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v12.receiver = self;
  v12.super_class = RBSEndowmentGrant;
  if (![(RBSAttribute *)&v12 isEqual:equalCopy])
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

  encodedEndowment = self->_encodedEndowment;
  v9 = equalCopy[2];
  if (encodedEndowment)
  {
    if (v9 && (encodedEndowment == v9 || xpc_equal(encodedEndowment, v9)))
    {
      goto LABEL_12;
    }

LABEL_14:
    v10 = 0;
    goto LABEL_15;
  }

  if (v9)
  {
    goto LABEL_14;
  }

LABEL_12:
  v10 = 1;
LABEL_15:

  return v10;
}

- (void)encodeWithRBSXPCCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = RBSEndowmentGrant;
  coderCopy = coder;
  [(RBSAttribute *)&v6 encodeWithRBSXPCCoder:coderCopy];
  [coderCopy encodeObject:self->_endowmentNamespace forKey:{@"_endowmentNamespace", v6.receiver, v6.super_class}];
  v5 = RBSXPCPackObject(self->_encodedEndowment);
  [coderCopy encodeXPCObject:v5 forKey:@"_encodedEndowment"];
}

- (RBSEndowmentGrant)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeStringForKey:@"_endowmentNamespace"];
  if (v5)
  {
    v13.receiver = self;
    v13.super_class = RBSEndowmentGrant;
    v6 = [(RBSAttribute *)&v13 initWithRBSXPCCoder:coderCopy];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_endowmentNamespace, v5);
      v8 = [coderCopy decodeXPCObjectOfType:MEMORY[0x1E69E9E80] forKey:@"_encodedEndowment"];
      v9 = RBSXPCUnpackObject(v8);
      encodedEndowment = v7->_encodedEndowment;
      v7->_encodedEndowment = v9;
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (void)grantWithNamespace:(uint64_t)a1 endowment:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"RBSEndowmentGrant.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"nspace != nil"}];
}

@end