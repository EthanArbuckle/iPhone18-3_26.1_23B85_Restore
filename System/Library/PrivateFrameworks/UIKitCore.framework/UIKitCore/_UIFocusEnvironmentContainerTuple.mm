@interface _UIFocusEnvironmentContainerTuple
+ (id)tupleWithOwningEnvironment:(id)environment itemContainer:(id)container;
+ (id)tupleWithRequiredContainerFromEnvironment:(id)environment;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToEnvironmentContainerTuple:(id)tuple;
- (_UIFocusEnvironmentContainerTuple)initWithOwningEnvironment:(id)environment itemContainer:(id)container;
- (id)description;
- (unint64_t)hash;
@end

@implementation _UIFocusEnvironmentContainerTuple

- (_UIFocusEnvironmentContainerTuple)initWithOwningEnvironment:(id)environment itemContainer:(id)container
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIFocusItemContainer.m" lineNumber:378 description:{@"Invalid parameter not satisfying: %@", @"owningEnvironment != nil"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIFocusItemContainer.m" lineNumber:379 description:{@"Invalid parameter not satisfying: %@", @"itemContainer != nil"}];

LABEL_3:
  focusItemContainer = [environmentCopy focusItemContainer];

  if (focusItemContainer != v10)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"UIFocusItemContainer.m" lineNumber:380 description:{@"Invalid parameter not satisfying: %@", @"owningEnvironment.focusItemContainer == itemContainer"}];
  }

  v18.receiver = self;
  v18.super_class = _UIFocusEnvironmentContainerTuple;
  v12 = [(_UIFocusEnvironmentContainerTuple *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_owningEnvironment, environment);
    objc_storeStrong(&v13->_itemContainer, container);
    v13->_isScrollableContainer = _UIFocusItemContainerIsScrollableContainer(v10);
  }

  return v13;
}

+ (id)tupleWithOwningEnvironment:(id)environment itemContainer:(id)container
{
  containerCopy = container;
  environmentCopy = environment;
  v8 = [[self alloc] initWithOwningEnvironment:environmentCopy itemContainer:containerCopy];

  return v8;
}

+ (id)tupleWithRequiredContainerFromEnvironment:(id)environment
{
  environmentCopy = environment;
  focusItemContainer = [environmentCopy focusItemContainer];
  v6 = [self tupleWithOwningEnvironment:environmentCopy itemContainer:focusItemContainer];

  return v6;
}

- (BOOL)isEqualToEnvironmentContainerTuple:(id)tuple
{
  v41 = *MEMORY[0x1E69E9840];
  tupleCopy = tuple;
  owningEnvironment = self->_owningEnvironment;
  itemContainer = self->_itemContainer;
  v7 = tupleCopy[2];
  v8 = tupleCopy[3];
  if ((*__UILogGetCategoryCachedImpl("UIFocus", &qword_1ED49DCC8) & 1) != 0 && itemContainer == v8 && owningEnvironment != v7)
  {
    v13 = *(__UILogGetCategoryCachedImpl("UIFocus", &qword_1ED49DCD0) + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v33 = v7;
      v34 = v8;
      v31 = owningEnvironment;
      v32 = itemContainer;
      itemContainer = [(_UIFocusEnvironmentContainerTuple *)self itemContainer];
      if (itemContainer)
      {
        v15 = MEMORY[0x1E696AEC0];
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v18 = [v15 stringWithFormat:@"<%@: %p>", v17, itemContainer];
      }

      else
      {
        v18 = @"(nil)";
      }

      v19 = v18;
      owningEnvironment = [(_UIFocusEnvironmentContainerTuple *)self owningEnvironment];
      if (owningEnvironment)
      {
        v21 = MEMORY[0x1E696AEC0];
        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        v24 = [v21 stringWithFormat:@"<%@: %p>", v23, owningEnvironment];
      }

      else
      {
        v24 = @"(nil)";
      }

      v25 = v24;
      owningEnvironment2 = [tupleCopy owningEnvironment];
      if (owningEnvironment2)
      {
        v27 = MEMORY[0x1E696AEC0];
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        v30 = [v27 stringWithFormat:@"<%@: %p>", v29, owningEnvironment2];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy && (v5 = objc_opt_class(), v5 == objc_opt_class()) && [(_UIFocusEnvironmentContainerTuple *)self isEqualToEnvironmentContainerTuple:equalCopy];

  return v6;
}

- (unint64_t)hash
{
  owningEnvironment = [(_UIFocusEnvironmentContainerTuple *)self owningEnvironment];
  v4 = [owningEnvironment hash];
  itemContainer = [(_UIFocusEnvironmentContainerTuple *)self itemContainer];
  v6 = [itemContainer hash];

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