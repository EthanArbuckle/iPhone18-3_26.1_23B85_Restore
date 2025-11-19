@interface ICQJetAnalytics
+ (void)preloadWithAccount:(id)a3;
- (ICQJetAnalytics)init;
@end

@implementation ICQJetAnalytics

+ (void)preloadWithAccount:(id)a3
{
  swift_beginAccess();
  if (qword_280A0D888)
  {
    v4 = a3;
  }

  else
  {
    qword_280A0D888 = sub_275752938(a3);
  }
}

- (ICQJetAnalytics)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for JetAnalytics();
  return [(ICQJetAnalytics *)&v3 init];
}

@end