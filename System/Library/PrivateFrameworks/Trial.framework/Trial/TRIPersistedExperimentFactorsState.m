@interface TRIPersistedExperimentFactorsState
+ (id)descriptor;
@end

@implementation TRIPersistedExperimentFactorsState

+ (id)descriptor
{
  v2 = descriptor_descriptor;
  if (!descriptor_descriptor)
  {
    v5 = MEMORY[0x277D73B68];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    LODWORD(v9) = 0;
    v2 = [v5 allocDescriptorForClass:v6 rootClass:v7 file:TRITripersistedEvaluationStatusRoot_FileDescriptor() fields:&descriptor_fields fieldCount:3 storageSize:24 flags:v9];
    if (descriptor_descriptor)
    {
      [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
    }

    descriptor_descriptor = v2;
  }

  return v2;
}

@end