@interface PLPrimaryResourceDataStoreKeyHelper
- (PLPrimaryResourceDataStoreKeyHelper)initWithPathManager:(id)manager;
- (void)dealloc;
@end

@implementation PLPrimaryResourceDataStoreKeyHelper

- (void)dealloc
{
  free(self->originalsBaseData);
  self->originalsBaseData = 0;
  free(self->rendersBaseData);
  self->rendersBaseData = 0;
  free(self->derivativesBaseData);
  self->derivativesBaseData = 0;
  free(self->masterThumbsBaseData);
  self->masterThumbsBaseData = 0;
  free(self->computeBaseData);
  self->computeBaseData = 0;
  free(self->masterThumbFilenameData);
  self->masterThumbFilenameData = 0;
  free(self->bundleBaseData);
  self->bundleBaseData = 0;
  v3.receiver = self;
  v3.super_class = PLPrimaryResourceDataStoreKeyHelper;
  [(PLPrimaryResourceDataStoreKeyHelper *)&v3 dealloc];
}

- (PLPrimaryResourceDataStoreKeyHelper)initWithPathManager:(id)manager
{
  managerCopy = manager;
  v19.receiver = self;
  v19.super_class = PLPrimaryResourceDataStoreKeyHelper;
  v6 = [(PLPrimaryResourceDataStoreKeyHelper *)&v19 init];
  if (v6)
  {
    if (!managerCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v6 file:@"PLPrimaryResourceDataStore.m" lineNumber:212 description:{@"Invalid parameter not satisfying: %@", @"pathManager"}];
    }

    v7 = [managerCopy photoDirectoryWithType:1];
    v8 = [managerCopy photoDirectoryWithType:9];
    v9 = [managerCopy photoDirectoryWithType:10];
    v10 = [managerCopy photoDirectoryWithType:12];
    v11 = [managerCopy photoDirectoryWithType:19];
    v12 = [managerCopy photoDirectoryWithType:4];
    __59__PLPrimaryResourceDataStoreKeyHelper_initWithPathManager___block_invoke(v7, &v6->bundleBaseData);
    __59__PLPrimaryResourceDataStoreKeyHelper_initWithPathManager___block_invoke(v12, &v6->originalsBaseData);
    __59__PLPrimaryResourceDataStoreKeyHelper_initWithPathManager___block_invoke(v8, &v6->rendersBaseData);
    __59__PLPrimaryResourceDataStoreKeyHelper_initWithPathManager___block_invoke(v9, &v6->derivativesBaseData);
    __59__PLPrimaryResourceDataStoreKeyHelper_initWithPathManager___block_invoke(v10, &v6->masterThumbsBaseData);
    __59__PLPrimaryResourceDataStoreKeyHelper_initWithPathManager___block_invoke(v11, &v6->computeBaseData);
    v13 = +[PLThumbnailManager masterThumbFilename];
    uTF8String = [v13 UTF8String];

    v15 = strlen(uTF8String);
    v16 = malloc_type_calloc(v15 + 1, 1uLL, 0xF75200EFuLL);
    v6->masterThumbFilenameData = v16;
    strcpy(v16, uTF8String);
  }

  return v6;
}

char *__59__PLPrimaryResourceDataStoreKeyHelper_initWithPathManager___block_invoke(void *a1, char **a2)
{
  v3 = [a1 UTF8String];
  v4 = strlen(v3);
  v5 = malloc_type_calloc(v4 + 1, 1uLL, 0x7BBB2104uLL);
  *a2 = v5;

  return strcpy(v5, v3);
}

@end