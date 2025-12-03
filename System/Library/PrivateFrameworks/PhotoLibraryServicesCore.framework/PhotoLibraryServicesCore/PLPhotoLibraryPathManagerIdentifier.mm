@interface PLPhotoLibraryPathManagerIdentifier
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPathManagerIdentifier:(id)identifier;
- (PLPhotoLibraryPathManagerIdentifier)initWithLibraryID:(id)d libraryFormat:(unsigned __int8)format;
- (PLPhotoLibraryPathManagerIdentifier)initWithPathManager:(id)manager;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation PLPhotoLibraryPathManagerIdentifier

- (unint64_t)hash
{
  identifier = [(PLPhotoLibraryPathManagerIdentifier *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  identifier = [(PLPhotoLibraryPathManagerIdentifier *)self identifier];
  v6 = [v4 initWithLibraryID:identifier libraryFormat:-[PLPhotoLibraryPathManagerIdentifier bundleFormat](self, "bundleFormat")];

  return v6;
}

- (BOOL)isEqualToPathManagerIdentifier:(id)identifier
{
  identifierCopy = identifier;
  identifier = [(PLPhotoLibraryPathManagerIdentifier *)self identifier];
  identifier2 = [identifierCopy identifier];
  v7 = [identifier isEqualToString:identifier2];

  if (v7)
  {
    [(PLPhotoLibraryPathManagerIdentifier *)self bundleFormat];
    [identifierCopy bundleFormat];
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PLPhotoLibraryPathManagerIdentifier *)self isEqualToPathManagerIdentifier:equalCopy];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = PLPhotoLibraryPathManagerIdentifier;
  v4 = [(PLPhotoLibraryPathManagerIdentifier *)&v9 description];
  v5 = PLStringFromPLPhotoLibraryPathManagerLibraryFormatShort([(PLPhotoLibraryPathManagerIdentifier *)self bundleFormat]);
  identifier = [(PLPhotoLibraryPathManagerIdentifier *)self identifier];
  v7 = [v3 stringWithFormat:@"%@ [%@] [%@]", v4, v5, identifier];

  return v7;
}

- (PLPhotoLibraryPathManagerIdentifier)initWithLibraryID:(id)d libraryFormat:(unsigned __int8)format
{
  dCopy = d;
  if (!dCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLPhotoLibraryPathManagerIdentifier.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"libraryID"}];
  }

  v13.receiver = self;
  v13.super_class = PLPhotoLibraryPathManagerIdentifier;
  v9 = [(PLPhotoLibraryPathManagerIdentifier *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, d);
    v10->_bundleFormat = format;
  }

  return v10;
}

- (PLPhotoLibraryPathManagerIdentifier)initWithPathManager:(id)manager
{
  managerCopy = manager;
  if (!managerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLPhotoLibraryPathManagerIdentifier.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"pathManager"}];
  }

  if ([managerCopy bundleScope])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLPhotoLibraryPathManagerIdentifier.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"pathManager.bundleScope == PLBundleScopeMain"}];
  }

  v6 = [managerCopy photoDirectoryWithType:1];
  if ([managerCopy isUBF])
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