@interface BRCPQLInjectionExcludingItemGlobalID
+ (id)_createInjection:(id)a3;
- (BRCPQLInjectionExcludingItemGlobalID)initWithExcludingItemGlobalID:(id)a3;
@end

@implementation BRCPQLInjectionExcludingItemGlobalID

- (BRCPQLInjectionExcludingItemGlobalID)initWithExcludingItemGlobalID:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _createInjection:v4];

  v8.receiver = self;
  v8.super_class = BRCPQLInjectionExcludingItemGlobalID;
  v6 = [(BRCPQLInjectionBase *)&v8 initWithActualInjection:v5];

  return v6;
}

+ (id)_createInjection:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = MEMORY[0x277D82C08];
    v6 = [v3 itemID];
    v7 = [v4 zoneRowID];
    v8 = [v5 formatInjection:{@" AND NOT (item_id = %@ AND zone_rowid = %@)", v6, v7}];
  }

  else
  {
    v8 = [MEMORY[0x277D82C18] rawInjection:"" length:0];
  }

  return v8;
}

@end