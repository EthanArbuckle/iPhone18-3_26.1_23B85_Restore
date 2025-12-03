@interface SXComponentDependency
+ (id)componentDependencyFromComponentIdentifier:(void *)identifier toComponentIdentifier:(void *)componentIdentifier fromLayoutAttribute:(void *)attribute toAttribute:(void *)toAttribute withDescriptor:;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (id)initWithComponentDependencyFromComponentIdentifier:(void *)identifier toComponentIdentifier:(void *)componentIdentifier fromLayoutAttribute:(void *)attribute toAttribute:(void *)toAttribute withDescriptor:;
@end

@implementation SXComponentDependency

+ (id)componentDependencyFromComponentIdentifier:(void *)identifier toComponentIdentifier:(void *)componentIdentifier fromLayoutAttribute:(void *)attribute toAttribute:(void *)toAttribute withDescriptor:
{
  toAttributeCopy = toAttribute;
  identifierCopy = identifier;
  v12 = a2;
  objc_opt_self();
  v13 = [[SXComponentDependency alloc] initWithComponentDependencyFromComponentIdentifier:v12 toComponentIdentifier:identifierCopy fromLayoutAttribute:componentIdentifier toAttribute:attribute withDescriptor:toAttributeCopy];

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy == self || [(NSString *)self->_fromComponentIdentifier isEqualToString:equalCopy->_fromComponentIdentifier]&& [(NSString *)self->_toComponentIdentifier isEqualToString:equalCopy->_toComponentIdentifier]&& self->_fromDependencyAttribute == equalCopy->_fromDependencyAttribute && self->_toDependencyAttribute == equalCopy->_toDependencyAttribute;

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if (self)
  {
    v6 = self->_fromComponentIdentifier;
    v7 = self->_toComponentIdentifier;
    v8 = NSStringFromDependencyAttribute(self->_fromDependencyAttribute);
    toDependencyAttribute = self->_toDependencyAttribute;
  }

  else
  {
    v8 = NSStringFromDependencyAttribute(0);
    v6 = 0;
    v7 = 0;
    toDependencyAttribute = 0;
  }

  v10 = NSStringFromDependencyAttribute(toDependencyAttribute);
  v11 = [v3 stringWithFormat:@"<%@: %p from component: %@; to component: %@; dependencyAttribute: %@; toDependencyAttribute: %@>", v5, self, v6, v7, v8, v10];;

  return v11;
}

- (id)initWithComponentDependencyFromComponentIdentifier:(void *)identifier toComponentIdentifier:(void *)componentIdentifier fromLayoutAttribute:(void *)attribute toAttribute:(void *)toAttribute withDescriptor:
{
  v12 = a2;
  identifierCopy = identifier;
  toAttributeCopy = toAttribute;
  if (self)
  {
    v17.receiver = self;
    v17.super_class = SXComponentDependency;
    v15 = objc_msgSendSuper2(&v17, sel_init);
    self = v15;
    if (v15)
    {
      objc_storeStrong(v15 + 1, a2);
      objc_storeStrong(self + 2, identifier);
      self[3] = componentIdentifier;
      self[4] = attribute;
      objc_storeStrong(self + 5, toAttribute);
    }
  }

  return self;
}

@end