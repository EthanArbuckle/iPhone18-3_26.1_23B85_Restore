@interface WPLinkFilteringRule
- (WPLinkFilteringRule)initWithQueryParameter:(id)a3 domain:(id)a4 path:(id)a5;
- (id)description;
@end

@implementation WPLinkFilteringRule

- (WPLinkFilteringRule)initWithQueryParameter:(id)a3 domain:(id)a4 path:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = WPLinkFilteringRule;
  v12 = [(WPLinkFilteringRule *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_queryParameter, a3);
    objc_storeStrong(&v13->_domain, a4);
    objc_storeStrong(&v13->_path, a5);
    v14 = v13;
  }

  return v13;
}

- (id)description
{
  if ([(NSString *)self->_domain length]|| [(NSString *)self->_path length])
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ - %@ - %@", self->_queryParameter, self->_domain, self->_path];
  }

  else
  {
    v3 = self->_queryParameter;
  }

  return v3;
}

@end