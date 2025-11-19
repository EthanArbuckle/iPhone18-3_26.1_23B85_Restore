@interface TRIAnyPersistedTask
+ (id)descriptor;
@end

@implementation TRIAnyPersistedTask

+ (id)descriptor
{
  v2 = descriptor_descriptor;
  if (!descriptor_descriptor)
  {
    v5 = MEMORY[0x277D73B68];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    LODWORD(v9) = 1;
    v2 = [v5 allocDescriptorForClass:v6 rootClass:v7 file:TRITripersistedTasksRoot_FileDescriptor() fields:&descriptor_fields_3 fieldCount:2 storageSize:16 flags:v9];
    if (descriptor_descriptor)
    {
      [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
    }

    descriptor_descriptor = v2;
  }

  return v2;
}

@end