@interface PUIPosterSnapshotAnalysisDescriptor
+ (id)analysisShouldDetermineColorStatistics:(BOOL)statistics;
+ (id)defaultAnalysisDescriptor;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (PUIPosterSnapshotAnalysisDescriptor)initWithBSXPCCoder:(id)coder;
- (PUIPosterSnapshotAnalysisDescriptor)initWithCoder:(id)coder;
- (PUIPosterSnapshotAnalysisDescriptor)initWithDesiredLegibilitySettings:(id)settings determineColorStatistics:(BOOL)statistics;
- (id)copyWithDesiredLegibilitySettings:(id)settings;
- (id)copyWithShouldDetermineColorStatistics:(BOOL)statistics;
- (uint64_t)isEqualToAnalysisDescriptor:(uint64_t)descriptor;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PUIPosterSnapshotAnalysisDescriptor

+ (id)defaultAnalysisDescriptor
{
  v2 = [[PUIPosterSnapshotAnalysisDescriptor alloc] initWithDesiredLegibilitySettings:0 determineColorStatistics:0];

  return v2;
}

+ (id)analysisShouldDetermineColorStatistics:(BOOL)statistics
{
  v3 = [[PUIPosterSnapshotAnalysisDescriptor alloc] initWithDesiredLegibilitySettings:0 determineColorStatistics:1];

  return v3;
}

- (PUIPosterSnapshotAnalysisDescriptor)initWithDesiredLegibilitySettings:(id)settings determineColorStatistics:(BOOL)statistics
{
  settingsCopy = settings;
  v11.receiver = self;
  v11.super_class = PUIPosterSnapshotAnalysisDescriptor;
  v7 = [(PUIPosterSnapshotAnalysisDescriptor *)&v11 init];
  if (v7)
  {
    v8 = [settingsCopy copy];
    desiredLegibilitySettings = v7->_desiredLegibilitySettings;
    v7->_desiredLegibilitySettings = v8;

    v7->_determineColorStatistics = statistics;
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy)
  {
    if (equalCopy == self)
    {
      v6 = 1;
    }

    else
    {
      v6 = [(PUIPosterSnapshotAnalysisDescriptor *)self isEqualToAnalysisDescriptor:equalCopy];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendBool:self->_determineColorStatistics withName:@"_determineColorStatistics"];
  v5 = [v3 appendObject:self->_desiredLegibilitySettings withName:@"_desiredLegibilitySettings"];
  build = [v3 build];

  return build;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendBool:self->_determineColorStatistics];
  v5 = [builder appendObject:self->_desiredLegibilitySettings];
  v6 = [builder hash];

  return v6;
}

- (PUIPosterSnapshotAnalysisDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_self();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"_desiredLegibilitySettings"];
  v7 = [coderCopy decodeBoolForKey:@"_determineColorStatistics"];

  v8 = [(PUIPosterSnapshotAnalysisDescriptor *)self initWithDesiredLegibilitySettings:v6 determineColorStatistics:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  desiredLegibilitySettings = self->_desiredLegibilitySettings;
  coderCopy = coder;
  [coderCopy encodeObject:desiredLegibilitySettings forKey:@"_desiredLegibilitySettings"];
  [coderCopy encodeBool:self->_determineColorStatistics forKey:@"_determineColorStatistics"];
}

- (PUIPosterSnapshotAnalysisDescriptor)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_self();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"_desiredLegibilitySettings"];

  v7 = [coderCopy decodeBoolForKey:@"_determineColorStatistics"];
  v8 = [(PUIPosterSnapshotAnalysisDescriptor *)self initWithDesiredLegibilitySettings:v6 determineColorStatistics:v7];

  return v8;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  desiredLegibilitySettings = self->_desiredLegibilitySettings;
  coderCopy = coder;
  [coderCopy encodeObject:desiredLegibilitySettings forKey:@"_desiredLegibilitySettings"];
  [coderCopy encodeBool:self->_determineColorStatistics forKey:@"_determineColorStatistics"];
}

- (id)copyWithShouldDetermineColorStatistics:(BOOL)statistics
{
  if (self->_determineColorStatistics == statistics)
  {

    return self;
  }

  else
  {
    result = [(PUIPosterSnapshotAnalysisDescriptor *)self copy];
    *(result + 8) = statistics;
  }

  return result;
}

- (id)copyWithDesiredLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  if ([settingsCopy isEqual:self->_desiredLegibilitySettings])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [(PUIPosterSnapshotAnalysisDescriptor *)self copy];
    v6 = [settingsCopy copy];
    desiredLegibilitySettings = selfCopy->_desiredLegibilitySettings;
    selfCopy->_desiredLegibilitySettings = v6;
  }

  return selfCopy;
}

- (uint64_t)isEqualToAnalysisDescriptor:(uint64_t)descriptor
{
  v3 = a2;
  v4 = v3;
  if (descriptor)
  {
    if (descriptor == v3)
    {
      descriptor = 1;
    }

    else if (v3)
    {
      v5 = MEMORY[0x1E698E6A0];
      v6 = objc_opt_self();
      v7 = [v5 builderWithObject:v4 ofExpectedClass:v6];

      v8 = *(descriptor + 8);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __67__PUIPosterSnapshotAnalysisDescriptor_isEqualToAnalysisDescriptor___block_invoke;
      v19[3] = &unk_1E78562D8;
      v9 = v4;
      v20 = v9;
      v10 = [v7 appendBool:v8 counterpart:v19];
      v11 = *(descriptor + 16);
      v14 = MEMORY[0x1E69E9820];
      v15 = 3221225472;
      v16 = __67__PUIPosterSnapshotAnalysisDescriptor_isEqualToAnalysisDescriptor___block_invoke_2;
      v17 = &unk_1E7856300;
      v18 = v9;
      v12 = [v7 appendObject:v11 counterpart:&v14];
      descriptor = [v7 isEqual];
    }

    else
    {
      descriptor = 0;
    }
  }

  return descriptor;
}

@end