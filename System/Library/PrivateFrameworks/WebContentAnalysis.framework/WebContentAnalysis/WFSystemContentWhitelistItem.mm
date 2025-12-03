@interface WFSystemContentWhitelistItem
- (BOOL)matchesURL:(id)l;
- (WFSystemContentWhitelistItem)initWithDomainGlob:(id)glob;
- (void)dealloc;
@end

@implementation WFSystemContentWhitelistItem

- (WFSystemContentWhitelistItem)initWithDomainGlob:(id)glob
{
  v6.receiver = self;
  v6.super_class = WFSystemContentWhitelistItem;
  v4 = [(WFSystemContentWhitelistItem *)&v6 init];
  if (v4)
  {
    v4->_utf8DomainGlob = strdup([glob UTF8String]);
  }

  return v4;
}

- (void)dealloc
{
  free(self->_utf8DomainGlob);
  v3.receiver = self;
  v3.super_class = WFSystemContentWhitelistItem;
  [(WFSystemContentWhitelistItem *)&v3 dealloc];
}

- (BOOL)matchesURL:(id)l
{
  host = [l host];
  if (host)
  {
    LOBYTE(host) = fnmatch(self->_utf8DomainGlob, [host UTF8String], 0) == 0;
  }

  return host;
}

@end