@interface SFPrivacyProxyTraffic
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation SFPrivacyProxyTraffic

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<SFPrivacyProxyTraffic:\n\tsafariUnencrypted:\t\t%u\n\tsafariDNS:\t\t\t%u\n\tsafariTrackers:\t\t\t%u\n\tsafariAll:\t\t\t%u\n\tsafariHTTP:\t\t\t%u\n\tmailTrackers:\t\t\t%u\n\tanyUnencrypted:\t\t\t%u\n\tanyDNS:\t\t\t\t%u\n\tanyKnownTrackers:\t\t%u\n\tanyAppTrackers:\t\t\t%u\n\tnewsURLResolution:\t\t%u\n", -[SFPrivacyProxyTraffic safariUnencrypted](self, "safariUnencrypted"), -[SFPrivacyProxyTraffic safariDNS](self, "safariDNS"), -[SFPrivacyProxyTraffic safariTrackers](self, "safariTrackers"), -[SFPrivacyProxyTraffic safariAll](self, "safariAll"), -[SFPrivacyProxyTraffic safariHTTP](self, "safariHTTP"), -[SFPrivacyProxyTraffic mailTrackers](self, "mailTrackers"), -[SFPrivacyProxyTraffic anyUnencrypted](self, "anyUnencrypted"), -[SFPrivacyProxyTraffic anyDNS](self, "anyDNS"), -[SFPrivacyProxyTraffic anyKnownTrackers](self, "anyKnownTrackers"), -[SFPrivacyProxyTraffic anyAppTrackers](self, "anyAppTrackers"), -[SFPrivacyProxyTraffic newsURLResolution](self, "newsURLResolution")];

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[SFPrivacyProxyTraffic allocWithZone:?]];
  [(SFPrivacyProxyTraffic *)v4 setSafariUnencrypted:[(SFPrivacyProxyTraffic *)self safariUnencrypted]];
  [(SFPrivacyProxyTraffic *)v4 setSafariDNS:[(SFPrivacyProxyTraffic *)self safariDNS]];
  [(SFPrivacyProxyTraffic *)v4 setSafariTrackers:[(SFPrivacyProxyTraffic *)self safariTrackers]];
  [(SFPrivacyProxyTraffic *)v4 setSafariAll:[(SFPrivacyProxyTraffic *)self safariAll]];
  [(SFPrivacyProxyTraffic *)v4 setSafariHTTP:[(SFPrivacyProxyTraffic *)self safariHTTP]];
  [(SFPrivacyProxyTraffic *)v4 setMailTrackers:[(SFPrivacyProxyTraffic *)self mailTrackers]];
  [(SFPrivacyProxyTraffic *)v4 setAnyUnencrypted:[(SFPrivacyProxyTraffic *)self anyUnencrypted]];
  [(SFPrivacyProxyTraffic *)v4 setAnyDNS:[(SFPrivacyProxyTraffic *)self anyDNS]];
  [(SFPrivacyProxyTraffic *)v4 setAnyKnownTrackers:[(SFPrivacyProxyTraffic *)self anyKnownTrackers]];
  [(SFPrivacyProxyTraffic *)v4 setAnyAppTrackers:[(SFPrivacyProxyTraffic *)self anyAppTrackers]];
  [(SFPrivacyProxyTraffic *)v4 setNewsURLResolution:[(SFPrivacyProxyTraffic *)self newsURLResolution]];
  return v4;
}

@end