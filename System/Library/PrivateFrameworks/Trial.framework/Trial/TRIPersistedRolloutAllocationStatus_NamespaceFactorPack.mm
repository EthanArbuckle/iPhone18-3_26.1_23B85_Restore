@interface TRIPersistedRolloutAllocationStatus_NamespaceFactorPack
+ (id)descriptor;
@end

@implementation TRIPersistedRolloutAllocationStatus_NamespaceFactorPack

+ (id)descriptor
{
  v2 = descriptor_descriptor_91;
  if (!descriptor_descriptor_91)
  {
    v5 = MEMORY[0x277D73B68];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    LODWORD(v9) = 0;
    v2 = [v5 allocDescriptorForClass:v6 rootClass:v7 file:TRITripersistedAllocationStatusRoot_FileDescriptor() fields:&descriptor_fields_92 fieldCount:2 storageSize:24 flags:v9];
    [v2 setupExtraTextInfo:&unk_22EADCA25];
    [v2 setupContainingMessageClassName:"TRIPersistedRolloutAllocationStatus"];
    if (descriptor_descriptor_91)
    {
      [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
    }

    descriptor_descriptor_91 = v2;
  }

  return v2;
}

@end