@interface PLAbstractLibraryServicesManagerService
- (PLAbstractLibraryServicesManagerService)initWithLibraryServicesManager:(id)manager;
- (id)newShortLivedLibraryWithName:(const char *)name;
@end

@implementation PLAbstractLibraryServicesManagerService

- (id)newShortLivedLibraryWithName:(const char *)name
{
  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  databaseContext = [libraryServicesManager databaseContext];
  v6 = [databaseContext newShortLivedLibraryWithName:name];

  return v6;
}

- (PLAbstractLibraryServicesManagerService)initWithLibraryServicesManager:(id)manager
{
  managerCopy = manager;
  if (!managerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLAbstractLibraryServicesManagerService.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"manager != nil"}];
  }

  v7 = [(PLAbstractLibraryServicesManagerService *)self init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_libraryServicesManager, manager);
  }

  return v8;
}

@end