@interface PXSharedLibraryEmptyDataSourceManager
- (id)createInitialDataSource;
- (void)fetchSharedLibraryForURL:(id)l completionHandler:(id)handler;
@end

@implementation PXSharedLibraryEmptyDataSourceManager

- (void)fetchSharedLibraryForURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  if (lCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryDataSource.m" lineNumber:237 description:{@"Invalid parameter not satisfying: %@", @"shareURL"}];

    if (handlerCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryDataSource.m" lineNumber:238 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  v8 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXSharedLibraryErrorDomain" code:-1002 debugDescription:@"Failed to fetch shared library for URL in the PXSharedLibraryEmptyDataSourceManager"];
  handlerCopy[2](handlerCopy, 0, v8);
}

- (id)createInitialDataSource
{
  v2 = objc_alloc_init(PXSharedLibraryEmptyDataSource);

  return v2;
}

@end