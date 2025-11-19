@interface TRISelectRolloutNotificationListPersistedTask
+ (id)descriptor;
@end

@implementation TRISelectRolloutNotificationListPersistedTask

+ (id)descriptor
{
  v2 = descriptor_descriptor_377;
  if (!descriptor_descriptor_377)
  {
    v5 = MEMORY[0x277D73B68];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    LODWORD(v9) = 0;
    v2 = [v5 allocDescriptorForClass:v6 rootClass:v7 file:TRITripersistedTasksRoot_FileDescriptor() fields:descriptor_fields_378 fieldCount:3 storageSize:24 flags:v9];
    if (descriptor_descriptor_377)
    {
      [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
    }

    descriptor_descriptor_377 = v2;
  }

  return v2;
}

@end