@interface ICQDaemonBuddyOffer
+ (id)_mutablePlaceholderPersistanceDictionary;
@end

@implementation ICQDaemonBuddyOffer

+ (id)_mutablePlaceholderPersistanceDictionary
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___ICQDaemonBuddyOffer;
  v2 = objc_msgSendSuper2(&v4, sel__mutablePlaceholderPersistanceDictionary);
  [v2 setObject:&unk_288443DC0 forKey:@"isBuddyOffer"];

  return v2;
}

@end