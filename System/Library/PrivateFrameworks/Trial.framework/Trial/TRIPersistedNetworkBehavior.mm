@interface TRIPersistedNetworkBehavior
+ (id)descriptor;
@end

@implementation TRIPersistedNetworkBehavior

+ (id)descriptor
{
  v2 = _MergedGlobals_3;
  if (!_MergedGlobals_3)
  {
    v5 = MEMORY[0x277D73B68];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    if (!qword_280ACAD98)
    {
      qword_280ACAD98 = [objc_alloc(MEMORY[0x277D73B78]) initWithPackage:@"TRI" objcPrefix:@"TRI" syntax:2];
    }

    LODWORD(v9) = 1;
    v2 = [v5 allocDescriptorForClass:v6 rootClass:v7 file:v9 fields:? fieldCount:? storageSize:? flags:?];
    [v2 setupExtraTextInfo:&unk_22EADC958];
    if (_MergedGlobals_3)
    {
      [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
    }

    _MergedGlobals_3 = v2;
  }

  return v2;
}

@end