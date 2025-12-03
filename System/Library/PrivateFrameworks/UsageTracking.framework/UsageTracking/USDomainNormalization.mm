@interface USDomainNormalization
- (id)normalizeDomainName:(id)name;
- (id)normalizeDomainNames:(id)names;
- (id)normalizeURL:(id)l;
- (void)dealloc;
@end

@implementation USDomainNormalization

- (void)dealloc
{
  idna = self->_idna;
  if (idna)
  {
    uidna_close(idna);
  }

  v4.receiver = self;
  v4.super_class = USDomainNormalization;
  [(USDomainNormalization *)&v4 dealloc];
}

- (id)normalizeDomainName:(id)name
{
  nameCopy = name;
  v6 = nameCopy;
  if ([nameCopy canBeConvertedToEncoding:1])
  {
LABEL_16:
    uppercaseLetterCharacterSet = [MEMORY[0x277CCA900] uppercaseLetterCharacterSet];
    v15 = [v6 rangeOfCharacterFromSet:uppercaseLetterCharacterSet];

    if (v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      lowercaseString = [v6 lowercaseString];

      v6 = lowercaseString;
    }

    v17 = v6;
    goto LABEL_22;
  }

  precomposedStringWithCanonicalMapping = [nameCopy precomposedStringWithCanonicalMapping];
  uTF8String = [precomposedStringWithCanonicalMapping UTF8String];

  idna = self->_idna;
  if (!idna)
  {
    *&pInfo.size = 0;
    idna = MEMORY[0x2743AAE50](48, &pInfo);
    self->_idna = idna;
    if (*&pInfo.size >= 1)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"USDomainNormalization.m" lineNumber:45 description:{@"Failed to create UIDNA service object %d", *&pInfo.size}];

      idna = self->_idna;
    }
  }

  pInfo = xmmword_270824DC0;
  pErrorCode = U_ZERO_ERROR;
  v10 = uidna_nameToASCII_UTF8(idna, uTF8String, -1, 0, 0, &pInfo, &pErrorCode);
  v11 = v10;
  v12 = pErrorCode;
  if (pErrorCode == U_BUFFER_OVERFLOW_ERROR)
  {
    v12 = U_ZERO_ERROR;
    pErrorCode = U_ZERO_ERROR;
  }

  if (v12 <= U_ZERO_ERROR && !pInfo.errors)
  {
    if (v10 < 0)
    {
      [(USDomainNormalization *)a2 normalizeDomainName:nameCopy];
    }

    v13 = malloc_type_malloc(v11, 0xFA39D828uLL);
    if (uidna_nameToASCII_UTF8(self->_idna, uTF8String, -1, v13, v11, &pInfo, &pErrorCode) != v11)
    {
      [(USDomainNormalization *)a2 normalizeDomainName:?];
    }

    if (pErrorCode > U_ZERO_ERROR || pInfo.errors)
    {
      [(USDomainNormalization *)&pErrorCode normalizeDomainName:a2, self];
    }

    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v13 length:v11 encoding:4];

    free(v13);
    goto LABEL_16;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [(USDomainNormalization *)nameCopy normalizeDomainName:&pInfo.errors];
  }

  v17 = nameCopy;
LABEL_22:
  v18 = v17;

  return v18;
}

- (id)normalizeDomainNames:(id)names
{
  v33 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  uppercaseLetterCharacterSet = [MEMORY[0x277CCA900] uppercaseLetterCharacterSet];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = namesCopy;
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        if (![v11 canBeConvertedToEncoding:1] || objc_msgSend(v11, "rangeOfCharacterFromSet:", uppercaseLetterCharacterSet) != 0x7FFFFFFFFFFFFFFFLL)
        {

          v12 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v6, "count")}];
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v13 = v6;
          v14 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v24;
            do
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v24 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = [(USDomainNormalization *)self normalizeDomainName:*(*(&v23 + 1) + 8 * j), v23];
                [v12 addObject:v18];
              }

              v15 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
            }

            while (v15);
          }

          goto LABEL_20;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
      v12 = 0;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_20:

  if (v12)
  {
    v19 = v12;
  }

  else
  {
    v19 = v6;
  }

  v20 = v19;

  v21 = *MEMORY[0x277D85DE8];
  return v19;
}

- (id)normalizeURL:(id)l
{
  lCopy = l;
  host = [lCopy host];
  v6 = [(USDomainNormalization *)self normalizeDomainName:host];
  v7 = lCopy;
  v8 = v7;
  if (host != v6)
  {
    v9 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:v7 resolvingAgainstBaseURL:1];
    [v9 setHost:v6];
    v8 = [v9 URL];
  }

  if (!v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      [USDomainNormalization normalizeURL:v7];
    }

    v8 = v7;
  }

  return v8;
}

- (void)normalizeDomainName:(int *)a3 .cold.1(uint64_t a1, int *a2, int *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = *a3;
  v6 = 138412802;
  v7 = a1;
  v8 = 1024;
  v9 = v3;
  v10 = 1024;
  v11 = v4;
  _os_log_error_impl(&dword_2707F8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to encode domain %@, %d (%u)", &v6, 0x18u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)normalizeDomainName:(uint64_t)a3 .cold.2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"USDomainNormalization.m" lineNumber:62 description:{@"Got a negative ACE length for domain %@", a3}];
}

- (void)normalizeDomainName:(uint64_t)a1 .cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"USDomainNormalization.m" lineNumber:65 description:@"Got a different ACE length for the same input"];
}

- (void)normalizeDomainName:(uint64_t)a3 .cold.4(unsigned int *a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a3 object:a4 file:@"USDomainNormalization.m" lineNumber:66 description:{@"Got an error the second time uidna_nameToASCII_UTF8 was called, %d (%u)", *a1, *a2}];
}

- (void)normalizeURL:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&dword_2707F8000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Failed to normalize URL: %{public}@", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end