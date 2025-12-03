@interface _UIEventDeferringEnvironmentsContainer
- (BOOL)isEqual:(id)equal;
- (_UIEventDeferringEnvironmentsContainer)init;
- (_UIEventDeferringEnvironmentsContainer)initWithCoder:(id)coder;
- (_UIEventDeferringEnvironmentsContainer)initWithXPCDictionary:(id)dictionary;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)hash;
- (void)_initWithEnvironments:(void *)environments;
- (void)encodeWithXPCDictionary:(id)dictionary;
- (void)environments;
@end

@implementation _UIEventDeferringEnvironmentsContainer

- (_UIEventDeferringEnvironmentsContainer)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIEventDeferringEnvironmentsContainer.m" lineNumber:54 description:{@"%s: init is not allowed on %@", "-[_UIEventDeferringEnvironmentsContainer init]", objc_opt_class()}];

  return 0;
}

- (void)_initWithEnvironments:(void *)environments
{
  environmentsCopy = environments;
  if (environments)
  {
    if (!a2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__initWithEnvironments_ object:environmentsCopy file:@"_UIEventDeferringEnvironmentsContainer.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"environments"}];
    }

    v8.receiver = environmentsCopy;
    v8.super_class = _UIEventDeferringEnvironmentsContainer;
    environmentsCopy = objc_msgSendSuper2(&v8, sel_init);
    if (environmentsCopy)
    {
      v4 = [a2 copy];
      v5 = environmentsCopy[1];
      environmentsCopy[1] = v4;
    }
  }

  return environmentsCopy;
}

- (void)environments
{
  if (self)
  {
    v2 = self[1];
    if (v2)
    {
      self = v2;
    }

    else
    {
      self = objc_opt_new();
    }

    v1 = vars8;
  }

  return self;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  equalCopy = equal;
  v5 = objc_opt_class();
  if ([v5 isEqual:objc_opt_class()] && (v6 = -[_UIEventDeferringEnvironmentsContainer hash](self, "hash"), v6 == objc_msgSend(equalCopy, "hash")))
  {
    environments = self->_environments;
    if (environments == equalCopy[1])
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
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendObject:self->_environments];
  v5 = [builder hash];

  return v5;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(_UIEventDeferringEnvironmentsContainer *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = _UIEventDeferringEnvironmentsContainerSetDescription(self->_environments);
  v5 = [v3 appendObject:v4 withName:@"environments"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_UIEventDeferringEnvironmentsContainer *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_UIEventDeferringEnvironmentsContainer *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v5 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v5 setActiveMultilinePrefix:prefix];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80___UIEventDeferringEnvironmentsContainer_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_1E70F35B8;
  v6 = v5;
  v11 = v6;
  selfCopy = self;
  v7 = [v6 modifyBody:v10];
  v8 = v6;

  return v6;
}

- (_UIEventDeferringEnvironmentsContainer)initWithCoder:(id)coder
{
  v14.receiver = self;
  v14.super_class = _UIEventDeferringEnvironmentsContainer;
  v4 = [(_UIEventDeferringEnvironmentsContainer *)&v14 init];
  if (v4)
  {
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
    v8 = [coder decodeObjectOfClasses:v7 forKey:@"_UIEventDeferringEnvironmentsContainerKey_Environments"];

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

- (void)encodeWithXPCDictionary:(id)dictionary
{
  uTF8String = [@"_UIEventDeferringEnvironmentsContainerKey_Environments" UTF8String];
  environments = self->_environments;

  MEMORY[0x1EEDF02F8](environments, dictionary, uTF8String, &__block_literal_global_573);
}

- (_UIEventDeferringEnvironmentsContainer)initWithXPCDictionary:(id)dictionary
{
  [@"_UIEventDeferringEnvironmentsContainerKey_Environments" UTF8String];
  v4 = BSDeserializeSetOfBSXPCEncodableObjectsFromXPCDictionaryWithKey();
  v5 = [(_UIEventDeferringEnvironmentsContainer *)self _initWithEnvironments:v4];

  return v5;
}

@end