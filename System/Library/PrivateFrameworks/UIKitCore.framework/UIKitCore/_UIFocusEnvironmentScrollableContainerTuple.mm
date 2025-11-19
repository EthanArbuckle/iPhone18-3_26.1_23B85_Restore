@interface _UIFocusEnvironmentScrollableContainerTuple
+ (_UIFocusEnvironmentScrollableContainerTuple)tupleWithOwningEnvironment:(id)a3 scrollableContainer:(id)a4;
- (BOOL)isEqual:(id)a3;
- (_UIFocusEnvironmentScrollableContainerTuple)initWithOwningEnvironment:(id)a3 scrollableContainer:(id)a4;
- (id)description;
- (unint64_t)hash;
@end

@implementation _UIFocusEnvironmentScrollableContainerTuple

- (_UIFocusEnvironmentScrollableContainerTuple)initWithOwningEnvironment:(id)a3 scrollableContainer:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"UIFocusItemContainer.m" lineNumber:442 description:{@"Invalid parameter not satisfying: %@", @"owningEnvironment != nil"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v16 = [MEMORY[0x1E696AAA8] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"UIFocusItemContainer.m" lineNumber:443 description:{@"Invalid parameter not satisfying: %@", @"scrollableContainer != nil"}];

LABEL_3:
  v11 = [v8 focusItemContainer];

  if (v11 != v10)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"UIFocusItemContainer.m" lineNumber:444 description:{@"Invalid parameter not satisfying: %@", @"owningEnvironment.focusItemContainer == scrollableContainer"}];
  }

  v18.receiver = self;
  v18.super_class = _UIFocusEnvironmentScrollableContainerTuple;
  v12 = [(_UIFocusEnvironmentScrollableContainerTuple *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_owningEnvironment, a3);
    objc_storeStrong(&v13->_scrollableContainer, a4);
  }

  return v13;
}

+ (_UIFocusEnvironmentScrollableContainerTuple)tupleWithOwningEnvironment:(id)a3 scrollableContainer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithOwningEnvironment:v7 scrollableContainer:v6];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 || (v5 = objc_opt_class(), v5 != objc_opt_class()))
  {
    v6 = 0;
    goto LABEL_9;
  }

  v7 = v4;
  if (*__UILogGetCategoryCachedImpl("UIFocus", &qword_1ED49DCD8))
  {
    v13 = [(_UIFocusEnvironmentScrollableContainerTuple *)self scrollableContainer];
    v14 = [v7 scrollableContainer];
    v15 = v14;
    if (v13 == v14)
    {
      v16 = [(_UIFocusEnvironmentScrollableContainerTuple *)self owningEnvironment];
      v17 = [v7 owningEnvironment];

      if (v16 == v17)
      {
        goto LABEL_5;
      }

      v13 = *(__UILogGetCategoryCachedImpl("UIFocus", &qword_1ED49DCE0) + 8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v34 = [(_UIFocusEnvironmentScrollableContainerTuple *)self scrollableContainer];
        if (v34)
        {
          v18 = MEMORY[0x1E696AEC0];
          v19 = objc_opt_class();
          v20 = NSStringFromClass(v19);
          v21 = [v18 stringWithFormat:@"<%@: %p>", v20, v34];
        }

        else
        {
          v21 = @"(nil)";
        }

        v22 = v21;
        v23 = [(_UIFocusEnvironmentScrollableContainerTuple *)self owningEnvironment];
        if (v23)
        {
          v24 = MEMORY[0x1E696AEC0];
          v25 = objc_opt_class();
          v26 = NSStringFromClass(v25);
          v27 = [v24 stringWithFormat:@"<%@: %p>", v26, v23];
        }

        else
        {
          v27 = @"(nil)";
        }

        v28 = v27;
        v29 = [v7 owningEnvironment];
        if (v29)
        {
          v30 = MEMORY[0x1E696AEC0];
          v31 = objc_opt_class();
          v32 = NSStringFromClass(v31);
          v33 = [v30 stringWithFormat:@"<%@: %p>", v32, v29];
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
        _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_DEFAULT, "Warning: encountered a single UIFocusItemContainer: %@ yielded by two mismatched owning UIFocusEnvironments: %@ and %@. UIFocusItemContainer should be 1:1 with its owning environment.", buf, 0x20u);
      }
    }

    else
    {
    }
  }

LABEL_5:
  v8 = [(_UIFocusEnvironmentScrollableContainerTuple *)self owningEnvironment];
  v9 = [v7 owningEnvironment];
  if (v8 == v9)
  {
    v10 = [(_UIFocusEnvironmentScrollableContainerTuple *)self scrollableContainer];
    v11 = [v7 scrollableContainer];
    v6 = v10 == v11;
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
  v3 = [(_UIFocusEnvironmentScrollableContainerTuple *)self owningEnvironment];
  v4 = [v3 hash];
  v5 = [(_UIFocusEnvironmentScrollableContainerTuple *)self scrollableContainer];
  v6 = [v5 hash];

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