@interface KTValidatePeersResponse
- (KTValidatePeersResponse)initWithApplication:(id)application results:(id)results;
- (KTValidatePeersResponse)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation KTValidatePeersResponse

- (KTValidatePeersResponse)initWithApplication:(id)application results:(id)results
{
  applicationCopy = application;
  resultsCopy = results;
  v12.receiver = self;
  v12.super_class = KTValidatePeersResponse;
  v8 = [(KTValidatePeersResponse *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(KTValidatePeersResponse *)v8 setApplication:applicationCopy];
    [(KTValidatePeersResponse *)v9 setResults:resultsCopy];
    v10 = v9;
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  application = [(KTValidatePeersResponse *)self application];
  [coderCopy encodeObject:application forKey:@"application"];

  results = [(KTValidatePeersResponse *)self results];
  [coderCopy encodeObject:results forKey:@"results"];

  traceUUID = [(KTValidatePeersResponse *)self traceUUID];

  if (traceUUID)
  {
    traceUUID2 = [(KTValidatePeersResponse *)self traceUUID];
    [coderCopy encodeObject:traceUUID2 forKey:@"traceUUID"];
  }
}

- (KTValidatePeersResponse)initWithCoder:(id)coder
{
  v33[3] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = MEMORY[0x1E695DFD8];
  v33[0] = objc_opt_class();
  v33[1] = objc_opt_class();
  v33[2] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:3];
  v7 = [v5 setWithArray:v6];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"application"];
  v9 = [coderCopy decodeObjectOfClasses:v7 forKey:@"results"];
  v10 = v9;
  selfCopy2 = 0;
  if (v8 && v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      keyEnumerator = [v10 keyEnumerator];
      v13 = [keyEnumerator countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v29;
        v25 = v7;
        selfCopy = self;
        while (2)
        {
          v16 = 0;
          do
          {
            if (*v29 != v15)
            {
              objc_enumerationMutation(keyEnumerator);
            }

            v17 = *(*(&v28 + 1) + 8 * v16);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || ([v10 objectForKeyedSubscript:v17], v18 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v18, (isKindOfClass & 1) == 0))
            {

              selfCopy2 = 0;
              v7 = v25;
              self = selfCopy;
              goto LABEL_18;
            }

            ++v16;
          }

          while (v14 != v16);
          v14 = [keyEnumerator countByEnumeratingWithState:&v28 objects:v32 count:16];
          v7 = v25;
          self = selfCopy;
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      v27.receiver = self;
      v27.super_class = KTValidatePeersResponse;
      v20 = [(KTValidatePeersResponse *)&v27 init];
      if (v20)
      {
        v21 = v20;
        [(KTValidatePeersResponse *)v20 setApplication:v8];
        [(KTValidatePeersResponse *)v21 setResults:v10];
        v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"traceUUID"];
        [(KTValidatePeersResponse *)v21 setTraceUUID:v22];

        self = v21;
        selfCopy2 = self;
        goto LABEL_18;
      }

      self = 0;
    }

    selfCopy2 = 0;
  }

LABEL_18:

  v23 = *MEMORY[0x1E69E9840];
  return selfCopy2;
}

@end