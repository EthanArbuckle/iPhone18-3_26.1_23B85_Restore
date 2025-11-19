@interface PXSharedLibraryEmptyDataSourceManager
- (id)createInitialDataSource;
- (void)fetchSharedLibraryForURL:(id)a3 completionHandler:(id)a4;
@end

@implementation PXSharedLibraryEmptyDataSourceManager

- (void)fetchSharedLibraryForURL:(id)a3 completionHandler:(id)a4
{
  v11 = a3;
  v7 = a4;
  if (v11)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryDataSource.m" lineNumber:237 description:{@"Invalid parameter not satisfying: %@", @"shareURL"}];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  [v10 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryDataSource.m" lineNumber:238 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  v8 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXSharedLibraryErrorDomain" code:-1002 debugDescription:@"Failed to fetch shared library for URL in the PXSharedLibraryEmptyDataSourceManager"];
  v7[2](v7, 0, v8);
}

- (id)createInitialDataSource
{
  v2 = objc_alloc_init(PXSharedLibraryEmptyDataSource);

  return v2;
}

@end