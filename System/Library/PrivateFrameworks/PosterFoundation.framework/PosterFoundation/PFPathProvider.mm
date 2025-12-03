@interface PFPathProvider
+ (PFPathProvider)scopedCurrentContainer;
+ (PFPathProvider)scopedSystemContainerForCurrentProcess;
+ (id)providerFromProvider:(id)provider;
- (id)initFromProvider:(id)provider;
- (id)providerByAppendingPathComponent:(id)component;
@end

@implementation PFPathProvider

+ (PFPathProvider)scopedCurrentContainer
{
  v2 = [PFPathProvider alloc];
  pathProviderForCurrentContainer = [MEMORY[0x1E698E728] pathProviderForCurrentContainer];
  v4 = [(PFPathProvider *)v2 initFromProvider:pathProviderForCurrentContainer];

  v5 = [v4 providerByAppendingPathComponent:@"com.apple.PaperBoardUI"];

  return v5;
}

+ (PFPathProvider)scopedSystemContainerForCurrentProcess
{
  tokenForCurrentProcess = [MEMORY[0x1E698E620] tokenForCurrentProcess];
  v3 = [tokenForCurrentProcess hasEntitlement:@"com.apple.security.system-container"];

  if (v3)
  {
    pathProviderForSystemContainerForCurrentProcess = [MEMORY[0x1E698E728] pathProviderForSystemContainerForCurrentProcess];
    v5 = pathProviderForSystemContainerForCurrentProcess;
    if (pathProviderForSystemContainerForCurrentProcess)
    {
      defaultPath = [pathProviderForSystemContainerForCurrentProcess defaultPath];

      if (defaultPath)
      {
        v7 = [[PFPathProvider alloc] initFromProvider:v5];
        defaultPath = [v7 providerByAppendingPathComponent:@"com.apple.PaperBoardUI"];
      }
    }

    else
    {
      defaultPath = 0;
    }
  }

  else
  {
    defaultPath = 0;
  }

  return defaultPath;
}

+ (id)providerFromProvider:(id)provider
{
  providerCopy = provider;
  v5 = objc_opt_class();
  v6 = providerCopy;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = [[self alloc] initFromProvider:v6];
  }

  v10 = v9;

  return v10;
}

- (id)initFromProvider:(id)provider
{
  providerCopy = provider;
  v13.receiver = self;
  v13.super_class = PFPathProvider;
  v5 = [(PFPathProvider *)&v13 init];
  if (v5)
  {
    defaultPath = [providerCopy defaultPath];
    defaultPath = v5->_defaultPath;
    v5->_defaultPath = defaultPath;

    libraryPath = [providerCopy libraryPath];
    libraryPath = v5->_libraryPath;
    v5->_libraryPath = libraryPath;

    cachesPath = [providerCopy cachesPath];
    cachesPath = v5->_cachesPath;
    v5->_cachesPath = cachesPath;
  }

  return v5;
}

- (id)providerByAppendingPathComponent:(id)component
{
  componentCopy = component;
  v5 = objc_alloc_init(PFPathProvider);
  v6 = [(NSURL *)self->_defaultPath URLByAppendingPathComponent:componentCopy isDirectory:1];
  [(PFPathProvider *)v5 setDefaultPath:v6];

  v7 = [(NSURL *)self->_libraryPath URLByAppendingPathComponent:componentCopy isDirectory:1];
  [(PFPathProvider *)v5 setLibraryPath:v7];

  v8 = [(NSURL *)self->_cachesPath URLByAppendingPathComponent:componentCopy isDirectory:1];

  [(PFPathProvider *)v5 setCachesPath:v8];

  return v5;
}

@end