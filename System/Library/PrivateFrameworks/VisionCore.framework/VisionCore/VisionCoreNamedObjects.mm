@interface VisionCoreNamedObjects
- (BOOL)accessReadOnlyDataForName:(id)a3 usingBlock:(id)a4 error:(id *)a5;
- (BOOL)accessReadOnlyDataForNames:(id)a3 usingBlock:(id)a4 error:(id *)a5;
- (BOOL)isEqual:(id)a3;
- (IOSurfaceRef)_surfaceForName:(int)a3 allowingAssociatedObject:(void *)a4 error:;
- (VisionCoreNamedObjects)initWithDictionary:(id)a3;
- (VisionCoreNamedObjects)initWithNamedObjects:(id)a3;
- (__CVBuffer)pixelBufferForName:(id)a3 error:(id *)a4;
- (id)_initWithRetainedDictionary:(id)a3;
- (id)dataForName:(id)a3 error:(id *)a4;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)_objectForName:(objc_class *)a3 requiredClass:(void *)a4 error:;
@end

@implementation VisionCoreNamedObjects

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NSDictionary *)self->_objects isEqualToDictionary:v4->_objects];
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

  v5 = [(NSDictionary *)self->_objects allKeys];
  v6 = [v5 sortedArrayUsingSelector:sel_localizedStandardCompare_];

  v7 = [v6 valueForKeyPath:@"@max.length"];
  v8 = [v7 unsignedIntegerValue];

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
        v15 = [v13 VisionCore_stringAppendedWithPaddingCharacter:32 toMinimumLength:v8 + 1];
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

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [VisionCoreMutableNamedObjects alloc];
  objects = self->_objects;

  return [(VisionCoreMutableNamedObjects *)v4 initWithDictionary:objects];
}

- (void)_objectForName:(objc_class *)a3 requiredClass:(void *)a4 error:
{
  v7 = a2;
  if (a1)
  {
    v8 = [*(a1 + 8) objectForKey:v7];
    if (v8)
    {
      if (!a3 || (objc_opt_isKindOfClass() & 1) != 0)
      {
        a4 = v8;
LABEL_11:

        goto LABEL_12;
      }

      if (!a4)
      {
        goto LABEL_11;
      }

      v10 = objc_alloc(MEMORY[0x1E696AEC0]);
      v11 = NSStringFromClass(a3);
      v12 = [v10 initWithFormat:@"%@ is not a %@", v7, v11];

      *a4 = [MEMORY[0x1E696ABC0] VisionCoreErrorForUnavailableResourceWithLocalizedDescription:v12];
    }

    else
    {
      if (!a4)
      {
        goto LABEL_11;
      }

      v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ has not been assigned", v7];
      *a4 = [MEMORY[0x1E696ABC0] VisionCoreErrorForUnavailableResourceWithLocalizedDescription:v9];
    }

    a4 = 0;
    goto LABEL_11;
  }

  a4 = 0;
LABEL_12:

  return a4;
}

- (id)dataForName:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_opt_class();
  v8 = [(VisionCoreNamedObjects *)self _objectForName:v6 requiredClass:v7 error:a4];

  return v8;
}

- (__CVBuffer)pixelBufferForName:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(VisionCoreNamedObjects *)self _objectForName:v6 requiredClass:0 error:a4];
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
    if (a4)
    {
      v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ is not a CVPixelBuffer", v6];
      *a4 = [MEMORY[0x1E696ABC0] VisionCoreErrorForUnavailableResourceWithLocalizedDescription:v11];
    }

    goto LABEL_5;
  }

LABEL_6:

  return v10;
}

- (IOSurfaceRef)_surfaceForName:(int)a3 allowingAssociatedObject:(void *)a4 error:
{
  v7 = a2;
  if (!a1)
  {
    IOSurface = 0;
    goto LABEL_14;
  }

  v8 = [(VisionCoreNamedObjects *)a1 _objectForName:v7 requiredClass:0 error:a4];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_12;
  }

  v10 = CFGetTypeID(v8);
  IOSurface = v9;
  if (v10 != IOSurfaceGetTypeID())
  {
    if (a3)
    {
      if (v10 == CVPixelBufferGetTypeID())
      {
        IOSurface = CVPixelBufferGetIOSurface(v9);
        if (IOSurface)
        {
          goto LABEL_13;
        }
      }

      if (!a4)
      {
        goto LABEL_12;
      }

      v12 = @"%@ cannot provide an IOSurface";
    }

    else
    {
      if (!a4)
      {
LABEL_12:
        IOSurface = 0;
        goto LABEL_13;
      }

      v12 = @"%@ is not an IOSurface";
    }

    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v12, v7];
    *a4 = [MEMORY[0x1E696ABC0] VisionCoreErrorForUnavailableResourceWithLocalizedDescription:v13];

    goto LABEL_12;
  }

LABEL_13:

LABEL_14:
  return IOSurface;
}

- (VisionCoreNamedObjects)initWithNamedObjects:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = &v15;
  if (v4)
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
      [v5 setObject:v7 forKeyedSubscript:v4];
      v9 = v14;
      v13 = v14 + 1;
      v10 = *v9;

      v4 = v10;
    }

    while (v10);
  }

  v11 = [(VisionCoreNamedObjects *)self initWithDictionary:v5];

  return v11;
}

- (VisionCoreNamedObjects)initWithDictionary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v6 = [v4 copy];
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF20]);
  }

  v7 = [(VisionCoreNamedObjects *)self _initWithRetainedDictionary:v6];

  return v7;
}

- (id)_initWithRetainedDictionary:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = VisionCoreNamedObjects;
  v6 = [(VisionCoreNamedObjects *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_objects, a3);
  }

  return v7;
}

- (BOOL)accessReadOnlyDataForNames:(id)a3 usingBlock:(id)a4 error:(id *)a5
{
  v49 = *MEMORY[0x1E69E9840];
  v32 = a3;
  v31 = a4;
  v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v35 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v32, "count")}];
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v32;
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
          if (a5)
          {
            v21 = v15;
            *a5 = v15;
          }

          goto LABEL_18;
        }

        v16 = IOSurfaceLock(v14, 1u, 0);
        if (v16)
        {
          if (a5)
          {
            v22 = objc_alloc(MEMORY[0x1E696AEC0]);
            v23 = [MEMORY[0x1E696AD98] numberWithInt:v16];
            v24 = [v22 initWithFormat:@"Could not unlock IOSurfaceRef %p (%@)", v14, v23];

            *a5 = [MEMORY[0x1E696ABC0] VisionCoreErrorForKernelReturnCode:v16 localizedDescription:v24];
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

  v20 = v31[2](v31, v35, a5);
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

- (BOOL)accessReadOnlyDataForName:(id)a3 usingBlock:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(VisionCoreNamedObjects *)self dataForName:v8 error:0];
  if (v10)
  {
    LOBYTE(a5) = v9[2](v9, v10, a5);
  }

  else
  {
    v11 = [(VisionCoreNamedObjects *)self surfaceAssociatedWithName:v8 error:0];
    if (v11)
    {
      v12 = v11;
      AllocSize = IOSurfaceGetAllocSize(v11);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __90__VisionCoreNamedObjects_DataAccessUtilities__accessReadOnlyDataForName_usingBlock_error___block_invoke;
      v17[3] = &unk_1E86986D8;
      v19 = AllocSize;
      v18 = v9;
      v14 = MEMORY[0x1E12C8870](v17);
      LOBYTE(a5) = VisionCorePerformWithLockedIOSurface(v12, 1u, v14, a5);
    }

    else if (a5)
    {
      v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Assigned object with name: %@ is either doesn't exist or                                                                exists but the type is neither NSData nor IOSurface", v8];
      *a5 = [MEMORY[0x1E696ABC0] VisionCoreErrorForInternalErrorWithLocalizedDescription:v15];

      LOBYTE(a5) = 0;
    }
  }

  return a5;
}

uint64_t __90__VisionCoreNamedObjects_DataAccessUtilities__accessReadOnlyDataForName_usingBlock_error___block_invoke(uint64_t a1, __IOSurface *a2)
{
  v3 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:IOSurfaceGetBaseAddress(a2) length:*(a1 + 40) freeWhenDone:0];
  v4 = (*(*(a1 + 32) + 16))();

  return v4;
}

@end