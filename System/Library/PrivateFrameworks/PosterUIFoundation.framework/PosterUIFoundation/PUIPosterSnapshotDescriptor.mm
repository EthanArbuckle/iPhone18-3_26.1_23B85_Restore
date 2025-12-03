@interface PUIPosterSnapshotDescriptor
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSnapshotDescriptor:(id)descriptor;
- (NSArray)levelSets;
- (PUIPosterSnapshotDescriptor)init;
- (PUIPosterSnapshotDescriptor)initWithBSXPCCoder:(id)coder;
- (PUIPosterSnapshotDescriptor)initWithCoder:(id)coder;
- (PUIPosterSnapshotDescriptor)initWithOutputDescriptor:(id)descriptor sceneDescriptor:(id)sceneDescriptor attachments:(id)attachments analysis:(id)analysis host:(id)host;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PUIPosterSnapshotDescriptor

- (PUIPosterSnapshotDescriptor)initWithOutputDescriptor:(id)descriptor sceneDescriptor:(id)sceneDescriptor attachments:(id)attachments analysis:(id)analysis host:(id)host
{
  descriptorCopy = descriptor;
  sceneDescriptorCopy = sceneDescriptor;
  attachmentsCopy = attachments;
  analysisCopy = analysis;
  hostCopy = host;
  if (!descriptorCopy)
  {
    [PUIPosterSnapshotDescriptor initWithOutputDescriptor:a2 sceneDescriptor:? attachments:? analysis:? host:?];
  }

  v18 = hostCopy;
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

    v22 = [sceneDescriptorCopy copy];
    sceneDescriptor = v19->_sceneDescriptor;
    v19->_sceneDescriptor = v22;

    v24 = [descriptorCopy copy];
    output = v19->_output;
    v19->_output = v24;

    v26 = [attachmentsCopy copy];
    attachments = v19->_attachments;
    v19->_attachments = v26;

    v28 = [analysisCopy copy];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else if (equalCopy)
  {
    v6 = [(PUIPosterSnapshotDescriptor *)self isEqualToSnapshotDescriptor:equalCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqualToSnapshotDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = descriptorCopy;
  if (self == descriptorCopy)
  {
    v20 = 1;
  }

  else if (descriptorCopy && ([(PUIPosterSnapshotDescriptor *)descriptorCopy hostDescriptor], v6 = objc_claimAutoreleasedReturnValue(), [(PUIPosterSnapshotDescriptor *)self hostDescriptor], v7 = objc_claimAutoreleasedReturnValue(), v8 = BSEqualObjects(), v7, v6, v8) && ([(PUIPosterSnapshotDescriptor *)v5 attachments], v9 = objc_claimAutoreleasedReturnValue(), [(PUIPosterSnapshotDescriptor *)self attachments], v10 = objc_claimAutoreleasedReturnValue(), v11 = BSEqualObjects(), v10, v9, v11) && ([(PUIPosterSnapshotDescriptor *)v5 output], v12 = objc_claimAutoreleasedReturnValue(), [(PUIPosterSnapshotDescriptor *)self output], v13 = objc_claimAutoreleasedReturnValue(), v14 = BSEqualObjects(), v13, v12, v14) && ([(PUIPosterSnapshotDescriptor *)v5 analysis], v15 = objc_claimAutoreleasedReturnValue(), [(PUIPosterSnapshotDescriptor *)self analysis], v16 = objc_claimAutoreleasedReturnValue(), v17 = BSEqualObjects(), v16, v15, v17))
  {
    sceneDescriptor = [(PUIPosterSnapshotDescriptor *)v5 sceneDescriptor];
    sceneDescriptor2 = [(PUIPosterSnapshotDescriptor *)self sceneDescriptor];
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
  output = [(PUIPosterSnapshotDescriptor *)self output];
  levelSets = [output levelSets];

  attachments = [(PUIPosterSnapshotDescriptor *)self attachments];

  if (attachments)
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
          v11 = [levelSets bs_firstObjectPassingTest:v16];
          if (!v11)
          {
            v12 = +[PUIPosterLevelSet levelSetForLevel:](PUIPosterLevelSet, "levelSetForLevel:", [v10 level]);
            v13 = [levelSets arrayByAddingObject:v12];

            levelSets = v13;
          }
        }

        v7 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }
  }

  return levelSets;
}

uint64_t __40__PUIPosterSnapshotDescriptor_levelSets__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 levels];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 32), "level")}];
  v5 = [v3 containsObject:v4];

  return v5;
}

- (PUIPosterSnapshotDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = PUIPosterSnapshotDescriptor;
  v5 = [(PUIPosterSnapshotDescriptor *)&v22 init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"_hostDescriptor"];
    hostDescriptor = v5->_hostDescriptor;
    v5->_hostDescriptor = v7;

    v9 = objc_opt_self();
    v10 = [coderCopy decodeObjectOfClass:v9 forKey:@"_output"];
    output = v5->_output;
    v5->_output = v10;

    v12 = objc_opt_self();
    v13 = [coderCopy decodeArrayOfObjectsOfClass:v12 forKey:@"_attachments"];
    attachments = v5->_attachments;
    v5->_attachments = v13;

    v15 = objc_opt_self();
    v16 = [coderCopy decodeObjectOfClass:v15 forKey:@"_analysis"];
    analysis = v5->_analysis;
    v5->_analysis = v16;

    v18 = objc_opt_self();
    v19 = [coderCopy decodeObjectOfClass:v18 forKey:@"_sceneDescriptor"];
    sceneDescriptor = v5->_sceneDescriptor;
    v5->_sceneDescriptor = v19;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  hostDescriptor = self->_hostDescriptor;
  coderCopy = coder;
  [coderCopy encodeObject:hostDescriptor forKey:@"_hostDescriptor"];
  [coderCopy encodeObject:self->_output forKey:@"_output"];
  [coderCopy encodeObject:self->_attachments forKey:@"_attachments"];
  [coderCopy encodeObject:self->_analysis forKey:@"_analysis"];
  [coderCopy encodeObject:self->_sceneDescriptor forKey:@"_sceneDescriptor"];
}

- (PUIPosterSnapshotDescriptor)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = PUIPosterSnapshotDescriptor;
  v5 = [(PUIPosterSnapshotDescriptor *)&v23 init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"_hostDescriptor"];
    hostDescriptor = v5->_hostDescriptor;
    v5->_hostDescriptor = v7;

    v9 = objc_opt_self();
    v10 = [coderCopy decodeObjectOfClass:v9 forKey:@"_output"];
    output = v5->_output;
    v5->_output = v10;

    v12 = objc_opt_self();
    v13 = objc_opt_self();
    v14 = [coderCopy decodeCollectionOfClass:v12 containingClass:v13 forKey:@"_attachments"];
    attachments = v5->_attachments;
    v5->_attachments = v14;

    v16 = objc_opt_self();
    v17 = [coderCopy decodeObjectOfClass:v16 forKey:@"_analysis"];
    analysis = v5->_analysis;
    v5->_analysis = v17;

    v19 = objc_opt_self();
    v20 = [coderCopy decodeObjectOfClass:v19 forKey:@"_sceneDescriptor"];
    sceneDescriptor = v5->_sceneDescriptor;
    v5->_sceneDescriptor = v20;
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  hostDescriptor = self->_hostDescriptor;
  coderCopy = coder;
  [coderCopy encodeObject:hostDescriptor forKey:@"_hostDescriptor"];
  [coderCopy encodeObject:self->_output forKey:@"_output"];
  [coderCopy encodeObject:self->_attachments forKey:@"_attachments"];
  [coderCopy encodeObject:self->_analysis forKey:@"_analysis"];
  [coderCopy encodeObject:self->_sceneDescriptor forKey:@"_sceneDescriptor"];
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