@interface WPLinkFilteringRule
- (WPLinkFilteringRule)initWithQueryParameter:(id)parameter domain:(id)domain path:(id)path;
- (id)description;
@end

@implementation WPLinkFilteringRule

- (WPLinkFilteringRule)initWithQueryParameter:(id)parameter domain:(id)domain path:(id)path
{
  parameterCopy = parameter;
  domainCopy = domain;
  pathCopy = path;
  v16.receiver = self;
  v16.super_class = WPLinkFilteringRule;
  v12 = [(WPLinkFilteringRule *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_queryParameter, parameter);
    objc_storeStrong(&v13->_domain, domain);
    objc_storeStrong(&v13->_path, path);
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