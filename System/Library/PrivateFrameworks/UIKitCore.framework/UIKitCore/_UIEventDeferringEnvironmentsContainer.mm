@interface _UIEventDeferringEnvironmentsContainer
- (BOOL)isEqual:(id)a3;
- (_UIEventDeferringEnvironmentsContainer)init;
- (_UIEventDeferringEnvironmentsContainer)initWithCoder:(id)a3;
- (_UIEventDeferringEnvironmentsContainer)initWithXPCDictionary:(id)a3;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)hash;
- (void)_initWithEnvironments:(void *)a1;
- (void)encodeWithXPCDictionary:(id)a3;
- (void)environments;
@end

@implementation _UIEventDeferringEnvironmentsContainer

- (_UIEventDeferringEnvironmentsContainer)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"_UIEventDeferringEnvironmentsContainer.m" lineNumber:54 description:{@"%s: init is not allowed on %@", "-[_UIEventDeferringEnvironmentsContainer init]", objc_opt_class()}];

  return 0;
}

- (void)_initWithEnvironments:(void *)a1
{
  v2 = a1;
  if (a1)
  {
    if (!a2)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:sel__initWithEnvironments_ object:v2 file:@"_UIEventDeferringEnvironmentsContainer.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"environments"}];
    }

    v8.receiver = v2;
    v8.super_class = _UIEventDeferringEnvironmentsContainer;
    v2 = objc_msgSendSuper2(&v8, sel_init);
    if (v2)
    {
      v4 = [a2 copy];
      v5 = v2[1];
      v2[1] = v4;
    }
  }

  return v2;
}

- (void)environments
{
  if (a1)
  {
    v2 = a1[1];
    if (v2)
    {
      a1 = v2;
    }

    else
    {
      a1 = objc_opt_new();
    }

    v1 = vars8;
  }

  return a1;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  v4 = a3;
  v5 = objc_opt_class();
  if ([v5 isEqual:objc_opt_class()] && (v6 = -[_UIEventDeferringEnvironmentsContainer hash](self, "hash"), v6 == objc_msgSend(v4, "hash")))
  {
    environments = self->_environments;
    if (environments == v4[1])
    {
      v8 = 1;
    }

    else
    {
      v8 = [(NSSet *)environments isEqual:?];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendObject:self->_environments];
  v5 = [v3 hash];

  return v5;
}

- (id)succinctDescription
{
  v2 = [(_UIEventDeferringEnvironmentsContainer *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = _UIEventDeferringEnvironmentsContainerSetDescription(self->_environments);
  v5 = [v3 appendObject:v4 withName:@"environments"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_UIEventDeferringEnvironmentsContainer *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_UIEventDeferringEnvironmentsContainer *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v5 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v5 setActiveMultilinePrefix:a3];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80___UIEventDeferringEnvironmentsContainer_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_1E70F35B8;
  v6 = v5;
  v11 = v6;
  v12 = self;
  v7 = [v6 modifyBody:v10];
  v8 = v6;

  return v6;
}

- (_UIEventDeferringEnvironmentsContainer)initWithCoder:(id)a3
{
  v14.receiver = self;
  v14.super_class = _UIEventDeferringEnvironmentsContainer;
  v4 = [(_UIEventDeferringEnvironmentsContainer *)&v14 init];
  if (v4)
  {
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
    v8 = [a3 decodeObjectOfClasses:v7 forKey:@"_UIEventDeferringEnvironmentsContainerKey_Environments"];

    v9 = [v8 copy];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = objc_opt_new();
    }

    environments = v4->_environments;
    v4->_environments = v11;
  }

  return v4;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  v5 = [@"_UIEventDeferringEnvironmentsContainerKey_Environments" UTF8String];
  environments = self->_environments;

  MEMORY[0x1EEDF02F8](environments, a3, v5, &__block_literal_global_573);
}

- (_UIEventDeferringEnvironmentsContainer)initWithXPCDictionary:(id)a3
{
  [@"_UIEventDeferringEnvironmentsContainerKey_Environments" UTF8String];
  v4 = BSDeserializeSetOfBSXPCEncodableObjectsFromXPCDictionaryWithKey();
  v5 = [(_UIEventDeferringEnvironmentsContainer *)self _initWithEnvironments:v4];

  return v5;
}

@end