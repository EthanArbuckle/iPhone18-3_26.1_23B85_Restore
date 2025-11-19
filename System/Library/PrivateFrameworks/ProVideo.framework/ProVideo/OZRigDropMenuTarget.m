@interface OZRigDropMenuTarget
+ (id)rigDropMenuTargetForRig:(void *)a3;
@end

@implementation OZRigDropMenuTarget

+ (id)rigDropMenuTargetForRig:(void *)a3
{
  v4 = +[OZRigDropMenuTarget rigDropMenuTargetForRig:]::gpInstance;
  if (!+[OZRigDropMenuTarget rigDropMenuTargetForRig:]::gpInstance)
  {
    v4 = objc_alloc_init(OZRigDropMenuTarget);
    +[OZRigDropMenuTarget rigDropMenuTargetForRig:]::gpInstance = v4;
  }

  [(OZRigDropMenuTarget *)v4 setRig:a3];
  return +[OZRigDropMenuTarget rigDropMenuTargetForRig:]::gpInstance;
}

@end