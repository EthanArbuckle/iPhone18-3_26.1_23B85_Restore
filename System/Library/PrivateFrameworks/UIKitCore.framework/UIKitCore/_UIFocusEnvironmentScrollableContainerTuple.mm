@interface _UIFocusEnvironmentScrollableContainerTuple
+ (_UIFocusEnvironmentScrollableContainerTuple)tupleWithOwningEnvironment:(id)environment scrollableContainer:(id)container;
- (BOOL)isEqual:(id)equal;
- (_UIFocusEnvironmentScrollableContainerTuple)initWithOwningEnvironment:(id)environment scrollableContainer:(id)container;
- (id)description;
- (unint64_t)hash;
@end

@implementation _UIFocusEnvironmentScrollableContainerTuple

- (_UIFocusEnvironmentScrollableContainerTuple)initWithOwningEnvironment:(id)environment scrollableContainer:(id)container
{
  environmentCopy = environment;
  containerCopy = container;
  v10 = containerCopy;
  if (environmentCopy)
  {
    if (containerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIFocusItemContainer.m" lineNumber:442 description:{@"Invalid parameter not satisfying: %@", @"owningEnvironment != nil"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIFocusItemContainer.m" lineNumber:443 description:{@"Invalid parameter not satisfying: %@", @"scrollableContainer != nil"}];

LABEL_3:
  focusItemContainer = [environmentCopy focusItemContainer];

  if (focusItemContainer != v10)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"UIFocusItemContainer.m" lineNumber:444 description:{@"Invalid parameter not satisfying: %@", @"owningEnvironment.focusItemContainer == scrollableContainer"}];
  }

  v18.receiver = self;
  v18.super_class = _UIFocusEnvironmentScrollableContainerTuple;
  v12 = [(_UIFocusEnvironmentScrollableContainerTuple *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_owningEnvironment, environment);
    objc_storeStrong(&v13->_scrollableContainer, container);
  }

  return v13;
}

+ (_UIFocusEnvironmentScrollableContainerTuple)tupleWithOwningEnvironment:(id)environment scrollableContainer:(id)container
{
  containerCopy = container;
  environmentCopy = environment;
  v8 = [[self alloc] initWithOwningEnvironment:environmentCopy scrollableContainer:containerCopy];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  v41 = *MEMORY[0x1E69E9840];
  equalCopy = equal;
  if (!equalCopy || (v5 = objc_opt_class(), v5 != objc_opt_class()))
  {
    v6 = 0;
    goto LABEL_9;
  }

  v7 = equalCopy;
  if (*__UILogGetCategoryCachedImpl("UIFocus", &qword_1ED49DCD8))
  {
    scrollableContainer = [(_UIFocusEnvironmentScrollableContainerTuple *)self scrollableContainer];
    scrollableContainer2 = [v7 scrollableContainer];
    v15 = scrollableContainer2;
    if (scrollableContainer == scrollableContainer2)
    {
      owningEnvironment = [(_UIFocusEnvironmentScrollableContainerTuple *)self owningEnvironment];
      owningEnvironment2 = [v7 owningEnvironment];

      if (owningEnvironment == owningEnvironment2)
      {
        goto LABEL_5;
      }

      scrollableContainer = *(__UILogGetCategoryCachedImpl("UIFocus", &qword_1ED49DCE0) + 8);
      if (os_log_type_enabled(scrollableContainer, OS_LOG_TYPE_DEFAULT))
      {
        scrollableContainer3 = [(_UIFocusEnvironmentScrollableContainerTuple *)self scrollableContainer];
        if (scrollableContainer3)
        {
          v18 = MEMORY[0x1E696AEC0];
          v19 = objc_opt_class();
          v20 = NSStringFromClass(v19);
          v21 = [v18 stringWithFormat:@"<%@: %p>", v20, scrollableContainer3];
        }

        else
        {
          v21 = @"(nil)";
        }

        v22 = v21;
        owningEnvironment3 = [(_UIFocusEnvironmentScrollableContainerTuple *)self owningEnvironment];
        if (owningEnvironment3)
        {
          v24 = MEMORY[0x1E696AEC0];
          v25 = objc_opt_class();
          v26 = NSStringFromClass(v25);
          v27 = [v24 stringWithFormat:@"<%@: %p>", v26, owningEnvironment3];
        }

        else
        {
          v27 = @"(nil)";
        }

        v28 = v27;
        owningEnvironment4 = [v7 owningEnvironment];
        if (owningEnvironment4)
        {
          v30 = MEMORY[0x1E696AEC0];
          v31 = objc_opt_class();
          v32 = NSStringFromClass(v31);
          v33 = [v30 stringWithFormat:@"<%@: %p>", v32, owningEnvironment4];
        }

        else
        {
          v33 = @"(nil)";
        }

        *buf = 138412802;
        v36 = v22;
        v37 = 2112;
        v38 = v28;
        v39 = 2112;
        v40 = v33;
        _os_log_impl(&dword_188A29000, scrollableContainer, OS_LOG_TYPE_DEFAULT, "Warning: encountered a single UIFocusItemContainer: %@ yielded by two mismatched owning UIFocusEnvironments: %@ and %@. UIFocusItemContainer should be 1:1 with its owning environment.", buf, 0x20u);
      }
    }

    else
    {
    }
  }

LABEL_5:
  owningEnvironment5 = [(_UIFocusEnvironmentScrollableContainerTuple *)self owningEnvironment];
  owningEnvironment6 = [v7 owningEnvironment];
  if (owningEnvironment5 == owningEnvironment6)
  {
    scrollableContainer4 = [(_UIFocusEnvironmentScrollableContainerTuple *)self scrollableContainer];
    scrollableContainer5 = [v7 scrollableContainer];
    v6 = scrollableContainer4 == scrollableContainer5;
  }

  else
  {
    v6 = 0;
  }

LABEL_9:
  return v6;
}

- (unint64_t)hash
{
  owningEnvironment = [(_UIFocusEnvironmentScrollableContainerTuple *)self owningEnvironment];
  v4 = [owningEnvironment hash];
  scrollableContainer = [(_UIFocusEnvironmentScrollableContainerTuple *)self scrollableContainer];
  v6 = [scrollableContainer hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p owningEnvironment: %@; scrollableContainer: %@>", v5, self, self->_owningEnvironment, self->_scrollableContainer];;

  return v6;
}

@end