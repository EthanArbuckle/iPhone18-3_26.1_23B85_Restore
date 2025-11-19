@interface BRCPQLInjectionExcludingItemID
+ (id)_createInjection:(id)a3;
- (BRCPQLInjectionExcludingItemID)initWithExcludingItemID:(id)a3;
@end

@implementation BRCPQLInjectionExcludingItemID

- (BRCPQLInjectionExcludingItemID)initWithExcludingItemID:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _createInjection:v4];

  v8.receiver = self;
  v8.super_class = BRCPQLInjectionExcludingItemID;
  v6 = [(BRCPQLInjectionBase *)&v8 initWithActualInjection:v5];

  return v6;
}

+ (id)_createInjection:(id)a3
{
  if (a3)
  {
    [MEMORY[0x277D82C08] formatInjection:{@" item_id != %@", a3}];
  }

  else
  {
    [MEMORY[0x277D82C18] rawInjection:"1" length:1];
  }
  v3 = ;

  return v3;
}

@end