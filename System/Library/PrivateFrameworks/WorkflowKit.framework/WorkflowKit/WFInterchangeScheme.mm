@interface WFInterchangeScheme
- (BOOL)canLaunchApp;
- (BOOL)isAvailable;
- (BOOL)isCallbackScheme;
- (BOOL)isEqual:(id)equal;
- (BOOL)matchesURL:(id)l;
- (NSString)callbackCancelURLKey;
- (NSString)callbackErrorURLKey;
- (NSString)callbackSourceNameKey;
- (NSString)callbackSuccessURLKey;
- (NSURL)universalLinkBaseURL;
- (WFInterchangeApp)app;
- (WFInterchangeScheme)initWithDefinition:(id)definition app:(id)app;
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
  scheme = [(WFInterchangeScheme *)self scheme];
  v6 = [(WFInterchangeScheme *)self app];
  localizedName = [v6 localizedName];
  v8 = [v3 stringWithFormat:@"%@: %@ from %@", v4, scheme, localizedName];

  return v8;
}

- (unint64_t)hash
{
  definition = [(WFInterchangeScheme *)self definition];
  v3 = [definition hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      definition = [(WFInterchangeScheme *)self definition];
      definition2 = [(WFInterchangeScheme *)equalCopy definition];
      v7 = [definition isEqual:definition2];
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
  capabilities = [(WFInterchangeScheme *)self capabilities];
  v4 = [capabilities containsObject:@"x-callback"];

  if (v4)
  {
    v5 = @"x-error";
  }

  else
  {
    definition = [(WFInterchangeScheme *)self definition];
    v5 = [definition objectForKey:@"CallbackErrorURLKey"];
  }

  return v5;
}

- (NSString)callbackCancelURLKey
{
  capabilities = [(WFInterchangeScheme *)self capabilities];
  v4 = [capabilities containsObject:@"x-callback"];

  if (v4)
  {
    v5 = @"x-cancel";
  }

  else
  {
    definition = [(WFInterchangeScheme *)self definition];
    v5 = [definition objectForKey:@"CallbackCancelURLKey"];
  }

  return v5;
}

- (NSString)callbackSuccessURLKey
{
  capabilities = [(WFInterchangeScheme *)self capabilities];
  v4 = [capabilities containsObject:@"x-callback"];

  if (v4)
  {
    v5 = @"x-success";
  }

  else
  {
    definition = [(WFInterchangeScheme *)self definition];
    v5 = [definition objectForKey:@"CallbackSuccessURLKey"];
  }

  return v5;
}

- (NSString)callbackSourceNameKey
{
  capabilities = [(WFInterchangeScheme *)self capabilities];
  v4 = [capabilities containsObject:@"x-callback"];

  if (v4)
  {
    v5 = @"x-source";
  }

  else
  {
    definition = [(WFInterchangeScheme *)self definition];
    v5 = [definition objectForKey:@"CallbackSourceNameKey"];
  }

  return v5;
}

- (BOOL)isCallbackScheme
{
  capabilities = [(WFInterchangeScheme *)self capabilities];
  if ([capabilities containsObject:@"x-callback"])
  {
    v4 = 1;
  }

  else
  {
    capabilities2 = [(WFInterchangeScheme *)self capabilities];
    v4 = [capabilities2 containsObject:@"custom-callback"];
  }

  return v4;
}

- (BOOL)matchesURL:(id)l
{
  lCopy = l;
  scheme = [lCopy scheme];
  lowercaseString = [scheme lowercaseString];

  scheme2 = [(WFInterchangeScheme *)self scheme];
  lowercaseString2 = [scheme2 lowercaseString];
  v9 = [lowercaseString isEqualToString:lowercaseString2];

  if (v9)
  {
    v10 = 1;
  }

  else if (([lowercaseString isEqualToString:@"http"] & 1) != 0 || objc_msgSend(lowercaseString, "isEqualToString:", @"https"))
  {
    universalLinkBaseURL = [(WFInterchangeScheme *)self universalLinkBaseURL];
    if (universalLinkBaseURL)
    {
      host = [lCopy host];
      host2 = [universalLinkBaseURL host];
      if ([host isEqualToString:host2])
      {
        path = [lCopy path];
        path2 = [universalLinkBaseURL path];
        v10 = [path hasPrefix:path2];
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
  definition = [(WFInterchangeScheme *)self definition];
  v3 = [definition objectForKey:@"UniversalLinkBaseURL"];

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
  definition = [(WFInterchangeScheme *)self definition];
  v3 = [definition objectForKey:@"SchemeCannotLaunchApp"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue ^ 1;
}

- (BOOL)isAvailable
{
  mEMORY[0x1E6996CA8] = [MEMORY[0x1E6996CA8] sharedContext];
  v4 = MEMORY[0x1E695DFF8];
  scheme = [(WFInterchangeScheme *)self scheme];
  v6 = [scheme stringByAppendingString:@":"];
  v7 = [v4 URLWithString:v6];
  v8 = [mEMORY[0x1E6996CA8] canOpenURL:v7];

  return v8;
}

- (WFInterchangeScheme)initWithDefinition:(id)definition app:(id)app
{
  v57 = *MEMORY[0x1E69E9840];
  definitionCopy = definition;
  appCopy = app;
  v9 = [(WFInterchangeScheme *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_app, appCopy);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [definitionCopy copy];
      scheme = v10->_scheme;
      v10->_scheme = v11;

LABEL_42:
      v19 = v10;
      goto LABEL_43;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [definitionCopy copy];
      definition = v10->_definition;
      v10->_definition = v13;

      definition = [(WFInterchangeScheme *)v10 definition];
      v16 = [definition objectForKey:@"Scheme"];

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
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler handleFailureInMethod:a2 object:v10 file:@"WFInterchangeScheme.m" lineNumber:72 description:@"WFInterchangeScheme definitions must include a Scheme key."];
          }

          definition2 = [(WFInterchangeScheme *)v10 definition];
          v29 = [definition2 objectForKey:@"Capabilities"];
          capabilities = v10->_capabilities;
          v10->_capabilities = v29;

          definition3 = [(WFInterchangeScheme *)v10 definition];
          v32 = [definition3 objectForKey:@"Actions"];

          if ([v32 count])
          {
            v49 = v16;
            v50 = appCopy;
            v51 = definitionCopy;
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

            appCopy = v50;
            definitionCopy = v51;
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