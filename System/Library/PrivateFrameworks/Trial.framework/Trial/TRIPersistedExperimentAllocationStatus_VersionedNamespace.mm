@interface TRIPersistedExperimentAllocationStatus_VersionedNamespace
+ (id)descriptor;
@end

@implementation TRIPersistedExperimentAllocationStatus_VersionedNamespace

+ (id)descriptor
{
  v2 = descriptor_descriptor_57;
  if (!descriptor_descriptor_57)
  {
    v5 = MEMORY[0x277D73B68];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    LODWORD(v9) = 0;
    v2 = [v5 allocDescriptorForClass:v6 rootClass:v7 file:TRITripersistedAllocationStatusRoot_FileDescriptor() fields:&descriptor_fields_58 fieldCount:2 storageSize:16 flags:v9];
    [v2 setupExtraTextInfo:&unk_22EADCA08];
    [v2 setupContainingMessageClassName:"TRIPersistedExperimentAllocationStatus"];
    if (descriptor_descriptor_57)
    {
      [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
    }

    descriptor_descriptor_57 = v2;
  }

  return v2;
}

@end