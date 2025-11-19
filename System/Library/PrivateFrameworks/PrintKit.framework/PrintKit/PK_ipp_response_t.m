@interface PK_ipp_response_t
- (PK_ipp_response_t)initWithRequest:(id)a3;
- (id)rewriteURLAttributes:(id)a3;
@end

@implementation PK_ipp_response_t

- (PK_ipp_response_t)initWithRequest:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = PK_ipp_response_t;
  v5 = [(PK_ipp_t *)&v26 init];
  if (v5)
  {
    v5->super._request_id = [v4 request_id];
    if ([v4[3] count] && (objc_msgSend(v4[3], "objectAtIndexedSubscript:", 0), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "name"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "compare:", @"attributes-charset"), v7, v6, !v8))
    {
      v9 = [v4[3] objectAtIndexedSubscript:0];
      v10 = [v9 values];
      v11 = [v10 objectAtIndexedSubscript:0];
      v12 = [v11 string];
      v14 = v13;
      [(PK_ipp_t *)v5 _addString:1 valueTag:71 name:@"attributes-charset" lang:0 value:v13];
    }

    else
    {
      [(PK_ipp_t *)v5 _addString:1 valueTag:71 name:@"attributes-charset" lang:0 value:@"utf-8"];
    }

    if ([v4[3] count] && (objc_msgSend(v4[3], "objectAtIndexedSubscript:", 0), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "name"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "compare:", @"attributes-natural-language"), v16, v15, !v17))
    {
      v19 = [v4[3] objectAtIndexedSubscript:1];
      v20 = [v19 values];
      v21 = [v20 objectAtIndexedSubscript:0];
      v22 = [v21 string];
      v24 = v23;
      [(PK_ipp_t *)v5 _addString:1 valueTag:72 name:@"attributes-natural-language" lang:0 value:v23];
    }

    else
    {
      v18 = [MEMORY[0x277CBEAF8] currentLocale];
      v19 = [v18 objectForKey:*MEMORY[0x277CBE6C8]];

      [(PK_ipp_t *)v5 _addString:1 valueTag:72 name:@"attributes-natural-language" lang:0 value:v19];
    }
  }

  return v5;
}

- (id)rewriteURLAttributes:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v26 = a3;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v21 = [(PK_ipp_t *)self mutableCopy];
  obj = [v21 attrs];
  v24 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v24)
  {
    v23 = *v29;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v29 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v28 + 1) + 8 * i);
        if ([v4 value_tag] == 69)
        {
          v5 = [v4 values];
          v27 = [v5 count];

          if (v27)
          {
            for (j = 0; j != v27; ++j)
            {
              v7 = [v4 values];
              v8 = [v7 objectAtIndexedSubscript:j];
              v9 = [v8 string];
              v11 = v10;

              if (v11)
              {
                v12 = [MEMORY[0x277CBEBC0] URLWithString:v11];
                if (v12)
                {
                  v13 = v26[2](v26, v12);
                  v14 = v13;
                  if (v13 && ([v13 isEqual:v12] & 1) == 0)
                  {
                    v15 = [v14 absoluteString];

                    v16 = [v4 values];
                    v17 = [v16 objectAtIndexedSubscript:j];
                    v18 = v9;
                    v19 = v15;
                    v11 = v19;
                    if (v17)
                    {
                      [v17 setString:{v9, v19}];
                    }

                    else
                    {
                    }
                  }
                }
              }
            }
          }
        }
      }

      v24 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v24);
  }

  return v21;
}

@end