@interface _UIFocusEnvironmentContainerTuple
+ (id)tupleWithOwningEnvironment:(id)a3 itemContainer:(id)a4;
+ (id)tupleWithRequiredContainerFromEnvironment:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToEnvironmentContainerTuple:(id)a3;
- (_UIFocusEnvironmentContainerTuple)initWithOwningEnvironment:(id)a3 itemContainer:(id)a4;
- (id)description;
- (unint64_t)hash;
@end

@implementation _UIFocusEnvironmentContainerTuple

- (_UIFocusEnvironmentContainerTuple)initWithOwningEnvironment:(id)a3 itemContainer:(id)a4
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
    [v15 handleFailureInMethod:a2 object:self file:@"UIFocusItemContainer.m" lineNumber:378 description:{@"Invalid parameter not satisfying: %@", @"owningEnvironment != nil"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v16 = [MEMORY[0x1E696AAA8] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"UIFocusItemContainer.m" lineNumber:379 description:{@"Invalid parameter not satisfying: %@", @"itemContainer != nil"}];

LABEL_3:
  v11 = [v8 focusItemContainer];

  if (v11 != v10)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"UIFocusItemContainer.m" lineNumber:380 description:{@"Invalid parameter not satisfying: %@", @"owningEnvironment.focusItemContainer == itemContainer"}];
  }

  v18.receiver = self;
  v18.super_class = _UIFocusEnvironmentContainerTuple;
  v12 = [(_UIFocusEnvironmentContainerTuple *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_owningEnvironment, a3);
    objc_storeStrong(&v13->_itemContainer, a4);
    v13->_isScrollableContainer = _UIFocusItemContainerIsScrollableContainer(v10);
  }

  return v13;
}

+ (id)tupleWithOwningEnvironment:(id)a3 itemContainer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithOwningEnvironment:v7 itemContainer:v6];

  return v8;
}

+ (id)tupleWithRequiredContainerFromEnvironment:(id)a3
{
  v4 = a3;
  v5 = [v4 focusItemContainer];
  v6 = [a1 tupleWithOwningEnvironment:v4 itemContainer:v5];

  return v6;
}

- (BOOL)isEqualToEnvironmentContainerTuple:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  owningEnvironment = self->_owningEnvironment;
  itemContainer = self->_itemContainer;
  v7 = v4[2];
  v8 = v4[3];
  if ((*__UILogGetCategoryCachedImpl("UIFocus", &qword_1ED49DCC8) & 1) != 0 && itemContainer == v8 && owningEnvironment != v7)
  {
    v13 = *(__UILogGetCategoryCachedImpl("UIFocus", &qword_1ED49DCD0) + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v33 = v7;
      v34 = v8;
      v31 = owningEnvironment;
      v32 = itemContainer;
      v14 = [(_UIFocusEnvironmentContainerTuple *)self itemContainer];
      if (v14)
      {
        v15 = MEMORY[0x1E696AEC0];
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v18 = [v15 stringWithFormat:@"<%@: %p>", v17, v14];
      }

      else
      {
        v18 = @"(nil)";
      }

      v19 = v18;
      v20 = [(_UIFocusEnvironmentContainerTuple *)self owningEnvironment];
      if (v20)
      {
        v21 = MEMORY[0x1E696AEC0];
        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        v24 = [v21 stringWithFormat:@"<%@: %p>", v23, v20];
      }

      else
      {
        v24 = @"(nil)";
      }

      v25 = v24;
      v26 = [v4 owningEnvironment];
      if (v26)
      {
        v27 = MEMORY[0x1E696AEC0];
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        v30 = [v27 stringWithFormat:@"<%@: %p>", v29, v26];
      }

      else
      {
        v30 = @"(nil)";
      }

      *buf = 138412802;
      v36 = v19;
      v37 = 2112;
      v38 = v25;
      v39 = 2112;
      v40 = v30;
      _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_DEFAULT, "Warning: encountered a single UIFocusItemContainer: %@ yielded by two mismatched owning UIFocusEnvironments: %@ and %@. UIFocusItemContainer should be 1:1 with its owning environment.", buf, 0x20u);

      owningEnvironment = v31;
      itemContainer = v32;
      v7 = v33;
      v8 = v34;
    }
  }

  v10 = owningEnvironment == v7 && itemContainer == v8;

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v6 = v4 && (v5 = objc_opt_class(), v5 == objc_opt_class()) && [(_UIFocusEnvironmentContainerTuple *)self isEqualToEnvironmentContainerTuple:v4];

  return v6;
}

- (unint64_t)hash
{
  v3 = [(_UIFocusEnvironmentContainerTuple *)self owningEnvironment];
  v4 = [v3 hash];
  v5 = [(_UIFocusEnvironmentContainerTuple *)self itemContainer];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p owningEnvironment: %@; itemContainer: %@>", v5, self, self->_owningEnvironment, self->_itemContainer];;

  return v6;
}

@end