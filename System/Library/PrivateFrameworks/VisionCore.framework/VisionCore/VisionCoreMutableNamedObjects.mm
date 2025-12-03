@interface VisionCoreMutableNamedObjects
- (BOOL)assignObject:(id)object toName:(id)name error:(id *)error;
- (VisionCoreMutableNamedObjects)initWithCapacity:(unint64_t)capacity;
- (VisionCoreMutableNamedObjects)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (uint64_t)_assignObject:(void *)object ofKind:(void *)kind toName:(void *)name error:;
@end

@implementation VisionCoreMutableNamedObjects

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [VisionCoreNamedObjects alloc];
  objects = self->super._objects;

  return [(VisionCoreNamedObjects *)v4 initWithDictionary:objects];
}

- (BOOL)assignObject:(id)object toName:(id)name error:(id *)error
{
  nameCopy = name;
  objectCopy = object;
  Class = object_getClass(objectCopy);
  v11 = NSStringFromClass(Class);
  LOBYTE(error) = [(VisionCoreMutableNamedObjects *)self _assignObject:objectCopy ofKind:v11 toName:nameCopy error:error];

  return error;
}

- (uint64_t)_assignObject:(void *)object ofKind:(void *)kind toName:(void *)name error:
{
  v9 = a2;
  objectCopy = object;
  kindCopy = kind;
  if (self)
  {
    if (v9)
    {
      objectCopy = [*(self + 8) objectForKey:kindCopy];
      if (objectCopy)
      {
        if (name)
        {
          v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ has already been assigned %@", kindCopy, v9];
          *name = [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidArgumentWithLocalizedDescription:v13];
        }

        self = 0;
      }

      else
      {
        [*(self + 8) setObject:v9 forKey:kindCopy];
        self = 1;
      }
    }

    else
    {
      if (!name)
      {
        self = 0;
        goto LABEL_11;
      }

      objectCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ cannot be nil", objectCopy];
      [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidArgumentWithLocalizedDescription:objectCopy];
      *name = self = 0;
    }
  }

LABEL_11:

  return self;
}

- (VisionCoreMutableNamedObjects)initWithCapacity:(unint64_t)capacity
{
  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:capacity];
  v5 = [(VisionCoreNamedObjects *)self _initWithRetainedDictionary:v4];

  return v5;
}

- (VisionCoreMutableNamedObjects)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v5 = dictionaryCopy;
    v6 = [dictionaryCopy mutableCopy];
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v7 = [(VisionCoreNamedObjects *)self _initWithRetainedDictionary:v6];

  return v7;
}

@end