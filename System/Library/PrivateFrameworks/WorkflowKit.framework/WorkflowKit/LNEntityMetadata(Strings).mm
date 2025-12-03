@interface LNEntityMetadata(Strings)
+ (BOOL)wf_addDescriptionMethodsToClass:()Strings withEntityType:appBundleIdentifier:;
+ (id)wf_descriptionClassForEntityType:()Strings appBundleIdentifier:;
@end

@implementation LNEntityMetadata(Strings)

+ (BOOL)wf_addDescriptionMethodsToClass:()Strings withEntityType:appBundleIdentifier:
{
  v8 = a4;
  v9 = a5;
  Class = object_getClass(a3);
  v11 = [self wf_descriptionClassForEntityType:v8 appBundleIdentifier:v9];
  if (v11)
  {
    v12 = object_getClass(v11);
    outCount = 0;
    v13 = class_copyMethodList(v12, &outCount);
    v14 = v13;
    v15 = outCount;
    if (outCount)
    {
      LOBYTE(v16) = 1;
      v17 = v13;
      do
      {
        if (v16)
        {
          Name = method_getName(*v17);
          Implementation = method_getImplementation(*v17);
          TypeEncoding = method_getTypeEncoding(*v17);
          v16 = class_addMethod(Class, Name, Implementation, TypeEncoding);
          v15 = outCount;
        }

        else
        {
          v16 = 0;
        }

        ++v17;
      }

      while (v17 != &v14[v15]);
    }

    else
    {
      v16 = 1;
    }

    free(v14);
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

+ (id)wf_descriptionClassForEntityType:()Strings appBundleIdentifier:
{
  v5 = wf_descriptionClassForEntityType_appBundleIdentifier__token;
  v6 = a4;
  v7 = a3;
  if (v5 != -1)
  {
    dispatch_once(&wf_descriptionClassForEntityType_appBundleIdentifier__token, &__block_literal_global_18941);
  }

  v8 = [wf_descriptionClassForEntityType_appBundleIdentifier__descriptionClassForEntityTypeByAppBundleIdentifier objectForKeyedSubscript:v6];

  v9 = [v8 objectForKeyedSubscript:v7];

  return v9;
}

@end