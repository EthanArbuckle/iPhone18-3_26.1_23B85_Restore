@interface TRIDeactivateTreatmentPersistedTask
+ (id)descriptor;
@end

@implementation TRIDeactivateTreatmentPersistedTask

+ (id)descriptor
{
  v2 = descriptor_descriptor_112;
  if (!descriptor_descriptor_112)
  {
    v5 = MEMORY[0x277D73B68];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    LODWORD(v9) = 1;
    v2 = [v5 allocDescriptorForClass:v6 rootClass:v7 file:TRITripersistedTasksRoot_FileDescriptor() fields:&descriptor_fields_113 fieldCount:7 storageSize:40 flags:v9];
    [v2 setupExtraTextInfo:&unk_26F6C7189];
    if (descriptor_descriptor_112)
    {
      [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
    }

    descriptor_descriptor_112 = v2;
  }

  return v2;
}

@end