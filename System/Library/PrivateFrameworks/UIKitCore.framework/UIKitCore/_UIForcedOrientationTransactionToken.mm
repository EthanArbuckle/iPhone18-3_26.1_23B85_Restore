@interface _UIForcedOrientationTransactionToken
- (_UIForcedOrientationTransactionHandler)transactionHandler;
- (_UIForcedOrientationTransactionToken)initWithOriginalOrientation:(int64_t)orientation handler:(id)handler reason:(id)reason disablingInterfaceAutorotation:(BOOL)autorotation;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)cancel;
- (void)commitAnimated:(BOOL)animated completionBlock:(id)block;
- (void)dealloc;
- (void)didCommitOrientation;
@end

@implementation _UIForcedOrientationTransactionToken

- (_UIForcedOrientationTransactionToken)initWithOriginalOrientation:(int64_t)orientation handler:(id)handler reason:(id)reason disablingInterfaceAutorotation:(BOOL)autorotation
{
  v22 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  reasonCopy = reason;
  v19.receiver = self;
  v19.super_class = _UIForcedOrientationTransactionToken;
  v12 = [(_UIForcedOrientationTransactionToken *)&v19 init];
  v13 = v12;
  if (v12)
  {
    v12->_originalInterfaceOrientation = orientation;
    objc_storeWeak(&v12->_transactionHandler, handlerCopy);
    v14 = [reasonCopy copy];
    transactionReason = v13->_transactionReason;
    v13->_transactionReason = v14;

    v13->_state = 1;
    v13->_disablesInterfaceAutorotation = autorotation;
  }

  CategoryCachedImpl = __UILogGetCategoryCachedImpl("OrientationTransaction", &initWithOriginalOrientation_handler_reason_disablingInterfaceAutorotation____s_category);
  if (*CategoryCachedImpl)
  {
    v18 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v13;
      _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_ERROR, "Created new orientation transaction token: %@", buf, 0xCu);
    }
  }

  return v13;
}

- (void)commitAnimated:(BOOL)animated completionBlock:(id)block
{
  animatedCopy = animated;
  v17 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if ([(_UIForcedOrientationTransactionToken *)self state]== 1)
  {
    self->_state = 2;
    [(_UIForcedOrientationTransactionToken *)self setCommitCompletionBlock:blockCopy];
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("OrientationTransaction", &_MergedGlobals_1179);
    if (*CategoryCachedImpl)
    {
      v10 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = @"non-animated";
        if (animatedCopy)
        {
          v11 = @"animated";
        }

        v13 = 138412546;
        selfCopy2 = v11;
        v15 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Beginning %@ commit of orientation transaction token: %@", &v13, 0x16u);
      }
    }

    transactionHandler = [(_UIForcedOrientationTransactionToken *)self transactionHandler];
    [transactionHandler commitOrientationTransaction:self animated:animatedCopy];
  }

  else
  {
    v9 = __UILogGetCategoryCachedImpl("OrientationTransaction", &qword_1ED49F1C0);
    if (*v9)
    {
      v12 = *(v9 + 8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = 138412290;
        selfCopy2 = self;
        _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "Commit called on an inactive orientation transaction token: %@", &v13, 0xCu);
      }
    }
  }
}

- (void)didCommitOrientation
{
  v8 = *MEMORY[0x1E69E9840];
  if ([(_UIForcedOrientationTransactionToken *)self state]== 2)
  {
    self->_state = 0;
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("OrientationTransaction", &didCommitOrientation___s_category);
    if (*CategoryCachedImpl)
    {
      v5 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = 138412290;
        selfCopy = self;
        _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "Commit finished for orientation transaction token: %@", &v6, 0xCu);
      }
    }

    commitCompletionBlock = [(_UIForcedOrientationTransactionToken *)self commitCompletionBlock];
    [(_UIForcedOrientationTransactionToken *)self setCommitCompletionBlock:0];
    if (commitCompletionBlock)
    {
      commitCompletionBlock[2](commitCompletionBlock);
    }
  }
}

- (void)cancel
{
  v8 = *MEMORY[0x1E69E9840];
  if ([(_UIForcedOrientationTransactionToken *)self state]== 1)
  {
    self->_state = 0;
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("OrientationTransaction", &cancel___s_category);
    if (*CategoryCachedImpl)
    {
      v5 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = 138412290;
        selfCopy = self;
        _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "Cancelling orientation transaction token: %@", &v6, 0xCu);
      }
    }

    transactionHandler = [(_UIForcedOrientationTransactionToken *)self transactionHandler];
    [transactionHandler cancelOrientationTransaction:self];
  }
}

- (void)dealloc
{
  [(_UIForcedOrientationTransactionToken *)self cancel];
  v3.receiver = self;
  v3.super_class = _UIForcedOrientationTransactionToken;
  [(_UIForcedOrientationTransactionToken *)&v3 dealloc];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(_UIForcedOrientationTransactionToken *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  state = [(_UIForcedOrientationTransactionToken *)self state];
  if (state > 2)
  {
    v5 = @"unknown";
  }

  else
  {
    v5 = off_1E7114708[state];
  }

  [v3 appendString:v5 withName:@"state"];
  v6 = [v3 ui_appendInterfaceOrientation:-[_UIForcedOrientationTransactionToken originalInterfaceOrientation](self withName:{"originalInterfaceOrientation"), @"originalOrientation"}];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_UIForcedOrientationTransactionToken *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_UIForcedOrientationTransactionToken *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = MEMORY[0x1E698E680];
  prefixCopy = prefix;
  v6 = [v4 builderWithObject:self];
  [v6 setActiveMultilinePrefix:prefixCopy];

  activeMultilinePrefix = [v6 activeMultilinePrefix];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78___UIForcedOrientationTransactionToken_descriptionBuilderWithMultilinePrefix___block_invoke;
  v11[3] = &unk_1E70F35B8;
  v8 = v6;
  v12 = v8;
  selfCopy = self;
  [v8 appendBodySectionWithName:0 multilinePrefix:activeMultilinePrefix block:v11];

  v9 = v8;
  return v8;
}

- (_UIForcedOrientationTransactionHandler)transactionHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_transactionHandler);

  return WeakRetained;
}

@end