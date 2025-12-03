@interface SHEndpoints
- (SHEndpoints)initWithConfiguration:(id)configuration suggestedLanguage:(id)language;
- (id)lookupURLPathForClientIdentifier:(id)identifier;
- (id)matchURLPathForClientIdentifier:(id)identifier;
@end

@implementation SHEndpoints

- (SHEndpoints)initWithConfiguration:(id)configuration suggestedLanguage:(id)language
{
  configurationCopy = configuration;
  languageCopy = language;
  v12.receiver = self;
  v12.super_class = SHEndpoints;
  v8 = [(SHEndpoints *)&v12 init];
  if (v8)
  {
    v9 = [configurationCopy copy];
    endpoints = v8->_endpoints;
    v8->_endpoints = v9;

    objc_storeStrong(&v8->_suggestedLanguage, language);
  }

  return v8;
}

- (id)matchURLPathForClientIdentifier:(id)identifier
{
  identifier = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"match", identifier];
  endpoints = [(SHEndpoints *)self endpoints];
  v6 = [endpoints objectForKeyedSubscript:identifier];
  endpoints2 = [(SHEndpoints *)self endpoints];
  v8 = endpoints2;
  if (v6)
  {
    v9 = identifier;
  }

  else
  {
    v9 = @"match";
  }

  v10 = [endpoints2 objectForKeyedSubscript:v9];

  return v10;
}

- (id)lookupURLPathForClientIdentifier:(id)identifier
{
  identifier = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"lookup", identifier];
  endpoints = [(SHEndpoints *)self endpoints];
  v6 = [endpoints objectForKeyedSubscript:identifier];
  endpoints2 = [(SHEndpoints *)self endpoints];
  v8 = endpoints2;
  if (v6)
  {
    v9 = identifier;
  }

  else
  {
    v9 = @"lookup";
  }

  v10 = [endpoints2 objectForKeyedSubscript:v9];

  return v10;
}

@end