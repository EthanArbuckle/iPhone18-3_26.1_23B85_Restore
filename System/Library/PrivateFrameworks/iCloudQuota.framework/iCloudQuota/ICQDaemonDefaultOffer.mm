@interface ICQDaemonDefaultOffer
+ (id)_mutablePlaceholderPersistanceDictionary;
@end

@implementation ICQDaemonDefaultOffer

+ (id)_mutablePlaceholderPersistanceDictionary
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___ICQDaemonDefaultOffer;
  v2 = objc_msgSendSuper2(&v4, sel__mutablePlaceholderPersistanceDictionary);
  [v2 setObject:&unk_288443700 forKey:@"isDefaultOffer"];

  return v2;
}

@end