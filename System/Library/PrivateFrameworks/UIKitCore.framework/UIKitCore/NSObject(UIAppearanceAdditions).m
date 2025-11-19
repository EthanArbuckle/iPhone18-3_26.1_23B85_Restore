@interface NSObject(UIAppearanceAdditions)
+ (uint64_t)_installAppearanceSwizzlesForSetter:()UIAppearanceAdditions;
@end

@implementation NSObject(UIAppearanceAdditions)

+ (uint64_t)_installAppearanceSwizzlesForSetter:()UIAppearanceAdditions
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = UIAppearancePrefixedSelectorForSelectorString(a3);
  v7 = NSSelectorFromString(a3);
  v8 = [a1 instanceMethodSignatureForSelector:v7];
  v9 = [v8 numberOfArguments];
  if (os_variant_has_internal_diagnostics())
  {
    if (v9 <= 2)
    {
      v25 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v30 = sel_getName(a2);
        _os_log_fault_impl(&dword_188A29000, v25, OS_LOG_TYPE_FAULT, "%s Not a setter!", buf, 0xCu);
      }
    }
  }

  else if (v9 <= 2)
  {
    v26 = *(__UILogGetCategoryCachedImpl("Assert", &_installAppearanceSwizzlesForSetter____s_category) + 8);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v30 = sel_getName(a2);
      _os_log_impl(&dword_188A29000, v26, OS_LOG_TYPE_ERROR, "%s Not a setter!", buf, 0xCu);
    }
  }

  v10 = [v8 getArgumentTypeAtIndex:2];
  v11 = v10;
  v12 = *v10;
  name = v6;
  if (v12 > 0x63)
  {
    if (*v10 <= 0x68u)
    {
      if ((v12 == 100 || v12 == 102) && !v10[1])
      {
LABEL_31:
        v16 = TaggingAppearanceGeneralSetterIMP;
        goto LABEL_38;
      }

LABEL_21:
      if (strcmp(v10, "{CGPoint=dd}") && strcmp(v11, "{CGSize=dd}") && strcmp(v11, "{UIOffset=dd}") && strcmp(v11, "{CGRect={CGPoint=dd}{CGSize=dd}}") && strcmp(v11, "{UIEdgeInsets=dddd}") && (v12 != 35 && v12 != 99 && v12 != 66 || v11[1]))
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"*** Illegal property type, %s for appearance setter, %@", v11, a3}];
      }

      goto LABEL_31;
    }

    if (v12 != 105)
    {
      if (v12 != 113)
      {
        goto LABEL_21;
      }

LABEL_16:
      if (v10[1])
      {
        goto LABEL_21;
      }

      v13 = v9 == 3;
      v14 = TaggingAppearanceGeneralSetterIMP;
      v15 = TaggingAppearanceIntegerSetterIMP;
      goto LABEL_35;
    }

LABEL_18:
    if (v10[1])
    {
      goto LABEL_21;
    }

    v13 = v9 == 3;
    v14 = TaggingAppearanceGeneralSetterIMP;
    v15 = TaggingAppearanceIntSetterIMP;
    goto LABEL_35;
  }

  if (v12 != 64)
  {
    if (v12 != 73)
    {
      if (v12 != 81)
      {
        goto LABEL_21;
      }

      goto LABEL_16;
    }

    goto LABEL_18;
  }

  if (v10[1])
  {
    goto LABEL_21;
  }

  v14 = TaggingAppearanceGeneralSetterIMP;
  if (v9 == 4)
  {
    v14 = TaggingAppearanceObjectSetter1IMP;
  }

  v13 = v9 == 3;
  v15 = TaggingAppearanceObjectSetterIMP;
LABEL_35:
  if (v13)
  {
    v16 = v15;
  }

  else
  {
    v16 = v14;
  }

LABEL_38:
  if (v9 >= 4)
  {
    v17 = *MEMORY[0x1E695D940];
    for (i = 3; v9 != i; ++i)
    {
      v19 = [v8 getArgumentTypeAtIndex:i];
      v20 = (((*v19 - 73) >> 3) | (32 * (*v19 - 73)));
      if (v20 > 3)
      {
        if (v20 != 4 && v20 != 5)
        {
LABEL_46:
          [MEMORY[0x1E695DF30] raise:v17 format:{@"*** Illegal axis type, %s, for appearance setter, %@. Expected NSInteger or NSUInteger", v19, a3}];
          continue;
        }
      }

      else if (v20 >= 2)
      {
        goto LABEL_46;
      }

      if (v19[1])
      {
        goto LABEL_46;
      }
    }
  }

  InstanceMethod = class_getInstanceMethod(a1, v7);
  TypeEncoding = method_getTypeEncoding(InstanceMethod);
  v23 = class_replaceMethod(a1, v7, v16, TypeEncoding);
  result = class_addMethod(a1, name, v23, TypeEncoding);
  if ((result & 1) == 0)
  {
    return [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  return result;
}

@end