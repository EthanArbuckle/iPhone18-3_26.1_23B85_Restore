@interface CAMLLoader
- (CAMLLoader)init;
- (Class)CAMLParser:(id)a3 didFailToFindClassWithName:(id)a4;
- (id)CAMLParser:(id)a3 resourceForURL:(id)a4;
- (id)loadCAMLFile:(id)a3;
@end

@implementation CAMLLoader

- (CAMLLoader)init
{
  v6.receiver = self;
  v6.super_class = CAMLLoader;
  v2 = [(CAMLLoader *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    resourceCache = v2->_resourceCache;
    v2->_resourceCache = v3;

    [(NSCache *)v2->_resourceCache setEvictsObjectsWhenApplicationEntersBackground:0];
  }

  return v2;
}

- (id)loadCAMLFile:(id)a3
{
  v4 = MEMORY[0x1E695DEF0];
  v5 = a3;
  v6 = [[v4 alloc] initWithContentsOfURL:v5 options:1 error:0];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] activateBackground:{objc_msgSend(MEMORY[0x1E696AF00], "isMainThread") ^ 1}];
  v7 = objc_alloc_init(MEMORY[0x1E69793B0]);
  [v7 setDelegate:self];
  v8 = [v5 URLByDeletingLastPathComponent];

  v9 = [v8 URLByDeletingLastPathComponent];
  [v7 setBaseURL:v9];

  [v7 parseData:v6];
  v10 = [v7 result];
  [MEMORY[0x1E6979518] commit];

  return v10;
}

- (id)CAMLParser:(id)a3 resourceForURL:(id)a4
{
  v22[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(NSCache *)self->_resourceCache objectForKey:v5];
  if (!v6)
  {
    v7 = [v5 path];
    v8 = [v7 hasSuffix:@".heic"];

    if (v8)
    {
      v9 = [v5 lastPathComponent];
      v10 = [v9 stringByDeletingPathExtension];

      v11 = WUBundle();
      v12 = [v5 pathExtension];
      v13 = [v11 URLForResource:v10 withExtension:v12 subdirectory:@"Mica"];

      v14 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v13];
      v15 = CGImageSourceCreateWithData(v14, 0);
      v21 = *MEMORY[0x1E696E0B8];
      v22[0] = MEMORY[0x1E695E118];
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v15, 0, [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1]);
      CFRelease(v15);
      v6 = ImageAtIndex;
      if (v6)
      {
        [(NSCache *)self->_resourceCache setObject:v6 forKey:v5];
      }

      else
      {
        v17 = MEMORY[0x1E696AEC0];
        v18 = [v5 path];
        v19 = [v17 stringWithFormat:@"Asset is missing: %@", v18];
      }

      CGImageRelease(v6);
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (Class)CAMLParser:(id)a3 didFailToFindClassWithName:(id)a4
{
  v4 = a4;
  v5 = ClassSubstitutions___classSubstitutions;
  if (!ClassSubstitutions___classSubstitutions)
  {
    v20 = objc_alloc(MEMORY[0x1E695DF20]);
    v19 = objc_opt_class();
    v18 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v20 initWithObjectsAndKeys:{v19, @"LKState", v18, @"LKEventHandler", v6, @"LKStateAddAnimation", v7, @"LKStateAddElement", v8, @"LKStateElement", v9, @"LKStateRemoveAnimation", v10, @"LKStateRemoveElement", v11, @"LKStateSetValue", v12, @"LKStateSetProperty", v13, @"LKStateTransition", objc_opt_class(), @"LKStateTransitionElement", 0}];
    v15 = ClassSubstitutions___classSubstitutions;
    ClassSubstitutions___classSubstitutions = v14;

    v5 = ClassSubstitutions___classSubstitutions;
  }

  v16 = [v5 objectForKey:v4];

  return v16;
}

@end