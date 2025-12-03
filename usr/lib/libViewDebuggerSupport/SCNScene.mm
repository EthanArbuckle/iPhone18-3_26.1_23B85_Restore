@interface SCNScene
+ (id)fallback_debugHierarchyPropertyDescriptions;
+ (id)fallback_debugHierarchyValueForPropertyWithName:(id)name onObject:(id)object outOptions:(id *)options outError:(id *)error;
@end

@implementation SCNScene

+ (id)fallback_debugHierarchyPropertyDescriptions
{
  selfCopy = self;
  if (self)
  {
    if (object_isClass(self))
    {
      self = NSStringFromClass(selfCopy);
    }

    else
    {
      self = 0;
    }
  }

  selfCopy2 = self;
  Mutable = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(Mutable, @"propertyName", @"encodedPresentationScene");
  if (selfCopy2)
  {
    CFDictionaryAddValue(Mutable, @"propertyRuntimeType", selfCopy2);
  }

  CFDictionaryAddValue(Mutable, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeData");
  CFDictionaryAddValue(Mutable, @"propertyFormat", @"public.data");
  v13 = 8;
  v5 = CFNumberCreate(0, kCFNumberCFIndexType, &v13);
  CFDictionaryAddValue(Mutable, @"visibility", v5);
  CFRelease(v5);
  v13 = 1;
  v6 = CFNumberCreate(0, kCFNumberCFIndexType, &v13);
  CFDictionaryAddValue(Mutable, @"propertyOptions", v6);
  CFRelease(v6);

  v14[0] = Mutable;
  if (selfCopy && object_isClass(selfCopy))
  {
    v7 = NSStringFromClass(selfCopy);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v9, @"propertyName", @"encodedScene");
  if (v8)
  {
    CFDictionaryAddValue(v9, @"propertyRuntimeType", v8);
  }

  CFDictionaryAddValue(v9, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeData");
  CFDictionaryAddValue(v9, @"propertyFormat", @"public.data");
  v13 = 1;
  v10 = CFNumberCreate(0, kCFNumberCFIndexType, &v13);
  CFDictionaryAddValue(v9, @"propertyOptions", v10);
  CFRelease(v10);

  v14[1] = v9;
  v11 = [NSArray arrayWithObjects:v14 count:2];

  return v11;
}

+ (id)fallback_debugHierarchyValueForPropertyWithName:(id)name onObject:(id)object outOptions:(id *)options outError:(id *)error
{
  nameCopy = name;
  objectCopy = object;
  if (([nameCopy isEqualToString:@"encodedScene"] & 1) == 0 && !objc_msgSend(nameCopy, "isEqualToString:", @"encodedPresentationScene"))
  {
    v13 = objectCopy;
    v14 = nameCopy;
    if ([(NSString *)v14 length])
    {
      NSSelectorFromString(v14);
      if (objc_opt_respondsToSelector())
      {
        v15 = v14;
        if (v15)
        {
LABEL_9:
          error = [v13 valueForKey:v15];
LABEL_26:

          goto LABEL_27;
        }
      }

      else
      {
        if ([(NSString *)v14 length]< 2)
        {
          uppercaseString = [(NSString *)v14 uppercaseString];
        }

        else
        {
          v16 = [(NSString *)v14 substringToIndex:1];
          uppercaseString2 = [v16 uppercaseString];
          v18 = [(NSString *)v14 substringFromIndex:1];
          uppercaseString = [uppercaseString2 stringByAppendingString:v18];
        }

        v20 = [@"is" stringByAppendingString:uppercaseString];
        NSSelectorFromString(v20);
        if (objc_opt_respondsToSelector())
        {
          v15 = v20;
        }

        else
        {
          v15 = 0;
        }

        if (v15)
        {
          goto LABEL_9;
        }
      }
    }

    if (error)
    {
      v21 = v14;
      if (v13)
      {
        v22 = [NSString stringWithFormat:@"%@", v13];
      }

      else
      {
        v22 = &stru_3C768;
      }

      if (v21)
      {
        v23 = v21;
      }

      else
      {
        v23 = &stru_3C768;
      }

      v31[0] = @"propertyName";
      v31[1] = @"objectDescription";
      v32[0] = v23;
      v32[1] = v22;
      v31[2] = @"errorDescription";
      v32[2] = &stru_3C768;
      v24 = v23;
      v25 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:3];
      v26 = [NSError errorWithDomain:@"DebugHierarchyErrorDomain" code:100 userInfo:v25];

      v27 = v26;
      *error = v26;

      v15 = 0;
      error = 0;
    }

    else
    {
      v15 = 0;
    }

    goto LABEL_26;
  }

  v10 = NSClassFromString(&cfstr_Scnkeyedarchiv.isa);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    error = 0;
    goto LABEL_28;
  }

  v11 = [nameCopy isEqualToString:@"encodedPresentationScene"];
  v29[0] = SCNSceneExportEmbedImages;
  v29[1] = SCNSceneExportEmbedReferences;
  v30[0] = &__kCFBooleanTrue;
  v30[1] = &__kCFBooleanTrue;
  v29[2] = SCNSceneExportPresentationTree;
  v12 = [NSNumber numberWithBool:v11];
  v30[2] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:3];

  error = [(objc_class *)v10 archivedDataWithRootObject:objectCopy options:v13];
LABEL_27:

LABEL_28:

  return error;
}

@end