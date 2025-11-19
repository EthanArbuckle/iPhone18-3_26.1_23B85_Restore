@interface TPSURLActionComponents
+ (id)componentsWithURL:(id)a3;
+ (unint64_t)_actionTypeForString:(id)a3;
- (TPSURLActionComponents)initWithString:(id)a3;
- (TPSURLActionComponents)initWithURL:(id)a3;
- (void)_parseURL:(id)a3;
@end

@implementation TPSURLActionComponents

+ (id)componentsWithURL:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithURL:v4];

  return v5;
}

- (TPSURLActionComponents)initWithURL:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TPSURLActionComponents;
  v5 = [(TPSURLActionComponents *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(TPSURLActionComponents *)v5 _parseURL:v4];
  }

  return v6;
}

- (TPSURLActionComponents)initWithString:(id)a3
{
  v4 = [MEMORY[0x1E695DFF8] URLWithString:a3];
  if (v4)
  {
    self = [(TPSURLActionComponents *)self initWithURL:v4];
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_parseURL:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 absoluteString];
  v6 = [MEMORY[0x1E696AF20] componentsWithString:v5];
  [(TPSURLActionComponents *)self setActionType:0];
  v7 = [v6 scheme];
  v8 = [v7 isEqualToString:@"tips"];

  if (!v8)
  {
    goto LABEL_37;
  }

  v9 = [v6 path];
  v10 = [v9 isEqualToString:@"open"];

  if (!v10)
  {
    goto LABEL_37;
  }

  v36 = v4;
  v37 = self;
  v34 = v6;
  v35 = v5;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v11 = [v6 queryItems];
  v12 = [v11 countByEnumeratingWithState:&v39 objects:v43 count:16];
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
        objc_enumerationMutation(v11);
      }

      v18 = *(*(&v39 + 1) + 8 * i);
      v19 = [v18 name];
      v20 = [v19 isEqualToString:@"type"];

      if (v20)
      {
        [v18 value];
        v15 = v21 = v15;
      }

      else
      {
        v22 = [v18 name];
        v23 = [v22 isEqualToString:@"url"];

        if (v23)
        {
          [v18 value];
          v14 = v21 = v14;
        }

        else
        {
          v24 = [v18 name];
          v25 = [v24 isEqualToString:@"bundleId"];

          if (v25)
          {
            [v18 value];
            v38 = v21 = v38;
          }

          else
          {
            v26 = [v18 name];
            v27 = [v26 isEqualToString:@"identifier"];

            if (!v27)
            {
              continue;
            }

            v21 = [v18 value];
            [(TPSURLActionComponents *)v37 setIdentifier:v21];
          }
        }
      }
    }

    v13 = [v11 countByEnumeratingWithState:&v39 objects:v43 count:16];
  }

  while (v13);
LABEL_21:

  if ([v14 length])
  {
    -[TPSURLActionComponents setActionType:](v37, "setActionType:", [objc_opt_class() _actionTypeForString:v15]);
    v28 = v38;
    if ([(TPSURLActionComponents *)v37 actionType])
    {
      goto LABEL_23;
    }

    goto LABEL_36;
  }

  v28 = v38;
  if ([v15 isEqualToString:@"userGuide"])
  {
    [(TPSURLActionComponents *)v37 setActionType:9];
    [(TPSURLActionComponents *)v37 setBundleID:v38];
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
      [(TPSURLActionComponents *)v37 setActionType:1];
      [(TPSURLActionComponents *)v37 setBundleID:v29];
    }

LABEL_24:

    goto LABEL_36;
  }

  if ([v15 isEqualToString:@"client"])
  {
    v31 = v37;
    v32 = 8;
  }

  else
  {
    if (![v15 isEqualToString:@"tryit"])
    {
      goto LABEL_36;
    }

    v31 = v37;
    v32 = 11;
  }

  [(TPSURLActionComponents *)v31 setActionType:v32];
  if (v14)
  {
LABEL_23:
    v29 = [MEMORY[0x1E695DFF8] URLWithString:v14];
    [(TPSURLActionComponents *)v37 setURL:v29];
    goto LABEL_24;
  }

LABEL_36:

  v5 = v35;
  v4 = v36;
  v6 = v34;
LABEL_37:

  v33 = *MEMORY[0x1E69E9840];
}

+ (unint64_t)_actionTypeForString:(id)a3
{
  v3 = _actionTypeForString__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[TPSURLActionComponents _actionTypeForString:];
  }

  v5 = [_actionTypeForString__actionTypeMap objectForKeyedSubscript:v4];

  v6 = [v5 unsignedIntValue];
  return v6;
}

void __47__TPSURLActionComponents__actionTypeForString___block_invoke()
{
  v0 = _actionTypeForString__actionTypeMap;
  _actionTypeForString__actionTypeMap = &unk_1F3F41E30;
}

@end