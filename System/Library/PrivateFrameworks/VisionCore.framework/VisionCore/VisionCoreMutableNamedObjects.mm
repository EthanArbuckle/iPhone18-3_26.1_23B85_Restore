@interface VisionCoreMutableNamedObjects
- (BOOL)assignObject:(id)a3 toName:(id)a4 error:(id *)a5;
- (VisionCoreMutableNamedObjects)initWithCapacity:(unint64_t)a3;
- (VisionCoreMutableNamedObjects)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (uint64_t)_assignObject:(void *)a3 ofKind:(void *)a4 toName:(void *)a5 error:;
@end

@implementation VisionCoreMutableNamedObjects

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [VisionCoreNamedObjects alloc];
  objects = self->super._objects;

  return [(VisionCoreNamedObjects *)v4 initWithDictionary:objects];
}

- (BOOL)assignObject:(id)a3 toName:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  Class = object_getClass(v9);
  v11 = NSStringFromClass(Class);
  LOBYTE(a5) = [(VisionCoreMutableNamedObjects *)self _assignObject:v9 ofKind:v11 toName:v8 error:a5];

  return a5;
}

- (uint64_t)_assignObject:(void *)a3 ofKind:(void *)a4 toName:(void *)a5 error:
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  if (a1)
  {
    if (v9)
    {
      v12 = [*(a1 + 8) objectForKey:v11];
      if (v12)
      {
        if (a5)
        {
          v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ has already been assigned %@", v11, v9];
          *a5 = [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidArgumentWithLocalizedDescription:v13];
        }

        a1 = 0;
      }

      else
      {
        [*(a1 + 8) setObject:v9 forKey:v11];
        a1 = 1;
      }
    }

    else
    {
      if (!a5)
      {
        a1 = 0;
        goto LABEL_11;
      }

      v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ cannot be nil", v10];
      [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidArgumentWithLocalizedDescription:v12];
      *a5 = a1 = 0;
    }
  }

LABEL_11:

  return a1;
}

- (VisionCoreMutableNamedObjects)initWithCapacity:(unint64_t)a3
{
  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:a3];
  v5 = [(VisionCoreNamedObjects *)self _initWithRetainedDictionary:v4];

  return v5;
}

- (VisionCoreMutableNamedObjects)initWithDictionary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v6 = [v4 mutableCopy];
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v7 = [(VisionCoreNamedObjects *)self _initWithRetainedDictionary:v6];

  return v7;
}

@end