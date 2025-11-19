@interface PKWebServiceLoggableHeaders
- (PKWebServiceLoggableHeaders)initWithHeaders:(id)a3;
- (id)_descriptionIncludingPrivateFields:(BOOL)a3;
@end

@implementation PKWebServiceLoggableHeaders

- (PKWebServiceLoggableHeaders)initWithHeaders:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKWebServiceLoggableHeaders;
  v6 = [(PKWebServiceLoggableHeaders *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_headers, a3);
  }

  return v7;
}

- (id)_descriptionIncludingPrivateFields:(BOOL)a3
{
  v3 = a3;
  v26 = *MEMORY[0x1E69E9840];
  v20 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = self->_headers;
  v6 = [(NSDictionary *)v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v6)
  {
    v8 = 0;
    goto LABEL_17;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v22;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v22 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v21 + 1) + 8 * i);
      v12 = v11;
      if (v11 == @"x-conversation-id" || v11 && (v13 = [(__CFString *)v11 isEqualToString:@"x-conversation-id"], v12, v13))
      {
        [(NSDictionary *)self->_headers PKStringForKey:v12];
        v8 = v14 = v8;
      }

      else
      {
        if (!v3)
        {
          continue;
        }

        v14 = [(NSDictionary *)self->_headers objectForKeyedSubscript:v12];
        [v20 appendFormat:@"\t%@ = %@\n", v12, v14];
      }
    }

    v7 = [(NSDictionary *)v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  }

  while (v7);
LABEL_17:

  if (!v3)
  {
    [v20 appendFormat:@"\t%lu <private> fields\n", -[NSDictionary count](self->_headers, "count") - (v8 != 0)];
  }

  v15 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (v8)
  {
    v16 = [v15 initWithFormat:@"{\n\tx-conversation-id = %@\n%@}", v8, v20];
  }

  else
  {
    v16 = [v15 initWithFormat:@"{\n%@}", v20, v19];
  }

  v17 = v16;

  return v17;
}

@end