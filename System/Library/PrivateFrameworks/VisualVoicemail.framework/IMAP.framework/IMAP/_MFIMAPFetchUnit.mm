@interface _MFIMAPFetchUnit
- (BOOL)matchesFetchResponse:(id)a3;
- (id)copyFailedFetchResponse;
- (void)_setupExpectedFetchResult;
- (void)dealloc;
@end

@implementation _MFIMAPFetchUnit

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = _MFIMAPFetchUnit;
  [(_MFIMAPFetchUnit *)&v2 dealloc];
}

- (void)_setupExpectedFetchResult
{
  if (![@"BODYSTRUCTURE" caseInsensitiveCompare:self->_fetchItem])
  {
    v13 = [[MFIMAPFetchResult alloc] initWithType:6];
    expectedFetchResult = self->_expectedFetchResult;
    self->_expectedFetchResult = v13;
LABEL_12:

    MEMORY[0x2821F96F8](v13, expectedFetchResult);
    return;
  }

  v3 = [(NSString *)self->_fetchItem length];
  v4 = [(NSString *)self->_fetchItem rangeOfString:@"BODY" options:9];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [(NSString *)self->_fetchItem rangeOfString:@".PEEK" options:9 range:v4 + v5, v3 - (v4 + v5)];
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = [(NSString *)self->_fetchItem rangeOfString:@"[" options:8 range:v6 + v7, v3 - (v6 + v7)];
      if (v8 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v10 = v8 + v9;
        v11 = [(NSString *)self->_fetchItem rangeOfString:@"]" options:4 range:v8 + v9, v3 - (v8 + v9)];
        if (v11 != 0x7FFFFFFFFFFFFFFFLL && v10 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v15 = v11;
          v26 = [(NSString *)self->_fetchItem substringWithRange:v10, v11 - v10];
          if ([(MFIMAPFetchResult *)v26 rangeOfString:@"HEADER" options:9]== 0x7FFFFFFFFFFFFFFFLL)
          {
            v16 = [[MFIMAPFetchResult alloc] initWithType:7];
            v17 = self->_expectedFetchResult;
            self->_expectedFetchResult = v16;

            [(MFIMAPFetchResult *)self->_expectedFetchResult setSection:v26];
          }

          else
          {
            v18 = [[MFIMAPFetchResult alloc] initWithType:4];
            v19 = self->_expectedFetchResult;
            self->_expectedFetchResult = v18;
          }

          v13 = [(NSString *)self->_fetchItem rangeOfString:@"<" options:0 range:v15, v3 - v15];
          v21 = v13;
          if (v13 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v22 = v20;
            v13 = [(NSString *)self->_fetchItem hasSuffix:@">"];
            if (v13)
            {
              v23 = v21 + v22;
              v13 = [(NSString *)self->_fetchItem rangeOfString:@"." options:0 range:v23, v3 - v23];
              if (v13 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v24 = [(NSString *)self->_fetchItem substringWithRange:v23, v13 - v23];
                v25 = [v24 intValue];

                v13 = [(MFIMAPFetchResult *)self->_expectedFetchResult setStartOffset:v25];
              }
            }
          }

          expectedFetchResult = v26;
          goto LABEL_12;
        }
      }
    }
  }
}

- (BOOL)matchesFetchResponse:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v19 = v4;
  if (!self->_expectedFetchResult)
  {
    if (!self->_fetchItem || ([(_MFIMAPFetchUnit *)self _setupExpectedFetchResult], v4 = v19, !self->_expectedFetchResult))
    {
      v16 = 0;
      goto LABEL_25;
    }
  }

  [v4 fetchResults];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v5 = v21 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = *v21;
LABEL_4:
    v8 = 0;
    while (1)
    {
      if (*v21 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v9 = *(*(&v20 + 1) + 8 * v8);
      v10 = [v9 type];
      if ((v10 - 4) < 2)
      {
        break;
      }

      if (v10 == 6)
      {
        if ([(MFIMAPFetchResult *)self->_expectedFetchResult type]== 6)
        {
          goto LABEL_20;
        }
      }

      else if (v10 == 7)
      {
        break;
      }

LABEL_17:
      if (v6 == ++v8)
      {
        v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v6)
        {
          goto LABEL_4;
        }

        goto LABEL_19;
      }
    }

    v11 = [(MFIMAPFetchResult *)self->_expectedFetchResult type];
    if (v11 <= 7 && ((1 << v11) & 0xB0) != 0)
    {
      v13 = [v9 section];
      v14 = [(MFIMAPFetchResult *)self->_expectedFetchResult section];
      v15 = [v13 caseInsensitiveCompare:v14] == 0;

      if (v15)
      {
LABEL_20:
        v16 = 1;
        goto LABEL_21;
      }
    }

    goto LABEL_17;
  }

LABEL_19:
  v16 = 0;
LABEL_21:

LABEL_25:
  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)copyFailedFetchResponse
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (self->_uid && (self->_expectedFetchResult || ([(_MFIMAPFetchUnit *)self _setupExpectedFetchResult], self->_expectedFetchResult)))
  {
    v3 = objc_alloc_init(MFIMAPResponse);
    [(MFIMAPResponse *)v3 setResponseType:17];
    [(MFIMAPResponse *)v3 setNumber:0];
    v9[0] = 0;
    v8 = [[MFIMAPFetchResult alloc] initWithType:8];

    [(MFIMAPFetchResult *)v8 setUid:self->_uid];
    objc_storeStrong(v9, self->_expectedFetchResult);
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:&v8 count:2];
    [(MFIMAPResponse *)v3 setFetchResults:v4];

    for (i = 1; i != -1; --i)
    {
    }
  }

  else
  {
    v3 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

@end