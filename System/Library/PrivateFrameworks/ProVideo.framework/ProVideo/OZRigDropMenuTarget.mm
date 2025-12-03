@interface OZRigDropMenuTarget
+ (id)rigDropMenuTargetForRig:(void *)rig;
@end

@implementation OZRigDropMenuTarget

+ (id)rigDropMenuTargetForRig:(void *)rig
{
  v4 = +[OZRigDropMenuTarget rigDropMenuTargetForRig:]::gpInstance;
  if (!+[OZRigDropMenuTarget rigDropMenuTargetForRig:]::gpInstance)
  {
    v4 = objc_alloc_init(OZRigDropMenuTarget);
    +[OZRigDropMenuTarget rigDropMenuTargetForRig:]::gpInstance = v4;
  }

  [(OZRigDropMenuTarget *)v4 setRig:rig];
  return +[OZRigDropMenuTarget rigDropMenuTargetForRig:]::gpInstance;
}

@end