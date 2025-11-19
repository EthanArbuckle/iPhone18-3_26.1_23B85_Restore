@interface SBUniqueDefaultIconModelStore
+ (id)filePathByAddingUniqueIdentifier:(id)a3 toFilePath:(id)a4;
- (SBUniqueDefaultIconModelStore)initWithUniqueIdentifier:(id)a3;
@end

@implementation SBUniqueDefaultIconModelStore

- (SBUniqueDefaultIconModelStore)initWithUniqueIdentifier:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(SBUniqueDefaultIconModelStore *)a2 initWithUniqueIdentifier:?];
  }

  v6 = objc_opt_class();
  v7 = [@"~/Library/SpringBoard/IconState.plist" stringByExpandingTildeInPath];
  v8 = [v6 filePathByAddingUniqueIdentifier:v5 toFilePath:v7];

  v9 = objc_opt_class();
  v10 = [@"~/Library/SpringBoard/DesiredIconState.plist" stringByExpandingTildeInPath];
  v11 = [v9 filePathByAddingUniqueIdentifier:v5 toFilePath:v10];

  v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:v8];
  v13 = [MEMORY[0x277CBEBC0] fileURLWithPath:v11];
  v14 = [(SBIconModelPropertyListFileStore *)self initWithIconStateURL:v12 desiredIconStateURL:v13];

  if (v14)
  {
    v15 = [v5 copy];
    uniqueIdentifier = v14->_uniqueIdentifier;
    v14->_uniqueIdentifier = v15;
  }

  return v14;
}

+ (id)filePathByAddingUniqueIdentifier:(id)a3 toFilePath:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 lastPathComponent];
  v8 = [v7 stringByDeletingPathExtension];

  v9 = [v5 pathExtension];
  v10 = [v5 stringByDeletingLastPathComponent];

  v11 = [v8 stringByAppendingFormat:@"-%@", v6];

  v12 = [v11 stringByAppendingPathExtension:v9];

  v13 = [v10 stringByAppendingPathComponent:v12];

  return v13;
}

- (void)initWithUniqueIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBDefaultIconModelStore.m" lineNumber:127 description:{@"Invalid parameter not satisfying: %@", @"uniqueIdentifier"}];
}

@end