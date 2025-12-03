@interface SBIconModelPropertyListFileStore
- (BOOL)_delete:(id)_delete options:(unint64_t)options error:(id *)error;
- (BOOL)_save:(id)_save url:(id)url error:(id *)error;
- (SBIconModelPropertyListFileStore)init;
- (SBIconModelPropertyListFileStore)initWithIconStateURL:(id)l desiredIconStateURL:(id)rL;
- (id)_load:(id)_load error:(id *)error;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
@end

@implementation SBIconModelPropertyListFileStore

- (SBIconModelPropertyListFileStore)initWithIconStateURL:(id)l desiredIconStateURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  v14.receiver = self;
  v14.super_class = SBIconModelPropertyListFileStore;
  v8 = [(SBIconModelPropertyListFileStore *)&v14 init];
  if (v8)
  {
    v9 = [lCopy copy];
    currentIconStateURL = v8->_currentIconStateURL;
    v8->_currentIconStateURL = v9;

    v11 = [rLCopy copy];
    desiredIconStateURL = v8->_desiredIconStateURL;
    v8->_desiredIconStateURL = v11;
  }

  return v8;
}

- (SBIconModelPropertyListFileStore)init
{
  v3 = objc_alloc_init(MEMORY[0x1E696AC08]);
  v4 = [v3 URLForDirectory:9 inDomain:1 appropriateForURL:0 create:1 error:0];
  v5 = [v4 URLByAppendingPathComponent:@"IconState.plist"];
  v6 = [v4 URLByAppendingPathComponent:@"DesiredIconState.plist"];
  v7 = [(SBIconModelPropertyListFileStore *)self initWithIconStateURL:v5 desiredIconStateURL:v6];

  return v7;
}

- (id)_load:(id)_load error:(id *)error
{
  errorCopy = error;
  v5 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:_load options:0 error:error];
  if (!v5)
  {
    if (!errorCopy)
    {
      goto LABEL_21;
    }

    v9 = *errorCopy;
    if (v9)
    {
      v10 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{v9, *MEMORY[0x1E696AA08], 0}];
    }

    else
    {
      v10 = 0;
    }

    domain = [v9 domain];
    if ([domain isEqualToString:*MEMORY[0x1E696A250]])
    {
      code = [v9 code];

      if (code == 260)
      {
        v13 = 2;
LABEL_20:
        *errorCopy = [MEMORY[0x1E696ABC0] errorWithDomain:@"SBIconModelStoreErrorDomain" code:v13 userInfo:v10];

        errorCopy = 0;
        goto LABEL_21;
      }
    }

    else
    {
    }

    v13 = 1;
    goto LABEL_20;
  }

  v15 = 0;
  v6 = [MEMORY[0x1E696AE40] propertyListWithData:v5 options:0 format:0 error:&v15];
  v7 = v15;
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    errorCopy = v6;
  }

  else if (errorCopy)
  {
    if (v7)
    {
      v8 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{v7, *MEMORY[0x1E696AA08], 0}];
    }

    else
    {
      v8 = 0;
    }

    *errorCopy = [MEMORY[0x1E696ABC0] errorWithDomain:@"SBIconModelStoreErrorDomain" code:1 userInfo:v8];

    errorCopy = 0;
  }

LABEL_21:

  return errorCopy;
}

- (BOOL)_delete:(id)_delete options:(unint64_t)options error:(id *)error
{
  optionsCopy = options;
  _deleteCopy = _delete;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if (optionsCopy)
  {
    v23 = 0;
    if ([_deleteCopy getResourceValue:&v23 forKey:*MEMORY[0x1E695DB50] error:0])
    {
      unsignedLongLongValue = [v23 unsignedLongLongValue];
      v10 = unsignedLongLongValue >= 0x10000 ? 0x10000 : unsignedLongLongValue;
      v11 = malloc_type_calloc(1uLL, v10, 0x100004077774924uLL);
      if (v11)
      {
        v12 = v11;
        v13 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v11 length:v10 freeWhenDone:0];
        if (v13)
        {
          v14 = [MEMORY[0x1E696AC00] fileHandleForUpdatingURL:_deleteCopy error:0];
          [v14 writeData:v13];
          [v14 closeFile];
        }

        free(v12);
      }
    }
  }

  v22 = 0;
  v15 = [defaultManager removeItemAtURL:_deleteCopy error:&v22];
  v16 = v22;
  v17 = v16;
  if (v15)
  {
    v18 = 1;
  }

  else
  {
    domain = [v16 domain];
    if ([domain isEqualToString:*MEMORY[0x1E696A250]])
    {
      v18 = [v17 code] == 4;
    }

    else
    {
      v18 = 0;
    }

    if (error && !v18)
    {
      v20 = v17;
      v18 = 0;
      *error = v17;
    }
  }

  return v18;
}

- (BOOL)_save:(id)_save url:(id)url error:(id *)error
{
  _saveCopy = _save;
  urlCopy = url;
  uRLByDeletingLastPathComponent = [urlCopy URLByDeletingLastPathComponent];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [urlCopy path];
  v12 = [defaultManager fileExistsAtPath:path];

  if ((v12 & 1) != 0 || [defaultManager createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:error])
  {
    v13 = [MEMORY[0x1E696AE40] dataWithPropertyList:_saveCopy format:200 options:0 error:error];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 writeToURL:urlCopy options:268435457 error:error];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBIconModelPropertyListFileStore *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = [MEMORY[0x1E698E680] builderWithObject:self];
  currentIconStateURL = [(SBIconModelPropertyListFileStore *)self currentIconStateURL];
  v6 = [v4 appendObject:currentIconStateURL withName:@"currentIconStateURL"];

  desiredIconStateURL = [(SBIconModelPropertyListFileStore *)self desiredIconStateURL];
  v8 = [v4 appendObject:desiredIconStateURL withName:@"desiredIconStateURL"];

  return v4;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBIconModelPropertyListFileStore *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

@end