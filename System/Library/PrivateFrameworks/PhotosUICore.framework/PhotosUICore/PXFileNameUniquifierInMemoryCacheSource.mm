@interface PXFileNameUniquifierInMemoryCacheSource
- (BOOL)fileExistsAtPath:(id)path;
- (NSString)debugDescription;
- (PXFileNameUniquifierInMemoryCacheSource)init;
- (void)rememberUniquifiedFilePath:(id)path;
@end

@implementation PXFileNameUniquifierInMemoryCacheSource

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  knownFilePaths = [(PXFileNameUniquifierInMemoryCacheSource *)self knownFilePaths];
  v6 = [v3 stringWithFormat:@"<%@:%p known file paths: %@  >", v4, self, knownFilePaths];

  return v6;
}

- (void)rememberUniquifiedFilePath:(id)path
{
  pathCopy = path;
  knownFilePaths = [(PXFileNameUniquifierInMemoryCacheSource *)self knownFilePaths];
  [knownFilePaths addObject:pathCopy];
}

- (BOOL)fileExistsAtPath:(id)path
{
  pathCopy = path;
  knownFilePaths = [(PXFileNameUniquifierInMemoryCacheSource *)self knownFilePaths];
  v6 = [knownFilePaths containsObject:pathCopy];

  return v6;
}

- (PXFileNameUniquifierInMemoryCacheSource)init
{
  v6.receiver = self;
  v6.super_class = PXFileNameUniquifierInMemoryCacheSource;
  v2 = [(PXFileNameUniquifierInMemoryCacheSource *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFA8] set];
    knownFilePaths = v2->_knownFilePaths;
    v2->_knownFilePaths = v3;
  }

  return v2;
}

@end