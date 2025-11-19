@interface MFIMAPResponse
- (MFIMAPResponse)init;
- (MFIMAPResponse)initWithConnection:(id)a3 responseConsumer:(id)a4;
- (MFIMAPResponse)initWithString:(id)a3;
- (id).cxx_construct;
- (id)description;
- (id)fetchResultWithType:(int)a3;
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
- (void)setCapabilities:(id)a3;
- (void)setFetchResults:(id)a3;
- (void)setFlags:(id)a3;
- (void)setFlagsFetchResult:(id)a3;
- (void)setMailboxAttributes:(unint64_t)a3 separator:(id)a4 mailboxName:(id)a5 extraAttributes:(id)a6;
- (void)setMailboxName:(id)a3 quotaRootNames:(id)a4;
- (void)setMailboxName:(id)a3 statusEntries:(id)a4;
- (void)setNumber:(unint64_t)a3;
- (void)setPrivateNamespaces:(id)a3;
- (void)setPublicNamespaces:(id)a3;
- (void)setQuotaRootName:(id)a3 quotas:(id)a4;
- (void)setResponseName:(id)a3 parameters:(id)a4;
- (void)setResponseType:(int)a3;
- (void)setSearchResults:(id)a3;
- (void)setServerInfo:(id)a3;
- (void)setSharedNamespaces:(id)a3;
- (void)setUids:(id)a3;
- (void)setUserData:(id)a3 responseCode:(int)a4 responseInfo:(id)a5;
- (void)setValue:(id)a3 forKey:(id)a4;
@end

@implementation MFIMAPResponse

- (void)setResponseType:(int)a3
  v5 = {;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(MFIMAPResponse *)a3 setResponseType:v5];
  }

  *(self + 8) = a3;
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
  v2 = [(MFIMAPResponse *)self userData];
  if (v2)
  {
    v3 = MFCreateStringWithData();
    if (!v3)
    {
      v3 = CFStringCreateWithBytes(0, [v2 bytes], objc_msgSend(v2, "length"), 0x600u, 0);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setUserData:(id)a3 responseCode:(int)a4 responseInfo:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (*(self + 8) - 1 > 5)
  {
    v10 = v8;
    goto LABEL_13;
  }

  self->_data.basic.responseCode = a4;
  if ([MEMORY[0x277D24ED0] isValidBase64:v8])
  {
    v16 = [v8 mf_decodeBase64];

    if (!v9)
    {
LABEL_4:
      v10 = v16;
      if (self->_data.basic.responseInfoAndOrUserData == v16)
      {
        goto LABEL_13;
      }

      v11 = v16;
      responseInfoAndOrUserData = self->_data.basic.responseInfoAndOrUserData;
      v17 = v11;
      self->_data.basic.responseInfoAndOrUserData = v11;
      goto LABEL_12;
    }
  }

  else
  {
    v16 = v8;
    if (!v9)
    {
      goto LABEL_4;
    }
  }

  v13 = objc_allocWithZone(MEMORY[0x277CBEA60]);
  responseInfoAndOrUserData = v16;
  if (!v16)
  {
    responseInfoAndOrUserData = [MEMORY[0x277CBEA90] data];
  }

  v14 = [v13 initWithObjects:{v9, responseInfoAndOrUserData, 0}];
  v15 = self->_data.basic.responseInfoAndOrUserData;
  self->_data.basic.responseInfoAndOrUserData = v14;

  v10 = v16;
  if (!v16)
  {
    v17 = 0;
LABEL_12:

    v10 = v17;
  }

LABEL_13:
  v18 = v10;
}

- (void)setCapabilities:(id)a3
{
  v5 = a3;
  capabilities = self->_data.capabilities;
  p_capabilities = &self->_data.capabilities;
  if (capabilities != v5)
  {
    v8 = v5;
    objc_storeStrong(p_capabilities, a3);
    v5 = v8;
  }
}

- (void)setServerInfo:(id)a3
{
  v5 = a3;
  serverInfo = self->_data.serverInfo;
  p_serverInfo = &self->_data.serverInfo;
  if (serverInfo != v5)
  {
    v8 = v5;
    objc_storeStrong(p_serverInfo, a3);
    v5 = v8;
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

- (void)setNumber:(unint64_t)a3
{
  v3 = *(self + 8) - 9;
  if (v3 <= 8 && ((0x107u >> v3) & 1) != 0)
  {
    *(&self->super.isa + qword_2721700C8[(*(self + 8) - 9)]) = a3;
  }
}

- (void)setFlags:(id)a3
{
  v4 = a3;
  if (self->_data.flags != v4)
  {
    v7 = v4;
    v5 = createFixedMutableArray(v4);
    flags = self->_data.flags;
    self->_data.flags = v5;

    v4 = v7;
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

- (void)setMailboxName:(id)a3 statusEntries:(id)a4
{
  v13 = a3;
  v7 = a4;
  if (self->_data.status.mailboxName != v13)
  {
    objc_storeStrong(&self->_data.status.mailboxName, a3);
  }

  if (self->_data.status.entries != v7)
  {
    v8 = v7;
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

- (void)setSearchResults:(id)a3
{
  v4 = a3;
  if (self->_data.searchResults != v4)
  {
    v7 = v4;
    v5 = createFixedMutableArray(v4);
    searchResults = self->_data.searchResults;
    self->_data.searchResults = v5;

    v4 = v7;
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

- (void)setMailboxAttributes:(unint64_t)a3 separator:(id)a4 mailboxName:(id)a5 extraAttributes:(id)a6
{
  values[2] = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  p_separatorAndOrMboxName = &self->_data.list.separatorAndOrMboxName;
  separatorAndOrMboxName = self->_data.list.separatorAndOrMboxName;
  self->_data.list.mailboxAttributes = a3;
  if (separatorAndOrMboxName != v11)
  {
    if (v10)
    {
      values[0] = v10;
      values[1] = v11;
      v15 = CFArrayCreate(0, values, 2, MEMORY[0x277CBF128]);
      v16 = *p_separatorAndOrMboxName;
      *p_separatorAndOrMboxName = v15;
    }

    else
    {
      objc_storeStrong(&self->_data.list.separatorAndOrMboxName, a5);
    }
  }

  var0 = self->_data.list.var0;
  p_var0 = &self->_data.list.var0;
  if (var0 != v12)
  {
    objc_storeStrong(p_var0, a6);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)fetchResultWithType:(int)a3
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
        if ([v8 type] == a3)
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

- (void)setFetchResults:(id)a3
{
  v4 = a3;
  if (self->_data.fetch.items != v4)
  {
    v7 = v4;
    v5 = createFixedMutableArray(v4);
    items = self->_data.fetch.items;
    self->_data.fetch.items = v5;

    v4 = v7;
  }
}

- (void)setMailboxName:(id)a3 quotaRootNames:(id)a4
{
  v10 = a3;
  v7 = a4;
  if (self->_data.quotaRoot.mailboxName != v10)
  {
    objc_storeStrong(&self->_data.quotaRoot.mailboxName, a3);
  }

  if (self->_data.quotaRoot.quotaRootNames != v7)
  {
    v8 = createFixedMutableArray(v7);
    quotaRootNames = self->_data.quotaRoot.quotaRootNames;
    self->_data.quotaRoot.quotaRootNames = v8;
  }
}

- (void)setQuotaRootName:(id)a3 quotas:(id)a4
{
  v10 = a3;
  v7 = a4;
  if (self->_data.quota.quotaRootName != v10)
  {
    objc_storeStrong(&self->_data.quota.quotaRootName, a3);
  }

  if (self->_data.quota.quotas != v7)
  {
    v8 = createFixedMutableArray(v7);
    quotas = self->_data.quota.quotas;
    self->_data.quota.quotas = v8;
  }
}

- (void)setUids:(id)a3
{
  v5 = a3;
  uids = self->_data.uidFlags.uids;
  p_uidFlags = &self->_data.uidFlags;
  if (uids != v5)
  {
    v8 = v5;
    objc_storeStrong(&p_uidFlags->uids, a3);
    v5 = v8;
  }
}

- (void)setFlagsFetchResult:(id)a3
{
  v5 = a3;
  flagsFetchResult = self->_data.uidFlags.flagsFetchResult;
  p_flagsFetchResult = &self->_data.uidFlags.flagsFetchResult;
  if (flagsFetchResult != v5)
  {
    v8 = v5;
    objc_storeStrong(p_flagsFetchResult, a3);
    v5 = v8;
  }
}

- (void)setPrivateNamespaces:(id)a3
{
  v5 = a3;
  privateNamespaces = self->_data.namespaces.privateNamespaces;
  p_namespaces = &self->_data.namespaces;
  if (privateNamespaces != v5)
  {
    v8 = v5;
    objc_storeStrong(&p_namespaces->privateNamespaces, a3);
    v5 = v8;
  }
}

- (void)setPublicNamespaces:(id)a3
{
  v5 = a3;
  publicNamespaces = self->_data.namespaces.publicNamespaces;
  p_publicNamespaces = &self->_data.namespaces.publicNamespaces;
  if (publicNamespaces != v5)
  {
    v8 = v5;
    objc_storeStrong(p_publicNamespaces, a3);
    v5 = v8;
  }
}

- (void)setSharedNamespaces:(id)a3
{
  v5 = a3;
  sharedNamespaces = self->_data.namespaces.sharedNamespaces;
  p_sharedNamespaces = &self->_data.namespaces.sharedNamespaces;
  if (sharedNamespaces != v5)
  {
    v8 = v5;
    objc_storeStrong(p_sharedNamespaces, a3);
    v5 = v8;
  }
}

- (void)setValue:(id)a3 forKey:(id)a4
{
  v10 = a3;
  v6 = a4;
  keyValuePairs = self->_keyValuePairs;
  if (!keyValuePairs)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v9 = self->_keyValuePairs;
    self->_keyValuePairs = v8;

    keyValuePairs = self->_keyValuePairs;
  }

  [(NSDictionary *)keyValuePairs setValue:v10 forKey:v6];
}

- (void)setResponseName:(id)a3 parameters:(id)a4
{
  v10 = a3;
  v7 = a4;
  if (self->_data.other.name != v10)
  {
    objc_storeStrong(&self->_data.other.name, a3);
  }

  parameters = self->_data.other.parameters;
  p_parameters = &self->_data.other.parameters;
  if (parameters != v7)
  {
    objc_storeStrong(p_parameters, a4);
  }
}

- (id)description
{
  v80 = *MEMORY[0x277D85DE8];
  v67 = [MEMORY[0x277CCAB68] string];
  if ([(MFIMAPResponse *)self isUntagged])
  {
    [v67 appendString:@"* "];
  }

  if (self->_tag)
  {
    [v67 appendString:?];
    [v67 appendString:@" "];
  }

  [v67 appendFormat:@"%s ", ResponseTypeTable[4 * *(self + 8) + 1]];
  switch(*(self + 8))
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
      v3 = [(MFIMAPResponse *)self responseCode];
      v4 = ResponseCodeTable[v3];
      v5 = [(MFIMAPResponse *)self responseInfo];
      v6 = [(MFIMAPResponse *)self userString];
      if (v3 || v5)
      {
        [v67 appendString:@"["];
        if (v3)
        {
          [v67 appendFormat:@"%s", v4];
        }

        if (v5)
        {
          [v67 appendString:@" "];
          v7 = [(__CFString *)v5 description];
          [v67 appendString:v7];
        }

        [v67 appendString:@"]"];
      }

      if ([v6 length])
      {
        [v67 appendString:@" "];
        [v67 appendString:v6];
      }

      goto LABEL_72;
    case 7:
      v8 = [(MFIMAPResponse *)self capabilities];
      v9 = [v8 componentsJoinedByString:@" "];
      [v67 appendString:v9];
      goto LABEL_63;
    case 8:
    case 0x15:
      v8 = [(MFIMAPResponse *)self serverInfo];
      v9 = [v8 allKeys];
      v10 = [v9 count];
      objc_msgSend(v67, "appendString:", @"(");
      if (v10)
      {
        for (i = 0; i != v10; ++i)
        {
          v12 = [v9 objectAtIndex:i];
          if (i)
          {
            [v67 appendString:@" "];
          }

          v13 = [v8 objectForKey:v12];
          [v67 appendFormat:@"%@ %@", v12, v13];
        }
      }

      [v67 appendString:@""]);
      goto LABEL_63;
    case 9:
    case 0xA:
    case 0xB:
      [v67 appendFormat:@"%llu", -[MFIMAPResponse number](self, "number")];
      goto LABEL_99;
    case 0xC:
      v8 = [(MFIMAPResponse *)self flags];
      v9 = [v8 componentsJoinedByString:@" "];
      [v67 appendFormat:@"(%@)", v9];
LABEL_63:

      goto LABEL_64;
    case 0xD:
      v5 = [(MFIMAPResponse *)self statusEntries];
      v20 = [(__CFString *)v5 allKeys];
      v22 = [v20 count];
      v23 = [(MFIMAPResponse *)self mailboxName];
      [v67 appendFormat:@"%@", v23];

      objc_msgSend(v67, "appendString:", @" (");
      if (v22)
      {
        for (j = 0; j != v22; ++j)
        {
          v25 = [v20 objectAtIndex:j];
          if (j)
          {
            [v67 appendString:@" "];
          }

          v26 = [(__CFString *)v5 objectForKey:v25];
          [v67 appendFormat:@"%@ %@", v25, v26];
        }
      }

      [v67 appendString:@""]);
      goto LABEL_97;
    case 0xF:
    case 0x10:
      v5 = [(MFIMAPResponse *)self separator];
      obj = [(MFIMAPResponse *)self mailboxName];
      v14 = [(MFIMAPResponse *)self mailboxAttributes];
      v15 = 0;
      v16 = 0;
      do
      {
        v17 = (&IMAPMailboxAttributeEntries + v16);
        v18 = *(&IMAPMailboxAttributeEntries + v16 + 8);
        if ((v18 & v14) != 0 && (v18 != 2 || ([*v17 isEqualToString:@"\\NonExistent"] & 1) == 0))
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
        v20 = obj;
        [v15 appendString:@""]);
        v21 = v15;
      }

      else
      {
        v21 = @"()";
        v20 = obj;
      }

      [v67 appendString:v21];
      [v67 appendString:@" "];
      if (v5)
      {
        [v67 appendFormat:@"%@", v5];
      }

      else
      {
        [v67 appendString:@"NIL"];
      }

      [v67 appendString:@" "];
      [v67 appendFormat:@"%@", v20];
      v60 = [(MFIMAPResponse *)self extraAttributes];
      if ([v60 count])
      {
        v61 = [v60 componentsJoinedByString:{@", "}];
        [v67 appendFormat:@" ==> (%@)", v61];
      }

LABEL_97:
      goto LABEL_98;
    case 0x11:
      v8 = [(MFIMAPResponse *)self fetchResults];
      v49 = [v8 count];
      objc_msgSend(v67, "appendString:", @"(");
      if (v49)
      {
        for (k = 0; k != v49; ++k)
        {
          v51 = [v8 objectAtIndex:k];
          if (k)
          {
            [v67 appendString:@" "];
          }

          v52 = [v51 description];
          [v67 appendString:v52];
        }
      }

      [v67 appendString:@""]);
LABEL_64:

      goto LABEL_99;
    case 0x12:
      v53 = [(MFIMAPResponse *)self mailboxName];
      v54 = [(MFIMAPResponse *)self quotaRootNames];
      v55 = @"NIL";
      if (v53)
      {
        v55 = v53;
      }

      [v67 appendFormat:@"%@", v55];
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v56 = v54;
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

            [v67 appendFormat:@" %@", *(*(&v74 + 1) + 8 * m)];
          }

          v57 = [v56 countByEnumeratingWithState:&v74 objects:v79 count:16];
        }

        while (v57);
      }

      goto LABEL_99;
    case 0x13:
      v64 = [(MFIMAPResponse *)self quotas];
      v28 = [(MFIMAPResponse *)self quotaRootName];
      [v67 appendFormat:@"%@", v28];

      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      obja = v64;
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

            [v67 appendFormat:@" (%@ %@/%@)", v37, v38, v39];
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
      v44 = v67;
      v69 = v44;
      v45 = MEMORY[0x2743C3100](v68);
      v46 = [(MFIMAPResponse *)self privateNamespaces];
      (v45)[2](v45, v46);

      [v44 appendString:@" "];
      v47 = [(MFIMAPResponse *)self publicNamespaces];
      (v45)[2](v45, v47);

      [v44 appendString:@" "];
      v48 = [(MFIMAPResponse *)self sharedNamespaces];
      (v45)[2](v45, v48);

      goto LABEL_99;
    case 0x17:
      v5 = [(MFIMAPResponse *)self responseName];
      v6 = [(MFIMAPResponse *)self parameters];
      if (v5)
      {
        [v67 appendString:@" "];
        [v67 appendString:v5];
      }

      if (!v6)
      {
        goto LABEL_72;
      }

      [v67 appendString:@" "];
      v27 = [v6 componentsJoinedByString:@" "];
      [v67 appendString:v27];
LABEL_71:

LABEL_72:
LABEL_98:

LABEL_99:
      v62 = *MEMORY[0x277D85DE8];

      return v67;
    case 0x18:
      v40 = [(MFIMAPResponse *)self uidFlagsChange];
      v5 = [(MFIMAPResponse *)self uids];
      v41 = [(MFIMAPResponse *)self flagsFetchResult];
      v6 = v41;
      v27 = @"*nil*";
      if (v5)
      {
        v42 = v5;
      }

      else
      {
        v42 = @"*nil*";
      }

      v43 = byte_2721700C0[v40];
      if (v41)
      {
        v27 = [v41 description];
      }

      [v67 appendFormat:@" %@ %c%@", v42, v43, v27];
      if (v6)
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

- (MFIMAPResponse)initWithConnection:(id)a3 responseConsumer:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = MFIMAPResponse;
  v8 = [(MFIMAPResponse *)&v19 init];
  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    [(MFIMAPResponse *)v8 setResponseConsumer:v7];
    v10 = [v6 _readDataOfLength:-1];
    if (v10)
    {
      v11 = [MFIMAPParseContext alloc];
      v12 = v10;
      v13 = [v10 bytes];
      v14 = v10;
      v15 = -[MFIMAPParseContext initWithConnection:response:start:end:](v11, "initWithConnection:response:start:end:", v6, v8, v13, [v10 bytes] + objc_msgSend(v10, "length"));
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

- (MFIMAPResponse)initWithString:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MFIMAPResponse;
  v5 = [(MFIMAPResponse *)&v13 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = v4;
    v8 = [v4 UTF8String];
    v9 = -[MFIMAPParseContext initWithConnection:response:start:end:]([MFIMAPParseContext alloc], "initWithConnection:response:start:end:", 0, v5, v8, v8 + [v4 length]);
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
  v2 = *a1;
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