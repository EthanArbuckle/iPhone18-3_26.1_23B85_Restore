@interface UISUISecurityScopedResource
+ (BOOL)_isValidURLForIssuingSandboxExtension:(id)a3;
+ (id)_sandboxExtensionClassForAllowedAccess:(int64_t)a3;
+ (id)_scopedResourcesForAncestorsOfItemWithAbsolutePath:(id)a3 traversalStopPaths:(id)a4 allowedAccess:(int64_t)a5;
+ (id)sandboxingURLWrapperWithFileURL:(id)a3 allowedAccess:(int64_t)a4;
+ (id)scopedResourceWithAbsolutePath:(id)a3 allowedAccess:(int64_t)a4;
+ (id)scopedResourceWithFileURL:(id)a3 allowedAccess:(int64_t)a4;
+ (id)scopedResourceWithURL:(id)a3 allowedAccess:(int64_t)a4;
+ (id)uniquedSecurityScopedResources:(id)a3;
- (BOOL)_isEqualAccessToSecurityScopedResource:(id)a3;
- (BOOL)startAccessing;
- (UISUISecurityScopedResource)initWithAbsoluteURL:(id)a3 sandboxExtensionWrapper:(id)a4 allowedAccess:(int64_t)a5;
- (UISUISecurityScopedResource)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)stopAccessing;
@end

@implementation UISUISecurityScopedResource

+ (id)scopedResourceWithAbsolutePath:(id)a3 allowedAccess:(int64_t)a4
{
  v6 = a3;
  if ([v6 isAbsolutePath])
  {
    v7 = MEMORY[0x1E695DFF8];
    v8 = canonicalPathForPath(v6);
    v9 = [v7 fileURLWithPath:v8];

    v10 = [a1 scopedResourceWithFileURL:v9 allowedAccess:a4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)scopedResourceWithFileURL:(id)a3 allowedAccess:(int64_t)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (![v6 isFileURL])
  {
    goto LABEL_5;
  }

  if (!a4)
  {
    goto LABEL_9;
  }

  if (![a1 _isValidURLForIssuingSandboxExtension:v6])
  {
    v10 = share_sheet_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = v6;
      _os_log_impl(&dword_18B359000, v10, OS_LOG_TYPE_DEFAULT, "Ignoring URL %{public}@ for sandbox purposes since the corresponding file doesn't exist", &v12, 0xCu);
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  v7 = [a1 _sandboxExtensionClassForAllowedAccess:a4];
  v8 = -[objc_class wrapperWithURL:extensionClass:error:](getFPSandboxingURLWrapperClass(), "wrapperWithURL:extensionClass:error:", v6, [v7 UTF8String], 0);

  if (!v8)
  {
LABEL_5:
    v9 = 0;
    goto LABEL_11;
  }

LABEL_10:
  v9 = [objc_alloc(objc_opt_class()) initWithAbsoluteURL:v6 sandboxExtensionWrapper:v8 allowedAccess:a4];

LABEL_11:

  return v9;
}

+ (id)sandboxingURLWrapperWithFileURL:(id)a3 allowedAccess:(int64_t)a4
{
  v4 = [UISUISecurityScopedResource scopedResourceWithFileURL:a3 allowedAccess:a4];
  v5 = [v4 sandboxExtensionWrapper];

  return v5;
}

+ (id)scopedResourceWithURL:(id)a3 allowedAccess:(int64_t)a4
{
  v6 = a3;
  if ([v6 isFileURL])
  {
    v7 = [a1 scopedResourceWithFileURL:v6 allowedAccess:a4];
  }

  else
  {
    v7 = [objc_alloc(objc_opt_class()) initWithAbsoluteURL:v6 sandboxExtensionWrapper:0 allowedAccess:a4];
  }

  v8 = v7;

  return v8;
}

- (UISUISecurityScopedResource)initWithAbsoluteURL:(id)a3 sandboxExtensionWrapper:(id)a4 allowedAccess:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = UISUISecurityScopedResource;
  v10 = [(UISUISecurityScopedResource *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    url = v10->_url;
    v10->_url = v11;

    objc_storeStrong(&v10->_sandboxExtensionWrapper, a4);
    v10->_allowedAccess = a5;
    if (v10->_sandboxExtensionWrapper)
    {
      v13 = [v9 url];
      v14 = v10->_url;
      v10->_url = v13;
    }
  }

  return v10;
}

- (UISUISecurityScopedResource)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
  if (FileProviderLibrary_sOnce != -1)
  {
    [UISUISecurityScopedResource initWithCoder:];
  }

  getFPSandboxingURLWrapperClass();
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"securityScopedData"];
  v7 = [v4 decodeIntegerForKey:@"allowedAccess"];
  [v5 ui_setIsContentManaged:{objc_msgSend(v4, "decodeBoolForKey:", @"isContentManaged"}];
  v8 = [(UISUISecurityScopedResource *)self initWithAbsoluteURL:v5 sandboxExtensionWrapper:v6 allowedAccess:v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(UISUISecurityScopedResource *)self url];
  [v5 encodeObject:v4 forKey:@"url"];

  [v5 encodeObject:self->_sandboxExtensionWrapper forKey:@"securityScopedData"];
  [v5 encodeInteger:-[UISUISecurityScopedResource allowedAccess](self forKey:{"allowedAccess"), @"allowedAccess"}];
  [v5 encodeBool:-[UISUISecurityScopedResource isContentManaged](self forKey:{"isContentManaged"), @"isContentManaged"}];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(UISUISecurityScopedResource *)self url];
  v6 = [v5 path];
  v7 = [objc_opt_class() _sandboxExtensionClassForAllowedAccess:{-[UISUISecurityScopedResource allowedAccess](self, "allowedAccess")}];
  v8 = [(UISUISecurityScopedResource *)self hasActiveAccessAssertion];
  v9 = @"NO";
  if (v8)
  {
    v9 = @"YES";
  }

  v10 = [v3 stringWithFormat:@"<%@: %p> path = %@, allowedAccess = %@, accessActive = %@", v4, self, v6, v7, v9];

  return v10;
}

- (BOOL)startAccessing
{
  if (![(UISUISecurityScopedResource *)self hasActiveAccessAssertion])
  {
    v3 = [(UISUISecurityScopedResource *)self url];
    -[UISUISecurityScopedResource setHasActiveAccessAssertion:](self, "setHasActiveAccessAssertion:", [v3 startAccessingSecurityScopedResource]);
  }

  return [(UISUISecurityScopedResource *)self hasActiveAccessAssertion];
}

- (void)stopAccessing
{
  if ([(UISUISecurityScopedResource *)self hasActiveAccessAssertion])
  {
    [(UISUISecurityScopedResource *)self setHasActiveAccessAssertion:0];
    v3 = [(UISUISecurityScopedResource *)self url];
    [v3 stopAccessingSecurityScopedResource];
  }
}

- (BOOL)_isEqualAccessToSecurityScopedResource:(id)a3
{
  v4 = a3;
  url = self->_url;
  v6 = [v4 url];
  if ([(NSURL *)url isEqual:v6])
  {
    v7 = [objc_opt_class() _sandboxExtensionClassForAllowedAccess:self->_allowedAccess];
    v8 = [objc_opt_class() _sandboxExtensionClassForAllowedAccess:{objc_msgSend(v4, "allowedAccess")}];
    v9 = [v7 isEqualToString:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)_isValidURLForIssuingSandboxExtension:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [v3 path];
  v6 = [v4 fileExistsAtPath:v5];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = _CFURLPromiseCopyPhysicalURL();
    if (v8)
    {
      v9 = [MEMORY[0x1E696AC08] defaultManager];
      v10 = [v8 path];
      v7 = [v9 fileExistsAtPath:v10];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

+ (id)_sandboxExtensionClassForAllowedAccess:(int64_t)a3
{
  if (a3 == 2)
  {
    v3 = [a1 readwriteSandboxExtensionClassString];
  }

  else if (a3 == 1)
  {
    v3 = [a1 readonlySandboxExtensionClassString];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)uniquedSecurityScopedResources:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __62__UISUISecurityScopedResource_uniquedSecurityScopedResources___block_invoke;
  v20[3] = &unk_1E71FA5F0;
  v6 = v5;
  v21 = v6;
  v7 = v4;
  v22 = v7;
  v8 = MEMORY[0x18CFF58E0](v20);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v3;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v8[2](v8, *(*(&v16 + 1) + 8 * v13++));
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v23 count:16];
    }

    while (v11);
  }

  v14 = v7;
  return v7;
}

void __62__UISUISecurityScopedResource_uniquedSecurityScopedResources___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 url];
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [MEMORY[0x1E695DF70] array];
  }

  v9 = v8;

  v10 = *(a1 + 32);
  v11 = [v3 url];
  [v10 setObject:v9 forKeyedSubscript:v11];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__UISUISecurityScopedResource_uniquedSecurityScopedResources___block_invoke_2;
  v13[3] = &unk_1E71FA5C8;
  v12 = v3;
  v14 = v12;
  if ([v9 indexOfObjectPassingTest:v13] == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v9 addObject:v12];
    [*(a1 + 40) addObject:v12];
  }
}

+ (id)_scopedResourcesForAncestorsOfItemWithAbsolutePath:(id)a3 traversalStopPaths:(id)a4 allowedAccess:(int64_t)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if ([v7 isAbsolutePath])
  {
    v9 = canonicalPathForPath(v7);
    v10 = [v9 stringByDeletingLastPathComponent];

    v23 = v8;
    v11 = v8;
    v12 = [MEMORY[0x1E695DFA8] set];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v25;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = canonicalPathForPath(*(*(&v24 + 1) + 8 * i));
          [v12 addObject:v18];
        }

        v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v15);
    }

    [v12 addObject:@"/"];
    [v12 addObject:&stru_1EFE999E0];

    v19 = [MEMORY[0x1E695DF70] array];
    if ([v10 length])
    {
      v8 = v23;
      while (([v12 containsObject:v10] & 1) == 0)
      {
        v20 = [objc_opt_class() scopedResourceWithAbsolutePath:v10 allowedAccess:a5];
        if (v20)
        {
          [v19 insertObject:v20 atIndex:0];
        }

        v21 = [v10 stringByDeletingLastPathComponent];

        v10 = v21;
        if (![v21 length])
        {
          goto LABEL_19;
        }
      }

      v21 = v10;
    }

    else
    {
      v21 = v10;
      v8 = v23;
    }

LABEL_19:
  }

  else
  {
    v19 = MEMORY[0x1E695E0F0];
  }

  return v19;
}

@end