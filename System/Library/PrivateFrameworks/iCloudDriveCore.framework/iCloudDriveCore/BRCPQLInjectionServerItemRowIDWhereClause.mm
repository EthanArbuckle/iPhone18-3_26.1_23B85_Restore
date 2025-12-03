@interface BRCPQLInjectionServerItemRowIDWhereClause
+ (id)_createInjectionWithServerZoneID:(id)d;
- (BRCPQLInjectionServerItemRowIDWhereClause)initWithServerZoneID:(id)d;
@end

@implementation BRCPQLInjectionServerItemRowIDWhereClause

- (BRCPQLInjectionServerItemRowIDWhereClause)initWithServerZoneID:(id)d
{
  dCopy = d;
  v5 = [objc_opt_class() _createInjectionWithServerZoneID:dCopy];

  v8.receiver = self;
  v8.super_class = BRCPQLInjectionServerItemRowIDWhereClause;
  v6 = [(BRCPQLInjectionBase *)&v8 initWithActualInjection:v5];

  return v6;
}

+ (id)_createInjectionWithServerZoneID:(id)d
{
  if (d)
  {
    [MEMORY[0x277D82C08] formatInjection:{@" AND +si.zone_rowid = %@", d}];
  }

  else
  {
    [MEMORY[0x277D82C18] rawInjection:"" length:0];
  }
  v3 = ;

  return v3;
}

@end