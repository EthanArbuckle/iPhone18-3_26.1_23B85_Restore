@interface NSBundle(UINSBundleLocalizableStringAdditions)
+ (id)currentNibLoadingBundle;
+ (void)currentNibPath;
+ (void)popNibLoadingBundle;
+ (void)popNibPath;
+ (void)pushNibLoadingBundle:()UINSBundleLocalizableStringAdditions;
+ (void)pushNibPath:()UINSBundleLocalizableStringAdditions;
@end

@implementation NSBundle(UINSBundleLocalizableStringAdditions)

+ (void)popNibPath
{
  v0 = UICurrentNibPaths();
  [v0 removeLastObject];
}

+ (void)currentNibPath
{
  v0 = UICurrentNibPaths();
  lastObject = [v0 lastObject];

  null = [MEMORY[0x1E695DFB0] null];
  if (lastObject == null)
  {
    v3 = 0;
  }

  else
  {
    v3 = lastObject;
  }

  v4 = v3;

  return v3;
}

+ (id)currentNibLoadingBundle
{
  v0 = UICurrentNibLoadingBundles();
  lastObject = [v0 lastObject];

  return lastObject;
}

+ (void)popNibLoadingBundle
{
  v0 = UICurrentNibLoadingBundles();
  [v0 removeLastObject];
}

+ (void)pushNibPath:()UINSBundleLocalizableStringAdditions
{
  v6 = a3;
  v3 = UICurrentNibPaths();
  v4 = v3;
  if (v6)
  {
    [v3 addObject:v6];
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    [v4 addObject:null];
  }
}

+ (void)pushNibLoadingBundle:()UINSBundleLocalizableStringAdditions
{
  v3 = a3;
  v4 = UICurrentNibLoadingBundles();
  [v4 addObject:v3];
}

@end