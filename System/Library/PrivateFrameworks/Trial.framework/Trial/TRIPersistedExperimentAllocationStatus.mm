@interface TRIPersistedExperimentAllocationStatus
+ (id)descriptor;
@end

@implementation TRIPersistedExperimentAllocationStatus

+ (id)descriptor
{
  v2 = descriptor_descriptor_28;
  if (!descriptor_descriptor_28)
  {
    v5 = MEMORY[0x277D73B68];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    LODWORD(v9) = 0;
    v2 = [v5 allocDescriptorForClass:v6 rootClass:v7 file:TRITripersistedAllocationStatusRoot_FileDescriptor() fields:descriptor_fields_29 fieldCount:5 storageSize:40 flags:v9];
    if (descriptor_descriptor_28)
    {
      [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
    }

    descriptor_descriptor_28 = v2;
  }

  return v2;
}

@end