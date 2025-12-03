@interface VisionCoreNamedObjects
- (BOOL)accessReadOnlyDataForName:(id)name usingBlock:(id)block error:(id *)error;
- (BOOL)accessReadOnlyDataForNames:(id)names usingBlock:(id)block error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (IOSurfaceRef)_surfaceForName:(int)name allowingAssociatedObject:(void *)object error:;
- (VisionCoreNamedObjects)initWithDictionary:(id)dictionary;
- (VisionCoreNamedObjects)initWithNamedObjects:(id)objects;
- (__CVBuffer)pixelBufferForName:(id)name error:(id *)error;
- (id)_initWithRetainedDictionary:(id)dictionary;
- (id)dataForName:(id)name error:(id *)error;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)_objectForName:(objc_class *)name requiredClass:(void *)class error:;
@end

@implementation VisionCoreNamedObjects

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NSDictionary *)self->_objects isEqualToDictionary:equalCopy->_objects];
  }

  return v5;
}

- (id)description
{
  v25 = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = VisionCoreNamedObjects;
  v3 = [(VisionCoreNamedObjects *)&v23 description];
  v4 = [v3 mutableCopy];

  allKeys = [(NSDictionary *)self->_objects allKeys];
  v6 = [allKeys sortedArrayUsingSelector:sel_localizedStandardCompare_];

  v7 = [v6 valueForKeyPath:@"@max.length"];
  unsignedIntegerValue = [v7 unsignedIntegerValue];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v6;
  v9 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = objc_autoreleasePoolPush();
        v15 = [v13 VisionCore_stringAppendedWithPaddingCharacter:32 toMinimumLength:unsignedIntegerValue + 1];
        v16 = [(NSDictionary *)self->_objects objectForKey:v13];
        [v4 appendFormat:@"\n    %@: %@", v15, v16];

        objc_autoreleasePoolPop(v14);
      }

      v10 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v10);
  }

  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [VisionCoreMutableNamedObjects alloc];
  objects = self->_objects;

  return [(VisionCoreMutableNamedObjects *)v4 initWithDictionary:objects];
}

- (void)_objectForName:(objc_class *)name requiredClass:(void *)class error:
{
  v7 = a2;
  if (self)
  {
    v8 = [*(self + 8) objectForKey:v7];
    if (v8)
    {
      if (!name || (objc_opt_isKindOfClass() & 1) != 0)
      {
        class = v8;
LABEL_11:

        goto LABEL_12;
      }

      if (!class)
      {
        goto LABEL_11;
      }

      v10 = objc_alloc(MEMORY[0x1E696AEC0]);
      v11 = NSStringFromClass(name);
      v12 = [v10 initWithFormat:@"%@ is not a %@", v7, v11];

      *class = [MEMORY[0x1E696ABC0] VisionCoreErrorForUnavailableResourceWithLocalizedDescription:v12];
    }

    else
    {
      if (!class)
      {
        goto LABEL_11;
      }

      v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ has not been assigned", v7];
      *class = [MEMORY[0x1E696ABC0] VisionCoreErrorForUnavailableResourceWithLocalizedDescription:v9];
    }

    class = 0;
    goto LABEL_11;
  }

  class = 0;
LABEL_12:

  return class;
}

- (id)dataForName:(id)name error:(id *)error
{
  nameCopy = name;
  v7 = objc_opt_class();
  v8 = [(VisionCoreNamedObjects *)self _objectForName:nameCopy requiredClass:v7 error:error];

  return v8;
}

- (__CVBuffer)pixelBufferForName:(id)name error:(id *)error
{
  nameCopy = name;
  v7 = [(VisionCoreNamedObjects *)self _objectForName:nameCopy requiredClass:0 error:error];
  v8 = v7;
  if (!v7)
  {
LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v9 = CFGetTypeID(v7);
  v10 = v8;
  if (v9 != CVPixelBufferGetTypeID())
  {
    if (error)
    {
      nameCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ is not a CVPixelBuffer", nameCopy];
      *error = [MEMORY[0x1E696ABC0] VisionCoreErrorForUnavailableResourceWithLocalizedDescription:nameCopy];
    }

    goto LABEL_5;
  }

LABEL_6:

  return v10;
}

- (IOSurfaceRef)_surfaceForName:(int)name allowingAssociatedObject:(void *)object error:
{
  v7 = a2;
  if (!self)
  {
    IOSurface = 0;
    goto LABEL_14;
  }

  v8 = [(VisionCoreNamedObjects *)self _objectForName:v7 requiredClass:0 error:object];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_12;
  }

  v10 = CFGetTypeID(v8);
  IOSurface = v9;
  if (v10 != IOSurfaceGetTypeID())
  {
    if (name)
    {
      if (v10 == CVPixelBufferGetTypeID())
      {
        IOSurface = CVPixelBufferGetIOSurface(v9);
        if (IOSurface)
        {
          goto LABEL_13;
        }
      }

      if (!object)
      {
        goto LABEL_12;
      }

      v12 = @"%@ cannot provide an IOSurface";
    }

    else
    {
      if (!object)
      {
LABEL_12:
        IOSurface = 0;
        goto LABEL_13;
      }

      v12 = @"%@ is not an IOSurface";
    }

    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v12, v7];
    *object = [MEMORY[0x1E696ABC0] VisionCoreErrorForUnavailableResourceWithLocalizedDescription:v13];

    goto LABEL_12;
  }

LABEL_13:

LABEL_14:
  return IOSurface;
}

- (VisionCoreNamedObjects)initWithNamedObjects:(id)objects
{
  objectsCopy = objects;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = &v15;
  if (objectsCopy)
  {
    do
    {
      v6 = v13;
      v14 = v13 + 1;
      v7 = *v6;
      if (!v7)
      {
        break;
      }

      v8 = v7;
      [v5 setObject:v7 forKeyedSubscript:objectsCopy];
      v9 = v14;
      v13 = v14 + 1;
      v10 = *v9;

      objectsCopy = v10;
    }

    while (v10);
  }

  v11 = [(VisionCoreNamedObjects *)self initWithDictionary:v5];

  return v11;
}

- (VisionCoreNamedObjects)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v5 = dictionaryCopy;
    v6 = [dictionaryCopy copy];
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF20]);
  }

  v7 = [(VisionCoreNamedObjects *)self _initWithRetainedDictionary:v6];

  return v7;
}

- (id)_initWithRetainedDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = VisionCoreNamedObjects;
  v6 = [(VisionCoreNamedObjects *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_objects, dictionary);
  }

  return v7;
}

- (BOOL)accessReadOnlyDataForNames:(id)names usingBlock:(id)block error:(id *)error
{
  v49 = *MEMORY[0x1E69E9840];
  namesCopy = names;
  blockCopy = block;
  v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v35 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(namesCopy, "count")}];
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = namesCopy;
  v7 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v7)
  {
    v8 = *v44;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v44 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v43 + 1) + 8 * v9);
      v42 = 0;
      v11 = [(VisionCoreNamedObjects *)self dataForName:v10 error:&v42];
      v12 = v42;
      v13 = v12;
      if (v11)
      {
        [v35 setObject:v11 forKeyedSubscript:v10];
      }

      else
      {
        v41 = v12;
        v14 = [(VisionCoreNamedObjects *)self surfaceAssociatedWithName:v10 error:&v41];
        v15 = v41;

        if (!v14)
        {
          if (error)
          {
            v21 = v15;
            *error = v15;
          }

          goto LABEL_18;
        }

        v16 = IOSurfaceLock(v14, 1u, 0);
        if (v16)
        {
          if (error)
          {
            v22 = objc_alloc(MEMORY[0x1E696AEC0]);
            v23 = [MEMORY[0x1E696AD98] numberWithInt:v16];
            v24 = [v22 initWithFormat:@"Could not unlock IOSurfaceRef %p (%@)", v14, v23];

            *error = [MEMORY[0x1E696ABC0] VisionCoreErrorForKernelReturnCode:v16 localizedDescription:v24];
          }

LABEL_18:

          v20 = 0;
          goto LABEL_19;
        }

        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __91__VisionCoreNamedObjects_DataAccessUtilities__accessReadOnlyDataForNames_usingBlock_error___block_invoke;
        v40[3] = &__block_descriptor_40_e5_v8__0l;
        v40[4] = v14;
        v11 = MEMORY[0x1E12C8870](v40);
        v17 = MEMORY[0x1E12C8870]();
        [v33 addObject:v17];

        v18 = objc_alloc(MEMORY[0x1E695DEF0]);
        BaseAddress = IOSurfaceGetBaseAddress(v14);
        v13 = [v18 initWithBytesNoCopy:BaseAddress length:IOSurfaceGetAllocSize(v14) freeWhenDone:0];
        [v35 setObject:v13 forKeyedSubscript:v10];
      }

      if (v7 == ++v9)
      {
        v7 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v20 = blockCopy[2](blockCopy, v35, error);
LABEL_19:

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v25 = v33;
  v26 = [v25 countByEnumeratingWithState:&v36 objects:v47 count:16];
  if (v26)
  {
    v27 = *v37;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v37 != v27)
        {
          objc_enumerationMutation(v25);
        }

        (*(*(*(&v36 + 1) + 8 * i) + 16))();
      }

      v26 = [v25 countByEnumeratingWithState:&v36 objects:v47 count:16];
    }

    while (v26);
  }

  return v20;
}

void __91__VisionCoreNamedObjects_DataAccessUtilities__accessReadOnlyDataForNames_usingBlock_error___block_invoke(uint64_t a1)
{
  v2 = IOSurfaceUnlock(*(a1 + 32), 1u, 0);
  if (v2)
  {
    v3 = *(a1 + 32);
    v10 = [MEMORY[0x1E696AD98] numberWithInt:v2];
    VisionCoreValidatedLog(4, @"Could not unlock IOSurfaceRef %p (%@)", v4, v5, v6, v7, v8, v9, v3);
  }
}

- (BOOL)accessReadOnlyDataForName:(id)name usingBlock:(id)block error:(id *)error
{
  nameCopy = name;
  blockCopy = block;
  v10 = [(VisionCoreNamedObjects *)self dataForName:nameCopy error:0];
  if (v10)
  {
    LOBYTE(error) = blockCopy[2](blockCopy, v10, error);
  }

  else
  {
    v11 = [(VisionCoreNamedObjects *)self surfaceAssociatedWithName:nameCopy error:0];
    if (v11)
    {
      v12 = v11;
      AllocSize = IOSurfaceGetAllocSize(v11);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __90__VisionCoreNamedObjects_DataAccessUtilities__accessReadOnlyDataForName_usingBlock_error___block_invoke;
      v17[3] = &unk_1E86986D8;
      v19 = AllocSize;
      v18 = blockCopy;
      v14 = MEMORY[0x1E12C8870](v17);
      LOBYTE(error) = VisionCorePerformWithLockedIOSurface(v12, 1u, v14, error);
    }

    else if (error)
    {
      nameCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Assigned object with name: %@ is either doesn't exist or                                                                exists but the type is neither NSData nor IOSurface", nameCopy];
      *error = [MEMORY[0x1E696ABC0] VisionCoreErrorForInternalErrorWithLocalizedDescription:nameCopy];

      LOBYTE(error) = 0;
    }
  }

  return error;
}

uint64_t __90__VisionCoreNamedObjects_DataAccessUtilities__accessReadOnlyDataForName_usingBlock_error___block_invoke(uint64_t a1, __IOSurface *a2)
{
  v3 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:IOSurfaceGetBaseAddress(a2) length:*(a1 + 40) freeWhenDone:0];
  v4 = (*(*(a1 + 32) + 16))();

  return v4;
}

@end