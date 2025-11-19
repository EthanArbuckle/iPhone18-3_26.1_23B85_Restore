@interface KTValidatePeersQuery
- (KTValidatePeersQuery)initWithApplication:(id)a3 peers:(id)a4;
- (KTValidatePeersQuery)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation KTValidatePeersQuery

- (KTValidatePeersQuery)initWithApplication:(id)a3 peers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = KTValidatePeersQuery;
  v8 = [(KTValidatePeersQuery *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(KTValidatePeersQuery *)v8 setApplication:v6];
    [(KTValidatePeersQuery *)v9 setUriToVerificationInfo:v7];
    v10 = v9;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(KTValidatePeersQuery *)self application];
  [v8 encodeObject:v4 forKey:@"application"];

  v5 = [(KTValidatePeersQuery *)self uriToVerificationInfo];
  [v8 encodeObject:v5 forKey:@"uriToVerificationInfo"];

  [v8 encodeBool:-[KTValidatePeersQuery fetchNow](self forKey:{"fetchNow"), @"fetchNow"}];
  v6 = [(KTValidatePeersQuery *)self traceUUID];

  if (v6)
  {
    v7 = [(KTValidatePeersQuery *)self traceUUID];
    [v8 encodeObject:v7 forKey:@"traceUUID"];
  }
}

- (KTValidatePeersQuery)initWithCoder:(id)a3
{
  v32[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695DFD8];
  v32[0] = objc_opt_class();
  v32[1] = objc_opt_class();
  v32[2] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:3];
  v7 = [v5 setWithArray:v6];

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"application"];
  v9 = [v4 decodeObjectOfClasses:v7 forKey:@"uriToVerificationInfo"];
  v10 = v9;
  v11 = 0;
  if (v8 && v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v12 = [v10 keyEnumerator];
      v13 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v28;
        v25 = self;
        while (2)
        {
          v16 = 0;
          do
          {
            if (*v28 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v27 + 1) + 8 * v16);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || ([v10 objectForKeyedSubscript:v17], v18 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v18, (isKindOfClass & 1) == 0))
            {

              v11 = 0;
              self = v25;
              goto LABEL_18;
            }

            ++v16;
          }

          while (v14 != v16);
          v14 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
          self = v25;
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      v26.receiver = self;
      v26.super_class = KTValidatePeersQuery;
      v20 = [(KTValidatePeersQuery *)&v26 init];
      if (v20)
      {
        v21 = v20;
        [(KTValidatePeersQuery *)v20 setUriToVerificationInfo:v10];
        [(KTValidatePeersQuery *)v21 setApplication:v8];
        -[KTValidatePeersQuery setFetchNow:](v21, "setFetchNow:", [v4 decodeBoolForKey:@"fetchNow"]);
        v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"traceUUID"];
        [(KTValidatePeersQuery *)v21 setTraceUUID:v22];

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