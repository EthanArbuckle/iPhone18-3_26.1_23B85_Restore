@interface SSVSAPSignaturePolicy
- (SSVSAPSignaturePolicy)initWithPolicyType:(int64_t)type signatureComponents:(id)components;
- (SSVSAPSignaturePolicy)initWithSignedActionsDictionary:(id)dictionary;
- (id)_dataToSignWithDataSource:(id)source;
- (id)dataToSignWithRequestProperties:(id)properties;
- (id)dataToSignWithURLRequest:(id)request;
- (id)dataToSignWithURLResponse:(id)response responseData:(id)data;
@end

@implementation SSVSAPSignaturePolicy

- (SSVSAPSignaturePolicy)initWithPolicyType:(int64_t)type signatureComponents:(id)components
{
  componentsCopy = components;
  v12.receiver = self;
  v12.super_class = SSVSAPSignaturePolicy;
  v7 = [(SSVSAPSignaturePolicy *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_policyType = type;
    v9 = [componentsCopy copy];
    signatureComponents = v8->_signatureComponents;
    v8->_signatureComponents = v9;
  }

  return v8;
}

- (SSVSAPSignaturePolicy)initWithSignedActionsDictionary:(id)dictionary
{
  v36 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [dictionaryCopy objectForKey:@"headers"];
  objc_opt_class();
  v25 = v6;
  if (objc_opt_isKindOfClass())
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v31;
      do
      {
        v11 = 0;
        do
        {
          if (*v31 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v30 + 1) + 8 * v11);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = [[SSVSAPSignatureComponent alloc] initWithComponentType:1 key:v12];
            [v5 addObject:v13];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v9);
    }

    v6 = v25;
  }

  v14 = [dictionaryCopy objectForKey:@"fields"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v15 = v14;
    v16 = [v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v27;
      do
      {
        v19 = 0;
        do
        {
          if (*v27 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v26 + 1) + 8 * v19);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v21 = [[SSVSAPSignatureComponent alloc] initWithComponentType:2 key:v20];
            [v5 addObject:v21];
          }

          ++v19;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v17);
    }

    self = selfCopy;
    v6 = v25;
  }

  if ([v5 count])
  {
    v22 = [(SSVSAPSignaturePolicy *)self initWithPolicyType:2 signatureComponents:v5];
  }

  else
  {

    v22 = 0;
  }

  return v22;
}

- (id)dataToSignWithRequestProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = [[SSVSAPSignatureDataSource alloc] initWithURLRequestProperties:propertiesCopy];

  v6 = [(SSVSAPSignaturePolicy *)self _dataToSignWithDataSource:v5];

  return v6;
}

- (id)dataToSignWithURLRequest:(id)request
{
  requestCopy = request;
  v5 = [[SSVSAPSignatureDataSource alloc] initWithURLRequest:requestCopy];

  v6 = [(SSVSAPSignaturePolicy *)self _dataToSignWithDataSource:v5];

  return v6;
}

- (id)dataToSignWithURLResponse:(id)response responseData:(id)data
{
  dataCopy = data;
  responseCopy = response;
  v8 = [[SSVSAPSignatureDataSource alloc] initWithURLResponse:responseCopy bodyData:dataCopy];

  v9 = [(SSVSAPSignaturePolicy *)self _dataToSignWithDataSource:v8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = [v9 mutableCopy];
  }

  v11 = v10;

  return v11;
}

- (id)_dataToSignWithDataSource:(id)source
{
  v20 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  hTTPMethod = [sourceCopy HTTPMethod];
  v6 = [hTTPMethod isEqualToString:@"POST"];

  if (v6)
  {
    hTTPBody = [sourceCopy HTTPBody];
  }

  else if (self->_policyType == 2)
  {
    if ([(NSArray *)self->_signatureComponents count]== 1)
    {
      firstObject = [(NSArray *)self->_signatureComponents firstObject];
      hTTPBody = [(NSArray *)firstObject _dataToSignWithDataSource:sourceCopy];
    }

    else
    {
      hTTPBody = [MEMORY[0x1E695DF88] data];
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      firstObject = self->_signatureComponents;
      v9 = [(NSArray *)firstObject countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v16;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v16 != v11)
            {
              objc_enumerationMutation(firstObject);
            }

            v13 = [*(*(&v15 + 1) + 8 * i) _dataToSignWithDataSource:{sourceCopy, v15}];
            if (v13)
            {
              [hTTPBody appendData:v13];
            }
          }

          v10 = [(NSArray *)firstObject countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v10);
      }
    }
  }

  else
  {
    hTTPBody = 0;
  }

  return hTTPBody;
}

@end