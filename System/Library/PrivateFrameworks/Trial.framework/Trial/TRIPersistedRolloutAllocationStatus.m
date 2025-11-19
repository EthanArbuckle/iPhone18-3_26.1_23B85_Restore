@interface TRIPersistedRolloutAllocationStatus
+ (id)descriptor;
@end

@implementation TRIPersistedRolloutAllocationStatus

+ (id)descriptor
{
  v2 = descriptor_descriptor_72;
  if (!descriptor_descriptor_72)
  {
    v5 = MEMORY[0x277D73B68];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    LODWORD(v9) = 0;
    v2 = [v5 allocDescriptorForClass:v6 rootClass:v7 file:TRITripersistedAllocationStatusRoot_FileDescriptor() fields:&descriptor_fields_73 fieldCount:4 storageSize:32 flags:v9];
    [v2 setupExtraTextInfo:&unk_22EADCA0D];
    if (descriptor_descriptor_72)
    {
      [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
    }

    descriptor_descriptor_72 = v2;
  }

  return v2;
}

@end