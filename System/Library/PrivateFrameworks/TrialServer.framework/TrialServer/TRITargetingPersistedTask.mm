@interface TRITargetingPersistedTask
+ (id)descriptor;
@end

@implementation TRITargetingPersistedTask

+ (id)descriptor
{
  v2 = descriptor_descriptor_165;
  if (!descriptor_descriptor_165)
  {
    v5 = MEMORY[0x277D73B68];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    LODWORD(v9) = 0;
    v2 = [v5 allocDescriptorForClass:v6 rootClass:v7 file:TRITripersistedTasksRoot_FileDescriptor() fields:&descriptor_fields_166 fieldCount:5 storageSize:32 flags:v9];
    if (descriptor_descriptor_165)
    {
      [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
    }

    descriptor_descriptor_165 = v2;
  }

  return v2;
}

@end