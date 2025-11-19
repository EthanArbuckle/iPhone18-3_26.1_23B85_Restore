@interface WBSContentBlockerStatisticsFirstParty
- (BOOL)isEqual:(id)a3;
- (WBSContentBlockerStatisticsFirstParty)initWithDomain:(id)a3 lastSeen:(double)a4;
@end

@implementation WBSContentBlockerStatisticsFirstParty

- (WBSContentBlockerStatisticsFirstParty)initWithDomain:(id)a3 lastSeen:(double)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = WBSContentBlockerStatisticsFirstParty;
  v8 = [(WBSContentBlockerStatisticsFirstParty *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_domain, a3);
    v9->_lastSeen = a4;
    v10 = v9;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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