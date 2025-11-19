@interface WFInterchangeScheme
- (BOOL)canLaunchApp;
- (BOOL)isAvailable;
- (BOOL)isCallbackScheme;
- (BOOL)isEqual:(id)a3;
- (BOOL)matchesURL:(id)a3;
- (NSString)callbackCancelURLKey;
- (NSString)callbackErrorURLKey;
- (NSString)callbackSourceNameKey;
- (NSString)callbackSuccessURLKey;
- (NSURL)universalLinkBaseURL;
- (WFInterchangeApp)app;
- (WFInterchangeScheme)initWithDefinition:(id)a3 app:(id)a4;
- (id)description;
- (unint64_t)hash;
@end

@implementation WFInterchangeScheme

- (WFInterchangeApp)app
{
  WeakRetained = objc_loadWeakRetained(&self->_app);

  return WeakRetained;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = WFInterchangeScheme;
  v4 = [(WFInterchangeScheme *)&v10 description];
  v5 = [(WFInterchangeScheme *)self scheme];
  v6 = [(WFInterchangeScheme *)self app];
  v7 = [v6 localizedName];
  v8 = [v3 stringWithFormat:@"%@: %@ from %@", v4, v5, v7];

  return v8;
}

- (unint64_t)hash
{
  v2 = [(WFInterchangeScheme *)self definition];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(WFInterchangeScheme *)self definition];
      v6 = [(WFInterchangeScheme *)v4 definition];
      v7 = [v5 isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (NSString)callbackErrorURLKey
{
  v3 = [(WFInterchangeScheme *)self capabilities];
  v4 = [v3 containsObject:@"x-callback"];

  if (v4)
  {
    v5 = @"x-error";
  }

  else
  {
    v6 = [(WFInterchangeScheme *)self definition];
    v5 = [v6 objectForKey:@"CallbackErrorURLKey"];
  }

  return v5;
}

- (NSString)callbackCancelURLKey
{
  v3 = [(WFInterchangeScheme *)self capabilities];
  v4 = [v3 containsObject:@"x-callback"];

  if (v4)
  {
    v5 = @"x-cancel";
  }

  else
  {
    v6 = [(WFInterchangeScheme *)self definition];
    v5 = [v6 objectForKey:@"CallbackCancelURLKey"];
  }

  return v5;
}

- (NSString)callbackSuccessURLKey
{
  v3 = [(WFInterchangeScheme *)self capabilities];
  v4 = [v3 containsObject:@"x-callback"];

  if (v4)
  {
    v5 = @"x-success";
  }

  else
  {
    v6 = [(WFInterchangeScheme *)self definition];
    v5 = [v6 objectForKey:@"CallbackSuccessURLKey"];
  }

  return v5;
}

- (NSString)callbackSourceNameKey
{
  v3 = [(WFInterchangeScheme *)self capabilities];
  v4 = [v3 containsObject:@"x-callback"];

  if (v4)
  {
    v5 = @"x-source";
  }

  else
  {
    v6 = [(WFInterchangeScheme *)self definition];
    v5 = [v6 objectForKey:@"CallbackSourceNameKey"];
  }

  return v5;
}

- (BOOL)isCallbackScheme
{
  v3 = [(WFInterchangeScheme *)self capabilities];
  if ([v3 containsObject:@"x-callback"])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(WFInterchangeScheme *)self capabilities];
    v4 = [v5 containsObject:@"custom-callback"];
  }

  return v4;
}

- (BOOL)matchesURL:(id)a3
{
  v4 = a3;
  v5 = [v4 scheme];
  v6 = [v5 lowercaseString];

  v7 = [(WFInterchangeScheme *)self scheme];
  v8 = [v7 lowercaseString];
  v9 = [v6 isEqualToString:v8];

  if (v9)
  {
    v10 = 1;
  }

  else if (([v6 isEqualToString:@"http"] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"https"))
  {
    v11 = [(WFInterchangeScheme *)self universalLinkBaseURL];
    if (v11)
    {
      v12 = [v4 host];
      v13 = [v11 host];
      if ([v12 isEqualToString:v13])
      {
        v14 = [v4 path];
        v15 = [v11 path];
        v10 = [v14 hasPrefix:v15];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NSURL)universalLinkBaseURL
{
  v2 = [(WFInterchangeScheme *)self definition];
  v3 = [v2 objectForKey:@"UniversalLinkBaseURL"];

  if (v3)
  {
    v4 = [MEMORY[0x1E695DFF8] URLWithString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)canLaunchApp
{
  v2 = [(WFInterchangeScheme *)self definition];
  v3 = [v2 objectForKey:@"SchemeCannotLaunchApp"];
  v4 = [v3 BOOLValue];

  return v4 ^ 1;
}

- (BOOL)isAvailable
{
  v3 = [MEMORY[0x1E6996CA8] sharedContext];
  v4 = MEMORY[0x1E695DFF8];
  v5 = [(WFInterchangeScheme *)self scheme];
  v6 = [v5 stringByAppendingString:@":"];
  v7 = [v4 URLWithString:v6];
  v8 = [v3 canOpenURL:v7];

  return v8;
}

- (WFInterchangeScheme)initWithDefinition:(id)a3 app:(id)a4
{
  v57 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [(WFInterchangeScheme *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_app, v8);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v7 copy];
      scheme = v10->_scheme;
      v10->_scheme = v11;

LABEL_42:
      v19 = v10;
      goto LABEL_43;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v7 copy];
      definition = v10->_definition;
      v10->_definition = v13;

      v15 = [(WFInterchangeScheme *)v10 definition];
      v16 = [v15 objectForKey:@"Scheme"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = v16;
        if (v17)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = v17;
          }

          else
          {
            v18 = 0;
          }
        }

        else
        {
          v18 = 0;
        }

        v22 = v18;

        v23 = v10->_scheme;
        v10->_scheme = v22;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
LABEL_26:
          if (!v10->_scheme)
          {
            v47 = [MEMORY[0x1E696AAA8] currentHandler];
            [v47 handleFailureInMethod:a2 object:v10 file:@"WFInterchangeScheme.m" lineNumber:72 description:@"WFInterchangeScheme definitions must include a Scheme key."];
          }

          v28 = [(WFInterchangeScheme *)v10 definition];
          v29 = [v28 objectForKey:@"Capabilities"];
          capabilities = v10->_capabilities;
          v10->_capabilities = v29;

          v31 = [(WFInterchangeScheme *)v10 definition];
          v32 = [v31 objectForKey:@"Actions"];

          if ([v32 count])
          {
            v49 = v16;
            v50 = v8;
            v51 = v7;
            v33 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v32, "count")}];
            v52 = 0u;
            v53 = 0u;
            v54 = 0u;
            v55 = 0u;
            v48 = v32;
            v34 = v32;
            v35 = [v34 countByEnumeratingWithState:&v52 objects:v56 count:16];
            if (v35)
            {
              v36 = v35;
              v37 = *v53;
              do
              {
                for (i = 0; i != v36; ++i)
                {
                  if (*v53 != v37)
                  {
                    objc_enumerationMutation(v34);
                  }

                  v39 = *(*(&v52 + 1) + 8 * i);
                  v40 = [v39 objectForKey:{@"ActionClass", v48}];
                  v41 = NSClassFromString(v40);
                  if (!v41)
                  {
                    v41 = objc_opt_class();
                  }

                  v42 = [[v41 alloc] initWithDefinition:v39 scheme:v10];
                  if (v42)
                  {
                    [v33 addObject:v42];
                  }
                }

                v36 = [v34 countByEnumeratingWithState:&v52 objects:v56 count:16];
              }

              while (v36);
            }

            v43 = [v33 copy];
            actions = v10->_actions;
            v10->_actions = v43;

            v8 = v50;
            v7 = v51;
            v32 = v48;
            v16 = v49;
          }

          goto LABEL_42;
        }

        v20 = v16;
        if (v20)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v21 = v20;
          }

          else
          {
            v21 = 0;
          }
        }

        else
        {
          v21 = 0;
        }

        v23 = v21;

        v24 = [(NSString *)v23 objectForKey:@"Phone"];
        if (v24)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v25 = v24;
          }

          else
          {
            v25 = 0;
          }
        }

        else
        {
          v25 = 0;
        }

        v26 = v25;

        v27 = v10->_scheme;
        v10->_scheme = v26;
      }

      goto LABEL_26;
    }
  }

  v19 = 0;
LABEL_43:

  v45 = *MEMORY[0x1E69E9840];
  return v19;
}

@end