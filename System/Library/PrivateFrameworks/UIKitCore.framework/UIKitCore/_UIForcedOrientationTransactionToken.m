@interface _UIForcedOrientationTransactionToken
- (_UIForcedOrientationTransactionHandler)transactionHandler;
- (_UIForcedOrientationTransactionToken)initWithOriginalOrientation:(int64_t)a3 handler:(id)a4 reason:(id)a5 disablingInterfaceAutorotation:(BOOL)a6;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)cancel;
- (void)commitAnimated:(BOOL)a3 completionBlock:(id)a4;
- (void)dealloc;
- (void)didCommitOrientation;
@end

@implementation _UIForcedOrientationTransactionToken

- (_UIForcedOrientationTransactionToken)initWithOriginalOrientation:(int64_t)a3 handler:(id)a4 reason:(id)a5 disablingInterfaceAutorotation:(BOOL)a6
{
  v22 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = _UIForcedOrientationTransactionToken;
  v12 = [(_UIForcedOrientationTransactionToken *)&v19 init];
  v13 = v12;
  if (v12)
  {
    v12->_originalInterfaceOrientation = a3;
    objc_storeWeak(&v12->_transactionHandler, v10);
    v14 = [v11 copy];
    transactionReason = v13->_transactionReason;
    v13->_transactionReason = v14;

    v13->_state = 1;
    v13->_disablesInterfaceAutorotation = a6;
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

- (void)commitAnimated:(BOOL)a3 completionBlock:(id)a4
{
  v4 = a3;
  v17 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if ([(_UIForcedOrientationTransactionToken *)self state]== 1)
  {
    self->_state = 2;
    [(_UIForcedOrientationTransactionToken *)self setCommitCompletionBlock:v6];
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("OrientationTransaction", &_MergedGlobals_1179);
    if (*CategoryCachedImpl)
    {
      v10 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = @"non-animated";
        if (v4)
        {
          v11 = @"animated";
        }

        v13 = 138412546;
        v14 = v11;
        v15 = 2112;
        v16 = self;
        _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Beginning %@ commit of orientation transaction token: %@", &v13, 0x16u);
      }
    }

    v8 = [(_UIForcedOrientationTransactionToken *)self transactionHandler];
    [v8 commitOrientationTransaction:self animated:v4];
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
        v14 = self;
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
        v7 = self;
        _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "Commit finished for orientation transaction token: %@", &v6, 0xCu);
      }
    }

    v4 = [(_UIForcedOrientationTransactionToken *)self commitCompletionBlock];
    [(_UIForcedOrientationTransactionToken *)self setCommitCompletionBlock:0];
    if (v4)
    {
      v4[2](v4);
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
        v7 = self;
        _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "Cancelling orientation transaction token: %@", &v6, 0xCu);
      }
    }

    v4 = [(_UIForcedOrientationTransactionToken *)self transactionHandler];
    [v4 cancelOrientationTransaction:self];
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
  v2 = [(_UIForcedOrientationTransactionToken *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [(_UIForcedOrientationTransactionToken *)self state];
  if (v4 > 2)
  {
    v5 = @"unknown";
  }

  else
  {
    v5 = off_1E7114708[v4];
  }

  [v3 appendString:v5 withName:@"state"];
  v6 = [v3 ui_appendInterfaceOrientation:-[_UIForcedOrientationTransactionToken originalInterfaceOrientation](self withName:{"originalInterfaceOrientation"), @"originalOrientation"}];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_UIForcedOrientationTransactionToken *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_UIForcedOrientationTransactionToken *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = MEMORY[0x1E698E680];
  v5 = a3;
  v6 = [v4 builderWithObject:self];
  [v6 setActiveMultilinePrefix:v5];

  v7 = [v6 activeMultilinePrefix];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78___UIForcedOrientationTransactionToken_descriptionBuilderWithMultilinePrefix___block_invoke;
  v11[3] = &unk_1E70F35B8;
  v8 = v6;
  v12 = v8;
  v13 = self;
  [v8 appendBodySectionWithName:0 multilinePrefix:v7 block:v11];

  v9 = v8;
  return v8;
}

- (_UIForcedOrientationTransactionHandler)transactionHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_transactionHandler);

  return WeakRetained;
}

@end