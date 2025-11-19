@interface TRIPersistedFactorsState
+ (id)descriptor;
@end

@implementation TRIPersistedFactorsState

+ (id)descriptor
{
  v2 = descriptor_descriptor_20;
  if (!descriptor_descriptor_20)
  {
    v5 = MEMORY[0x277D73B68];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    LODWORD(v9) = 0;
    v2 = [v5 allocDescriptorForClass:v6 rootClass:v7 file:TRITripersistedEvaluationStatusRoot_FileDescriptor() fields:off_280ACAD60 fieldCount:1 storageSize:16 flags:v9];
    [v2 setupOneofs:_MergedGlobals_2 count:1 firstHasIndex:0xFFFFFFFFLL];
    if (descriptor_descriptor_20)
    {
      [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
    }

    descriptor_descriptor_20 = v2;
  }

  return v2;
}

@end