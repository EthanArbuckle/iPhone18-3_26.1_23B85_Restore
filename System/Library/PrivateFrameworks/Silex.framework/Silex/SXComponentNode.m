@interface SXComponentNode
- (BOOL)isEqual:(id)a3;
- (id)dependencies;
- (id)description;
- (uint64_t)addComponentDependency:(uint64_t)result;
- (uint64_t)hasDependencyToComponentIdentifier:(uint64_t)a3 attribute:;
- (void)initWithComponentIdentifier:(uint64_t)a3 andAttribute:;
@end

@implementation SXComponentNode

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else if (v4->_attribute == self->_attribute)
  {
    v6 = [(NSString *)v4->_componentIdentifier isEqualToString:self->_componentIdentifier];
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

- (void)initWithComponentIdentifier:(uint64_t)a3 andAttribute:
{
  v6 = a2;
  if (a1)
  {
    v15.receiver = a1;
    v15.super_class = SXComponentNode;
    v7 = objc_msgSendSuper2(&v15, sel_init);
    a1 = v7;
    if (v7)
    {
      objc_storeStrong(v7 + 1, a2);
      a1[2] = a3;
      v8 = [MEMORY[0x1E695DFA8] set];
      v9 = a1[3];
      a1[3] = v8;

      v10 = [MEMORY[0x1E695DFA8] set];
      v11 = a1[4];
      a1[4] = v10;

      v12 = [MEMORY[0x1E695DFA8] set];
      v13 = a1[5];
      a1[5] = v12;
    }
  }

  return a1;
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
  if (a1)
  {
    a1 = a1[3];
    v1 = vars8;
  }

  return a1;
}

- (uint64_t)hasDependencyToComponentIdentifier:(uint64_t)a3 attribute:
{
  v5 = a2;
  if (a1)
  {
    v6 = 40;
    if (a3 == 1)
    {
      v6 = 32;
    }

    a1 = [*(a1 + v6) containsObject:v5];
  }

  return a1;
}

@end