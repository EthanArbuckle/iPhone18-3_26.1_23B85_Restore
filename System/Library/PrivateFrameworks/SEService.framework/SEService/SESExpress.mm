@interface SESExpress
+ (id)getUWBExpressKeyIdentifiers:(id)identifiers appletIdentifiers:(id)appletIdentifiers;
+ (id)processConfigurationChange:(id)change newConfiguration:(id)configuration;
@end

@implementation SESExpress

+ (id)processConfigurationChange:(id)change newConfiguration:(id)configuration
{
  changeCopy = change;
  configurationCopy = configuration;
  v7 = MEMORY[0x1E695DFD8];
  if (changeCopy)
  {
    v8 = [SESExpress getUWBExpressKeyIdentifiers:changeCopy appletIdentifiers:&unk_1F4762D28];
    v9 = [v7 setWithArray:v8];
  }

  else
  {
    v9 = objc_opt_new();
  }

  v10 = MEMORY[0x1E695DFD8];
  if (configurationCopy)
  {
    v11 = [SESExpress getUWBExpressKeyIdentifiers:configurationCopy appletIdentifiers:&unk_1F4762D40];
    v12 = [v10 setWithArray:v11];
  }

  else
  {
    v12 = objc_opt_new();
  }

  if ([v9 isEqualToSet:v12])
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __58__SESExpress_processConfigurationChange_newConfiguration___block_invoke;
    v16[3] = &unk_1E82D0F08;
    v17 = v12;
    v18 = &v19;
    [v9 enumerateObjectsUsingBlock:v16];
    if (*(v20 + 24))
    {
      v13 = &unk_1F4762D70;
    }

    else
    {
      v13 = MEMORY[0x1E695E0F0];
    }

    v14 = v13;

    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v14 = &unk_1F4762D58;
  }

  return v14;
}

void __58__SESExpress_processConfigurationChange_newConfiguration___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [v5 appletIdentifier];
  v7 = [v6 isEqualToString:@"A000000909ACCE5501"];

  if (v7)
  {
    v8 = [*(a1 + 32) allObjects];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __58__SESExpress_processConfigurationChange_newConfiguration___block_invoke_2;
    v21[3] = &unk_1E82D0EE0;
    v9 = v5;
    v22 = v9;
    v10 = [v8 find:v21];

    v11 = [v9 configuration];
    v12 = [v11 objectForKeyedSubscript:@"aliroGroupResolvingKeys"];

    v13 = [v10 configuration];
    v14 = [v13 objectForKeyedSubscript:@"aliroGroupResolvingKeys"];

    if ((v12 == 0) == (v14 != 0) || v12 && ([v12 isEqual:v14] & 1) == 0)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a3 = 1;
    }

    else
    {
      v15 = [v9 configuration];
      v16 = [v15 objectForKeyedSubscript:@"ECP2Info"];
      v17 = [v16 objectForKeyedSubscript:@"associatedReaderIdentifiers"];

      v18 = [v10 configuration];
      v19 = [v18 objectForKeyedSubscript:@"ECP2Info"];
      v20 = [v19 objectForKeyedSubscript:@"associatedReaderIdentifiers"];

      if ((v17 == 0) == (v20 != 0) || v17 && ([v17 isEqual:v20] & 1) == 0)
      {
        *(*(*(a1 + 40) + 8) + 24) = 1;
        *a3 = 1;
      }
    }
  }
}

uint64_t __58__SESExpress_processConfigurationChange_newConfiguration___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 appletIdentifier];
  v4 = [*(a1 + 32) appletIdentifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

+ (id)getUWBExpressKeyIdentifiers:(id)identifiers appletIdentifiers:(id)appletIdentifiers
{
  appletIdentifiersCopy = appletIdentifiers;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__SESExpress_getUWBExpressKeyIdentifiers_appletIdentifiers___block_invoke;
  v9[3] = &unk_1E82D0F30;
  v10 = appletIdentifiersCopy;
  v6 = appletIdentifiersCopy;
  v7 = [identifiers filterMap:v9];

  return v7;
}

id __60__SESExpress_getUWBExpressKeyIdentifiers_appletIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"appletIdentifier"];
  if (!v4 || (v5 = v4, [v3 objectForKeyedSubscript:@"appletIdentifier"], v6 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v6, v5, (isKindOfClass & 1) == 0))
  {
    v8 = SESDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v21 = 138412290;
      v22 = v3;
      _os_log_impl(&dword_1C7B9A000, v8, OS_LOG_TYPE_ERROR, "Missing or invalid appletIdentifier %@", &v21, 0xCu);
    }

    goto LABEL_12;
  }

  v8 = [v3 objectForKeyedSubscript:@"appletIdentifier"];
  if ([*(a1 + 32) containsObject:v8])
  {
    v9 = [v3 objectForKeyedSubscript:@"keyIdentifier"];

    if (!v9)
    {
      goto LABEL_13;
    }

    v10 = [v3 objectForKeyedSubscript:@"keyIdentifier"];
    objc_opt_class();
    v11 = objc_opt_isKindOfClass();

    if (v11)
    {
      v9 = [v3 objectForKeyedSubscript:@"UWBExpressEnabled"];

      if (!v9)
      {
        goto LABEL_13;
      }

      v12 = [v3 objectForKeyedSubscript:@"UWBExpressEnabled"];
      objc_opt_class();
      v13 = objc_opt_isKindOfClass();

      if (v13)
      {
        v14 = [v3 objectForKeyedSubscript:@"UWBExpressEnabled"];
        v15 = [v14 BOOLValue];

        if (v15)
        {
          v16 = [v3 objectForKeyedSubscript:@"keyIdentifier"];
          v9 = [SESExpressKey withKeyIdentifier:v16 appletIdentifier:v8 configuration:v3];

          goto LABEL_13;
        }

        goto LABEL_12;
      }

      v19 = SESDefaultLogObject();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v21 = 138412290;
        v22 = v3;
        v20 = "Invalid UWBExpressEnabled %@";
        goto LABEL_20;
      }
    }

    else
    {
      v19 = SESDefaultLogObject();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v21 = 138412290;
        v22 = v3;
        v20 = "Invalid keyIdentifier %@";
LABEL_20:
        _os_log_impl(&dword_1C7B9A000, v19, OS_LOG_TYPE_ERROR, v20, &v21, 0xCu);
      }
    }
  }

LABEL_12:
  v9 = 0;
LABEL_13:

  v17 = *MEMORY[0x1E69E9840];

  return v9;
}

@end