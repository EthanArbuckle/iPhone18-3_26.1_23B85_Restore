@interface TRSetupConfigurationResponse
- (TRSetupConfigurationResponse)initWithCoder:(id)coder;
- (id)_stringFromAccountServices:(id)services;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TRSetupConfigurationResponse

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = TRSetupConfigurationResponse;
  [(TRMessage *)&v6 encodeWithCoder:coderCopy];
  if (self->_needsNetwork)
  {
    [coderCopy encodeBool:1 forKey:@"TRSetupConfigurationMessages_nN"];
  }

  unauthenticatedAccountServices = self->_unauthenticatedAccountServices;
  if (unauthenticatedAccountServices)
  {
    [coderCopy encodeObject:unauthenticatedAccountServices forKey:@"TRSetupConfigurationMessages_uAS"];
  }

  if (self->_useAIDA)
  {
    [coderCopy encodeBool:1 forKey:@"TRSetupConfigurationMessages_uAIDA"];
  }
}

- (TRSetupConfigurationResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = TRSetupConfigurationResponse;
  v5 = [(TRMessage *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_needsNetwork = [coderCopy decodeBoolForKey:@"TRSetupConfigurationMessages_nN"];
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"TRSetupConfigurationMessages_uAS"];
    unauthenticatedAccountServices = v5->_unauthenticatedAccountServices;
    v5->_unauthenticatedAccountServices = v9;

    v5->_useAIDA = [coderCopy decodeBoolForKey:@"TRSetupConfigurationMessages_uAIDA"];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  if (self->_needsNetwork)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v5 = [(TRSetupConfigurationResponse *)self _stringFromAccountServices:self->_unauthenticatedAccountServices];
  v6 = [v3 stringWithFormat:@"needsNetwork:%@ unauthenticatedAccountServices:%@", v4, v5];

  v7 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = TRSetupConfigurationResponse;
  v8 = [(TRMessage *)&v11 description];
  v9 = [v7 stringWithFormat:@"%@ %@", v8, v6];

  return v9;
}

- (id)_stringFromAccountServices:(id)services
{
  v18 = *MEMORY[0x277D85DE8];
  servicesCopy = services;
  string = [MEMORY[0x277CCAB68] string];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = servicesCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = StringFromTRAccountService([*(*(&v13 + 1) + 8 * i) unsignedIntegerValue]);
        [string appendString:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return string;
}

@end