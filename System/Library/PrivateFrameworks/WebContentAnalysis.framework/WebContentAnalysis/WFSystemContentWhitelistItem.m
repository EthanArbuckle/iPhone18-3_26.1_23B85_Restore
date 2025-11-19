@interface WFSystemContentWhitelistItem
- (BOOL)matchesURL:(id)a3;
- (WFSystemContentWhitelistItem)initWithDomainGlob:(id)a3;
- (void)dealloc;
@end

@implementation WFSystemContentWhitelistItem

- (WFSystemContentWhitelistItem)initWithDomainGlob:(id)a3
{
  v6.receiver = self;
  v6.super_class = WFSystemContentWhitelistItem;
  v4 = [(WFSystemContentWhitelistItem *)&v6 init];
  if (v4)
  {
    v4->_utf8DomainGlob = strdup([a3 UTF8String]);
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

- (BOOL)matchesURL:(id)a3
{
  v4 = [a3 host];
  if (v4)
  {
    LOBYTE(v4) = fnmatch(self->_utf8DomainGlob, [v4 UTF8String], 0) == 0;
  }

  return v4;
}

@end