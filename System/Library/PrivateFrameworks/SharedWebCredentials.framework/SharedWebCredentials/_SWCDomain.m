@interface _SWCDomain
+ (_SWCDomain)appleDomain;
+ (_SWCDomain)exampleDomain;
- (BOOL)encompassesDomain:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isHostIPAddress;
- (BOOL)isValid;
- (NSString)rawValue;
- (NSString)topLevelDomainValue;
- (_SWCDomain)initWithCoder:(id)a3;
- (_SWCDomain)initWithHost:(id)a3 port:(id)a4 wildcard:(BOOL)a5 modeOfOperation:(char)a6;
- (_SWCDomain)initWithString:(id)a3;
- (_SWCDomain)nonWildcardDomain;
- (_SWCDomain)wildcardDomain;
- (id)debugDescription;
- (id)redactedDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _SWCDomain

- (_SWCDomain)initWithString:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v33 = objc_autoreleasePoolPush();
  v35 = self;
  v37 = [@"https://" stringByAppendingString:a3];
  v38 = [objc_alloc(MEMORY[0x277CCACE0]) initWithString:v37];
  v5 = [v38 host];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_2877A4C50;
  }

  v8 = v7;

  v39 = v8;
  v36 = [(__CFString *)v8 hasPrefix:@"*."];
  if (v36)
  {
    v9 = [(__CFString *)v8 substringFromIndex:2];

    v39 = v9;
  }

  v34 = [v38 port];
  v10 = [v38 percentEncodedQueryItems];
  if (!v10)
  {
    goto LABEL_32;
  }

  v11 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v10, "count")}];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v13)
  {
    v14 = *v45;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v45 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v44 + 1) + 8 * i);
        v17 = [v16 name];
        v18 = [v16 value];
        v19 = v18;
        if (v18)
        {
          v20 = v18;
        }

        else
        {
          v20 = &stru_2877A4C50;
        }

        v21 = v20;

        [v11 setObject:v21 forKeyedSubscript:v17];
      }

      v13 = [v12 countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v13);
  }

  if (v11)
  {
    v22 = [v11 objectForKeyedSubscript:@"mode"];
    v23 = [v22 componentsSeparatedByString:@"+"];

    if (v23)
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v24 = v23;
      v25 = 0;
      v26 = [v24 countByEnumeratingWithState:&v40 objects:v48 count:16];
      if (v26)
      {
        v27 = *v41;
        do
        {
          for (j = 0; j != v26; ++j)
          {
            if (*v41 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v40 + 1) + 8 * j);
            if ([v29 caseInsensitiveCompare:@"developer"])
            {
              if (![v29 caseInsensitiveCompare:@"managed"])
              {
                v25 |= 2u;
              }
            }

            else
            {
              v25 |= 1u;
            }
          }

          v26 = [v24 countByEnumeratingWithState:&v40 objects:v48 count:16];
        }

        while (v26);
      }
    }

    else
    {
      LOBYTE(v25) = 0;
    }
  }

  else
  {
LABEL_32:
    LOBYTE(v25) = 0;
  }

  objc_autoreleasePoolPop(v33);
  v30 = [(_SWCDomain *)v35 initWithHost:v39 port:v34 wildcard:v36 modeOfOperation:v25];

  v31 = *MEMORY[0x277D85DE8];
  return v30;
}

- (_SWCDomain)initWithHost:(id)a3 port:(id)a4 wildcard:(BOOL)a5 modeOfOperation:(char)a6
{
  v10 = a3;
  v11 = a4;
  v19.receiver = self;
  v19.super_class = _SWCDomain;
  v12 = [(_SWCDomain *)&v19 init];
  if (v12)
  {
    v13 = [v10 lowercaseString];
    v14 = [v13 copy];
    host = v12->_host;
    v12->_host = v14;

    v16 = [v11 copy];
    port = v12->_port;
    v12->_port = v16;

    v12->_wildcard = a5;
    v12->_modeOfOperation = a6;
  }

  return v12;
}

+ (_SWCDomain)appleDomain
{
  v2 = [[_SWCDomain alloc] initWithHost:@"apple.com" port:0 wildcard:1 modeOfOperation:0];

  return v2;
}

+ (_SWCDomain)exampleDomain
{
  v2 = [[_SWCDomain alloc] initWithHost:@"example.com" port:0 wildcard:1 modeOfOperation:0];

  return v2;
}

- (NSString)rawValue
{
  host = self->_host;
  if (self->_wildcard)
  {
    v4 = [@"*." stringByAppendingString:host];
  }

  else
  {
    v4 = host;
  }

  v5 = v4;
  port = self->_port;
  if (port)
  {
    v7 = [v5 stringByAppendingFormat:@":%llu", -[NSNumber unsignedLongLongValue](port, "unsignedLongLongValue")];

    v5 = v7;
  }

  if (self->_modeOfOperation)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v9 = v8;
    modeOfOperation = self->_modeOfOperation;
    if (modeOfOperation)
    {
      [v8 addObject:@"developer"];
      modeOfOperation = self->_modeOfOperation;
    }

    if ((modeOfOperation & 2) != 0)
    {
      [v9 addObject:@"managed"];
    }

    v11 = [v9 componentsJoinedByString:@"+"];
    v12 = [v5 stringByAppendingFormat:@"?mode=%@", v11];

    v5 = v12;
  }

  return v5;
}

- (BOOL)isValid
{
  v2 = self;
  v57 = *MEMORY[0x277D85DE8];
  modeOfOperation = self->_modeOfOperation;
  if (modeOfOperation == 1)
  {
    if ([(NSString *)self->_host isEqual:@"localhost"])
    {
      if (qword_280B21978 != -1)
      {
        dispatch_once(&qword_280B21978, &__block_literal_global_163);
      }

      v4 = qword_280B21970;
      if (os_log_type_enabled(qword_280B21970, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v47 = v2;
        _os_log_impl(&dword_265F54000, v4, OS_LOG_TYPE_INFO, "Domain %@ is localhost in developer mode, explicitly allowing.", buf, 0xCu);
      }

LABEL_72:
      port = v2->_port;
      if (!port || [(NSNumber *)port unsignedLongLongValue]- 0x10000 > 0xFFFFFFFFFFFF0000)
      {
        LOBYTE(v6) = 1;
        goto LABEL_87;
      }

      if (qword_280B21978 != -1)
      {
        dispatch_once(&qword_280B21978, &__block_literal_global_163);
      }

      v7 = qword_280B21970;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v34 = [(NSNumber *)v2->_port unsignedLongLongValue];
        *buf = 138412546;
        v47 = v2;
        v48 = 2048;
        v49 = v34;
        _os_log_impl(&dword_265F54000, v7, OS_LOG_TYPE_INFO, "Domain %@ contained an invalid port %llu", buf, 0x16u);
      }

LABEL_21:

      goto LABEL_86;
    }

    modeOfOperation = v2->_modeOfOperation;
  }

  if (!modeOfOperation && [(_SWCDomain *)v2 isHostIPAddress])
  {
    if (qword_280B21978 != -1)
    {
      dispatch_once(&qword_280B21978, &__block_literal_global_163);
    }

    v5 = qword_280B21970;
    v6 = os_log_type_enabled(qword_280B21970, OS_LOG_TYPE_INFO);
    if (v6)
    {
      *buf = 138412290;
      v47 = v2;
      _os_log_impl(&dword_265F54000, v5, OS_LOG_TYPE_INFO, "Domain %@ is an IP address in normal mode, explicitly blocking.", buf, 0xCu);
      goto LABEL_86;
    }

    goto LABEL_87;
  }

  v7 = [MEMORY[0x277CCA900] URLHostAllowedCharacterSet];
  v8 = [(NSString *)v2->_host length];
  v9 = v8;
  v10 = v8 - 1;
  if (v8 < 1)
  {
    if (qword_280B21978 != -1)
    {
      dispatch_once(&qword_280B21978, &__block_literal_global_163);
    }

    v13 = qword_280B21970;
    if (os_log_type_enabled(qword_280B21970, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v47 = v2;
      _os_log_impl(&dword_265F54000, v13, OS_LOG_TYPE_INFO, "Domain %@ contained empty hostname", buf, 0xCu);
    }

    goto LABEL_21;
  }

  host = v2->_host;
  v50 = host;
  v53 = 0;
  v54 = v8;
  CharactersPtr = CFStringGetCharactersPtr(host);
  v37 = v10;
  v38 = v2;
  if (CharactersPtr)
  {
    CStringPtr = 0;
  }

  else
  {
    CStringPtr = CFStringGetCStringPtr(host, 0x600u);
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v52 = CStringPtr;
  v18 = 64;
  v55 = 0;
  v56 = 0;
  do
  {
    if (v17 >= 4)
    {
      v19 = 4;
    }

    else
    {
      v19 = v17;
    }

    v20 = v54;
    if (v54 <= v17)
    {
      v22 = 0;
      v39 = 0;
LABEL_38:
      if (([v7 characterIsMember:v22]& 1) == 0)
      {
        if (qword_280B21978 != -1)
        {
          dispatch_once(&qword_280B21978, &__block_literal_global_163);
        }

        v31 = qword_280B21970;
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:&v39 length:1];
          *v40 = 138412802;
          v41 = v38;
          v42 = 2048;
          v43 = v22;
          v44 = 2114;
          v45 = v32;
          _os_log_impl(&dword_265F54000, v31, OS_LOG_TYPE_INFO, "Domain %@ contained illegal character %llx ('%{public}@')", v40, 0x20u);
        }

        goto LABEL_85;
      }

      goto LABEL_39;
    }

    if (CharactersPtr)
    {
      v21 = &CharactersPtr[v53];
LABEL_30:
      v22 = *&v21[2 * v17];
      goto LABEL_34;
    }

    if (!v52)
    {
      v23 = v55;
      if (v56 <= v17 || v55 > v17)
      {
        v25 = v19 + v14;
        v26 = v18 - v19;
        v27 = v17 - v19;
        v28 = v27 + 64;
        if (v27 + 64 >= v54)
        {
          v28 = v54;
        }

        v55 = v27;
        v56 = v28;
        if (v54 >= v26)
        {
          v20 = v26;
        }

        v58.location = v27 + v53;
        v58.length = v20 + v25;
        CFStringGetCharacters(v50, v58, buf);
        v23 = v55;
      }

      v21 = &buf[-2 * v23];
      goto LABEL_30;
    }

    v22 = v52[v53 + v17];
LABEL_34:
    v39 = v22;
    if (v22 != 46)
    {
      goto LABEL_38;
    }

    if (!v17)
    {
      if (qword_280B21978 != -1)
      {
        dispatch_once(&qword_280B21978, &__block_literal_global_163);
      }

      v29 = qword_280B21970;
      if (!os_log_type_enabled(qword_280B21970, OS_LOG_TYPE_INFO))
      {
        goto LABEL_85;
      }

      *v40 = 138412290;
      v41 = v38;
      v30 = "Domain %@ began with a period character";
      goto LABEL_84;
    }

    if (v16 == 46)
    {
      if (qword_280B21978 != -1)
      {
        dispatch_once(&qword_280B21978, &__block_literal_global_163);
      }

      v29 = qword_280B21970;
      if (!os_log_type_enabled(qword_280B21970, OS_LOG_TYPE_INFO))
      {
        goto LABEL_85;
      }

      *v40 = 138412290;
      v41 = v38;
      v30 = "Domain %@ contained two period characters in a row";
      goto LABEL_84;
    }

    ++v15;
    v22 = 46;
LABEL_39:
    ++v17;
    --v14;
    ++v18;
    v16 = v22;
  }

  while (v9 != v17);
  if (v15 == 1)
  {
    v2 = v38;
    if ([(NSString *)v38->_host characterAtIndex:v37]!= 46)
    {
      goto LABEL_71;
    }

    if (qword_280B21978 != -1)
    {
      dispatch_once(&qword_280B21978, &__block_literal_global_163);
    }

    v29 = qword_280B21970;
    if (!os_log_type_enabled(qword_280B21970, OS_LOG_TYPE_INFO))
    {
      goto LABEL_85;
    }

    *v40 = 138412290;
    v41 = v38;
    v30 = "Domain %@ was a TLD";
LABEL_84:
    _os_log_impl(&dword_265F54000, v29, OS_LOG_TYPE_INFO, v30, v40, 0xCu);
    goto LABEL_85;
  }

  v2 = v38;
  if (v15)
  {
LABEL_71:

    goto LABEL_72;
  }

  if (qword_280B21978 != -1)
  {
    dispatch_once(&qword_280B21978, &__block_literal_global_163);
  }

  v29 = qword_280B21970;
  if (os_log_type_enabled(qword_280B21970, OS_LOG_TYPE_INFO))
  {
    *v40 = 138412290;
    v41 = v38;
    v30 = "Domain %@ did not contain a period character";
    goto LABEL_84;
  }

LABEL_85:

LABEL_86:
  LOBYTE(v6) = 0;
LABEL_87:
  v35 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isHostIPAddress
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = [(NSString *)self->_host getCString:v6 maxLength:256 encoding:1];
  if (v2)
  {
    LOBYTE(v2) = v6[0] == 91 || inet_pton(2, v6, v5) == 1;
  }

  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

- (NSString)topLevelDomainValue
{
  v4 = [(NSString *)self->_host rangeOfString:@"." options:4];
  host = self->_host;
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = host;
  }

  else
  {
    v6 = [(NSString *)host substringFromIndex:v4 + v3];
  }

  return v6;
}

- (BOOL)encompassesDomain:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(_SWCDomain *)self isEqual:v4])
  {
    goto LABEL_2;
  }

  host = self->_host;
  if (self->_wildcard)
  {
    v8 = [(NSString *)host length];
    v9 = [v4[2] length];
    v10 = v9 - v8;
    if (v9 < v8 || [v4[2] compare:self->_host options:0 range:{v10, v8}] || v9 > v8 && objc_msgSend(v4[2], "characterAtIndex:", v10 - 1) != 46)
    {
      goto LABEL_25;
    }

    if (qword_280B21978 != -1)
    {
      dispatch_once(&qword_280B21978, &__block_literal_global_163);
    }

    v11 = qword_280B21970;
    if (os_log_type_enabled(qword_280B21970, OS_LOG_TYPE_DEBUG))
    {
LABEL_20:
      *v15 = 138412546;
      *&v15[4] = self;
      *&v15[12] = 2112;
      *&v15[14] = v4;
      _os_log_debug_impl(&dword_265F54000, v11, OS_LOG_TYPE_DEBUG, "Domain %@ encompasses %@", v15, 0x16u);
    }
  }

  else
  {
    if (![(NSString *)host isEqualToString:v4[2]])
    {
LABEL_25:
      v6 = 0;
      goto LABEL_26;
    }

    if (qword_280B21978 != -1)
    {
      dispatch_once(&qword_280B21978, &__block_literal_global_163);
    }

    v11 = qword_280B21970;
    if (os_log_type_enabled(qword_280B21970, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_20;
    }
  }

LABEL_2:
  port = self->_port;
  if (port && (!v4[3] || ![(NSNumber *)port isEqualToNumber:?]))
  {
    goto LABEL_25;
  }

  if (([v4 isValid] & 1) == 0)
  {
    if (qword_280B21978 != -1)
    {
      dispatch_once(&qword_280B21978, &__block_literal_global_163);
    }

    v12 = qword_280B21970;
    if (os_log_type_enabled(qword_280B21970, OS_LOG_TYPE_DEBUG))
    {
      *v15 = 138412546;
      *&v15[4] = v4;
      *&v15[12] = 2112;
      *&v15[14] = self;
      _os_log_debug_impl(&dword_265F54000, v12, OS_LOG_TYPE_DEBUG, "Domain %@ is not valid; discarding matching result against %@", v15, 0x16u);
    }

    goto LABEL_25;
  }

  v6 = 1;
LABEL_26:

  v13 = *MEMORY[0x277D85DE8];
  return v6;
}

- (_SWCDomain)nonWildcardDomain
{
  if (self->_wildcard)
  {
    v2 = [[_SWCDomain alloc] initWithHost:self->_host port:self->_port wildcard:0 modeOfOperation:self->_modeOfOperation];
  }

  else
  {
    v2 = self;
  }

  return v2;
}

- (_SWCDomain)wildcardDomain
{
  if (self->_wildcard)
  {
    v2 = self;
  }

  else
  {
    v2 = [[_SWCDomain alloc] initWithHost:self->_host port:self->_port wildcard:1 modeOfOperation:self->_modeOfOperation];
  }

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if (self->_wildcard == v5->_wildcard && [(NSString *)self->_host isEqual:v5->_host])
      {
        port = self->_port;
        v7 = v5->_port;
        if (port)
        {
          if (v7 && [(NSNumber *)port isEqualToNumber:?])
          {
            goto LABEL_8;
          }
        }

        else if (!v7)
        {
LABEL_8:
          v8 = self->_modeOfOperation == v5->_modeOfOperation;
LABEL_13:

          goto LABEL_14;
        }
      }

      v8 = 0;
      goto LABEL_13;
    }

    v8 = 0;
  }

LABEL_14:

  return v8;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  v5 = [(_SWCDomain *)self description];
  v6 = [v3 initWithFormat:@"<%@ %p> %@", v4, self, v5];

  return v6;
}

- (id)redactedDescription
{
  if (qword_280B21968 != -1)
  {
    dispatch_once(&qword_280B21968, &__block_literal_global_8);
  }

  v3 = objc_autoreleasePoolPush();
  v4 = [(NSString *)self->_host componentsSeparatedByString:@"."];
  v5 = [v4 count];
  if (v5 < 2)
  {
    v12 = self->_host;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v7 = _MergedGlobals_7;
    v8 = [v4 objectAtIndexedSubscript:0];
    v9 = [v7 member:v8];

    if (v9)
    {
      v10 = [v4 objectAtIndexedSubscript:0];
      [v6 addObject:v10];

      v11 = 1;
    }

    else
    {
      v11 = 0;
    }

    v13 = v5 - 1;
    if (v11 < v5 - 1)
    {
      do
      {
        v14 = [v4 objectAtIndexedSubscript:v11];
        if ([v14 length] >= 3)
        {
          v15 = [v14 substringToIndex:2];
          v16 = [v15 stringByAppendingString:@"…"];

          v14 = v16;
        }

        [v6 addObject:v14];

        ++v11;
      }

      while (v13 != v11);
    }

    v17 = [v4 lastObject];
    [v6 addObject:v17];

    v12 = [v6 componentsJoinedByString:@"."];
  }

  objc_autoreleasePoolPop(v3);
  if (self->_wildcard)
  {
    v18 = [@"*." stringByAppendingString:v12];
  }

  else
  {
    v18 = v12;
  }

  v19 = v18;
  port = self->_port;
  if (port)
  {
    v21 = [v19 stringByAppendingFormat:@":%llu", -[NSNumber unsignedLongLongValue](port, "unsignedLongLongValue")];

    v19 = v21;
  }

  if (self->_modeOfOperation)
  {
    v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v23 = v22;
    modeOfOperation = self->_modeOfOperation;
    if (modeOfOperation)
    {
      [v22 addObject:@"developer"];
      modeOfOperation = self->_modeOfOperation;
    }

    if ((modeOfOperation & 2) != 0)
    {
      [v23 addObject:@"managed"];
    }

    v25 = [v23 componentsJoinedByString:{@", "}];
    v26 = [v19 stringByAppendingFormat:@"?mode=%@", v25];

    v19 = v26;
  }

  return v19;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_host forKey:@"host"];
  [v4 encodeObject:self->_port forKey:@"port"];
  [v4 encodeBool:self->_wildcard forKey:@"wildcard"];
  [v4 encodeInteger:self->_modeOfOperation forKey:@"modeOfOperation"];
}

- (_SWCDomain)initWithCoder:(id)a3
{
  v17[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 swc_decodeObjectOfClass:objc_opt_class() forKey:@"host"];
  v6 = [v4 swc_decodeObjectOfClass:objc_opt_class() forKey:@"port"];
  v7 = [v4 decodeBoolForKey:@"wildcard"];
  v8 = [v4 decodeIntegerForKey:@"modeOfOperation"];
  if (!v5)
  {
    v9 = objc_alloc(MEMORY[0x277CCA9B8]);
    v16[0] = @"Line";
    v16[1] = @"Function";
    v17[0] = &unk_2877A7450;
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_SWCDomain initWithCoder:]"];
    v17[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
    v12 = [v9 initWithDomain:*MEMORY[0x277CCA050] code:4865 userInfo:v11];
    [v4 failWithError:v12];

    self = 0;
  }

  v13 = [(_SWCDomain *)self initWithHost:v5 port:v6 wildcard:v7 modeOfOperation:v8];

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

@end