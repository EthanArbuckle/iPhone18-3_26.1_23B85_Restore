@interface BRCPQLInjectionExcludingItemGlobalID
+ (id)_createInjection:(id)injection;
- (BRCPQLInjectionExcludingItemGlobalID)initWithExcludingItemGlobalID:(id)d;
@end

@implementation BRCPQLInjectionExcludingItemGlobalID

- (BRCPQLInjectionExcludingItemGlobalID)initWithExcludingItemGlobalID:(id)d
{
  dCopy = d;
  v5 = [objc_opt_class() _createInjection:dCopy];

  v8.receiver = self;
  v8.super_class = BRCPQLInjectionExcludingItemGlobalID;
  v6 = [(BRCPQLInjectionBase *)&v8 initWithActualInjection:v5];

  return v6;
}

+ (id)_createInjection:(id)injection
{
  injectionCopy = injection;
  v4 = injectionCopy;
  if (injectionCopy)
  {
    v5 = MEMORY[0x277D82C08];
    itemID = [injectionCopy itemID];
    zoneRowID = [v4 zoneRowID];
    v8 = [v5 formatInjection:{@" AND NOT (item_id = %@ AND zone_rowid = %@)", itemID, zoneRowID}];
  }

  else
  {
    v8 = [MEMORY[0x277D82C18] rawInjection:"" length:0];
  }

  return v8;
}

@end