@interface SBIconModelPropertyListFileStore
- (BOOL)_delete:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (BOOL)_save:(id)a3 url:(id)a4 error:(id *)a5;
- (SBIconModelPropertyListFileStore)init;
- (SBIconModelPropertyListFileStore)initWithIconStateURL:(id)a3 desiredIconStateURL:(id)a4;
- (id)_load:(id)a3 error:(id *)a4;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
@end

@implementation SBIconModelPropertyListFileStore

- (SBIconModelPropertyListFileStore)initWithIconStateURL:(id)a3 desiredIconStateURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = SBIconModelPropertyListFileStore;
  v8 = [(SBIconModelPropertyListFileStore *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    currentIconStateURL = v8->_currentIconStateURL;
    v8->_currentIconStateURL = v9;

    v11 = [v7 copy];
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

- (id)_load:(id)a3 error:(id *)a4
{
  v4 = a4;
  v5 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:a3 options:0 error:a4];
  if (!v5)
  {
    if (!v4)
    {
      goto LABEL_21;
    }

    v9 = *v4;
    if (v9)
    {
      v10 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{v9, *MEMORY[0x1E696AA08], 0}];
    }

    else
    {
      v10 = 0;
    }

    v11 = [v9 domain];
    if ([v11 isEqualToString:*MEMORY[0x1E696A250]])
    {
      v12 = [v9 code];

      if (v12 == 260)
      {
        v13 = 2;
LABEL_20:
        *v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SBIconModelStoreErrorDomain" code:v13 userInfo:v10];

        v4 = 0;
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
    v4 = v6;
  }

  else if (v4)
  {
    if (v7)
    {
      v8 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{v7, *MEMORY[0x1E696AA08], 0}];
    }

    else
    {
      v8 = 0;
    }

    *v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SBIconModelStoreErrorDomain" code:1 userInfo:v8];

    v4 = 0;
  }

LABEL_21:

  return v4;
}

- (BOOL)_delete:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v6 = a4;
  v7 = a3;
  v8 = [MEMORY[0x1E696AC08] defaultManager];
  if (v6)
  {
    v23 = 0;
    if ([v7 getResourceValue:&v23 forKey:*MEMORY[0x1E695DB50] error:0])
    {
      v9 = [v23 unsignedLongLongValue];
      v10 = v9 >= 0x10000 ? 0x10000 : v9;
      v11 = malloc_type_calloc(1uLL, v10, 0x100004077774924uLL);
      if (v11)
      {
        v12 = v11;
        v13 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v11 length:v10 freeWhenDone:0];
        if (v13)
        {
          v14 = [MEMORY[0x1E696AC00] fileHandleForUpdatingURL:v7 error:0];
          [v14 writeData:v13];
          [v14 closeFile];
        }

        free(v12);
      }
    }
  }

  v22 = 0;
  v15 = [v8 removeItemAtURL:v7 error:&v22];
  v16 = v22;
  v17 = v16;
  if (v15)
  {
    v18 = 1;
  }

  else
  {
    v19 = [v16 domain];
    if ([v19 isEqualToString:*MEMORY[0x1E696A250]])
    {
      v18 = [v17 code] == 4;
    }

    else
    {
      v18 = 0;
    }

    if (a5 && !v18)
    {
      v20 = v17;
      v18 = 0;
      *a5 = v17;
    }
  }

  return v18;
}

- (BOOL)_save:(id)a3 url:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 URLByDeletingLastPathComponent];
  v10 = [MEMORY[0x1E696AC08] defaultManager];
  v11 = [v8 path];
  v12 = [v10 fileExistsAtPath:v11];

  if ((v12 & 1) != 0 || [v10 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:a5])
  {
    v13 = [MEMORY[0x1E696AE40] dataWithPropertyList:v7 format:200 options:0 error:a5];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 writeToURL:v8 options:268435457 error:a5];
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

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBIconModelPropertyListFileStore *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [MEMORY[0x1E698E680] builderWithObject:self];
  v5 = [(SBIconModelPropertyListFileStore *)self currentIconStateURL];
  v6 = [v4 appendObject:v5 withName:@"currentIconStateURL"];

  v7 = [(SBIconModelPropertyListFileStore *)self desiredIconStateURL];
  v8 = [v4 appendObject:v7 withName:@"desiredIconStateURL"];

  return v4;
}

- (id)succinctDescription
{
  v2 = [(SBIconModelPropertyListFileStore *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

@end