@interface SSBLookupResult
- (BOOL)isKnownToBeUnsafe;
- (BOOL)isMalware;
- (BOOL)isPhishing;
- (BOOL)isUnwantedSoftware;
- (SSBLookupResult)initWithCoder:(id)coder;
- (id)_initWithServiceLookUpResults:(id)results URLContainsUserInfo:(BOOL)info;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SSBLookupResult

- (id)_initWithServiceLookUpResults:(id)results URLContainsUserInfo:(BOOL)info
{
  resultsCopy = results;
  v12.receiver = self;
  v12.super_class = SSBLookupResult;
  v8 = [(SSBLookupResult *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_serviceLookupResults, results);
    v9->_URLContainsUserInfo = info;
    v10 = v9;
  }

  return v9;
}

- (SSBLookupResult)initWithCoder:(id)coder
{
  v12[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = MEMORY[0x277CBEB98];
  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v7 = [v5 setWithArray:v6];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"result"];

  v9 = -[SSBLookupResult _initWithServiceLookUpResults:URLContainsUserInfo:](self, "_initWithServiceLookUpResults:URLContainsUserInfo:", v8, [coderCopy decodeBoolForKey:@"urlContainsUserInfo"]);
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_serviceLookupResults forKey:@"result"];
  [coderCopy encodeBool:self->_URLContainsUserInfo forKey:@"urlContainsUserInfo"];
}

- (BOOL)isMalware
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_serviceLookupResults;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * i) isMalware])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)isPhishing
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_serviceLookupResults;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * i) isPhishing])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)isUnwantedSoftware
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_serviceLookupResults;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * i) isUnwantedSoftware])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)isKnownToBeUnsafe
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_serviceLookupResults;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * i) isKnownToBeUnsafe])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

@end