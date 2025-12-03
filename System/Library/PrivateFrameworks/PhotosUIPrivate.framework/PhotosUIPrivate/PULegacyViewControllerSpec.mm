@interface PULegacyViewControllerSpec
+ (id)padSpec;
+ (id)phoneSpec;
+ (id)specForIdiom:(int64_t)idiom;
+ (id)visionOSSpec;
@end

@implementation PULegacyViewControllerSpec

+ (id)visionOSSpec
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PULegacyViewControllerSpec.m" lineNumber:51 description:{@"Method %s is a responsibility of subclass %@", "+[PULegacyViewControllerSpec visionOSSpec]", v6}];

  abort();
}

+ (id)padSpec
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PULegacyViewControllerSpec.m" lineNumber:46 description:{@"Method %s is a responsibility of subclass %@", "+[PULegacyViewControllerSpec padSpec]", v6}];

  abort();
}

+ (id)phoneSpec
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PULegacyViewControllerSpec.m" lineNumber:41 description:{@"Method %s is a responsibility of subclass %@", "+[PULegacyViewControllerSpec phoneSpec]", v6}];

  abort();
}

+ (id)specForIdiom:(int64_t)idiom
{
  visionOSSpec = 0;
  if (idiom > 2)
  {
    if (idiom != 3)
    {
      if (idiom == 5)
      {
        visionOSSpec = [self visionOSSpec];
        goto LABEL_11;
      }

      if (idiom != 4)
      {
        goto LABEL_11;
      }

LABEL_8:
      visionOSSpec = [self padSpec];
      goto LABEL_11;
    }

LABEL_9:
    visionOSSpec = [self phoneSpec];
    goto LABEL_11;
  }

  if (idiom < 2)
  {
    goto LABEL_9;
  }

  if (idiom == 2)
  {
    goto LABEL_8;
  }

LABEL_11:

  return visionOSSpec;
}

@end