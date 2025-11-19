@interface SXComponentDependency
+ (id)componentDependencyFromComponentIdentifier:(void *)a3 toComponentIdentifier:(void *)a4 fromLayoutAttribute:(void *)a5 toAttribute:(void *)a6 withDescriptor:;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (id)initWithComponentDependencyFromComponentIdentifier:(void *)a3 toComponentIdentifier:(void *)a4 fromLayoutAttribute:(void *)a5 toAttribute:(void *)a6 withDescriptor:;
@end

@implementation SXComponentDependency

+ (id)componentDependencyFromComponentIdentifier:(void *)a3 toComponentIdentifier:(void *)a4 fromLayoutAttribute:(void *)a5 toAttribute:(void *)a6 withDescriptor:
{
  v10 = a6;
  v11 = a3;
  v12 = a2;
  objc_opt_self();
  v13 = [[SXComponentDependency alloc] initWithComponentDependencyFromComponentIdentifier:v12 toComponentIdentifier:v11 fromLayoutAttribute:a4 toAttribute:a5 withDescriptor:v10];

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4 == self || [(NSString *)self->_fromComponentIdentifier isEqualToString:v4->_fromComponentIdentifier]&& [(NSString *)self->_toComponentIdentifier isEqualToString:v4->_toComponentIdentifier]&& self->_fromDependencyAttribute == v4->_fromDependencyAttribute && self->_toDependencyAttribute == v4->_toDependencyAttribute;

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

- (id)initWithComponentDependencyFromComponentIdentifier:(void *)a3 toComponentIdentifier:(void *)a4 fromLayoutAttribute:(void *)a5 toAttribute:(void *)a6 withDescriptor:
{
  v12 = a2;
  v13 = a3;
  v14 = a6;
  if (a1)
  {
    v17.receiver = a1;
    v17.super_class = SXComponentDependency;
    v15 = objc_msgSendSuper2(&v17, sel_init);
    a1 = v15;
    if (v15)
    {
      objc_storeStrong(v15 + 1, a2);
      objc_storeStrong(a1 + 2, a3);
      a1[3] = a4;
      a1[4] = a5;
      objc_storeStrong(a1 + 5, a6);
    }
  }

  return a1;
}

@end