@interface TPSURLActionComponents
+ (id)componentsWithURL:(id)l;
+ (unint64_t)_actionTypeForString:(id)string;
- (TPSURLActionComponents)initWithString:(id)string;
- (TPSURLActionComponents)initWithURL:(id)l;
- (void)_parseURL:(id)l;
@end

@implementation TPSURLActionComponents

+ (id)componentsWithURL:(id)l
{
  lCopy = l;
  v5 = [[self alloc] initWithURL:lCopy];

  return v5;
}

- (TPSURLActionComponents)initWithURL:(id)l
{
  lCopy = l;
  v8.receiver = self;
  v8.super_class = TPSURLActionComponents;
  v5 = [(TPSURLActionComponents *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(TPSURLActionComponents *)v5 _parseURL:lCopy];
  }

  return v6;
}

- (TPSURLActionComponents)initWithString:(id)string
{
  v4 = [MEMORY[0x1E695DFF8] URLWithString:string];
  if (v4)
  {
    self = [(TPSURLActionComponents *)self initWithURL:v4];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)_parseURL:(id)l
{
  v44 = *MEMORY[0x1E69E9840];
  lCopy = l;
  absoluteString = [lCopy absoluteString];
  v6 = [MEMORY[0x1E696AF20] componentsWithString:absoluteString];
  [(TPSURLActionComponents *)self setActionType:0];
  scheme = [v6 scheme];
  v8 = [scheme isEqualToString:@"tips"];

  if (!v8)
  {
    goto LABEL_37;
  }

  path = [v6 path];
  v10 = [path isEqualToString:@"open"];

  if (!v10)
  {
    goto LABEL_37;
  }

  v36 = lCopy;
  selfCopy = self;
  v34 = v6;
  v35 = absoluteString;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  queryItems = [v6 queryItems];
  v12 = [queryItems countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (!v12)
  {
    v14 = 0;
    v38 = 0;
    v15 = 0;
    goto LABEL_21;
  }

  v13 = v12;
  v14 = 0;
  v38 = 0;
  v15 = 0;
  v16 = *v40;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v40 != v16)
      {
        objc_enumerationMutation(queryItems);
      }

      v18 = *(*(&v39 + 1) + 8 * i);
      name = [v18 name];
      v20 = [name isEqualToString:@"type"];

      if (v20)
      {
        [v18 value];
        v15 = value = v15;
      }

      else
      {
        name2 = [v18 name];
        v23 = [name2 isEqualToString:@"url"];

        if (v23)
        {
          [v18 value];
          v14 = value = v14;
        }

        else
        {
          name3 = [v18 name];
          v25 = [name3 isEqualToString:@"bundleId"];

          if (v25)
          {
            [v18 value];
            v38 = value = v38;
          }

          else
          {
            name4 = [v18 name];
            v27 = [name4 isEqualToString:@"identifier"];

            if (!v27)
            {
              continue;
            }

            value = [v18 value];
            [(TPSURLActionComponents *)selfCopy setIdentifier:value];
          }
        }
      }
    }

    v13 = [queryItems countByEnumeratingWithState:&v39 objects:v43 count:16];
  }

  while (v13);
LABEL_21:

  if ([v14 length])
  {
    -[TPSURLActionComponents setActionType:](selfCopy, "setActionType:", [objc_opt_class() _actionTypeForString:v15]);
    v28 = v38;
    if ([(TPSURLActionComponents *)selfCopy actionType])
    {
      goto LABEL_23;
    }

    goto LABEL_36;
  }

  v28 = v38;
  if ([v15 isEqualToString:@"userGuide"])
  {
    [(TPSURLActionComponents *)selfCopy setActionType:9];
    [(TPSURLActionComponents *)selfCopy setBundleID:v38];
    goto LABEL_36;
  }

  if ([v38 length])
  {
    if (![v15 isEqualToString:@"app"])
    {
      goto LABEL_36;
    }

    v30 = +[TPSCommonDefines sharedInstance];
    v29 = [v30 appBundleIDForInstalledAppWithIdentifier:v38];

    if (v29)
    {
      [(TPSURLActionComponents *)selfCopy setActionType:1];
      [(TPSURLActionComponents *)selfCopy setBundleID:v29];
    }

LABEL_24:

    goto LABEL_36;
  }

  if ([v15 isEqualToString:@"client"])
  {
    v31 = selfCopy;
    v32 = 8;
  }

  else
  {
    if (![v15 isEqualToString:@"tryit"])
    {
      goto LABEL_36;
    }

    v31 = selfCopy;
    v32 = 11;
  }

  [(TPSURLActionComponents *)v31 setActionType:v32];
  if (v14)
  {
LABEL_23:
    v29 = [MEMORY[0x1E695DFF8] URLWithString:v14];
    [(TPSURLActionComponents *)selfCopy setURL:v29];
    goto LABEL_24;
  }

LABEL_36:

  absoluteString = v35;
  lCopy = v36;
  v6 = v34;
LABEL_37:

  v33 = *MEMORY[0x1E69E9840];
}

+ (unint64_t)_actionTypeForString:(id)string
{
  v3 = _actionTypeForString__onceToken;
  stringCopy = string;
  if (v3 != -1)
  {
    +[TPSURLActionComponents _actionTypeForString:];
  }

  v5 = [_actionTypeForString__actionTypeMap objectForKeyedSubscript:stringCopy];

  unsignedIntValue = [v5 unsignedIntValue];
  return unsignedIntValue;
}

void __47__TPSURLActionComponents__actionTypeForString___block_invoke()
{
  v0 = _actionTypeForString__actionTypeMap;
  _actionTypeForString__actionTypeMap = &unk_1F3F41E30;
}

@end