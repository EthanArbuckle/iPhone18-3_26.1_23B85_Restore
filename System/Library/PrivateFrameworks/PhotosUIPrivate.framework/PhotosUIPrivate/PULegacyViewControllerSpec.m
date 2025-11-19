@interface PULegacyViewControllerSpec
+ (id)padSpec;
+ (id)phoneSpec;
+ (id)specForIdiom:(int64_t)a3;
+ (id)visionOSSpec;
@end

@implementation PULegacyViewControllerSpec

+ (id)visionOSSpec
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:a1 file:@"PULegacyViewControllerSpec.m" lineNumber:51 description:{@"Method %s is a responsibility of subclass %@", "+[PULegacyViewControllerSpec visionOSSpec]", v6}];

  abort();
}

+ (id)padSpec
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:a1 file:@"PULegacyViewControllerSpec.m" lineNumber:46 description:{@"Method %s is a responsibility of subclass %@", "+[PULegacyViewControllerSpec padSpec]", v6}];

  abort();
}

+ (id)phoneSpec
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:a1 file:@"PULegacyViewControllerSpec.m" lineNumber:41 description:{@"Method %s is a responsibility of subclass %@", "+[PULegacyViewControllerSpec phoneSpec]", v6}];

  abort();
}

+ (id)specForIdiom:(int64_t)a3
{
  v4 = 0;
  if (a3 > 2)
  {
    if (a3 != 3)
    {
      if (a3 == 5)
      {
        v4 = [a1 visionOSSpec];
        goto LABEL_11;
      }

      if (a3 != 4)
      {
        goto LABEL_11;
      }

LABEL_8:
      v4 = [a1 padSpec];
      goto LABEL_11;
    }

LABEL_9:
    v4 = [a1 phoneSpec];
    goto LABEL_11;
  }

  if (a3 < 2)
  {
    goto LABEL_9;
  }

  if (a3 == 2)
  {
    goto LABEL_8;
  }

LABEL_11:

  return v4;
}

@end