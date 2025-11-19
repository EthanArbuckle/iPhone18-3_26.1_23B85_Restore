@interface REMXPCStorageClasses
+ (id)remStorageClasses;
@end

@implementation REMXPCStorageClasses

+ (id)remStorageClasses
{
  if (remStorageClasses_onceToken != -1)
  {
    +[REMXPCStorageClasses remStorageClasses];
  }

  v3 = remStorageClasses___sResult;

  return v3;
}

uint64_t __41__REMXPCStorageClasses_remStorageClasses__block_invoke()
{
  v0 = MEMORY[0x1E695DFD8];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  remStorageClasses___sResult = [v0 setWithObjects:{v1, v2, v3, v4, v5, v6, objc_opt_class(), 0}];

  return MEMORY[0x1EEE66BB8]();
}

@end