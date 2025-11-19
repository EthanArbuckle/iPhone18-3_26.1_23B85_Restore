@interface VisionCoreValidationUtilities
+ (BOOL)validateObject:(id)a3 isKindOfClass:(Class)a4 basedOnClass:(Class)a5 error:(id *)a6;
@end

@implementation VisionCoreValidationUtilities

+ (BOOL)validateObject:(id)a3 isKindOfClass:(Class)a4 basedOnClass:(Class)a5 error:(id *)a6
{
  v9 = a3;
  if (!v9)
  {
    if (a6)
    {
      [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidArgumentWithLocalizedDescription:@"object is nil"];
      *a6 = v10 = 0;
      goto LABEL_13;
    }

LABEL_12:
    v10 = 0;
    goto LABEL_13;
  }

  if (a5 && ([(objc_class *)a4 isSubclassOfClass:a5]& 1) == 0)
  {
    if (a6)
    {
      v16 = objc_alloc(MEMORY[0x1E696AEC0]);
      v17 = NSStringFromClass(a4);
      v18 = NSStringFromClass(a5);
      v19 = [v16 initWithFormat:@"%@ is not a %@", v17, v18];

      *a6 = [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidArgumentWithLocalizedDescription:v19];
    }

    goto LABEL_12;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a6)
    {
      v11 = objc_alloc(MEMORY[0x1E696AEC0]);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = NSStringFromClass(a4);
      v15 = [v11 initWithFormat:@"%@ is not a %@", v13, v14];

      *a6 = [MEMORY[0x1E696ABC0] VisionCoreErrorForUnavailableResourceWithLocalizedDescription:v15];
    }

    goto LABEL_12;
  }

  v10 = 1;
LABEL_13:

  return v10;
}

@end