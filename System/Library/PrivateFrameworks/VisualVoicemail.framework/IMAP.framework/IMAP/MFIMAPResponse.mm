@interface MFIMAPResponse
- (MFIMAPResponse)init;
- (MFIMAPResponse)initWithConnection:(id)connection responseConsumer:(id)consumer;
- (MFIMAPResponse)initWithString:(id)string;
- (id).cxx_construct;
- (id)description;
- (id)fetchResultWithType:(int)type;
- (id)fetchResults;
- (id)mailboxName;
- (id)responseInfo;
- (id)separator;
- (id)userData;
- (id)userString;
- (int)responseCode;
- (unint64_t)number;
- (void)dealloc;
- (void)fetchResults;
- (void)setCapabilities:(id)capabilities;
- (void)setFetchResults:(id)results;
- (void)setFlags:(id)flags;
- (void)setFlagsFetchResult:(id)result;
- (void)setMailboxAttributes:(unint64_t)attributes separator:(id)separator mailboxName:(id)name extraAttributes:(id)extraAttributes;
- (void)setMailboxName:(id)name quotaRootNames:(id)names;
- (void)setMailboxName:(id)name statusEntries:(id)entries;
- (void)setNumber:(unint64_t)number;
- (void)setPrivateNamespaces:(id)namespaces;
- (void)setPublicNamespaces:(id)namespaces;
- (void)setQuotaRootName:(id)name quotas:(id)quotas;
- (void)setResponseName:(id)name parameters:(id)parameters;
- (void)setResponseType:(int)type;
- (void)setSearchResults:(id)results;
- (void)setServerInfo:(id)info;
- (void)setSharedNamespaces:(id)namespaces;
- (void)setUids:(id)uids;
- (void)setUserData:(id)data responseCode:(int)code responseInfo:(id)info;
- (void)setValue:(id)value forKey:(id)key;
@end

@implementation MFIMAPResponse

- (void)setResponseType:(int)type
  v5 = {;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(MFIMAPResponse *)type setResponseType:v5];
  }

  *(self + 8) = type;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MFIMAPResponse;
  [(MFIMAPResponse *)&v2 dealloc];
}

- (int)responseCode
{
  if (*(self + 8) - 1 > 5)
  {
    return 0;
  }

  else
  {
    return self->_data.basic.responseCode;
  }
}

- (id)responseInfo
{
  if (*(self + 8) - 1 > 5)
  {
    v5 = 0;
  }

  else
  {
    responseInfoAndOrUserData = self->_data.basic.responseInfoAndOrUserData;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [self->_data.basic.responseInfoAndOrUserData objectAtIndex:0];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)userData
{
  if (*(self + 8) - 1 > 5)
  {
    v7 = 0;
  }

  else
  {
    responseInfoAndOrUserData = self->_data.basic.responseInfoAndOrUserData;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v6 = self->_data.basic.responseInfoAndOrUserData;
    if (isKindOfClass)
    {
      v7 = [v6 objectAtIndex:1];
    }

    else
    {
      v7 = v6;
    }
  }

  return v7;
}

- (id)userString
{
  userData = [(MFIMAPResponse *)self userData];
  if (userData)
  {
    v3 = MFCreateStringWithData();
    if (!v3)
    {
      v3 = CFStringCreateWithBytes(0, [userData bytes], objc_msgSend(userData, "length"), 0x600u, 0);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setUserData:(id)data responseCode:(int)code responseInfo:(id)info
{
  dataCopy = data;
  infoCopy = info;
  if (*(self + 8) - 1 > 5)
  {
    v10 = dataCopy;
    goto LABEL_13;
  }

  self->_data.basic.responseCode = code;
  if ([MEMORY[0x277D24ED0] isValidBase64:dataCopy])
  {
    mf_decodeBase64 = [dataCopy mf_decodeBase64];

    if (!infoCopy)
    {
LABEL_4:
      v10 = mf_decodeBase64;
      if (self->_data.basic.responseInfoAndOrUserData == mf_decodeBase64)
      {
        goto LABEL_13;
      }

      v11 = mf_decodeBase64;
      responseInfoAndOrUserData = self->_data.basic.responseInfoAndOrUserData;
      v17 = v11;
      self->_data.basic.responseInfoAndOrUserData = v11;
      goto LABEL_12;
    }
  }

  else
  {
    mf_decodeBase64 = dataCopy;
    if (!infoCopy)
    {
      goto LABEL_4;
    }
  }

  v13 = objc_allocWithZone(MEMORY[0x277CBEA60]);
  responseInfoAndOrUserData = mf_decodeBase64;
  if (!mf_decodeBase64)
  {
    responseInfoAndOrUserData = [MEMORY[0x277CBEA90] data];
  }

  v14 = [v13 initWithObjects:{infoCopy, responseInfoAndOrUserData, 0}];
  v15 = self->_data.basic.responseInfoAndOrUserData;
  self->_data.basic.responseInfoAndOrUserData = v14;

  v10 = mf_decodeBase64;
  if (!mf_decodeBase64)
  {
    v17 = 0;
LABEL_12:

    v10 = v17;
  }

LABEL_13:
  v18 = v10;
}

- (void)setCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  capabilities = self->_data.capabilities;
  p_capabilities = &self->_data.capabilities;
  if (capabilities != capabilitiesCopy)
  {
    v8 = capabilitiesCopy;
    objc_storeStrong(p_capabilities, capabilities);
    capabilitiesCopy = v8;
  }
}

- (void)setServerInfo:(id)info
{
  infoCopy = info;
  serverInfo = self->_data.serverInfo;
  p_serverInfo = &self->_data.serverInfo;
  if (serverInfo != infoCopy)
  {
    v8 = infoCopy;
    objc_storeStrong(p_serverInfo, info);
    infoCopy = v8;
  }
}

- (unint64_t)number
{
  v2 = *(self + 8) - 9;
  if (v2 <= 8 && ((0x107u >> v2) & 1) != 0)
  {
    return *(&self->super.isa + qword_2721700C8[(*(self + 8) - 9)]);
  }

  else
  {
    return 0;
  }
}

- (void)setNumber:(unint64_t)number
{
  v3 = *(self + 8) - 9;
  if (v3 <= 8 && ((0x107u >> v3) & 1) != 0)
  {
    *(&self->super.isa + qword_2721700C8[(*(self + 8) - 9)]) = number;
  }
}

- (void)setFlags:(id)flags
{
  flagsCopy = flags;
  if (self->_data.flags != flagsCopy)
  {
    v7 = flagsCopy;
    v5 = createFixedMutableArray(flagsCopy);
    flags = self->_data.flags;
    self->_data.flags = v5;

    flagsCopy = v7;
  }
}

- (id)mailboxName
{
  v3 = *(self + 8);
  if ((v3 - 15) < 2)
  {
    if (self->_data.list.separatorAndOrMboxName)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      separatorAndOrMboxName = self->_data.list.separatorAndOrMboxName;
      if (isKindOfClass)
      {
        v7 = [(extraAttributes *)separatorAndOrMboxName objectAtIndex:1];
        goto LABEL_13;
      }
    }

    else
    {
      separatorAndOrMboxName = 0;
    }

    v7 = separatorAndOrMboxName;
  }

  else
  {
    if (v3 == 13)
    {
      mailboxName = self->_data.status.mailboxName;
      goto LABEL_9;
    }

    if (v3 == 18)
    {
      mailboxName = self->_data.quotaRoot.mailboxName;
LABEL_9:
      v7 = mailboxName;
      goto LABEL_13;
    }

    v7 = 0;
  }

LABEL_13:

  return v7;
}

- (void)setMailboxName:(id)name statusEntries:(id)entries
{
  nameCopy = name;
  entriesCopy = entries;
  if (self->_data.status.mailboxName != nameCopy)
  {
    objc_storeStrong(&self->_data.status.mailboxName, name);
  }

  if (self->_data.status.entries != entriesCopy)
  {
    v8 = entriesCopy;
    v9 = [(NSDictionary *)v8 count];
    if (v9)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, v9, v8);
    }

    else
    {
      if (!v8)
      {
        v11 = 0;
        goto LABEL_9;
      }

      MutableCopy = [MEMORY[0x277CBEAC0] dictionary];
    }

    v11 = MutableCopy;
LABEL_9:

    entries = self->_data.status.entries;
    self->_data.status.entries = v11;
  }
}

- (void)setSearchResults:(id)results
{
  resultsCopy = results;
  if (self->_data.searchResults != resultsCopy)
  {
    v7 = resultsCopy;
    v5 = createFixedMutableArray(resultsCopy);
    searchResults = self->_data.searchResults;
    self->_data.searchResults = v5;

    resultsCopy = v7;
  }
}

- (id)separator
{
  if (self->_data.list.separatorAndOrMboxName && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [(extraAttributes *)self->_data.list.separatorAndOrMboxName objectAtIndex:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setMailboxAttributes:(unint64_t)attributes separator:(id)separator mailboxName:(id)name extraAttributes:(id)extraAttributes
{
  values[2] = *MEMORY[0x277D85DE8];
  separatorCopy = separator;
  nameCopy = name;
  extraAttributesCopy = extraAttributes;
  p_separatorAndOrMboxName = &self->_data.list.separatorAndOrMboxName;
  separatorAndOrMboxName = self->_data.list.separatorAndOrMboxName;
  self->_data.list.mailboxAttributes = attributes;
  if (separatorAndOrMboxName != nameCopy)
  {
    if (separatorCopy)
    {
      values[0] = separatorCopy;
      values[1] = nameCopy;
      v15 = CFArrayCreate(0, values, 2, MEMORY[0x277CBF128]);
      v16 = *p_separatorAndOrMboxName;
      *p_separatorAndOrMboxName = v15;
    }

    else
    {
      objc_storeStrong(&self->_data.list.separatorAndOrMboxName, name);
    }
  }

  var0 = self->_data.list.var0;
  p_var0 = &self->_data.list.var0;
  if (var0 != extraAttributesCopy)
  {
    objc_storeStrong(p_var0, extraAttributes);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)fetchResultWithType:(int)type
{
  v17 = *MEMORY[0x277D85DE8];
  [(MFIMAPResponse *)self fetchResults];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v4 = v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 type] == type)
        {
          v9 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)fetchResults
{
  v3 = self + 8;
  if (*(self + 8) != 17)
    v4 = {;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(MFIMAPResponse *)v3 fetchResults];
    }

    if (*v3 != 17)
    {
      [MFIMAPResponse fetchResults];
    }
  }

  items = self->_data.fetch.items;

  return items;
}

- (void)setFetchResults:(id)results
{
  resultsCopy = results;
  if (self->_data.fetch.items != resultsCopy)
  {
    v7 = resultsCopy;
    v5 = createFixedMutableArray(resultsCopy);
    items = self->_data.fetch.items;
    self->_data.fetch.items = v5;

    resultsCopy = v7;
  }
}

- (void)setMailboxName:(id)name quotaRootNames:(id)names
{
  nameCopy = name;
  namesCopy = names;
  if (self->_data.quotaRoot.mailboxName != nameCopy)
  {
    objc_storeStrong(&self->_data.quotaRoot.mailboxName, name);
  }

  if (self->_data.quotaRoot.quotaRootNames != namesCopy)
  {
    v8 = createFixedMutableArray(namesCopy);
    quotaRootNames = self->_data.quotaRoot.quotaRootNames;
    self->_data.quotaRoot.quotaRootNames = v8;
  }
}

- (void)setQuotaRootName:(id)name quotas:(id)quotas
{
  nameCopy = name;
  quotasCopy = quotas;
  if (self->_data.quota.quotaRootName != nameCopy)
  {
    objc_storeStrong(&self->_data.quota.quotaRootName, name);
  }

  if (self->_data.quota.quotas != quotasCopy)
  {
    v8 = createFixedMutableArray(quotasCopy);
    quotas = self->_data.quota.quotas;
    self->_data.quota.quotas = v8;
  }
}

- (void)setUids:(id)uids
{
  uidsCopy = uids;
  uids = self->_data.uidFlags.uids;
  p_uidFlags = &self->_data.uidFlags;
  if (uids != uidsCopy)
  {
    v8 = uidsCopy;
    objc_storeStrong(&p_uidFlags->uids, uids);
    uidsCopy = v8;
  }
}

- (void)setFlagsFetchResult:(id)result
{
  resultCopy = result;
  flagsFetchResult = self->_data.uidFlags.flagsFetchResult;
  p_flagsFetchResult = &self->_data.uidFlags.flagsFetchResult;
  if (flagsFetchResult != resultCopy)
  {
    v8 = resultCopy;
    objc_storeStrong(p_flagsFetchResult, result);
    resultCopy = v8;
  }
}

- (void)setPrivateNamespaces:(id)namespaces
{
  namespacesCopy = namespaces;
  privateNamespaces = self->_data.namespaces.privateNamespaces;
  p_namespaces = &self->_data.namespaces;
  if (privateNamespaces != namespacesCopy)
  {
    v8 = namespacesCopy;
    objc_storeStrong(&p_namespaces->privateNamespaces, namespaces);
    namespacesCopy = v8;
  }
}

- (void)setPublicNamespaces:(id)namespaces
{
  namespacesCopy = namespaces;
  publicNamespaces = self->_data.namespaces.publicNamespaces;
  p_publicNamespaces = &self->_data.namespaces.publicNamespaces;
  if (publicNamespaces != namespacesCopy)
  {
    v8 = namespacesCopy;
    objc_storeStrong(p_publicNamespaces, namespaces);
    namespacesCopy = v8;
  }
}

- (void)setSharedNamespaces:(id)namespaces
{
  namespacesCopy = namespaces;
  sharedNamespaces = self->_data.namespaces.sharedNamespaces;
  p_sharedNamespaces = &self->_data.namespaces.sharedNamespaces;
  if (sharedNamespaces != namespacesCopy)
  {
    v8 = namespacesCopy;
    objc_storeStrong(p_sharedNamespaces, namespaces);
    namespacesCopy = v8;
  }
}

- (void)setValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  keyValuePairs = self->_keyValuePairs;
  if (!keyValuePairs)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v9 = self->_keyValuePairs;
    self->_keyValuePairs = v8;

    keyValuePairs = self->_keyValuePairs;
  }

  [(NSDictionary *)keyValuePairs setValue:valueCopy forKey:keyCopy];
}

- (void)setResponseName:(id)name parameters:(id)parameters
{
  nameCopy = name;
  parametersCopy = parameters;
  if (self->_data.other.name != nameCopy)
  {
    objc_storeStrong(&self->_data.other.name, name);
  }

  parameters = self->_data.other.parameters;
  p_parameters = &self->_data.other.parameters;
  if (parameters != parametersCopy)
  {
    objc_storeStrong(p_parameters, parameters);
  }
}

- (id)description
{
  v80 = *MEMORY[0x277D85DE8];
  string = [MEMORY[0x277CCAB68] string];
  if ([(MFIMAPResponse *)self isUntagged])
  {
    [string appendString:@"* "];
  }

  if (self->_tag)
  {
    [string appendString:?];
    [string appendString:@" "];
  }

  [string appendFormat:@"%s ", ResponseTypeTable[4 * *(self + 8) + 1]];
  switch(*(self + 8))
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
      responseCode = [(MFIMAPResponse *)self responseCode];
      v4 = ResponseCodeTable[responseCode];
      responseInfo = [(MFIMAPResponse *)self responseInfo];
      userString = [(MFIMAPResponse *)self userString];
      if (responseCode || responseInfo)
      {
        [string appendString:@"["];
        if (responseCode)
        {
          [string appendFormat:@"%s", v4];
        }

        if (responseInfo)
        {
          [string appendString:@" "];
          v7 = [(__CFString *)responseInfo description];
          [string appendString:v7];
        }

        [string appendString:@"]"];
      }

      if ([userString length])
      {
        [string appendString:@" "];
        [string appendString:userString];
      }

      goto LABEL_72;
    case 7:
      capabilities = [(MFIMAPResponse *)self capabilities];
      allKeys = [capabilities componentsJoinedByString:@" "];
      [string appendString:allKeys];
      goto LABEL_63;
    case 8:
    case 0x15:
      capabilities = [(MFIMAPResponse *)self serverInfo];
      allKeys = [capabilities allKeys];
      v10 = [allKeys count];
      objc_msgSend(string, "appendString:", @"(");
      if (v10)
      {
        for (i = 0; i != v10; ++i)
        {
          v12 = [allKeys objectAtIndex:i];
          if (i)
          {
            [string appendString:@" "];
          }

          v13 = [capabilities objectForKey:v12];
          [string appendFormat:@"%@ %@", v12, v13];
        }
      }

      [string appendString:@""]);
      goto LABEL_63;
    case 9:
    case 0xA:
    case 0xB:
      [string appendFormat:@"%llu", -[MFIMAPResponse number](self, "number")];
      goto LABEL_99;
    case 0xC:
      capabilities = [(MFIMAPResponse *)self flags];
      allKeys = [capabilities componentsJoinedByString:@" "];
      [string appendFormat:@"(%@)", allKeys];
LABEL_63:

      goto LABEL_64;
    case 0xD:
      responseInfo = [(MFIMAPResponse *)self statusEntries];
      allKeys2 = [(__CFString *)responseInfo allKeys];
      v22 = [allKeys2 count];
      mailboxName = [(MFIMAPResponse *)self mailboxName];
      [string appendFormat:@"%@", mailboxName];

      objc_msgSend(string, "appendString:", @" (");
      if (v22)
      {
        for (j = 0; j != v22; ++j)
        {
          v25 = [allKeys2 objectAtIndex:j];
          if (j)
          {
            [string appendString:@" "];
          }

          v26 = [(__CFString *)responseInfo objectForKey:v25];
          [string appendFormat:@"%@ %@", v25, v26];
        }
      }

      [string appendString:@""]);
      goto LABEL_97;
    case 0xF:
    case 0x10:
      responseInfo = [(MFIMAPResponse *)self separator];
      obj = [(MFIMAPResponse *)self mailboxName];
      mailboxAttributes = [(MFIMAPResponse *)self mailboxAttributes];
      v15 = 0;
      v16 = 0;
      do
      {
        v17 = (&IMAPMailboxAttributeEntries + v16);
        v18 = *(&IMAPMailboxAttributeEntries + v16 + 8);
        if ((v18 & mailboxAttributes) != 0 && (v18 != 2 || ([*v17 isEqualToString:@"\\NonExistent"] & 1) == 0))
        {
          if (v15)
          {
            [v15 appendString:@" "];
          }

          else
          {
            v15 = objc_msgSend(@"("), "mutableCopy";
          }

          [v15 appendString:*v17];
        }

        v19 = v16 >= 0x60;
        v16 += 16;
      }

      while (!v19);
      if (v15)
      {
        allKeys2 = obj;
        [v15 appendString:@""]);
        v21 = v15;
      }

      else
      {
        v21 = @"()";
        allKeys2 = obj;
      }

      [string appendString:v21];
      [string appendString:@" "];
      if (responseInfo)
      {
        [string appendFormat:@"%@", responseInfo];
      }

      else
      {
        [string appendString:@"NIL"];
      }

      [string appendString:@" "];
      [string appendFormat:@"%@", allKeys2];
      extraAttributes = [(MFIMAPResponse *)self extraAttributes];
      if ([extraAttributes count])
      {
        v61 = [extraAttributes componentsJoinedByString:{@", "}];
        [string appendFormat:@" ==> (%@)", v61];
      }

LABEL_97:
      goto LABEL_98;
    case 0x11:
      capabilities = [(MFIMAPResponse *)self fetchResults];
      v49 = [capabilities count];
      objc_msgSend(string, "appendString:", @"(");
      if (v49)
      {
        for (k = 0; k != v49; ++k)
        {
          v51 = [capabilities objectAtIndex:k];
          if (k)
          {
            [string appendString:@" "];
          }

          v52 = [v51 description];
          [string appendString:v52];
        }
      }

      [string appendString:@""]);
LABEL_64:

      goto LABEL_99;
    case 0x12:
      mailboxName2 = [(MFIMAPResponse *)self mailboxName];
      quotaRootNames = [(MFIMAPResponse *)self quotaRootNames];
      v55 = @"NIL";
      if (mailboxName2)
      {
        v55 = mailboxName2;
      }

      [string appendFormat:@"%@", v55];
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v56 = quotaRootNames;
      v57 = [v56 countByEnumeratingWithState:&v74 objects:v79 count:16];
      if (v57)
      {
        v58 = *v75;
        do
        {
          for (m = 0; m != v57; ++m)
          {
            if (*v75 != v58)
            {
              objc_enumerationMutation(v56);
            }

            [string appendFormat:@" %@", *(*(&v74 + 1) + 8 * m)];
          }

          v57 = [v56 countByEnumeratingWithState:&v74 objects:v79 count:16];
        }

        while (v57);
      }

      goto LABEL_99;
    case 0x13:
      quotas = [(MFIMAPResponse *)self quotas];
      quotaRootName = [(MFIMAPResponse *)self quotaRootName];
      [string appendFormat:@"%@", quotaRootName];

      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      obja = quotas;
      v29 = [obja countByEnumeratingWithState:&v70 objects:v78 count:16];
      if (v29)
      {
        v30 = *v71;
        do
        {
          for (n = 0; n != v29; ++n)
          {
            if (*v71 != v30)
            {
              objc_enumerationMutation(obja);
            }

            v32 = *(*(&v70 + 1) + 8 * n);
            v33 = [v32 objectForKey:@"_IMAPNameQuotaKey"];
            v34 = [v32 objectForKey:@"_IMAPCurrentUsageQuotaKey"];
            v35 = [v32 objectForKey:@"_IMAPMaxUsageQuotaKey"];
            v36 = v35;
            if (v33)
            {
              v37 = v33;
            }

            else
            {
              v37 = @"NIL";
            }

            if (v34)
            {
              v38 = v34;
            }

            else
            {
              v38 = @"0";
            }

            if (v35)
            {
              v39 = v35;
            }

            else
            {
              v39 = @"0";
            }

            [string appendFormat:@" (%@ %@/%@)", v37, v38, v39];
          }

          v29 = [obja countByEnumeratingWithState:&v70 objects:v78 count:16];
        }

        while (v29);
      }

      goto LABEL_99;
    case 0x16:
      v68[0] = MEMORY[0x277D85DD0];
      v68[1] = 3221225472;
      v68[2] = __29__MFIMAPResponse_description__block_invoke;
      v68[3] = &unk_279E353F8;
      v44 = string;
      v69 = v44;
      v45 = MEMORY[0x2743C3100](v68);
      privateNamespaces = [(MFIMAPResponse *)self privateNamespaces];
      (v45)[2](v45, privateNamespaces);

      [v44 appendString:@" "];
      publicNamespaces = [(MFIMAPResponse *)self publicNamespaces];
      (v45)[2](v45, publicNamespaces);

      [v44 appendString:@" "];
      sharedNamespaces = [(MFIMAPResponse *)self sharedNamespaces];
      (v45)[2](v45, sharedNamespaces);

      goto LABEL_99;
    case 0x17:
      responseInfo = [(MFIMAPResponse *)self responseName];
      userString = [(MFIMAPResponse *)self parameters];
      if (responseInfo)
      {
        [string appendString:@" "];
        [string appendString:responseInfo];
      }

      if (!userString)
      {
        goto LABEL_72;
      }

      [string appendString:@" "];
      v27 = [userString componentsJoinedByString:@" "];
      [string appendString:v27];
LABEL_71:

LABEL_72:
LABEL_98:

LABEL_99:
      v62 = *MEMORY[0x277D85DE8];

      return string;
    case 0x18:
      uidFlagsChange = [(MFIMAPResponse *)self uidFlagsChange];
      responseInfo = [(MFIMAPResponse *)self uids];
      flagsFetchResult = [(MFIMAPResponse *)self flagsFetchResult];
      userString = flagsFetchResult;
      v27 = @"*nil*";
      if (responseInfo)
      {
        v42 = responseInfo;
      }

      else
      {
        v42 = @"*nil*";
      }

      v43 = byte_2721700C0[uidFlagsChange];
      if (flagsFetchResult)
      {
        v27 = [flagsFetchResult description];
      }

      [string appendFormat:@" %@ %c%@", v42, v43, v27];
      if (userString)
      {
        goto LABEL_71;
      }

      goto LABEL_72;
    default:
      goto LABEL_99;
  }
}

void __29__MFIMAPResponse_description__block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v15 = v3;
  if (v3)
  {
    objc_msgSend(v4, "appendString:", @"(");
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    obj = v15;
    v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v5)
    {
      v6 = *v20;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v20 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v19 + 1) + 8 * i);
          v9 = [v8 objectForKeyedSubscript:@"_IMAPNamespacePrefixKey"];
          v10 = [v8 objectForKeyedSubscript:@"_IMAPNamespaceDelimiterKey"];
          v11 = [v8 objectForKeyedSubscript:@"_IMAPNamespaceExtensionsKey"];
          objc_msgSend(*(a1 + 32), "appendFormat:", @"(%@ "), v9;
          v12 = *(a1 + 32);
          if (v10)
          {
            [v12 appendFormat:@"%@", v10];
          }

          else
          {
            [v12 appendString:@"NIL"];
          }

          v17[0] = MEMORY[0x277D85DD0];
          v17[1] = 3221225472;
          v17[2] = __29__MFIMAPResponse_description__block_invoke_2;
          v17[3] = &unk_279E353D0;
          v18 = *(a1 + 32);
          [v11 enumerateKeysAndObjectsUsingBlock:v17];
          [*(a1 + 32) appendString:@""]);
        }

        v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v5);
    }

    v4 = *(a1 + 32);
    v13 = @"");
  }

  else
  {
    v13 = @"NIL";
  }

  [v4 appendString:v13];

  v14 = *MEMORY[0x277D85DE8];
}

void __29__MFIMAPResponse_description__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = *(a1 + 32);
  v6 = [a3 componentsJoinedByString:@" "];
  [v5 appendFormat:@" \"%@\" (\"%@\"", v7, v6];
}

- (MFIMAPResponse)init
{
  v3.receiver = self;
  v3.super_class = MFIMAPResponse;
  return [(MFIMAPResponse *)&v3 init];
}

- (MFIMAPResponse)initWithConnection:(id)connection responseConsumer:(id)consumer
{
  v20 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  consumerCopy = consumer;
  v19.receiver = self;
  v19.super_class = MFIMAPResponse;
  v8 = [(MFIMAPResponse *)&v19 init];
  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    [(MFIMAPResponse *)v8 setResponseConsumer:consumerCopy];
    v10 = [connectionCopy _readDataOfLength:-1];
    if (v10)
    {
      v11 = [MFIMAPParseContext alloc];
      v12 = v10;
      bytes = [v10 bytes];
      v14 = v10;
      v15 = -[MFIMAPParseContext initWithConnection:response:start:end:](v11, "initWithConnection:response:start:end:", connectionCopy, v8, bytes, [v10 bytes] + objc_msgSend(v10, "length"));
      response(v15);
      if ([(MFIMAPParseContext *)v15 isValid])
      {
        v16 = v8;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (MFIMAPResponse)initWithString:(id)string
{
  v14 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v13.receiver = self;
  v13.super_class = MFIMAPResponse;
  v5 = [(MFIMAPResponse *)&v13 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = stringCopy;
    uTF8String = [stringCopy UTF8String];
    v9 = -[MFIMAPParseContext initWithConnection:response:start:end:]([MFIMAPParseContext alloc], "initWithConnection:response:start:end:", 0, v5, uTF8String, uTF8String + [stringCopy length]);
    response(v9);
    if ([(MFIMAPParseContext *)v9 isValid])
    {
      v10 = v5;
    }

    else
    {
      v10 = 0;
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id).cxx_construct
{
  *(self + 13) = 0;
  *(self + 14) = 0;
  *(self + 16) = 0;
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 4) = 0u;
  *(self + 5) = 0u;
  *(self + 9) = 0u;
  *(self + 10) = 0u;
  *(self + 11) = 0u;
  *(self + 200) = 0u;
  *(self + 216) = 0u;
  *(self + 232) = 0u;
  return self;
}

- (void)setResponseType:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  asString(a1);
  v7[0] = 136315906;
  OUTLINED_FUNCTION_0_4();
  v8 = 1024;
  v9 = a1;
  v10 = v4;
  v11 = v5;
  _os_log_debug_impl(&dword_2720B1000, a2, OS_LOG_TYPE_DEBUG, "#D %s%ssettings response type to %d (%s)", v7, 0x26u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)fetchResults
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *self;
  v4 = 136315650;
  v5 = "";
  v6 = 2080;
  v7 = "";
  v8 = 1024;
  v9 = v2;
  _os_log_error_impl(&dword_2720B1000, a2, OS_LOG_TYPE_ERROR, "#E %s%sInvalid for response type %d", &v4, 0x1Cu);
  v3 = *MEMORY[0x277D85DE8];
}

@end