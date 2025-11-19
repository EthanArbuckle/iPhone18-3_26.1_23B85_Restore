@interface PUIPosterSnapshotAnalysisDescriptor
+ (id)analysisShouldDetermineColorStatistics:(BOOL)a3;
+ (id)defaultAnalysisDescriptor;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (PUIPosterSnapshotAnalysisDescriptor)initWithBSXPCCoder:(id)a3;
- (PUIPosterSnapshotAnalysisDescriptor)initWithCoder:(id)a3;
- (PUIPosterSnapshotAnalysisDescriptor)initWithDesiredLegibilitySettings:(id)a3 determineColorStatistics:(BOOL)a4;
- (id)copyWithDesiredLegibilitySettings:(id)a3;
- (id)copyWithShouldDetermineColorStatistics:(BOOL)a3;
- (uint64_t)isEqualToAnalysisDescriptor:(uint64_t)a1;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PUIPosterSnapshotAnalysisDescriptor

+ (id)defaultAnalysisDescriptor
{
  v2 = [[PUIPosterSnapshotAnalysisDescriptor alloc] initWithDesiredLegibilitySettings:0 determineColorStatistics:0];

  return v2;
}

+ (id)analysisShouldDetermineColorStatistics:(BOOL)a3
{
  v3 = [[PUIPosterSnapshotAnalysisDescriptor alloc] initWithDesiredLegibilitySettings:0 determineColorStatistics:1];

  return v3;
}

- (PUIPosterSnapshotAnalysisDescriptor)initWithDesiredLegibilitySettings:(id)a3 determineColorStatistics:(BOOL)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = PUIPosterSnapshotAnalysisDescriptor;
  v7 = [(PUIPosterSnapshotAnalysisDescriptor *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    desiredLegibilitySettings = v7->_desiredLegibilitySettings;
    v7->_desiredLegibilitySettings = v8;

    v7->_determineColorStatistics = a4;
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (v4 == self)
    {
      v6 = 1;
    }

    else
    {
      v6 = [(PUIPosterSnapshotAnalysisDescriptor *)self isEqualToAnalysisDescriptor:v4];
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
  v6 = [v3 build];

  return v6;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendBool:self->_determineColorStatistics];
  v5 = [v3 appendObject:self->_desiredLegibilitySettings];
  v6 = [v3 hash];

  return v6;
}

- (PUIPosterSnapshotAnalysisDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [v4 decodeObjectOfClass:v5 forKey:@"_desiredLegibilitySettings"];
  v7 = [v4 decodeBoolForKey:@"_determineColorStatistics"];

  v8 = [(PUIPosterSnapshotAnalysisDescriptor *)self initWithDesiredLegibilitySettings:v6 determineColorStatistics:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  desiredLegibilitySettings = self->_desiredLegibilitySettings;
  v5 = a3;
  [v5 encodeObject:desiredLegibilitySettings forKey:@"_desiredLegibilitySettings"];
  [v5 encodeBool:self->_determineColorStatistics forKey:@"_determineColorStatistics"];
}

- (PUIPosterSnapshotAnalysisDescriptor)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [v4 decodeObjectOfClass:v5 forKey:@"_desiredLegibilitySettings"];

  v7 = [v4 decodeBoolForKey:@"_determineColorStatistics"];
  v8 = [(PUIPosterSnapshotAnalysisDescriptor *)self initWithDesiredLegibilitySettings:v6 determineColorStatistics:v7];

  return v8;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  desiredLegibilitySettings = self->_desiredLegibilitySettings;
  v5 = a3;
  [v5 encodeObject:desiredLegibilitySettings forKey:@"_desiredLegibilitySettings"];
  [v5 encodeBool:self->_determineColorStatistics forKey:@"_determineColorStatistics"];
}

- (id)copyWithShouldDetermineColorStatistics:(BOOL)a3
{
  if (self->_determineColorStatistics == a3)
  {

    return self;
  }

  else
  {
    result = [(PUIPosterSnapshotAnalysisDescriptor *)self copy];
    *(result + 8) = a3;
  }

  return result;
}

- (id)copyWithDesiredLegibilitySettings:(id)a3
{
  v4 = a3;
  if ([v4 isEqual:self->_desiredLegibilitySettings])
  {
    v5 = self;
  }

  else
  {
    v5 = [(PUIPosterSnapshotAnalysisDescriptor *)self copy];
    v6 = [v4 copy];
    desiredLegibilitySettings = v5->_desiredLegibilitySettings;
    v5->_desiredLegibilitySettings = v6;
  }

  return v5;
}

- (uint64_t)isEqualToAnalysisDescriptor:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (a1 == v3)
    {
      a1 = 1;
    }

    else if (v3)
    {
      v5 = MEMORY[0x1E698E6A0];
      v6 = objc_opt_self();
      v7 = [v5 builderWithObject:v4 ofExpectedClass:v6];

      v8 = *(a1 + 8);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __67__PUIPosterSnapshotAnalysisDescriptor_isEqualToAnalysisDescriptor___block_invoke;
      v19[3] = &unk_1E78562D8;
      v9 = v4;
      v20 = v9;
      v10 = [v7 appendBool:v8 counterpart:v19];
      v11 = *(a1 + 16);
      v14 = MEMORY[0x1E69E9820];
      v15 = 3221225472;
      v16 = __67__PUIPosterSnapshotAnalysisDescriptor_isEqualToAnalysisDescriptor___block_invoke_2;
      v17 = &unk_1E7856300;
      v18 = v9;
      v12 = [v7 appendObject:v11 counterpart:&v14];
      a1 = [v7 isEqual];
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

@end