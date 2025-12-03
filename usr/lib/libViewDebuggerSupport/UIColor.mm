@interface UIColor
- (id)fallback_debugHierarchyValueWithOutOptions:(id *)options outError:(id *)error;
@end

@implementation UIColor

- (id)fallback_debugHierarchyValueWithOutOptions:(id *)options outError:(id *)error
{
  v6 = objc_opt_class();
  if (!v6 || (v7 = v6, !object_isClass(v6)))
  {
    v9 = 0;
    goto LABEL_4;
  }

  v8 = NSStringFromClass(v7);
  v9 = v8;
  if (!v8)
  {
LABEL_4:
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    goto LABEL_7;
  }

  v11 = v8;
LABEL_7:
  v12 = v11;

  v45[0] = @"propertyFormat";
  v45[1] = @"propertyRuntimeType";
  v46[0] = @"color";
  v46[1] = v12;
  v13 = DebugHierarchyTargetHub_ptr;
  v14 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:2];
  *options = v14;
  cGColor = [(UIColor *)self CGColor];
  if (cGColor)
  {
    v44 = v14;
    Mutable = CFDictionaryCreateMutable(0, 20, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    space = CGColorGetColorSpace(cGColor);
    v16 = CGColorSpaceCopyName(space);
    NumberOfComponents = CGColorGetNumberOfComponents(cGColor);
    v18 = NumberOfComponents << 32;
    v19 = NumberOfComponents;
    if (NumberOfComponents << 32)
    {
      v41 = v16;
      v20 = v12;
      v21 = CFStringCreateMutable(0, 0);
      v22 = v19 - 1;
      if (v19 <= 1)
      {
        v23 = 1;
      }

      else
      {
        v23 = v19;
      }

      do
      {
        CFStringAppend(v21, @"CGf");
        if (v22)
        {
          CFStringAppend(v21, @", ");
        }

        --v22;
        --v23;
      }

      while (v23);
      v12 = v20;
      v13 = DebugHierarchyTargetHub_ptr;
      v16 = v41;
    }

    else
    {
      v21 = &stru_3C768;
    }

    Components = CGColorGetComponents(cGColor);
    v25 = malloc_type_malloc(v18 >> 29, 0x6004044C4A2DFuLL);
    if (v18)
    {
      v26 = 0;
      if (v19 <= 1)
      {
        v27 = 1;
      }

      else
      {
        v27 = v19;
      }

      do
      {
        v25[v26++] = CFNumberCreate(0, kCFNumberCGFloatType, Components++);
      }

      while (v27 != v26);
      v28 = CFArrayCreate(0, v25, v19, &kCFTypeArrayCallBacks);
      v29 = v25;
      do
      {
        v30 = *v29++;
        CFRelease(v30);
        --v27;
      }

      while (v27);
    }

    else
    {
      v28 = CFArrayCreate(0, v25, v19, &kCFTypeArrayCallBacks);
    }

    free(v25);
    CGColorSpaceGetModel(space);
    cGColor = Mutable;
    v14 = v44;
    if (v28)
    {
      CFDictionaryAddValue(Mutable, @"componentValues", v28);
    }

    if (v21)
    {
      CFDictionaryAddValue(Mutable, @"componentValuesFormat", v21);
    }

    if (v16)
    {
      CFDictionaryAddValue(Mutable, @"colorSpaceName", v16);
    }

    if (v28)
    {
      CFRelease(v28);
    }

    if (v16)
    {
      CFRelease(v16);
    }

    if (v21)
    {
      CFRelease(v21);
    }
  }

  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    _debugName = [(UIColor *)self _debugName];
    if (_debugName)
    {
    }

    else
    {
      _debugCatalogBundleIdentifier = [(UIColor *)self _debugCatalogBundleIdentifier];

      if (!_debugCatalogBundleIdentifier)
      {
        goto LABEL_48;
      }
    }

    v33 = v13;
    v34 = [(CGColor *)cGColor mutableCopy];
    _debugCatalogBundleIdentifier2 = [(UIColor *)self _debugCatalogBundleIdentifier];

    if (_debugCatalogBundleIdentifier2)
    {
      _debugCatalogBundleIdentifier3 = [(UIColor *)self _debugCatalogBundleIdentifier];
      [v34 setObject:_debugCatalogBundleIdentifier3 forKeyedSubscript:@"catalogBundleID"];
    }

    _debugName2 = [(UIColor *)self _debugName];

    if (_debugName2)
    {
      _debugName3 = [(UIColor *)self _debugName];
      [v34 setObject:_debugName3 forKeyedSubscript:@"colorName"];
    }

    v39 = [v33[37] dictionaryWithDictionary:v34];

    cGColor = v39;
  }

LABEL_48:

  return cGColor;
}

@end