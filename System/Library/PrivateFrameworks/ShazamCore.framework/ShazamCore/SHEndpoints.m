@interface SHEndpoints
- (SHEndpoints)initWithConfiguration:(id)a3 suggestedLanguage:(id)a4;
- (id)lookupURLPathForClientIdentifier:(id)a3;
- (id)matchURLPathForClientIdentifier:(id)a3;
@end

@implementation SHEndpoints

- (SHEndpoints)initWithConfiguration:(id)a3 suggestedLanguage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = SHEndpoints;
  v8 = [(SHEndpoints *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    endpoints = v8->_endpoints;
    v8->_endpoints = v9;

    objc_storeStrong(&v8->_suggestedLanguage, a4);
  }

  return v8;
}

- (id)matchURLPathForClientIdentifier:(id)a3
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"match", a3];
  v5 = [(SHEndpoints *)self endpoints];
  v6 = [v5 objectForKeyedSubscript:v4];
  v7 = [(SHEndpoints *)self endpoints];
  v8 = v7;
  if (v6)
  {
    v9 = v4;
  }

  else
  {
    v9 = @"match";
  }

  v10 = [v7 objectForKeyedSubscript:v9];

  return v10;
}

- (id)lookupURLPathForClientIdentifier:(id)a3
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"lookup", a3];
  v5 = [(SHEndpoints *)self endpoints];
  v6 = [v5 objectForKeyedSubscript:v4];
  v7 = [(SHEndpoints *)self endpoints];
  v8 = v7;
  if (v6)
  {
    v9 = v4;
  }

  else
  {
    v9 = @"lookup";
  }

  v10 = [v7 objectForKeyedSubscript:v9];

  return v10;
}

@end