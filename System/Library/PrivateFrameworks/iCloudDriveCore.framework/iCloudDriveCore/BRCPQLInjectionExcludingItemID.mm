@interface BRCPQLInjectionExcludingItemID
+ (id)_createInjection:(id)injection;
- (BRCPQLInjectionExcludingItemID)initWithExcludingItemID:(id)d;
@end

@implementation BRCPQLInjectionExcludingItemID

- (BRCPQLInjectionExcludingItemID)initWithExcludingItemID:(id)d
{
  dCopy = d;
  v5 = [objc_opt_class() _createInjection:dCopy];

  v8.receiver = self;
  v8.super_class = BRCPQLInjectionExcludingItemID;
  v6 = [(BRCPQLInjectionBase *)&v8 initWithActualInjection:v5];

  return v6;
}

+ (id)_createInjection:(id)injection
{
  if (injection)
  {
    [MEMORY[0x277D82C08] formatInjection:{@" item_id != %@", injection}];
  }

  else
  {
    [MEMORY[0x277D82C18] rawInjection:"1" length:1];
  }
  v3 = ;

  return v3;
}

@end