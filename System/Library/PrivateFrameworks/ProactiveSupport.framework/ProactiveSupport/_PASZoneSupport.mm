@interface _PASZoneSupport
+ (id)copyArray:(id)a3 toZone:(_NSZone *)a4;
+ (id)copyData:(id)a3 toZone:(_NSZone *)a4;
+ (id)copyDate:(id)a3 toZone:(_NSZone *)a4;
+ (id)copyDictionary:(id)a3 toZone:(_NSZone *)a4;
+ (id)copyNumber:(id)a3 toZone:(_NSZone *)a4;
+ (id)copySet:(id)a3 toZone:(_NSZone *)a4;
+ (id)copyString:(id)a3 toZone:(_NSZone *)a4;
+ (id)copyUUID:(id)a3 toZone:(_NSZone *)a4;
+ (id)deepCopyObject:(id)a3 toZone:(_NSZone *)a4 strategy:(id)a5;
+ (id)mutableCopyArray:(id)a3 toZone:(_NSZone *)a4;
+ (id)mutableCopyData:(id)a3 toZone:(_NSZone *)a4;
+ (id)mutableCopyDictionary:(id)a3 toZone:(_NSZone *)a4;
+ (id)mutableCopySet:(id)a3 toZone:(_NSZone *)a4;
+ (id)mutableCopyString:(id)a3 toZone:(_NSZone *)a4;
+ (id)newMutableArrayInZone:(_NSZone *)a3 capacity:(unint64_t)a4;
+ (id)newMutableDataInZone:(_NSZone *)a3 capacity:(unint64_t)a4;
+ (id)newMutableDataInZone:(_NSZone *)a3 length:(unint64_t)a4;
+ (id)newMutableDictionaryInZone:(_NSZone *)a3 capacity:(unint64_t)a4;
+ (id)newMutableSetInZone:(_NSZone *)a3 capacity:(unint64_t)a4;
+ (id)newMutableStringInZone:(_NSZone *)a3 capacity:(unint64_t)a4;
@end

@implementation _PASZoneSupport

+ (id)deepCopyObject:(id)a3 toZone:(_NSZone *)a4 strategy:(id)a5
{
  v56 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = a3;
  v10 = objc_autoreleasePoolPush();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v35 = v8;
    v37 = v10;
    v11 = v9;
    v12 = [a1 newMutableArrayInZone:a4 capacity:{objc_msgSend(v11, "count")}];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v50 objects:v55 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v51;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v51 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [a1 deepCopyObject:*(*(&v50 + 1) + 8 * i) toZone:a4 strategy:*&a5];
          [v12 addObject:v18];
        }

        v15 = [v13 countByEnumeratingWithState:&v50 objects:v55 count:16];
      }

      while (v15);
    }

    if (v35)
    {
      v19 = v12;
    }

    else
    {
      v19 = [a1 copyArray:v12 toZone:a4];
    }

    v24 = v19;
    v10 = v37;
LABEL_16:

    goto LABEL_52;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = v9;
    v21 = [a1 newMutableDictionaryInZone:a4 capacity:{objc_msgSend(v20, "count")}];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __50___PASZoneSupport_deepCopyObject_toZone_strategy___block_invoke;
    v43[3] = &unk_1E77F1BB8;
    v45 = a1;
    v46 = a4;
    v47 = v8;
    v49 = *(&a5 + 3);
    v48 = *&a5 >> 8;
    v22 = v21;
    v44 = v22;
    [v20 enumerateKeysAndObjectsUsingBlock:v43];

    if ((v8 & 2) != 0)
    {
      v23 = v22;
    }

    else
    {
      v23 = [a1 copyDictionary:v22 toZone:a4];
    }

    v24 = v23;

    goto LABEL_52;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v36 = v8;
    v38 = v10;
    v25 = v9;
    v12 = [a1 newMutableSetInZone:a4 capacity:{objc_msgSend(v25, "count")}];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v13 = v25;
    v26 = [v13 countByEnumeratingWithState:&v39 objects:v54 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v40;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v40 != v28)
          {
            objc_enumerationMutation(v13);
          }

          v30 = [a1 deepCopyObject:*(*(&v39 + 1) + 8 * j) toZone:a4 strategy:*&a5];
          [v12 addObject:v30];
        }

        v27 = [v13 countByEnumeratingWithState:&v39 objects:v54 count:16];
      }

      while (v27);
    }

    v10 = v38;
    if ((v36 & 4) != 0)
    {
      v31 = v12;
    }

    else
    {
      v31 = [a1 copySet:v12 toZone:a4];
    }

    v24 = v31;
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ((v8 & 0x10) != 0)
    {
      v32 = [a1 mutableCopyData:v9 toZone:a4];
    }

    else
    {
      v32 = [a1 copyData:v9 toZone:a4];
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ((v8 & 8) != 0)
      {
        v32 = [a1 mutableCopyString:v9 toZone:a4];
      }

      else
      {
        v32 = [a1 copyString:v9 toZone:a4];
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v32 = [a1 copyNumber:v9 toZone:a4];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v32 = [a1 copyDate:v9 toZone:a4];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v32 = [a1 copyUUID:v9 toZone:a4];
          }

          else if ((v8 & 0x20) != 0 && [v9 conformsToProtocol:&unk_1F1B32940])
          {
            v32 = [v9 mutableCopyWithZone:a4];
          }

          else if ([v9 conformsToProtocol:&unk_1F1B32328])
          {
            v32 = [v9 copyWithZone:a4];
          }

          else
          {
            v32 = v9;
          }
        }
      }
    }
  }

  v24 = v32;
LABEL_52:
  objc_autoreleasePoolPop(v10);

  v33 = *MEMORY[0x1E69E9840];

  return v24;
}

+ (id)copyUUID:(id)a3 toZone:(_NSZone *)a4
{
  v7 = a3;
  if (!a4 || MEMORY[0x1AC5662F0]() == a4)
  {
    v8 = [v7 copy];
  }

  else
  {
    v11 = CFUUIDGetUUIDBytes(v7);
    v8 = CFUUIDCreateFromUUIDBytes(a4, v11);
    if (!v8)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a2 object:a1 file:@"_PASZoneSupport.m" lineNumber:258 description:@"Unexpected CFUUIDCreateFromUUIDBytes() failure"];
    }
  }

  return v8;
}

+ (id)copyDate:(id)a3 toZone:(_NSZone *)a4
{
  v7 = a3;
  if (a4 && MEMORY[0x1AC5662F0]() != a4 && malloc_size(v7))
  {
    v8 = MEMORY[0x1AC565F20](v7);
    v9 = CFDateCreate(a4, v8);
    if (!v9)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:a2 object:a1 file:@"_PASZoneSupport.m" lineNumber:246 description:@"Unexpected CFDateCreate() failure"];
    }
  }

  else
  {
    v9 = [v7 copy];
  }

  return v9;
}

+ (id)copyNumber:(id)a3 toZone:(_NSZone *)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (a4 && MEMORY[0x1AC5662F0]() != a4 && malloc_size(v7))
  {
    ByteSize = CFNumberGetByteSize(v7);
    v9 = ByteSize + 7;
    memptr = 0;
    v23 = 0;
    if ((ByteSize + 7) > 0x400)
    {
      v16 = CFNumberGetByteSize(v7);
      v17 = malloc_type_posix_memalign(&memptr, 8uLL, v16, 0xE69E64A3uLL);
      LOBYTE(v23) = 0;
      if (v17)
      {
        v20 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"malloc failed" userInfo:0];
        objc_exception_throw(v20);
      }

      v10 = memptr;
    }

    else
    {
      MEMORY[0x1EEE9AC00](ByteSize);
      v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v10, v9);
    }

    Type = CFNumberGetType(v7);
    if (!CFNumberGetValue(v7, Type, v10))
    {
      v18 = [MEMORY[0x1E696AAA8] currentHandler];
      [v18 handleFailureInMethod:a2 object:a1 file:@"_PASZoneSupport.m" lineNumber:231 description:@"Unexpected value conversion error from CFNumberGetValue"];
    }

    v12 = CFNumberGetType(v7);
    v13 = CFNumberCreate(a4, v12, v10);
    if (!v13)
    {
      v19 = [MEMORY[0x1E696AAA8] currentHandler];
      [v19 handleFailureInMethod:a2 object:a1 file:@"_PASZoneSupport.m" lineNumber:233 description:@"Unexpected CFNumberCreate() failure"];
    }

    if (v9 >= 0x401)
    {
      free(v10);
    }
  }

  else
  {
    v13 = [(__CFNumber *)v7 copy];
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

+ (id)mutableCopyData:(id)a3 toZone:(_NSZone *)a4
{
  v7 = a3;
  if (!a4 || MEMORY[0x1AC5662F0]() == a4)
  {
    MutableCopy = [v7 mutableCopy];
  }

  else
  {
    MutableCopy = CFDataCreateMutableCopy(a4, 0, v7);
    if (!MutableCopy)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a2 object:a1 file:@"_PASZoneSupport.m" lineNumber:218 description:@"Unexpected CFDataCreateMutableCopy() failure"];
    }
  }

  return MutableCopy;
}

+ (id)copyData:(id)a3 toZone:(_NSZone *)a4
{
  v7 = a3;
  if (!a4 || MEMORY[0x1AC5662F0]() == a4)
  {
    Copy = [v7 copy];
  }

  else
  {
    Copy = CFDataCreateCopy(a4, v7);
    if (!Copy)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a2 object:a1 file:@"_PASZoneSupport.m" lineNumber:207 description:@"Unexpected CFDataCreateCopy() failure"];
    }
  }

  return Copy;
}

+ (id)newMutableDataInZone:(_NSZone *)a3 length:(unint64_t)a4
{
  if (!a3 || MEMORY[0x1AC5662F0]() == a3)
  {
    v10 = objc_alloc(MEMORY[0x1E695DF88]);

    return [v10 initWithLength:a4];
  }

  else
  {
    Mutable = CFDataCreateMutable(a3, 0);
    if (!Mutable)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:a1 file:@"_PASZoneSupport.m" lineNumber:195 description:@"Unexpected CFDataCreateMutable() failure"];
    }

    CFDataSetLength(Mutable, a4);
    return Mutable;
  }
}

+ (id)newMutableDataInZone:(_NSZone *)a3 capacity:(unint64_t)a4
{
  if (!a3 || MEMORY[0x1AC5662F0]() == a3)
  {
    v10 = objc_alloc(MEMORY[0x1E695DF88]);

    return [v10 initWithCapacity:a4];
  }

  else
  {
    Mutable = CFDataCreateMutable(a3, 0);
    if (!Mutable)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:a1 file:@"_PASZoneSupport.m" lineNumber:184 description:@"Unexpected CFDataCreateMutable() failure"];
    }

    return Mutable;
  }
}

+ (id)mutableCopyString:(id)a3 toZone:(_NSZone *)a4
{
  v7 = a3;
  if (!a4 || MEMORY[0x1AC5662F0]() == a4)
  {
    MutableCopy = [(__CFString *)v7 mutableCopy];
  }

  else
  {
    MutableCopy = CFStringCreateMutableCopy(a4, 0, v7);
    if (!MutableCopy)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a2 object:a1 file:@"_PASZoneSupport.m" lineNumber:167 description:@"Unexpected CFStringCreateMutableCopy() failure"];
    }
  }

  return MutableCopy;
}

+ (id)copyString:(id)a3 toZone:(_NSZone *)a4
{
  v7 = a3;
  if (a4 && MEMORY[0x1AC5662F0]() != a4 && malloc_size(v7))
  {
    Copy = CFStringCreateCopy(a4, v7);
    if (!Copy)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a2 object:a1 file:@"_PASZoneSupport.m" lineNumber:156 description:@"Unexpected CFStringCreateCopy() failure"];
    }
  }

  else
  {
    Copy = [(__CFString *)v7 copy];
  }

  return Copy;
}

+ (id)newMutableStringInZone:(_NSZone *)a3 capacity:(unint64_t)a4
{
  if (!a3 || MEMORY[0x1AC5662F0]() == a3)
  {
    v10 = objc_alloc(MEMORY[0x1E696AD60]);

    return [v10 initWithCapacity:a4];
  }

  else
  {
    Mutable = CFStringCreateMutable(a3, 0);
    if (!Mutable)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:a1 file:@"_PASZoneSupport.m" lineNumber:143 description:@"Unexpected CFStringCreateMutable() failure"];
    }

    return Mutable;
  }
}

+ (id)mutableCopySet:(id)a3 toZone:(_NSZone *)a4
{
  v7 = a3;
  if (!a4 || MEMORY[0x1AC5662F0]() == a4)
  {
    MutableCopy = [v7 mutableCopy];
  }

  else
  {
    MutableCopy = CFSetCreateMutableCopy(a4, 0, v7);
    if (!MutableCopy)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a2 object:a1 file:@"_PASZoneSupport.m" lineNumber:126 description:@"Unexpected CFSetCreateCopy() failure"];
    }
  }

  return MutableCopy;
}

+ (id)copySet:(id)a3 toZone:(_NSZone *)a4
{
  v7 = a3;
  if (!a4 || MEMORY[0x1AC5662F0]() == a4)
  {
    Copy = [v7 copy];
  }

  else
  {
    Copy = CFSetCreateCopy(a4, v7);
    if (!Copy)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a2 object:a1 file:@"_PASZoneSupport.m" lineNumber:115 description:@"Unexpected CFSetCreateCopy() failure"];
    }
  }

  return Copy;
}

+ (id)newMutableSetInZone:(_NSZone *)a3 capacity:(unint64_t)a4
{
  if (!a3 || MEMORY[0x1AC5662F0]() == a3)
  {
    v10 = objc_alloc(MEMORY[0x1E695DFA8]);

    return [v10 initWithCapacity:a4];
  }

  else
  {
    Mutable = CFSetCreateMutable(a3, a4, MEMORY[0x1E695E9F8]);
    if (!Mutable)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:a1 file:@"_PASZoneSupport.m" lineNumber:104 description:@"Unexpected CFSetCreateMutable() failure"];
    }

    return Mutable;
  }
}

+ (id)mutableCopyDictionary:(id)a3 toZone:(_NSZone *)a4
{
  v7 = a3;
  if (!a4 || MEMORY[0x1AC5662F0]() == a4)
  {
    MutableCopy = [v7 mutableCopy];
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutableCopy(a4, 0, v7);
    if (!MutableCopy)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a2 object:a1 file:@"_PASZoneSupport.m" lineNumber:88 description:@"Unexpected CFDictionaryCreateMutableCopy() failure"];
    }
  }

  return MutableCopy;
}

+ (id)copyDictionary:(id)a3 toZone:(_NSZone *)a4
{
  v7 = a3;
  if (!a4 || MEMORY[0x1AC5662F0]() == a4)
  {
    Copy = [v7 copy];
  }

  else
  {
    Copy = CFDictionaryCreateCopy(a4, v7);
    if (!Copy)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a2 object:a1 file:@"_PASZoneSupport.m" lineNumber:77 description:@"Unexpected CFDictionaryCreateCopy() failure"];
    }
  }

  return Copy;
}

+ (id)newMutableDictionaryInZone:(_NSZone *)a3 capacity:(unint64_t)a4
{
  if (!a3 || MEMORY[0x1AC5662F0]() == a3)
  {
    v10 = objc_alloc(MEMORY[0x1E695DF90]);

    return [v10 initWithCapacity:a4];
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(a3, a4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:a1 file:@"_PASZoneSupport.m" lineNumber:66 description:@"Unexpected CFDictionaryCreateMutable() failure"];
    }

    return Mutable;
  }
}

+ (id)mutableCopyArray:(id)a3 toZone:(_NSZone *)a4
{
  v7 = a3;
  if (!a4 || MEMORY[0x1AC5662F0]() == a4)
  {
    MutableCopy = [v7 mutableCopy];
  }

  else
  {
    MutableCopy = CFArrayCreateMutableCopy(a4, 0, v7);
    if (!MutableCopy)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a2 object:a1 file:@"_PASZoneSupport.m" lineNumber:49 description:@"Unexpected CFArrayCreateMutableCopy() failure"];
    }
  }

  return MutableCopy;
}

+ (id)copyArray:(id)a3 toZone:(_NSZone *)a4
{
  v7 = a3;
  if (!a4 || MEMORY[0x1AC5662F0]() == a4)
  {
    Copy = [v7 copy];
  }

  else
  {
    Copy = CFArrayCreateCopy(a4, v7);
    if (!Copy)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a2 object:a1 file:@"_PASZoneSupport.m" lineNumber:38 description:@"Unexpected CFArrayCreateCopy() failure"];
    }
  }

  return Copy;
}

+ (id)newMutableArrayInZone:(_NSZone *)a3 capacity:(unint64_t)a4
{
  if (!a3 || MEMORY[0x1AC5662F0]() == a3)
  {
    v10 = objc_alloc(MEMORY[0x1E695DF70]);

    return [v10 initWithCapacity:a4];
  }

  else
  {
    Mutable = CFArrayCreateMutable(a3, a4, MEMORY[0x1E695E9C0]);
    if (!Mutable)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:a1 file:@"_PASZoneSupport.m" lineNumber:27 description:@"Unexpected CFArrayCreateMutable() failure"];
    }

    return Mutable;
  }
}

@end