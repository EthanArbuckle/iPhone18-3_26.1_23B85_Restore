@interface PXFileNameUniquifierInMemoryCacheSource
- (BOOL)fileExistsAtPath:(id)a3;
- (NSString)debugDescription;
- (PXFileNameUniquifierInMemoryCacheSource)init;
- (void)rememberUniquifiedFilePath:(id)a3;
@end

@implementation PXFileNameUniquifierInMemoryCacheSource

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(PXFileNameUniquifierInMemoryCacheSource *)self knownFilePaths];
  v6 = [v3 stringWithFormat:@"<%@:%p known file paths: %@  >", v4, self, v5];

  return v6;
}

- (void)rememberUniquifiedFilePath:(id)a3
{
  v4 = a3;
  v5 = [(PXFileNameUniquifierInMemoryCacheSource *)self knownFilePaths];
  [v5 addObject:v4];
}

- (BOOL)fileExistsAtPath:(id)a3
{
  v4 = a3;
  v5 = [(PXFileNameUniquifierInMemoryCacheSource *)self knownFilePaths];
  v6 = [v5 containsObject:v4];

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