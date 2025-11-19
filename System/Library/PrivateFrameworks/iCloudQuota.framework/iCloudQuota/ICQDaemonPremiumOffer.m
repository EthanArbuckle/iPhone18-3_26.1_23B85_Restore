@interface ICQDaemonPremiumOffer
+ (id)_mutablePlaceholderPersistanceDictionary;
- (id)_initWithAccount:(id)a3 error:(id)a4;
@end

@implementation ICQDaemonPremiumOffer

+ (id)_mutablePlaceholderPersistanceDictionary
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___ICQDaemonPremiumOffer;
  v2 = objc_msgSendSuper2(&v4, sel__mutablePlaceholderPersistanceDictionary);
  [v2 setObject:&unk_2884436E8 forKey:@"isPremiumOffer"];

  return v2;
}

- (id)_initWithAccount:(id)a3 error:(id)a4
{
  v11.receiver = self;
  v11.super_class = ICQDaemonPremiumOffer;
  v4 = [(ICQDaemonOffer *)&v11 _initWithAccount:a3 error:a4];
  if (v4)
  {
    v5 = _ICQGetLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_275572000, v5, OS_LOG_TYPE_DEFAULT, "Creating premium offer placeholder", v10, 2u);
    }

    v6 = [v4 serverDictionary];
    v7 = [v6 mutableCopy];

    [v7 setObject:MEMORY[0x277CBEC38] forKey:@"isPremiumOffer"];
    [v7 setObject:@"PremiumJourneys" forKey:@"offerType"];
    [v7 setObject:@"PremiumJourneys" forKey:@"type"];
    v8 = [v7 copy];
    [v4 setServerDictionary:v8];
  }

  return v4;
}

@end