@interface TRIPersistedTreatment
+ (id)descriptor;
@end

@implementation TRIPersistedTreatment

+ (id)descriptor
{
  v2 = _MergedGlobals_24;
  if (!_MergedGlobals_24)
  {
    v5 = MEMORY[0x277D73B68];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    if (!qword_281597600)
    {
      qword_281597600 = [objc_alloc(MEMORY[0x277D73B78]) initWithPackage:@"TRI" objcPrefix:@"TRI" syntax:2];
    }

    LODWORD(v9) = 0;
    v2 = [v5 allocDescriptorForClass:v6 rootClass:v7 file:v9 fields:? fieldCount:? storageSize:? flags:?];
    if (_MergedGlobals_24)
    {
      [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
    }

    _MergedGlobals_24 = v2;
  }

  return v2;
}

@end