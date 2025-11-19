@interface KTValidatePeersResponse
- (KTValidatePeersResponse)initWithApplication:(id)a3 results:(id)a4;
- (KTValidatePeersResponse)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation KTValidatePeersResponse

- (KTValidatePeersResponse)initWithApplication:(id)a3 results:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = KTValidatePeersResponse;
  v8 = [(KTValidatePeersResponse *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(KTValidatePeersResponse *)v8 setApplication:v6];
    [(KTValidatePeersResponse *)v9 setResults:v7];
    v10 = v9;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(KTValidatePeersResponse *)self application];
  [v8 encodeObject:v4 forKey:@"application"];

  v5 = [(KTValidatePeersResponse *)self results];
  [v8 encodeObject:v5 forKey:@"results"];

  v6 = [(KTValidatePeersResponse *)self traceUUID];

  if (v6)
  {
    v7 = [(KTValidatePeersResponse *)self traceUUID];
    [v8 encodeObject:v7 forKey:@"traceUUID"];
  }
}

- (KTValidatePeersResponse)initWithCoder:(id)a3
{
  v33[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695DFD8];
  v33[0] = objc_opt_class();
  v33[1] = objc_opt_class();
  v33[2] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:3];
  v7 = [v5 setWithArray:v6];

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"application"];
  v9 = [v4 decodeObjectOfClasses:v7 forKey:@"results"];
  v10 = v9;
  v11 = 0;
  if (v8 && v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v12 = [v10 keyEnumerator];
      v13 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v29;
        v25 = v7;
        v26 = self;
        while (2)
        {
          v16 = 0;
          do
          {
            if (*v29 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v28 + 1) + 8 * v16);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || ([v10 objectForKeyedSubscript:v17], v18 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v18, (isKindOfClass & 1) == 0))
            {

              v11 = 0;
              v7 = v25;
              self = v26;
              goto LABEL_18;
            }

            ++v16;
          }

          while (v14 != v16);
          v14 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
          v7 = v25;
          self = v26;
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
        v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"traceUUID"];
        [(KTValidatePeersResponse *)v21 setTraceUUID:v22];

        self = v21;
        v11 = self;
        goto LABEL_18;
      }

      self = 0;
    }

    v11 = 0;
  }

LABEL_18:

  v23 = *MEMORY[0x1E69E9840];
  return v11;
}

@end