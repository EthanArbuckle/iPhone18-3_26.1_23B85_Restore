@interface PRSPosterDescriptor
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (PRSPosterDescriptor)init;
- (PRSPosterDescriptor)initWithBSXPCCoder:(id)coder;
- (id)_initWithPath:(id)path;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation PRSPosterDescriptor

- (PRSPosterDescriptor)init
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(a2);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v4 stringWithFormat:@"%@ is not allowed on %@", v5, v7];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = NSStringFromSelector(a2);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    *buf = 138544642;
    v14 = v9;
    v15 = 2114;
    v16 = v11;
    v17 = 2048;
    selfCopy = self;
    v19 = 2114;
    v20 = @"PRSPosterDescriptor.m";
    v21 = 1024;
    v22 = 26;
    v23 = 2114;
    v24 = v8;
    _os_log_error_impl(&dword_1C26FF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v8 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_pathValidityExtension invalidate];
  v3.receiver = self;
  v3.super_class = PRSPosterDescriptor;
  [(PRSPosterDescriptor *)&v3 dealloc];
}

- (id)_initWithPath:(id)path
{
  pathCopy = path;
  if (!pathCopy)
  {
    [PRSPosterDescriptor _initWithPath:a2];
  }

  v7 = pathCopy;
  descriptorIdentifier = [pathCopy descriptorIdentifier];

  if (!descriptorIdentifier)
  {
    [(PRSPosterDescriptor *)v7 _initWithPath:a2];
  }

  v17.receiver = self;
  v17.super_class = PRSPosterDescriptor;
  v9 = [(PRSPosterDescriptor *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_path, path);
    path = v10->_path;
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [(PFPosterPath *)path extendValidityForReason:v13];
    pathValidityExtension = v10->_pathValidityExtension;
    v10->_pathValidityExtension = v14;
  }

  return v10;
}

- (unint64_t)hash
{
  serverIdentity = [(PFPosterPath *)self->_path serverIdentity];
  v4 = serverIdentity;
  if (serverIdentity)
  {
    v5 = [serverIdentity hash];
  }

  else
  {
    contentsURL = [(PFPosterPath *)self->_path contentsURL];
    v5 = [contentsURL hash];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      serverIdentity = [(PFPosterPath *)self->_path serverIdentity];
      if (serverIdentity)
      {
        serverIdentity2 = [(PFPosterPath *)equalCopy->_path serverIdentity];
        v6 = BSEqualObjects();
      }

      else
      {
        v6 = [(PFPosterPath *)self->_path isEqual:equalCopy->_path];
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@:%p path=%@>", v5, self, self->_path];

  return v6;
}

- (PRSPosterDescriptor)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_posterDescriptorPath"];

  v6 = [(PRSPosterDescriptor *)self _initWithPath:v5];
  return v6;
}

- (void)_initWithPath:(uint64_t)a1 .cold.1(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"descriptors must have descriptorIdentifiers : %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_2_0();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, a1, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithPath:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"path", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end