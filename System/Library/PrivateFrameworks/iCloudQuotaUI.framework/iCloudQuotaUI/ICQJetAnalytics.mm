@interface ICQJetAnalytics
+ (void)preloadWithAccount:(id)account;
- (ICQJetAnalytics)init;
@end

@implementation ICQJetAnalytics

+ (void)preloadWithAccount:(id)account
{
  swift_beginAccess();
  if (qword_280A0D888)
  {
    accountCopy = account;
  }

  else
  {
    qword_280A0D888 = sub_275752938(account);
  }
}

- (ICQJetAnalytics)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for JetAnalytics();
  return [(ICQJetAnalytics *)&v3 init];
}

@end