@interface PFTemporaryResource
- (PFTemporaryResource)init;
- (PFTemporaryResource)initWithResource:(id)a3 URL:(id)a4;
- (void)dealloc;
- (void)invalidateWithError:(id *)a3;
- (void)trackInvalidatable:(id)a3;
@end

@implementation PFTemporaryResource

- (PFTemporaryResource)init
{
  [(PFTemporaryResource *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PFTemporaryResource)initWithResource:(id)a3 URL:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    [PFTemporaryResource initWithResource:a2 URL:?];
  }

  v10 = v9;
  v19.receiver = self;
  v19.super_class = PFTemporaryResource;
  v11 = [(PFTemporaryResource *)&v19 init];
  if (v11)
  {
    v12 = [v10 copy];
    URL = v11->_URL;
    v11->_URL = v12;

    objc_storeStrong(&v11->_resource, a3);
    v14 = objc_opt_new();
    trackedInvalidatables = v11->_trackedInvalidatables;
    v11->_trackedInvalidatables = v14;

    v16 = objc_opt_new();
    invalidationSignal = v11->_invalidationSignal;
    v11->_invalidationSignal = v16;
  }

  return v11;
}

- (void)dealloc
{
  [(PFTemporaryResource *)self invalidate];
  v3.receiver = self;
  v3.super_class = PFTemporaryResource;
  [(PFTemporaryResource *)&v3 dealloc];
}

- (void)trackInvalidatable:(id)a3
{
  v4 = a3;
  if (self != v4 && v4)
  {
    v6 = v4;
    v5 = self->_trackedInvalidatables;
    objc_sync_enter(v5);
    if ([(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled])
    {
      [(NSMutableSet *)self->_trackedInvalidatables addObject:v6];
    }

    objc_sync_exit(v5);

    v4 = v6;
  }
}

- (void)invalidateWithError:(id *)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = self->_trackedInvalidatables;
  objc_sync_enter(v4);
  if ([(BSAtomicSignal *)self->_invalidationSignal signal])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = self->_trackedInvalidatables;
    v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v10 + 1) + 8 * v8++) invalidate];
        }

        while (v6 != v8);
        v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }

    [(NSMutableSet *)self->_trackedInvalidatables removeAllObjects];
  }

  objc_sync_exit(v4);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)initWithResource:(char *)a1 URL:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"resource", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end