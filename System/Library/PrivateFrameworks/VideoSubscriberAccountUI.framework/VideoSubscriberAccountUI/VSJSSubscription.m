@interface VSJSSubscription
+ (id)toVSSubscriptions:(id)a3;
- (VSJSSubscription)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)toVSSubscription;
@end

@implementation VSJSSubscription

- (VSJSSubscription)init
{
  v3 = [MEMORY[0x277D1B028] currentAppContext];
  v10.receiver = self;
  v10.super_class = VSJSSubscription;
  v4 = [(IKJSObject *)&v10 initWithAppContext:v3];

  if (v4)
  {
    bundleId = v4->_bundleId;
    v4->_bundleId = &stru_2880B8BB0;

    v6 = [MEMORY[0x277CBEAA8] distantFuture];
    expirationDate = v4->_expirationDate;
    v4->_expirationDate = v6;

    v4->_accessLevel = 0;
    billingIdentifier = v4->_billingIdentifier;
    v4->_billingIdentifier = &stru_2880B8BB0;
  }

  return v4;
}

- (id)toVSSubscription
{
  v3 = objc_alloc_init(MEMORY[0x277CE22F0]);
  v4 = objc_alloc_init(MEMORY[0x277CE2300]);
  [v4 setValue:&unk_2880D26C8 forKey:@"kind"];
  v5 = [(VSJSSubscription *)self bundleId];
  [v4 setValue:v5 forKey:@"identifier"];

  [v3 setSource:v4];
  [v3 setAccessLevel:{-[VSJSSubscription accessLevel](self, "accessLevel")}];
  v6 = [(VSJSSubscription *)self tierIdentifiers];
  v7 = [v6 copy];
  [v3 setTierIdentifiers:v7];

  v8 = [(VSJSSubscription *)self billingIdentifier];
  v9 = [v8 copy];
  [v3 setBillingIdentifier:v9];

  return v3;
}

+ (id)toVSSubscriptions:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) toVSSubscription];
        if ([v10 accessLevel])
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [VSJSSubscription allocWithZone:a3];
  v5 = [(IKJSObject *)self appContext];
  v6 = [(IKJSObject *)v4 initWithAppContext:v5];

  v7 = [(NSString *)self->_bundleId copy];
  bundleId = v6->_bundleId;
  v6->_bundleId = v7;

  v6->_accessLevel = self->_accessLevel;
  v9 = [(NSArray *)self->_tierIdentifiers copy];
  tierIdentifiers = v6->_tierIdentifiers;
  v6->_tierIdentifiers = v9;

  v11 = [(NSString *)self->_billingIdentifier copy];
  billingIdentifier = v6->_billingIdentifier;
  v6->_billingIdentifier = v11;

  return v6;
}

@end