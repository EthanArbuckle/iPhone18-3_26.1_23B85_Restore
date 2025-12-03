@interface SBUniqueDefaultIconModelStore
+ (id)filePathByAddingUniqueIdentifier:(id)identifier toFilePath:(id)path;
- (SBUniqueDefaultIconModelStore)initWithUniqueIdentifier:(id)identifier;
@end

@implementation SBUniqueDefaultIconModelStore

- (SBUniqueDefaultIconModelStore)initWithUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    [(SBUniqueDefaultIconModelStore *)a2 initWithUniqueIdentifier:?];
  }

  v6 = objc_opt_class();
  stringByExpandingTildeInPath = [@"~/Library/SpringBoard/IconState.plist" stringByExpandingTildeInPath];
  v8 = [v6 filePathByAddingUniqueIdentifier:identifierCopy toFilePath:stringByExpandingTildeInPath];

  v9 = objc_opt_class();
  stringByExpandingTildeInPath2 = [@"~/Library/SpringBoard/DesiredIconState.plist" stringByExpandingTildeInPath];
  v11 = [v9 filePathByAddingUniqueIdentifier:identifierCopy toFilePath:stringByExpandingTildeInPath2];

  v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:v8];
  v13 = [MEMORY[0x277CBEBC0] fileURLWithPath:v11];
  v14 = [(SBIconModelPropertyListFileStore *)self initWithIconStateURL:v12 desiredIconStateURL:v13];

  if (v14)
  {
    v15 = [identifierCopy copy];
    uniqueIdentifier = v14->_uniqueIdentifier;
    v14->_uniqueIdentifier = v15;
  }

  return v14;
}

+ (id)filePathByAddingUniqueIdentifier:(id)identifier toFilePath:(id)path
{
  pathCopy = path;
  identifierCopy = identifier;
  lastPathComponent = [pathCopy lastPathComponent];
  stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

  pathExtension = [pathCopy pathExtension];
  stringByDeletingLastPathComponent = [pathCopy stringByDeletingLastPathComponent];

  identifierCopy = [stringByDeletingPathExtension stringByAppendingFormat:@"-%@", identifierCopy];

  v12 = [identifierCopy stringByAppendingPathExtension:pathExtension];

  v13 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:v12];

  return v13;
}

- (void)initWithUniqueIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBDefaultIconModelStore.m" lineNumber:127 description:{@"Invalid parameter not satisfying: %@", @"uniqueIdentifier"}];
}

@end