@interface UISUISecurityScopedResource
+ (BOOL)_isValidURLForIssuingSandboxExtension:(id)extension;
+ (id)_sandboxExtensionClassForAllowedAccess:(int64_t)access;
+ (id)_scopedResourcesForAncestorsOfItemWithAbsolutePath:(id)path traversalStopPaths:(id)paths allowedAccess:(int64_t)access;
+ (id)sandboxingURLWrapperWithFileURL:(id)l allowedAccess:(int64_t)access;
+ (id)scopedResourceWithAbsolutePath:(id)path allowedAccess:(int64_t)access;
+ (id)scopedResourceWithFileURL:(id)l allowedAccess:(int64_t)access;
+ (id)scopedResourceWithURL:(id)l allowedAccess:(int64_t)access;
+ (id)uniquedSecurityScopedResources:(id)resources;
- (BOOL)_isEqualAccessToSecurityScopedResource:(id)resource;
- (BOOL)startAccessing;
- (UISUISecurityScopedResource)initWithAbsoluteURL:(id)l sandboxExtensionWrapper:(id)wrapper allowedAccess:(int64_t)access;
- (UISUISecurityScopedResource)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)stopAccessing;
@end

@implementation UISUISecurityScopedResource

+ (id)scopedResourceWithAbsolutePath:(id)path allowedAccess:(int64_t)access
{
  pathCopy = path;
  if ([pathCopy isAbsolutePath])
  {
    v7 = MEMORY[0x1E695DFF8];
    v8 = canonicalPathForPath(pathCopy);
    v9 = [v7 fileURLWithPath:v8];

    v10 = [self scopedResourceWithFileURL:v9 allowedAccess:access];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)scopedResourceWithFileURL:(id)l allowedAccess:(int64_t)access
{
  v14 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (![lCopy isFileURL])
  {
    goto LABEL_5;
  }

  if (!access)
  {
    goto LABEL_9;
  }

  if (![self _isValidURLForIssuingSandboxExtension:lCopy])
  {
    v10 = share_sheet_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = lCopy;
      _os_log_impl(&dword_18B359000, v10, OS_LOG_TYPE_DEFAULT, "Ignoring URL %{public}@ for sandbox purposes since the corresponding file doesn't exist", &v12, 0xCu);
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  v7 = [self _sandboxExtensionClassForAllowedAccess:access];
  v8 = -[objc_class wrapperWithURL:extensionClass:error:](getFPSandboxingURLWrapperClass(), "wrapperWithURL:extensionClass:error:", lCopy, [v7 UTF8String], 0);

  if (!v8)
  {
LABEL_5:
    v9 = 0;
    goto LABEL_11;
  }

LABEL_10:
  v9 = [objc_alloc(objc_opt_class()) initWithAbsoluteURL:lCopy sandboxExtensionWrapper:v8 allowedAccess:access];

LABEL_11:

  return v9;
}

+ (id)sandboxingURLWrapperWithFileURL:(id)l allowedAccess:(int64_t)access
{
  v4 = [UISUISecurityScopedResource scopedResourceWithFileURL:l allowedAccess:access];
  sandboxExtensionWrapper = [v4 sandboxExtensionWrapper];

  return sandboxExtensionWrapper;
}

+ (id)scopedResourceWithURL:(id)l allowedAccess:(int64_t)access
{
  lCopy = l;
  if ([lCopy isFileURL])
  {
    v7 = [self scopedResourceWithFileURL:lCopy allowedAccess:access];
  }

  else
  {
    v7 = [objc_alloc(objc_opt_class()) initWithAbsoluteURL:lCopy sandboxExtensionWrapper:0 allowedAccess:access];
  }

  v8 = v7;

  return v8;
}

- (UISUISecurityScopedResource)initWithAbsoluteURL:(id)l sandboxExtensionWrapper:(id)wrapper allowedAccess:(int64_t)access
{
  lCopy = l;
  wrapperCopy = wrapper;
  v16.receiver = self;
  v16.super_class = UISUISecurityScopedResource;
  v10 = [(UISUISecurityScopedResource *)&v16 init];
  if (v10)
  {
    v11 = [lCopy copy];
    url = v10->_url;
    v10->_url = v11;

    objc_storeStrong(&v10->_sandboxExtensionWrapper, wrapper);
    v10->_allowedAccess = access;
    if (v10->_sandboxExtensionWrapper)
    {
      v13 = [wrapperCopy url];
      v14 = v10->_url;
      v10->_url = v13;
    }
  }

  return v10;
}

- (UISUISecurityScopedResource)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
  if (FileProviderLibrary_sOnce != -1)
  {
    [UISUISecurityScopedResource initWithCoder:];
  }

  getFPSandboxingURLWrapperClass();
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"securityScopedData"];
  v7 = [coderCopy decodeIntegerForKey:@"allowedAccess"];
  [v5 ui_setIsContentManaged:{objc_msgSend(coderCopy, "decodeBoolForKey:", @"isContentManaged"}];
  v8 = [(UISUISecurityScopedResource *)self initWithAbsoluteURL:v5 sandboxExtensionWrapper:v6 allowedAccess:v7];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [(UISUISecurityScopedResource *)self url];
  [coderCopy encodeObject:v4 forKey:@"url"];

  [coderCopy encodeObject:self->_sandboxExtensionWrapper forKey:@"securityScopedData"];
  [coderCopy encodeInteger:-[UISUISecurityScopedResource allowedAccess](self forKey:{"allowedAccess"), @"allowedAccess"}];
  [coderCopy encodeBool:-[UISUISecurityScopedResource isContentManaged](self forKey:{"isContentManaged"), @"isContentManaged"}];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(UISUISecurityScopedResource *)self url];
  path = [v5 path];
  v7 = [objc_opt_class() _sandboxExtensionClassForAllowedAccess:{-[UISUISecurityScopedResource allowedAccess](self, "allowedAccess")}];
  hasActiveAccessAssertion = [(UISUISecurityScopedResource *)self hasActiveAccessAssertion];
  v9 = @"NO";
  if (hasActiveAccessAssertion)
  {
    v9 = @"YES";
  }

  v10 = [v3 stringWithFormat:@"<%@: %p> path = %@, allowedAccess = %@, accessActive = %@", v4, self, path, v7, v9];

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

- (BOOL)_isEqualAccessToSecurityScopedResource:(id)resource
{
  resourceCopy = resource;
  url = self->_url;
  v6 = [resourceCopy url];
  if ([(NSURL *)url isEqual:v6])
  {
    v7 = [objc_opt_class() _sandboxExtensionClassForAllowedAccess:self->_allowedAccess];
    v8 = [objc_opt_class() _sandboxExtensionClassForAllowedAccess:{objc_msgSend(resourceCopy, "allowedAccess")}];
    v9 = [v7 isEqualToString:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)_isValidURLForIssuingSandboxExtension:(id)extension
{
  extensionCopy = extension;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [extensionCopy path];
  v6 = [defaultManager fileExistsAtPath:path];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = _CFURLPromiseCopyPhysicalURL();
    if (v8)
    {
      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      path2 = [v8 path];
      v7 = [defaultManager2 fileExistsAtPath:path2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

+ (id)_sandboxExtensionClassForAllowedAccess:(int64_t)access
{
  if (access == 2)
  {
    readwriteSandboxExtensionClassString = [self readwriteSandboxExtensionClassString];
  }

  else if (access == 1)
  {
    readwriteSandboxExtensionClassString = [self readonlySandboxExtensionClassString];
  }

  else
  {
    readwriteSandboxExtensionClassString = 0;
  }

  return readwriteSandboxExtensionClassString;
}

+ (id)uniquedSecurityScopedResources:(id)resources
{
  v24 = *MEMORY[0x1E69E9840];
  resourcesCopy = resources;
  array = [MEMORY[0x1E695DF70] array];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __62__UISUISecurityScopedResource_uniquedSecurityScopedResources___block_invoke;
  v20[3] = &unk_1E71FA5F0;
  v6 = dictionary;
  v21 = v6;
  v7 = array;
  v22 = v7;
  v8 = MEMORY[0x18CFF58E0](v20);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = resourcesCopy;
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

+ (id)_scopedResourcesForAncestorsOfItemWithAbsolutePath:(id)path traversalStopPaths:(id)paths allowedAccess:(int64_t)access
{
  v29 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  pathsCopy = paths;
  if ([pathCopy isAbsolutePath])
  {
    v9 = canonicalPathForPath(pathCopy);
    stringByDeletingLastPathComponent = [v9 stringByDeletingLastPathComponent];

    v23 = pathsCopy;
    v11 = pathsCopy;
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

    array = [MEMORY[0x1E695DF70] array];
    if ([stringByDeletingLastPathComponent length])
    {
      pathsCopy = v23;
      while (([v12 containsObject:stringByDeletingLastPathComponent] & 1) == 0)
      {
        v20 = [objc_opt_class() scopedResourceWithAbsolutePath:stringByDeletingLastPathComponent allowedAccess:access];
        if (v20)
        {
          [array insertObject:v20 atIndex:0];
        }

        v10StringByDeletingLastPathComponent = [stringByDeletingLastPathComponent stringByDeletingLastPathComponent];

        stringByDeletingLastPathComponent = v10StringByDeletingLastPathComponent;
        if (![v10StringByDeletingLastPathComponent length])
        {
          goto LABEL_19;
        }
      }

      v10StringByDeletingLastPathComponent = stringByDeletingLastPathComponent;
    }

    else
    {
      v10StringByDeletingLastPathComponent = stringByDeletingLastPathComponent;
      pathsCopy = v23;
    }

LABEL_19:
  }

  else
  {
    array = MEMORY[0x1E695E0F0];
  }

  return array;
}

@end