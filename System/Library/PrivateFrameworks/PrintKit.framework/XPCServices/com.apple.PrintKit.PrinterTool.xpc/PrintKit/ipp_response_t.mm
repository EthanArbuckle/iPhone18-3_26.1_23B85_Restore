@interface ipp_response_t
- (id)rewriteURLAttributes:(id)attributes;
- (ipp_response_t)initWithRequest:(id)request;
@end

@implementation ipp_response_t

- (ipp_response_t)initWithRequest:(id)request
{
  requestCopy = request;
  v26.receiver = self;
  v26.super_class = ipp_response_t;
  v5 = [(ipp_t *)&v26 init];
  if (v5)
  {
    v5->super._request_id = [requestCopy request_id];
    if ([requestCopy[3] count] && (objc_msgSend(requestCopy[3], "objectAtIndexedSubscript:", 0), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "name"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "compare:", @"attributes-charset"), v7, v6, !v8))
    {
      v9 = [requestCopy[3] objectAtIndexedSubscript:0];
      values = [v9 values];
      v11 = [values objectAtIndexedSubscript:0];
      string = [v11 string];
      v14 = v13;
      [(ipp_t *)v5 _addString:1 valueTag:71 name:@"attributes-charset" lang:0 value:v13];
    }

    else
    {
      [(ipp_t *)v5 _addString:1 valueTag:71 name:@"attributes-charset" lang:0 value:@"utf-8"];
    }

    if ([requestCopy[3] count] && (objc_msgSend(requestCopy[3], "objectAtIndexedSubscript:", 0), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "name"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "compare:", @"attributes-natural-language"), v16, v15, !v17))
    {
      v19 = [requestCopy[3] objectAtIndexedSubscript:1];
      values2 = [v19 values];
      v21 = [values2 objectAtIndexedSubscript:0];
      string2 = [v21 string];
      v24 = v23;
      [(ipp_t *)v5 _addString:1 valueTag:72 name:@"attributes-natural-language" lang:0 value:v23];
    }

    else
    {
      v18 = +[NSLocale currentLocale];
      v19 = [v18 objectForKey:NSLocaleLanguageCode];

      [(ipp_t *)v5 _addString:1 valueTag:72 name:@"attributes-natural-language" lang:0 value:v19];
    }
  }

  return v5;
}

- (id)rewriteURLAttributes:(id)attributes
{
  attributesCopy = attributes;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v21 = [(ipp_t *)self mutableCopy];
  obj = [v21 attrs];
  v24 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v24)
  {
    v23 = *v29;
    do
    {
      for (i = 0; i != v24; i = i + 1)
      {
        if (*v29 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v28 + 1) + 8 * i);
        if ([v4 value_tag] == 69)
        {
          values = [v4 values];
          v27 = [values count];

          if (v27)
          {
            for (j = 0; j != v27; ++j)
            {
              values2 = [v4 values];
              v8 = [values2 objectAtIndexedSubscript:j];
              string = [v8 string];
              v11 = v10;

              if (v11)
              {
                v12 = [NSURL URLWithString:v11];
                if (v12)
                {
                  v13 = attributesCopy[2](attributesCopy, v12);
                  v14 = v13;
                  if (v13 && ([v13 isEqual:v12] & 1) == 0)
                  {
                    absoluteString = [v14 absoluteString];

                    values3 = [v4 values];
                    v17 = [values3 objectAtIndexedSubscript:j];
                    v18 = string;
                    v19 = absoluteString;
                    v11 = v19;
                    if (v17)
                    {
                      [v17 setString:{string, v19}];
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