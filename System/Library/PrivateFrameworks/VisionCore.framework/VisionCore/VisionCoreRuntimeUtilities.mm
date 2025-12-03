@interface VisionCoreRuntimeUtilities
+ (BOOL)item:(id)item overridesClassSelector:(SEL)selector;
+ (BOOL)item:(id)item overridesSelector:(SEL)selector;
+ (BOOL)linkTimeOrRunTimeAtLeastVersion:(int)version;
+ (BOOL)linkTimeOrRunTimeBeforeVersion:(int)version;
+ (id)_leafClassesFromSubclasses:(uint64_t)subclasses withRootClass:;
+ (id)_subclassesOfClass:(uint64_t)class excludingRootClass:(void *)rootClass passingTest:;
+ (id)allSubclassesOfClass:(Class)class excludingRootClass:(BOOL)rootClass overridingClassSelector:(SEL)selector;
+ (id)allSubclassesOfClass:(Class)class excludingRootClass:(BOOL)rootClass overridingSelector:(SEL)selector;
+ (id)leafSubclassesOfClass:(Class)class excludingRootClass:(BOOL)rootClass;
+ (id)leafSubclassesOfClass:(Class)class excludingRootClass:(BOOL)rootClass overridingClassSelector:(SEL)selector;
+ (id)leafSubclassesOfClass:(Class)class excludingRootClass:(BOOL)rootClass overridingSelector:(SEL)selector;
+ (id)signatureForItem:(id)item selector:(SEL)selector;
+ (int)linkTimeVersion;
+ (int)runTimeVersion;
+ (void)enumerateSubclassesOfClass:(Class)class excludingRootClass:(BOOL)rootClass usingBlock:(id)block;
@end

@implementation VisionCoreRuntimeUtilities

+ (id)leafSubclassesOfClass:(Class)class excludingRootClass:(BOOL)rootClass overridingClassSelector:(SEL)selector
{
  v7 = [VisionCoreRuntimeUtilities allSubclassesOfClass:class excludingRootClass:rootClass overridingClassSelector:selector];
  v8 = [(VisionCoreRuntimeUtilities *)self _leafClassesFromSubclasses:v7 withRootClass:class];

  return v8;
}

+ (id)_leafClassesFromSubclasses:(uint64_t)subclasses withRootClass:
{
  v4 = a2;
  objc_opt_self();
  v5 = [v4 count];
  if (v5 <= 1)
  {
    v6 = [v4 copy];
    goto LABEL_15;
  }

  v7 = v5;
  v8 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndexesInRange:{0, v5}];
  for (i = 0; i != v7; ++i)
  {
    if (![v8 containsIndex:i])
    {
      continue;
    }

    v10 = [v4 objectAtIndexedSubscript:i];
    v11 = [v10 isSubclassOfClass:subclasses];
    v12 = i;
    if (v11)
    {
      v13 = [v10 superclass];
      if (!v13)
      {
        continue;
      }

      v14 = v13;
      while (1)
      {
        v15 = [v4 indexOfObject:v14];
        if (v15 != 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        v14 = [v14 superclass];
        if (!v14)
        {
          goto LABEL_13;
        }
      }

      v12 = v15;
    }

    [v8 removeIndex:v12];
LABEL_13:
    ;
  }

  v6 = [v4 objectsAtIndexes:v8];

LABEL_15:

  return v6;
}

+ (id)leafSubclassesOfClass:(Class)class excludingRootClass:(BOOL)rootClass overridingSelector:(SEL)selector
{
  v7 = [VisionCoreRuntimeUtilities allSubclassesOfClass:class excludingRootClass:rootClass overridingSelector:selector];
  v8 = [(VisionCoreRuntimeUtilities *)self _leafClassesFromSubclasses:v7 withRootClass:class];

  return v8;
}

+ (id)leafSubclassesOfClass:(Class)class excludingRootClass:(BOOL)rootClass
{
  v6 = [(VisionCoreRuntimeUtilities *)self _subclassesOfClass:class excludingRootClass:rootClass passingTest:0];
  v7 = [(VisionCoreRuntimeUtilities *)self _leafClassesFromSubclasses:v6 withRootClass:class];

  return v7;
}

+ (id)_subclassesOfClass:(uint64_t)class excludingRootClass:(void *)rootClass passingTest:
{
  rootClassCopy = rootClass;
  v7 = objc_opt_self();
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __80__VisionCoreRuntimeUtilities__subclassesOfClass_excludingRootClass_passingTest___block_invoke;
  v14[3] = &unk_1E86989E0;
  v16 = rootClassCopy;
  v9 = v8;
  v15 = v9;
  v10 = rootClassCopy;
  [v7 enumerateSubclassesOfClass:a2 excludingRootClass:class usingBlock:v14];
  v11 = v15;
  v12 = v9;

  return v9;
}

uint64_t __80__VisionCoreRuntimeUtilities__subclassesOfClass_excludingRootClass_passingTest___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (!v4 || (result = (*(v4 + 16))(v4, a2), result))
  {
    v6 = *(a1 + 32);

    return [v6 addObject:a2];
  }

  return result;
}

+ (id)allSubclassesOfClass:(Class)class excludingRootClass:(BOOL)rootClass overridingClassSelector:(SEL)selector
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __94__VisionCoreRuntimeUtilities_allSubclassesOfClass_excludingRootClass_overridingClassSelector___block_invoke;
  v7[3] = &__block_descriptor_40_e12_B24__0_8_B16l;
  v7[4] = selector;
  v5 = [(VisionCoreRuntimeUtilities *)self _subclassesOfClass:class excludingRootClass:rootClass passingTest:v7];

  return v5;
}

+ (id)allSubclassesOfClass:(Class)class excludingRootClass:(BOOL)rootClass overridingSelector:(SEL)selector
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __89__VisionCoreRuntimeUtilities_allSubclassesOfClass_excludingRootClass_overridingSelector___block_invoke;
  v7[3] = &__block_descriptor_40_e12_B24__0_8_B16l;
  v7[4] = selector;
  v5 = [(VisionCoreRuntimeUtilities *)self _subclassesOfClass:class excludingRootClass:rootClass passingTest:v7];

  return v5;
}

+ (void)enumerateSubclassesOfClass:(Class)class excludingRootClass:(BOOL)rootClass usingBlock:(id)block
{
  rootClassCopy = rootClass;
  blockCopy = block;
  v8 = blockCopy;
  if (rootClassCopy)
  {
    v9 = MEMORY[0x1E12C8870](blockCopy);
  }

  else
  {
    Superclass = class_getSuperclass(class);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __87__VisionCoreRuntimeUtilities_enumerateSubclassesOfClass_excludingRootClass_usingBlock___block_invoke;
    v20[3] = &unk_1E8698A08;
    classCopy = class;
    v21 = v8;
    v9 = MEMORY[0x1E12C8870](v20);

    class = Superclass;
  }

  v11 = v9;
  outCount = 0;
  v12 = objc_copyImageNames(&outCount);
  if (v12)
  {
    v13 = v12;
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 0;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = ___enumerateProcessSubclasses_block_invoke;
    v23[3] = &unk_1E8698A50;
    v24 = v11;
    v25 = &v26;
    v14 = MEMORY[0x1E12C8870](v23);
    if (outCount)
    {
      for (i = 0; i < outCount; ++i)
      {
        if (*(v27 + 24) == 1)
        {
          break;
        }

        v16 = v13[i];
        v17 = v14;
        if (v16)
        {
          v18 = dlopen(v16, 16);
          v19 = v18;
          if (v18)
          {
            objc_enumerateClasses(v18, 0, 0, class, v17);
            dlclose(v19);
          }
        }
      }
    }

    _Block_object_dispose(&v26, 8);
    free(v13);
  }
}

Class __87__VisionCoreRuntimeUtilities_enumerateSubclassesOfClass_excludingRootClass_usingBlock___block_invoke(Class result, Class cls)
{
  if (cls)
  {
    v2 = result;
    v3 = *(result + 5);
    if (v3)
    {
      result = cls;
      while (result != v3)
      {
        result = class_getSuperclass(result);
        if (!result)
        {
          return result;
        }
      }

      v4 = *(*(v2 + 4) + 16);

      return v4();
    }
  }

  return result;
}

+ (BOOL)item:(id)item overridesClassSelector:(SEL)selector
{
  itemCopy = item;
  v6 = itemCopy;
  if (!itemCopy)
  {
    goto LABEL_8;
  }

  Class = itemCopy;
  if (!object_isClass(itemCopy))
  {
    Class = object_getClass(v6);
    if (!Class)
    {
      goto LABEL_8;
    }
  }

  if (!class_isMetaClass(Class))
  {
    Name = class_getName(Class);
    Class = objc_getMetaClass(Name);
    if (Class)
    {
      goto LABEL_7;
    }

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v8 = Class;
LABEL_7:
  v10 = _classImplementsSelector(Class, selector);
LABEL_9:

  return v10;
}

+ (BOOL)item:(id)item overridesSelector:(SEL)selector
{
  itemCopy = item;
  v6 = itemCopy;
  if (itemCopy)
  {
    isClass = object_isClass(itemCopy);
    Class = v6;
    if (!isClass)
    {
      Class = object_getClass(v6);
    }

    v9 = _classImplementsSelector(Class, selector);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)signatureForItem:(id)item selector:(SEL)selector
{
  itemCopy = item;
  isClass = object_isClass(itemCopy);
  Class = object_getClass(itemCopy);

  v8 = objc_alloc(MEMORY[0x1E696AEC0]);
  v9 = NSStringFromClass(Class);
  v10 = NSStringFromSelector(selector);
  v11 = 45;
  if (isClass)
  {
    v11 = 43;
  }

  v12 = [v8 initWithFormat:@"%c[%@ %@]", v11, v9, v10];

  return v12;
}

+ (BOOL)linkTimeOrRunTimeAtLeastVersion:(int)version
{
  linkTimeVersion = [self linkTimeVersion];
  if (linkTimeVersion == -1)
  {
    linkTimeVersion = [self runTimeVersion];
  }

  return linkTimeVersion > version;
}

+ (BOOL)linkTimeOrRunTimeBeforeVersion:(int)version
{
  linkTimeVersion = [self linkTimeVersion];
  if (linkTimeVersion == -1)
  {
    linkTimeVersion = [self runTimeVersion];
  }

  return linkTimeVersion < version;
}

+ (int)runTimeVersion
{
  if (runTimeVersion_onceToken != -1)
  {
    dispatch_once(&runTimeVersion_onceToken, &__block_literal_global_5);
  }

  return runTimeVersion_version;
}

uint64_t __44__VisionCoreRuntimeUtilities_runTimeVersion__block_invoke()
{
  result = NSVersionOfRunTimeLibrary("VisionCore");
  runTimeVersion_version = result;
  return result;
}

+ (int)linkTimeVersion
{
  if (linkTimeVersion_onceToken != -1)
  {
    dispatch_once(&linkTimeVersion_onceToken, &__block_literal_global_2787);
  }

  return linkTimeVersion_version;
}

uint64_t __45__VisionCoreRuntimeUtilities_linkTimeVersion__block_invoke()
{
  result = NSVersionOfLinkTimeLibrary("VisionCore");
  linkTimeVersion_version = result;
  return result;
}

@end