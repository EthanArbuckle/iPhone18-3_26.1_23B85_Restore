@interface SXComponentNode
- (BOOL)isEqual:(id)equal;
- (id)dependencies;
- (id)description;
- (uint64_t)addComponentDependency:(uint64_t)result;
- (uint64_t)hasDependencyToComponentIdentifier:(uint64_t)identifier attribute:;
- (void)initWithComponentIdentifier:(uint64_t)identifier andAttribute:;
@end

@implementation SXComponentNode

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else if (equalCopy->_attribute == self->_attribute)
  {
    v6 = [(NSString *)equalCopy->_componentIdentifier isEqualToString:self->_componentIdentifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  if (self)
  {
    v5 = self->_componentIdentifier;
    attribute = self->_attribute;
  }

  else
  {
    v5 = 0;
    attribute = 0;
  }

  v7 = NSStringFromDependencyAttribute(attribute);
  v8 = [v3 stringWithFormat:@"<%@: %p componentIdentifier: %@>; attribute: %@>", v4, self, v5, v7];;

  return v8;
}

- (void)initWithComponentIdentifier:(uint64_t)identifier andAttribute:
{
  v6 = a2;
  if (self)
  {
    v15.receiver = self;
    v15.super_class = SXComponentNode;
    v7 = objc_msgSendSuper2(&v15, sel_init);
    self = v7;
    if (v7)
    {
      objc_storeStrong(v7 + 1, a2);
      self[2] = identifier;
      v8 = [MEMORY[0x1E695DFA8] set];
      v9 = self[3];
      self[3] = v8;

      v10 = [MEMORY[0x1E695DFA8] set];
      v11 = self[4];
      self[4] = v10;

      v12 = [MEMORY[0x1E695DFA8] set];
      v13 = self[5];
      self[5] = v12;
    }
  }

  return self;
}

- (uint64_t)addComponentDependency:(uint64_t)result
{
  if (!result)
  {
    return result;
  }

  v2 = result;
  v3 = *(result + 24);
  v4 = a2;
  [v3 addObject:v4];
  v5 = v4[4];
  v6 = v4[2];

  v7 = v6;
  v8 = v7;
  if (v5 == 1)
  {
    v9 = 32;
    goto LABEL_6;
  }

  if (v5 == 2)
  {
    v9 = 40;
LABEL_6:
    v10 = v7;
    v7 = [*(v2 + v9) addObject:v7];
    v8 = v10;
  }

  return MEMORY[0x1EEE66BB8](v7, v8);
}

- (id)dependencies
{
  if (self)
  {
    self = self[3];
    v1 = vars8;
  }

  return self;
}

- (uint64_t)hasDependencyToComponentIdentifier:(uint64_t)identifier attribute:
{
  v5 = a2;
  if (self)
  {
    v6 = 40;
    if (identifier == 1)
    {
      v6 = 32;
    }

    self = [*(self + v6) containsObject:v5];
  }

  return self;
}

@end