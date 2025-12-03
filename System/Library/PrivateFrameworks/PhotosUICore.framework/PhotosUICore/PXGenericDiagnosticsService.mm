@interface PXGenericDiagnosticsService
- (BOOL)canProvideConsoleDescription;
- (BOOL)canProvideContextualViewController;
- (id)consoleDescription;
@end

@implementation PXGenericDiagnosticsService

- (BOOL)canProvideContextualViewController
{
  v2 = +[PXDiagnosticsSettings sharedInstance];
  enableGenericService = [v2 enableGenericService];

  return enableGenericService;
}

- (id)consoleDescription
{
  v28 = *MEMORY[0x1E69E9840];
  string = [MEMORY[0x1E696AD60] string];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [(PXDiagnosticsService *)self itemProviders];
  v16 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v16)
  {
    v15 = *v23;
    do
    {
      v4 = 0;
      do
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = v4;
        v5 = *(*(&v22 + 1) + 8 * v4);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        registeredIdentifiers = [v5 registeredIdentifiers];
        v7 = [registeredIdentifiers countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v19;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v19 != v9)
              {
                objc_enumerationMutation(registeredIdentifiers);
              }

              v11 = *(*(&v18 + 1) + 8 * i);
              v12 = [v5 itemForIdentifier:v11];
              if ([string length])
              {
                [string appendString:@"\n"];
              }

              [string appendFormat:@"%@: %@\n", v11, v12];
            }

            v8 = [registeredIdentifiers countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v8);
        }

        v4 = v17 + 1;
      }

      while (v17 + 1 != v16);
      v16 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v16);
  }

  return string;
}

- (BOOL)canProvideConsoleDescription
{
  v2 = +[PXDiagnosticsSettings sharedInstance];
  enableGenericService = [v2 enableGenericService];

  return enableGenericService;
}

@end