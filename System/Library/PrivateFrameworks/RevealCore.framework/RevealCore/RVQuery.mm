@interface RVQuery
- (RVQuery)initWithCoder:(id)coder;
- (RVQuery)initWithTitle:(id)title clientIdentifier:(id)identifier userAgent:(id)agent queryID:(int64_t)d queryProvider:(id)provider;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RVQuery

- (RVQuery)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = RVQuery;
  v5 = [(RVQuery *)&v13 init];
  if (v5)
  {
    v5->_queryID = [coderCopy decodeIntegerForKey:@"queryID"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userAgent"];
    userAgent = v5->_userAgent;
    v5->_userAgent = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  queryID = self->_queryID;
  coderCopy = coder;
  [coderCopy encodeInteger:queryID forKey:@"queryID"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_userAgent forKey:@"userAgent"];
  [coderCopy encodeObject:self->_title forKey:@"title"];
}

- (RVQuery)initWithTitle:(id)title clientIdentifier:(id)identifier userAgent:(id)agent queryID:(int64_t)d queryProvider:(id)provider
{
  titleCopy = title;
  identifierCopy = identifier;
  agentCopy = agent;
  providerCopy = provider;
  v22.receiver = self;
  v22.super_class = RVQuery;
  v17 = [(RVQuery *)&v22 init];
  v18 = v17;
  if (v17)
  {
    v17->_queryID = d;
    objc_storeStrong(&v17->_identifier, identifier);
    objc_storeStrong(&v18->_userAgent, agent);
    objc_storeStrong(&v18->_title, title);
    v19 = MEMORY[0x266726510](providerCopy);
    queryProvider = v18->_queryProvider;
    v18->_queryProvider = v19;
  }

  return v18;
}

@end