@interface PUIPosterSnapshotOutputDescriptor
- (NSString)description;
- (PUIPosterSnapshotOutputDescriptor)initWithBSXPCCoder:(id)coder;
- (PUIPosterSnapshotOutputDescriptor)initWithCoder:(id)coder;
- (PUIPosterSnapshotOutputDescriptor)initWithLevelSets:(id)sets snapshotDefinitionIdentifier:(id)identifier persistenceScale:(double)scale;
- (PUIPosterSnapshotOutputDescriptor)initWithSnapshotDefinitionIdentifier:(id)identifier;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PUIPosterSnapshotOutputDescriptor

- (PUIPosterSnapshotOutputDescriptor)initWithSnapshotDefinitionIdentifier:(id)identifier
{
  v9[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = +[PUIPosterLevelSet compositeLevelSet];
  v9[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v7 = [(PUIPosterSnapshotOutputDescriptor *)self initWithLevelSets:v6 snapshotDefinitionIdentifier:identifierCopy];

  return v7;
}

- (PUIPosterSnapshotOutputDescriptor)initWithLevelSets:(id)sets snapshotDefinitionIdentifier:(id)identifier persistenceScale:(double)scale
{
  v22[1] = *MEMORY[0x1E69E9840];
  setsCopy = sets;
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    [PUIPosterSnapshotOutputDescriptor initWithLevelSets:a2 snapshotDefinitionIdentifier:? persistenceScale:?];
  }

  if (scale <= 0.0)
  {
    [PUIPosterSnapshotOutputDescriptor initWithLevelSets:a2 snapshotDefinitionIdentifier:? persistenceScale:?];
  }

  v11 = identifierCopy;
  v21.receiver = self;
  v21.super_class = PUIPosterSnapshotOutputDescriptor;
  v12 = [(PUIPosterSnapshotOutputDescriptor *)&v21 init];
  if (v12)
  {
    v13 = [setsCopy copy];
    levelSets = v12->_levelSets;
    v12->_levelSets = v13;

    if (![(NSArray *)v12->_levelSets count])
    {
      v15 = +[PUIPosterLevelSet compositeLevelSet];
      v22[0] = v15;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
      v17 = v12->_levelSets;
      v12->_levelSets = v16;
    }

    v18 = [v11 copy];
    snapshotDefinitionIdentifier = v12->_snapshotDefinitionIdentifier;
    v12->_snapshotDefinitionIdentifier = v18;

    v12->_persistenceScale = scale;
  }

  return v12;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v3 appendString:self->_snapshotDefinitionIdentifier withName:@"_snapshotDefinitionIdentifier"];
  v4 = [v3 appendDouble:@"_persistenceScale" withName:2 decimalPrecision:self->_persistenceScale];
  [v3 appendArraySection:self->_levelSets withName:@"levelSets" skipIfEmpty:0];
  build = [v3 build];

  return build;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendObject:self->_snapshotDefinitionIdentifier];
  v5 = [builder appendObject:self->_levelSets];
  v6 = [builder appendCGFloat:self->_persistenceScale];
  v7 = [builder hash];

  return v7;
}

- (PUIPosterSnapshotOutputDescriptor)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_self();
  v7 = [v4 setWithObject:v6];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"_levelSets"];

  [coderCopy decodeDoubleForKey:@"_persistenceScale"];
  v10 = v9;
  v11 = objc_opt_self();
  v12 = [coderCopy decodeObjectOfClass:v11 forKey:@"_snapshotDefinitionIdentifier"];

  v13 = [(PUIPosterSnapshotOutputDescriptor *)self initWithLevelSets:v8 snapshotDefinitionIdentifier:v12 persistenceScale:v10];
  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  levelSets = self->_levelSets;
  coderCopy = coder;
  [coderCopy encodeObject:levelSets forKey:@"_levelSets"];
  [coderCopy encodeObject:self->_snapshotDefinitionIdentifier forKey:@"_snapshotDefinitionIdentifier"];
  [coderCopy encodeDouble:@"_persistenceScale" forKey:self->_persistenceScale];
}

- (PUIPosterSnapshotOutputDescriptor)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_self();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"_snapshotDefinitionIdentifier"];

  v7 = objc_opt_self();
  v8 = objc_opt_self();
  v9 = [coderCopy decodeCollectionOfClass:v7 containingClass:v8 forKey:@"_levelSets"];

  [coderCopy decodeDoubleForKey:@"_persistenceScale"];
  v11 = v10;

  v12 = [(PUIPosterSnapshotOutputDescriptor *)self initWithLevelSets:v9 snapshotDefinitionIdentifier:v6 persistenceScale:v11];
  return v12;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  levelSets = self->_levelSets;
  coderCopy = coder;
  [coderCopy encodeObject:levelSets forKey:@"_levelSets"];
  [coderCopy encodeObject:self->_snapshotDefinitionIdentifier forKey:@"_snapshotDefinitionIdentifier"];
  [coderCopy encodeDouble:@"_persistenceScale" forKey:self->_persistenceScale];
}

- (void)initWithLevelSets:(char *)a1 snapshotDefinitionIdentifier:persistenceScale:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"persistenceScale > 0", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithLevelSets:(char *)a1 snapshotDefinitionIdentifier:persistenceScale:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"snapshotDefinitionIdentifier", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end