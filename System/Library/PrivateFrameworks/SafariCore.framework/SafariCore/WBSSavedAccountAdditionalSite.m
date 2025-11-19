@interface WBSSavedAccountAdditionalSite
- (BOOL)isEqual:(id)a3;
- (WBSSavedAccountAdditionalSite)initWithDictionaryRepresentation:(id)a3;
- (WBSSavedAccountAdditionalSite)initWithSite:(id)a3;
- (id)dictionaryRepresentation;
@end

@implementation WBSSavedAccountAdditionalSite

- (WBSSavedAccountAdditionalSite)initWithSite:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WBSSavedAccountAdditionalSite;
  v6 = [(WBSSavedAccountAdditionalSite *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_site, a3);
    v8 = v7;
  }

  return v7;
}

- (WBSSavedAccountAdditionalSite)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WBSSavedAccountAdditionalSite;
  v5 = [(WBSSavedAccountAdditionalSite *)&v10 init];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [v4 objectForKeyedSubscript:@"s"];
    site = v5->_site;
    v5->_site = v6;

    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  site = self->_site;
  if (site)
  {
    [v3 setObject:site forKeyedSubscript:@"s"];
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      site = self->_site;
      v6 = [(WBSSavedAccountAdditionalSite *)v4 site];
      v7 = WBSIsEqual(site, v6);
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end