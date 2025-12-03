@interface PKWebServiceLoggableRequestBody
- (PKWebServiceLoggableRequestBody)initWithBody:(id)body sensitiveKeys:(id)keys;
- (id)_descriptionIncludingPrivateFields:(BOOL)fields;
- (void)_redactLogsFromJSONObject:(id)object;
@end

@implementation PKWebServiceLoggableRequestBody

- (PKWebServiceLoggableRequestBody)initWithBody:(id)body sensitiveKeys:(id)keys
{
  bodyCopy = body;
  keysCopy = keys;
  v12.receiver = self;
  v12.super_class = PKWebServiceLoggableRequestBody;
  v9 = [(PKWebServiceLoggableRequestBody *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_body, body);
    objc_storeStrong(&v10->_sensitiveKeys, keys);
  }

  return v10;
}

- (id)_descriptionIncludingPrivateFields:(BOOL)fields
{
  if (!self->_body)
  {
    v7 = 0;
    goto LABEL_12;
  }

  if (!fields)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lu bytes", -[NSData length](self->_body, "length")];
    goto LABEL_12;
  }

  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:? options:? error:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    [(PKWebServiceLoggableRequestBody *)self _redactLogsFromJSONObject:v5];
    body = v5;
LABEL_10:
    v9 = [(NSData *)body description];
    goto LABEL_11;
  }

  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:self->_body encoding:4];
  v5 = v8;
  if (!v8)
  {
    body = self->_body;
    goto LABEL_10;
  }

  v9 = v8;
LABEL_11:
  v7 = v9;

LABEL_12:

  return v7;
}

- (void)_redactLogsFromJSONObject:(id)object
{
  v28 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objectCopy;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    allKeys = [v5 allKeys];
    v7 = [allKeys countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v23;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(allKeys);
          }

          v11 = *(*(&v22 + 1) + 8 * i);
          if ([(NSSet *)self->_sensitiveKeys containsObject:v11])
          {
            [v5 setObject:@"<redacted>" forKey:v11];
          }

          else
          {
            v12 = [v5 objectForKey:v11];
            [(PKWebServiceLoggableRequestBody *)self _redactLogsFromJSONObject:v12];
          }
        }

        v8 = [allKeys countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v8);
    }

LABEL_21:
    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = objectCopy;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v14 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v19;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v19 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [(PKWebServiceLoggableRequestBody *)self _redactLogsFromJSONObject:*(*(&v18 + 1) + 8 * j)];
        }

        v15 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v15);
    }

    goto LABEL_21;
  }

LABEL_22:
}

@end