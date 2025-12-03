@interface PFPosterPathsAssertion
- (PFPosterPathsAssertion)initWithCoder:(id)coder;
- (PFPosterPathsAssertion)initWithPaths:(id)paths queue:(id)queue invalidationHandler:(id)handler;
- (id)_initWithPaths:(id)paths invalidationAction:(id)action;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)invalidateWithResponder:(id)responder;
@end

@implementation PFPosterPathsAssertion

- (PFPosterPathsAssertion)initWithPaths:(id)paths queue:(id)queue invalidationHandler:(id)handler
{
  pathsCopy = paths;
  queueCopy = queue;
  handlerCopy = handler;
  if (!queueCopy)
  {
    [PFPosterPathsAssertion initWithPaths:a2 queue:? invalidationHandler:?];
  }

  if (!handlerCopy)
  {
    [PFPosterPathsAssertion initWithPaths:a2 queue:? invalidationHandler:?];
  }

  v12 = MEMORY[0x1E698E5F8];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __66__PFPosterPathsAssertion_initWithPaths_queue_invalidationHandler___block_invoke;
  v18[3] = &unk_1E8189B38;
  v19 = handlerCopy;
  v13 = handlerCopy;
  v14 = [v12 responderWithHandler:v18];
  [v14 setQueue:queueCopy];
  v15 = [objc_alloc(MEMORY[0x1E698E5F0]) initWithInfo:0 responder:v14];
  v16 = [(PFPosterPathsAssertion *)self _initWithPaths:pathsCopy invalidationAction:v15];

  return v16;
}

void __66__PFPosterPathsAssertion_initWithPaths_queue_invalidationHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 info];
  v4 = [v3 objectForSetting:1];
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  (*(*(a1 + 32) + 16))();
  [v8 invalidate];
}

- (id)_initWithPaths:(id)paths invalidationAction:(id)action
{
  v27 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  actionCopy = action;
  v9 = pathsCopy;
  NSClassFromString(&cfstr_Nsarray.isa);
  if (!v9)
  {
    [PFPosterPathsAssertion _initWithPaths:a2 invalidationAction:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PFPosterPathsAssertion _initWithPaths:a2 invalidationAction:?];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        NSClassFromString(&cfstr_Pfposterpath.isa);
        if (!v15)
        {
          [PFPosterPathsAssertion _initWithPaths:a2 invalidationAction:?];
        }

        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [PFPosterPathsAssertion _initWithPaths:a2 invalidationAction:?];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  v21.receiver = self;
  v21.super_class = PFPosterPathsAssertion;
  v16 = [(PFPosterPathsAssertion *)&v21 init];
  if (v16)
  {
    v17 = [v10 copy];
    paths = v16->_paths;
    v16->_paths = v17;

    objc_storeStrong(&v16->_invalidationAction, action);
  }

  v19 = *MEMORY[0x1E69E9840];
  return v16;
}

- (void)invalidateWithResponder:(id)responder
{
  responderCopy = responder;
  if (responderCopy && (v4 = self->_invalidationAction) != 0 && [(BSAction *)v4 canSendResponse])
  {
    v5 = [objc_alloc(MEMORY[0x1E698E5F0]) initWithInfo:0 responder:responderCopy];
    v6 = objc_alloc_init(MEMORY[0x1E698E700]);
    [v6 setObject:v5 forSetting:1];
    invalidationAction = self->_invalidationAction;
    v8 = [MEMORY[0x1E698E600] responseWithInfo:v6];
    [(BSAction *)invalidationAction sendResponse:v8];
  }

  else
  {
    [(BSAction *)self->_invalidationAction invalidate];
    [responderCopy annul];
  }
}

- (id)description
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = MEMORY[0x1C691BC40]([(BSAction *)self->_invalidationAction canSendResponse]);
  v7 = [v3 stringWithFormat:@"<%@:%p expectsResponse=%@> {", v5, self, v6];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_paths;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [v7 appendFormat:@"\n\t%@", *(*(&v15 + 1) + 8 * i)];
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  [v7 appendString:@"\n}"];
  v13 = *MEMORY[0x1E69E9840];

  return v7;
}

- (PFPosterPathsAssertion)initWithCoder:(id)coder
{
  v22 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"p"];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    while (1)
    {
      if (*v18 != v12)
      {
        objc_enumerationMutation(v9);
      }

      if (!--v11)
      {
        v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (!v11)
        {
          break;
        }
      }
    }
  }

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"i"];
  v14 = [(PFPosterPathsAssertion *)self _initWithPaths:v9 invalidationAction:v13];

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_paths forKey:@"p"];
  invalidationAction = self->_invalidationAction;
  if (invalidationAction)
  {
    [coderCopy encodeObject:invalidationAction forKey:@"i"];
  }
}

- (void)initWithPaths:(char *)a1 queue:invalidationHandler:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"invalidationHandler", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithPaths:(char *)a1 queue:invalidationHandler:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"queue", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithPaths:(char *)a1 invalidationAction:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSArrayClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithPaths:(char *)a1 invalidationAction:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PFPosterPathClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithPaths:(char *)a1 invalidationAction:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithPaths:(char *)a1 invalidationAction:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end