@interface PLAbstractLibraryServicesManagerService
- (PLAbstractLibraryServicesManagerService)initWithLibraryServicesManager:(id)a3;
- (id)newShortLivedLibraryWithName:(const char *)a3;
@end

@implementation PLAbstractLibraryServicesManagerService

- (id)newShortLivedLibraryWithName:(const char *)a3
{
  v4 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v5 = [v4 databaseContext];
  v6 = [v5 newShortLivedLibraryWithName:a3];

  return v6;
}

- (PLAbstractLibraryServicesManagerService)initWithLibraryServicesManager:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PLAbstractLibraryServicesManagerService.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"manager != nil"}];
  }

  v7 = [(PLAbstractLibraryServicesManagerService *)self init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_libraryServicesManager, a3);
  }

  return v8;
}

@end