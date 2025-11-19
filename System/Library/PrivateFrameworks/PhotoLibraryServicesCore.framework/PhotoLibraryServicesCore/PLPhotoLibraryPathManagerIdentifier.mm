@interface PLPhotoLibraryPathManagerIdentifier
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPathManagerIdentifier:(id)a3;
- (PLPhotoLibraryPathManagerIdentifier)initWithLibraryID:(id)a3 libraryFormat:(unsigned __int8)a4;
- (PLPhotoLibraryPathManagerIdentifier)initWithPathManager:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation PLPhotoLibraryPathManagerIdentifier

- (unint64_t)hash
{
  v2 = [(PLPhotoLibraryPathManagerIdentifier *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(PLPhotoLibraryPathManagerIdentifier *)self identifier];
  v6 = [v4 initWithLibraryID:v5 libraryFormat:-[PLPhotoLibraryPathManagerIdentifier bundleFormat](self, "bundleFormat")];

  return v6;
}

- (BOOL)isEqualToPathManagerIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PLPhotoLibraryPathManagerIdentifier *)self identifier];
  v6 = [v4 identifier];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    [(PLPhotoLibraryPathManagerIdentifier *)self bundleFormat];
    [v4 bundleFormat];
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PLPhotoLibraryPathManagerIdentifier *)self isEqualToPathManagerIdentifier:v4];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = PLPhotoLibraryPathManagerIdentifier;
  v4 = [(PLPhotoLibraryPathManagerIdentifier *)&v9 description];
  v5 = PLStringFromPLPhotoLibraryPathManagerLibraryFormatShort([(PLPhotoLibraryPathManagerIdentifier *)self bundleFormat]);
  v6 = [(PLPhotoLibraryPathManagerIdentifier *)self identifier];
  v7 = [v3 stringWithFormat:@"%@ [%@] [%@]", v4, v5, v6];

  return v7;
}

- (PLPhotoLibraryPathManagerIdentifier)initWithLibraryID:(id)a3 libraryFormat:(unsigned __int8)a4
{
  v8 = a3;
  if (!v8)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PLPhotoLibraryPathManagerIdentifier.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"libraryID"}];
  }

  v13.receiver = self;
  v13.super_class = PLPhotoLibraryPathManagerIdentifier;
  v9 = [(PLPhotoLibraryPathManagerIdentifier *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a3);
    v10->_bundleFormat = a4;
  }

  return v10;
}

- (PLPhotoLibraryPathManagerIdentifier)initWithPathManager:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PLPhotoLibraryPathManagerIdentifier.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"pathManager"}];
  }

  if ([v5 bundleScope])
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PLPhotoLibraryPathManagerIdentifier.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"pathManager.bundleScope == PLBundleScopeMain"}];
  }

  v6 = [v5 photoDirectoryWithType:1];
  if ([v5 isUBF])
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  v8 = [(PLPhotoLibraryPathManagerIdentifier *)self initWithLibraryID:v6 libraryFormat:v7];

  return v8;
}

@end