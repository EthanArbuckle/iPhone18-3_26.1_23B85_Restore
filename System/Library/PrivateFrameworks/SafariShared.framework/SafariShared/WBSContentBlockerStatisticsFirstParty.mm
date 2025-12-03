@interface WBSContentBlockerStatisticsFirstParty
- (BOOL)isEqual:(id)equal;
- (WBSContentBlockerStatisticsFirstParty)initWithDomain:(id)domain lastSeen:(double)seen;
@end

@implementation WBSContentBlockerStatisticsFirstParty

- (WBSContentBlockerStatisticsFirstParty)initWithDomain:(id)domain lastSeen:(double)seen
{
  domainCopy = domain;
  v12.receiver = self;
  v12.super_class = WBSContentBlockerStatisticsFirstParty;
  v8 = [(WBSContentBlockerStatisticsFirstParty *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_domain, domain);
    v9->_lastSeen = seen;
    v10 = v9;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      if ([(NSString *)v5->_domain isEqualToString:self->_domain])
      {
        v6 = v5->_lastSeen == self->_lastSeen;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end