@interface WBSUserAgentQuirksSnapshot
- (BOOL)isEqual:(id)equal;
- (WBSUserAgentQuirksSnapshot)initWithSnapshotData:(id)data error:(id *)error;
- (id)quirkTypeForURLString:(id)string withDefaultUserAgent:(id)agent;
@end

@implementation WBSUserAgentQuirksSnapshot

- (WBSUserAgentQuirksSnapshot)initWithSnapshotData:(id)data error:(id *)error
{
  dataCopy = data;
  v37.receiver = self;
  v37.super_class = WBSUserAgentQuirksSnapshot;
  v7 = [(WBSUserAgentQuirksSnapshot *)&v37 init];
  if (v7)
  {
    v8 = [MEMORY[0x1E695DF20] safari_dictionaryWithPropertyListData:dataCopy options:0];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 objectForKeyedSubscript:@"UserAgentQuirks"];
      v11 = v10;
      if (v10 && [v10 count])
      {
        v12 = [v9 objectForKeyedSubscript:@"SitesRequiringUserAgentQuirks"];
        v13 = v12;
        if (v12 && [v12 count])
        {
          v33 = 0;
          v34 = &v33;
          v35 = 0x2020000000;
          v36 = 1;
          v27 = 0;
          v28 = &v27;
          v29 = 0x3032000000;
          v30 = __Block_byref_object_copy__37;
          v31 = __Block_byref_object_dispose__37;
          v32 = 0;
          v23[0] = MEMORY[0x1E69E9820];
          v23[1] = 3221225472;
          v23[2] = __57__WBSUserAgentQuirksSnapshot_initWithSnapshotData_error___block_invoke;
          v23[3] = &unk_1E7FCB320;
          v25 = &v27;
          v26 = &v33;
          v24 = v11;
          [v13 enumerateKeysAndObjectsUsingBlock:v23];
          if (error)
          {
            v14 = v28[5];
            if (v14)
            {
              *error = v14;
            }
          }

          if (*(v34 + 24) == 1)
          {
            v15 = [v9 copy];
            domainsToQuirkTypes = v7->_domainsToQuirkTypes;
            v7->_domainsToQuirkTypes = v15;

            v17 = [(NSDictionary *)v7->_domainsToQuirkTypes objectForKeyedSubscript:@"UserAgentQuirks"];
            userAgentQuirks = v7->_userAgentQuirks;
            v7->_userAgentQuirks = v17;

            v19 = [(NSDictionary *)v7->_domainsToQuirkTypes objectForKeyedSubscript:@"SitesRequiringUserAgentQuirks"];
            sitesRequiringUserAgentQuirks = v7->_sitesRequiringUserAgentQuirks;
            v7->_sitesRequiringUserAgentQuirks = v19;

            v21 = v7;
          }

          else
          {
            v21 = 0;
          }

          _Block_object_dispose(&v27, 8);
          _Block_object_dispose(&v33, 8);
        }

        else if (error)
        {
          [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:259 userInfo:0];
          *error = v21 = 0;
        }

        else
        {
          v21 = 0;
        }
      }

      else if (error)
      {
        [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:259 userInfo:0];
        *error = v21 = 0;
      }

      else
      {
        v21 = 0;
      }
    }

    else if (error)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:259 userInfo:0];
      *error = v21 = 0;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

void __57__WBSUserAgentQuirksSnapshot_initWithSnapshotData_error___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v10 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([*(a1 + 32) objectForKey:v10], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:259 userInfo:0];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    *(*(*(a1 + 48) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (id)quirkTypeForURLString:(id)string withDefaultUserAgent:(id)agent
{
  stringCopy = string;
  agentCopy = agent;
  v8 = [stringCopy safari_simplifiedUserVisibleURLStringWithSimplifications:495 forDisplayOnly:0 simplifiedStringOffset:0];
  if ([v8 hasSuffix:@"/"])
  {
    v9 = [v8 substringToIndex:{objc_msgSend(v8, "length") - 1}];

    v8 = v9;
  }

  v10 = [(NSDictionary *)self->_sitesRequiringUserAgentQuirks objectForKeyedSubscript:v8];
  if (!v10)
  {
    v11 = [stringCopy safari_simplifiedUserVisibleURLStringWithSimplifications:511 forDisplayOnly:0 simplifiedStringOffset:0];
    v10 = [(NSDictionary *)self->_sitesRequiringUserAgentQuirks objectForKeyedSubscript:v11];
    if (!v10)
    {
      safari_highLevelDomainFromHost = [stringCopy safari_highLevelDomainFromHost];
      v10 = [(NSDictionary *)self->_sitesRequiringUserAgentQuirks objectForKeyedSubscript:safari_highLevelDomainFromHost];
    }
  }

  v13 = [(NSDictionary *)self->_userAgentQuirks objectForKeyedSubscript:v10];
  v14 = v13;
  if (agentCopy && !v13)
  {
    if ([v10 containsString:@"*"])
    {
      v14 = [v10 stringByReplacingOccurrencesOfString:@"*" withString:agentCopy];
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NSDictionary *)self->_domainsToQuirkTypes isEqualToDictionary:equalCopy->_domainsToQuirkTypes];
  }

  return v5;
}

@end