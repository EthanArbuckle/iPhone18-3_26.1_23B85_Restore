@interface TRIRetargetAllPersistedTask
+ (id)descriptor;
@end

@implementation TRIRetargetAllPersistedTask

+ (id)descriptor
{
  v2 = descriptor_descriptor_198;
  if (!descriptor_descriptor_198)
  {
    v5 = MEMORY[0x277D73B68];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    LODWORD(v9) = 0;
    v2 = [v5 allocDescriptorForClass:v6 rootClass:v7 file:TRITripersistedTasksRoot_FileDescriptor() fields:descriptor_fields_199 fieldCount:1 storageSize:16 flags:v9];
    if (descriptor_descriptor_198)
    {
      [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
    }

    descriptor_descriptor_198 = v2;
  }

  return v2;
}

@end