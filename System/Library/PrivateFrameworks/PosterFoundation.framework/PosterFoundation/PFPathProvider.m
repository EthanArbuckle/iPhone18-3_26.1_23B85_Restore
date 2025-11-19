@interface PFPathProvider
+ (PFPathProvider)scopedCurrentContainer;
+ (PFPathProvider)scopedSystemContainerForCurrentProcess;
+ (id)providerFromProvider:(id)a3;
- (id)initFromProvider:(id)a3;
- (id)providerByAppendingPathComponent:(id)a3;
@end

@implementation PFPathProvider

+ (PFPathProvider)scopedCurrentContainer
{
  v2 = [PFPathProvider alloc];
  v3 = [MEMORY[0x1E698E728] pathProviderForCurrentContainer];
  v4 = [(PFPathProvider *)v2 initFromProvider:v3];

  v5 = [v4 providerByAppendingPathComponent:@"com.apple.PaperBoardUI"];

  return v5;
}

+ (PFPathProvider)scopedSystemContainerForCurrentProcess
{
  v2 = [MEMORY[0x1E698E620] tokenForCurrentProcess];
  v3 = [v2 hasEntitlement:@"com.apple.security.system-container"];

  if (v3)
  {
    v4 = [MEMORY[0x1E698E728] pathProviderForSystemContainerForCurrentProcess];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 defaultPath];

      if (v6)
      {
        v7 = [[PFPathProvider alloc] initFromProvider:v5];
        v6 = [v7 providerByAppendingPathComponent:@"com.apple.PaperBoardUI"];
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)providerFromProvider:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = v4;
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
    v9 = [[a1 alloc] initFromProvider:v6];
  }

  v10 = v9;

  return v10;
}

- (id)initFromProvider:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PFPathProvider;
  v5 = [(PFPathProvider *)&v13 init];
  if (v5)
  {
    v6 = [v4 defaultPath];
    defaultPath = v5->_defaultPath;
    v5->_defaultPath = v6;

    v8 = [v4 libraryPath];
    libraryPath = v5->_libraryPath;
    v5->_libraryPath = v8;

    v10 = [v4 cachesPath];
    cachesPath = v5->_cachesPath;
    v5->_cachesPath = v10;
  }

  return v5;
}

- (id)providerByAppendingPathComponent:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(PFPathProvider);
  v6 = [(NSURL *)self->_defaultPath URLByAppendingPathComponent:v4 isDirectory:1];
  [(PFPathProvider *)v5 setDefaultPath:v6];

  v7 = [(NSURL *)self->_libraryPath URLByAppendingPathComponent:v4 isDirectory:1];
  [(PFPathProvider *)v5 setLibraryPath:v7];

  v8 = [(NSURL *)self->_cachesPath URLByAppendingPathComponent:v4 isDirectory:1];

  [(PFPathProvider *)v5 setCachesPath:v8];

  return v5;
}

@end