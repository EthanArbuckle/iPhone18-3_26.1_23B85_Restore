@interface BRCPQLInjectionServerItemRowIDWhereClause
+ (id)_createInjectionWithServerZoneID:(id)a3;
- (BRCPQLInjectionServerItemRowIDWhereClause)initWithServerZoneID:(id)a3;
@end

@implementation BRCPQLInjectionServerItemRowIDWhereClause

- (BRCPQLInjectionServerItemRowIDWhereClause)initWithServerZoneID:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _createInjectionWithServerZoneID:v4];

  v8.receiver = self;
  v8.super_class = BRCPQLInjectionServerItemRowIDWhereClause;
  v6 = [(BRCPQLInjectionBase *)&v8 initWithActualInjection:v5];

  return v6;
}

+ (id)_createInjectionWithServerZoneID:(id)a3
{
  if (a3)
  {
    [MEMORY[0x277D82C08] formatInjection:{@" AND +si.zone_rowid = %@", a3}];
  }

  else
  {
    [MEMORY[0x277D82C18] rawInjection:"" length:0];
  }
  v3 = ;

  return v3;
}

@end