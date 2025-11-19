@interface PUIPosterSnapshotDescriptor
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSnapshotDescriptor:(id)a3;
- (NSArray)levelSets;
- (PUIPosterSnapshotDescriptor)init;
- (PUIPosterSnapshotDescriptor)initWithBSXPCCoder:(id)a3;
- (PUIPosterSnapshotDescriptor)initWithCoder:(id)a3;
- (PUIPosterSnapshotDescriptor)initWithOutputDescriptor:(id)a3 sceneDescriptor:(id)a4 attachments:(id)a5 analysis:(id)a6 host:(id)a7;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PUIPosterSnapshotDescriptor

- (PUIPosterSnapshotDescriptor)initWithOutputDescriptor:(id)a3 sceneDescriptor:(id)a4 attachments:(id)a5 analysis:(id)a6 host:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (!v13)
  {
    [PUIPosterSnapshotDescriptor initWithOutputDescriptor:a2 sceneDescriptor:? attachments:? analysis:? host:?];
  }

  v18 = v17;
  v31.receiver = self;
  v31.super_class = PUIPosterSnapshotDescriptor;
  v19 = [(PUIPosterSnapshotDescriptor *)&v31 init];
  if (v19)
  {
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = +[PUIPosterSnapshotHostConfigurationDescriptor snapshotOutOfProcessHostConfigurationDescriptor];
    }

    hostDescriptor = v19->_hostDescriptor;
    v19->_hostDescriptor = v20;

    v22 = [v14 copy];
    sceneDescriptor = v19->_sceneDescriptor;
    v19->_sceneDescriptor = v22;

    v24 = [v13 copy];
    output = v19->_output;
    v19->_output = v24;

    v26 = [v15 copy];
    attachments = v19->_attachments;
    v19->_attachments = v26;

    v28 = [v16 copy];
    analysis = v19->_analysis;
    v19->_analysis = v28;
  }

  return v19;
}

- (PUIPosterSnapshotDescriptor)init
{
  [(PUIPosterSnapshotDescriptor *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else if (v4)
  {
    v6 = [(PUIPosterSnapshotDescriptor *)self isEqualToSnapshotDescriptor:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqualToSnapshotDescriptor:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v20 = 1;
  }

  else if (v4 && ([(PUIPosterSnapshotDescriptor *)v4 hostDescriptor], v6 = objc_claimAutoreleasedReturnValue(), [(PUIPosterSnapshotDescriptor *)self hostDescriptor], v7 = objc_claimAutoreleasedReturnValue(), v8 = BSEqualObjects(), v7, v6, v8) && ([(PUIPosterSnapshotDescriptor *)v5 attachments], v9 = objc_claimAutoreleasedReturnValue(), [(PUIPosterSnapshotDescriptor *)self attachments], v10 = objc_claimAutoreleasedReturnValue(), v11 = BSEqualObjects(), v10, v9, v11) && ([(PUIPosterSnapshotDescriptor *)v5 output], v12 = objc_claimAutoreleasedReturnValue(), [(PUIPosterSnapshotDescriptor *)self output], v13 = objc_claimAutoreleasedReturnValue(), v14 = BSEqualObjects(), v13, v12, v14) && ([(PUIPosterSnapshotDescriptor *)v5 analysis], v15 = objc_claimAutoreleasedReturnValue(), [(PUIPosterSnapshotDescriptor *)self analysis], v16 = objc_claimAutoreleasedReturnValue(), v17 = BSEqualObjects(), v16, v15, v17))
  {
    v18 = [(PUIPosterSnapshotDescriptor *)v5 sceneDescriptor];
    v19 = [(PUIPosterSnapshotDescriptor *)self sceneDescriptor];
    v20 = BSEqualObjects();
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (NSArray)levelSets
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [(PUIPosterSnapshotDescriptor *)self output];
  v4 = [v3 levelSets];

  v5 = [(PUIPosterSnapshotDescriptor *)self attachments];

  if (v5)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    obj = [(PUIPosterSnapshotDescriptor *)self attachments];
    v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __40__PUIPosterSnapshotDescriptor_levelSets__block_invoke;
          v16[3] = &unk_1E78562B0;
          v16[4] = v10;
          v11 = [v4 bs_firstObjectPassingTest:v16];
          if (!v11)
          {
            v12 = +[PUIPosterLevelSet levelSetForLevel:](PUIPosterLevelSet, "levelSetForLevel:", [v10 level]);
            v13 = [v4 arrayByAddingObject:v12];

            v4 = v13;
          }
        }

        v7 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }
  }

  return v4;
}

uint64_t __40__PUIPosterSnapshotDescriptor_levelSets__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 levels];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 32), "level")}];
  v5 = [v3 containsObject:v4];

  return v5;
}

- (PUIPosterSnapshotDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = PUIPosterSnapshotDescriptor;
  v5 = [(PUIPosterSnapshotDescriptor *)&v22 init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"_hostDescriptor"];
    hostDescriptor = v5->_hostDescriptor;
    v5->_hostDescriptor = v7;

    v9 = objc_opt_self();
    v10 = [v4 decodeObjectOfClass:v9 forKey:@"_output"];
    output = v5->_output;
    v5->_output = v10;

    v12 = objc_opt_self();
    v13 = [v4 decodeArrayOfObjectsOfClass:v12 forKey:@"_attachments"];
    attachments = v5->_attachments;
    v5->_attachments = v13;

    v15 = objc_opt_self();
    v16 = [v4 decodeObjectOfClass:v15 forKey:@"_analysis"];
    analysis = v5->_analysis;
    v5->_analysis = v16;

    v18 = objc_opt_self();
    v19 = [v4 decodeObjectOfClass:v18 forKey:@"_sceneDescriptor"];
    sceneDescriptor = v5->_sceneDescriptor;
    v5->_sceneDescriptor = v19;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  hostDescriptor = self->_hostDescriptor;
  v5 = a3;
  [v5 encodeObject:hostDescriptor forKey:@"_hostDescriptor"];
  [v5 encodeObject:self->_output forKey:@"_output"];
  [v5 encodeObject:self->_attachments forKey:@"_attachments"];
  [v5 encodeObject:self->_analysis forKey:@"_analysis"];
  [v5 encodeObject:self->_sceneDescriptor forKey:@"_sceneDescriptor"];
}

- (PUIPosterSnapshotDescriptor)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = PUIPosterSnapshotDescriptor;
  v5 = [(PUIPosterSnapshotDescriptor *)&v23 init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"_hostDescriptor"];
    hostDescriptor = v5->_hostDescriptor;
    v5->_hostDescriptor = v7;

    v9 = objc_opt_self();
    v10 = [v4 decodeObjectOfClass:v9 forKey:@"_output"];
    output = v5->_output;
    v5->_output = v10;

    v12 = objc_opt_self();
    v13 = objc_opt_self();
    v14 = [v4 decodeCollectionOfClass:v12 containingClass:v13 forKey:@"_attachments"];
    attachments = v5->_attachments;
    v5->_attachments = v14;

    v16 = objc_opt_self();
    v17 = [v4 decodeObjectOfClass:v16 forKey:@"_analysis"];
    analysis = v5->_analysis;
    v5->_analysis = v17;

    v19 = objc_opt_self();
    v20 = [v4 decodeObjectOfClass:v19 forKey:@"_sceneDescriptor"];
    sceneDescriptor = v5->_sceneDescriptor;
    v5->_sceneDescriptor = v20;
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  hostDescriptor = self->_hostDescriptor;
  v5 = a3;
  [v5 encodeObject:hostDescriptor forKey:@"_hostDescriptor"];
  [v5 encodeObject:self->_output forKey:@"_output"];
  [v5 encodeObject:self->_attachments forKey:@"_attachments"];
  [v5 encodeObject:self->_analysis forKey:@"_analysis"];
  [v5 encodeObject:self->_sceneDescriptor forKey:@"_sceneDescriptor"];
}

- (void)initWithOutputDescriptor:(char *)a1 sceneDescriptor:attachments:analysis:host:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"outputDescriptor", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end