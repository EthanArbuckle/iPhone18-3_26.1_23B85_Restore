@interface TRIDisenrollRolloutPersistedTask
+ (id)descriptor;
@end

@implementation TRIDisenrollRolloutPersistedTask

+ (id)descriptor
{
  v2 = descriptor_descriptor_384;
  if (!descriptor_descriptor_384)
  {
    v5 = MEMORY[0x277D73B68];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    LODWORD(v9) = 1;
    v2 = [v5 allocDescriptorForClass:v6 rootClass:v7 file:TRITripersistedTasksRoot_FileDescriptor() fields:&descriptor_fields_385 fieldCount:2 storageSize:16 flags:v9];
    [v2 setupExtraTextInfo:&unk_26F6C74CC];
    if (descriptor_descriptor_384)
    {
      [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
    }

    descriptor_descriptor_384 = v2;
  }

  return v2;
}

@end