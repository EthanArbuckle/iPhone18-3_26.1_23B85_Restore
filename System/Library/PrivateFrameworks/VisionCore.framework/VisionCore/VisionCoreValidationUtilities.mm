@interface VisionCoreValidationUtilities
+ (BOOL)validateObject:(id)object isKindOfClass:(Class)class basedOnClass:(Class)onClass error:(id *)error;
@end

@implementation VisionCoreValidationUtilities

+ (BOOL)validateObject:(id)object isKindOfClass:(Class)class basedOnClass:(Class)onClass error:(id *)error
{
  objectCopy = object;
  if (!objectCopy)
  {
    if (error)
    {
      [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidArgumentWithLocalizedDescription:@"object is nil"];
      *error = v10 = 0;
      goto LABEL_13;
    }

LABEL_12:
    v10 = 0;
    goto LABEL_13;
  }

  if (onClass && ([(objc_class *)class isSubclassOfClass:onClass]& 1) == 0)
  {
    if (error)
    {
      v16 = objc_alloc(MEMORY[0x1E696AEC0]);
      v17 = NSStringFromClass(class);
      v18 = NSStringFromClass(onClass);
      v19 = [v16 initWithFormat:@"%@ is not a %@", v17, v18];

      *error = [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidArgumentWithLocalizedDescription:v19];
    }

    goto LABEL_12;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      v11 = objc_alloc(MEMORY[0x1E696AEC0]);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = NSStringFromClass(class);
      v15 = [v11 initWithFormat:@"%@ is not a %@", v13, v14];

      *error = [MEMORY[0x1E696ABC0] VisionCoreErrorForUnavailableResourceWithLocalizedDescription:v15];
    }

    goto LABEL_12;
  }

  v10 = 1;
LABEL_13:

  return v10;
}

@end