@interface ICQDaemonEventOffer
+ (id)_mutablePlaceholderPersistanceDictionary;
- (id)_initWithAccount:(id)account error:(id)error;
@end

@implementation ICQDaemonEventOffer

+ (id)_mutablePlaceholderPersistanceDictionary
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___ICQDaemonEventOffer;
  v2 = objc_msgSendSuper2(&v4, sel__mutablePlaceholderPersistanceDictionary);
  [v2 setObject:&unk_288443B38 forKey:@"isEventOffer"];

  return v2;
}

- (id)_initWithAccount:(id)account error:(id)error
{
  v11.receiver = self;
  v11.super_class = ICQDaemonEventOffer;
  v4 = [(ICQDaemonOffer *)&v11 _initWithAccount:account error:error];
  if (v4)
  {
    v5 = _ICQGetLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_275572000, v5, OS_LOG_TYPE_DEFAULT, "Creating backup restored offer placeholder", v10, 2u);
    }

    serverDictionary = [v4 serverDictionary];
    v7 = [serverDictionary mutableCopy];

    [v7 setObject:MEMORY[0x277CBEC38] forKey:@"isEventOffer"];
    [v7 setObject:@"Event" forKey:@"offerType"];
    [v7 setObject:@"Event" forKey:@"type"];
    v8 = [v7 copy];
    [v4 setServerDictionary:v8];
  }

  return v4;
}

@end