@interface STBlueprintConfiguration
+ (Class)cemDeclarationClassForConfigurationType:(id)a3;
+ (id)blueprintConfigurationTypeForDeclaration:(id)a3;
+ (id)blueprintConfigurationTypeForDeclarationType:(id)a3;
+ (id)cemConfigurationIdentifierWithType:(id)a3 forUser:(id)a4;
+ (id)fetchOrCreateWithDictionaryRepresentation:(id)a3 inContext:(id)a4 error:(id *)a5;
+ (id)fetchRequestMatchingBlueprintsConfigurationForBlueprint:(id)a3 ofType:(id)a4 includeTombstones:(BOOL)a5;
+ (id)fetchRequestMatchingBlueprintsForUserWithDSID:(id)a3 ofType:(id)a4;
- (BOOL)_validateBlueprint:(id)a3;
- (BOOL)_validateIdentifier:(id)a3;
- (BOOL)updateWithDictionaryRepresentation:(id)a3;
- (BOOL)validateForDelete:(id *)a3;
- (BOOL)validateForInsert:(id *)a3;
- (BOOL)validateForUpdate:(id *)a3;
- (id)_createIdentifierSubstringForBlueprintType:(id)a3 organization:(id)a4 configType:(id)a5 identifier:(id)a6 error:(id)a7;
- (id)_organizationStr:(id)a3;
- (id)cemConfiguration;
- (id)dictionaryRepresentation;
- (void)cemConfiguration;
- (void)setCemConfiguration:(id)a3;
@end

@implementation STBlueprintConfiguration

- (BOOL)updateWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"identifier"];
  [(STBlueprintConfiguration *)self setIdentifier:v5];

  v6 = [v4 objectForKeyedSubscript:@"type"];
  [(STBlueprintConfiguration *)self setType:v6];

  v7 = [v4 objectForKeyedSubscript:@"payloadPlist"];

  [(STBlueprintConfiguration *)self setPayloadPlist:v7];
  return 1;
}

- (id)dictionaryRepresentation
{
  v3 = objc_opt_new();
  v4 = [(STBlueprintConfiguration *)self identifier];
  [v3 setObject:v4 forKeyedSubscript:@"identifier"];

  v5 = [(STBlueprintConfiguration *)self type];
  [v3 setObject:v5 forKeyedSubscript:@"type"];

  v6 = [(STBlueprintConfiguration *)self payloadPlist];
  [v3 setObject:v6 forKeyedSubscript:@"payloadPlist"];

  v7 = [v3 copy];

  return v7;
}

+ (id)fetchOrCreateWithDictionaryRepresentation:(id)a3 inContext:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 objectForKeyedSubscript:@"identifier"];
  v11 = [a1 fetchRequest];
  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"identifier", v10];
  [v11 setPredicate:v12];

  v13 = [v11 execute:a5];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 firstObject];
    if (!v15)
    {
      v15 = [[STBlueprintConfiguration alloc] initWithContext:v9];
      v16 = [v8 objectForKeyedSubscript:@"identifier"];
      [(STBlueprintConfiguration *)v15 setIdentifier:v16];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)fetchRequestMatchingBlueprintsForUserWithDSID:(id)a3 ofType:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 fetchRequest];
  v9 = &unk_1F3059AF8;
  if (v7)
  {
    v9 = v7;
  }

  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%@ IN %K AND %K == %@ AND %K == NO", v9, @"blueprint.users.dsid", @"blueprint.type", v6, @"blueprint.isTombstoned"];

  [v8 setPredicate:v10];

  return v8;
}

+ (id)fetchRequestMatchingBlueprintsConfigurationForBlueprint:(id)a3 ofType:(id)a4 includeTombstones:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [a1 fetchRequest];
  if (v5)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@ AND %K == %@", @"type", v8, @"blueprint", v9, v13];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@ AND %K == %@ AND %K == NO", @"type", v8, @"blueprint", v9, @"blueprint.isTombstoned"];
  }
  v11 = ;

  [v10 setPredicate:v11];

  return v10;
}

+ (id)cemConfigurationIdentifierWithType:(id)a3 forUser:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 localUserDeviceState];

  v8 = [v6 familySettings];
  v9 = [v8 isManaged];

  v10 = [@"digital_health_restrictions" mutableCopy];
  if (!v7 && v9)
  {
    v11 = [v6 dsid];
    [v10 appendFormat:@".%@", v11];
  }

  [v10 appendFormat:@".%@", v5];

  return v10;
}

+ (Class)cemDeclarationClassForConfigurationType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"legacy.restrictions.apps"])
  {
    v4 = 0x1E6996218;
LABEL_35:
    v5 = *v4;
    v6 = objc_opt_class();
    goto LABEL_36;
  }

  if ([v3 isEqualToString:@"system.camera"])
  {
    v4 = 0x1E69962D8;
    goto LABEL_35;
  }

  if ([v3 isEqualToString:@"system.siri"])
  {
    v4 = 0x1E6996310;
    goto LABEL_35;
  }

  if ([v3 isEqualToString:@"system.airdrop"])
  {
    v4 = 0x1E69962B8;
    goto LABEL_35;
  }

  if ([v3 isEqualToString:@"system.carplay"])
  {
    v4 = 0x1E69962E0;
    goto LABEL_35;
  }

  if ([v3 isEqualToString:@"media.settings"])
  {
    v4 = 0x1E6996220;
    goto LABEL_35;
  }

  if ([v3 isEqualToString:@"application.store"])
  {
    v4 = 0x1E6996200;
    goto LABEL_35;
  }

  if ([v3 isEqualToString:@"system.ratings"])
  {
    v4 = 0x1E6996308;
    goto LABEL_35;
  }

  if ([v3 isEqualToString:@"system.music"])
  {
    v4 = 0x1E6996300;
    goto LABEL_35;
  }

  if ([v3 isEqualToString:@"system.webcontentfilter.basic"])
  {
    v4 = 0x1E69962C8;
    goto LABEL_35;
  }

  if ([v3 isEqualToString:@"system.gamecenter"])
  {
    v4 = 0x1E69962F8;
    goto LABEL_35;
  }

  if ([v3 isEqualToString:@"passcode.settings"])
  {
    v4 = 0x1E6996230;
    goto LABEL_35;
  }

  if ([v3 isEqualToString:@"account.settings"])
  {
    v4 = 0x1E69961E8;
    goto LABEL_35;
  }

  if ([v3 isEqualToString:@"network.cellular.settings"])
  {
    v4 = 0x1E6996228;
    goto LABEL_35;
  }

  if ([v3 isEqualToString:@"system.donotdisturb"])
  {
    v4 = 0x1E69962F0;
    goto LABEL_35;
  }

  if ([v3 isEqualToString:@"system.tvprovider"])
  {
    v4 = 0x1E6996318;
    goto LABEL_35;
  }

  if ([v3 isEqualToString:@"application.settings"])
  {
    v4 = 0x1E69961F8;
    goto LABEL_35;
  }

  v6 = 0;
LABEL_36:

  return v6;
}

+ (id)blueprintConfigurationTypeForDeclaration:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = @"legacy.restrictions.apps";
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = @"system.camera";
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = @"system.siri";
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v4 = @"system.airdrop";
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v4 = @"system.carplay";
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v4 = @"media.settings";
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v4 = @"application.store";
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v4 = @"system.ratings";
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v4 = @"system.music";
                  }

                  else
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v4 = @"system.webcontentfilter.basic";
                    }

                    else
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v4 = @"system.gamecenter";
                      }

                      else
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v4 = @"passcode.settings";
                        }

                        else
                        {
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v4 = @"account.settings";
                          }

                          else
                          {
                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v4 = @"network.cellular.settings";
                            }

                            else
                            {
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v4 = @"system.donotdisturb";
                              }

                              else
                              {
                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v4 = @"system.tvprovider";
                                }

                                else
                                {
                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v4 = @"application.settings";
                                  }

                                  else
                                  {
                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v4 = @"system.icloud";
                                    }

                                    else
                                    {
                                      v4 = 0;
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v4;
}

+ (id)blueprintConfigurationTypeForDeclarationType:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E6996238] registeredIdentifier];
  v5 = [v3 isEqualToString:v4];

  if (v5)
  {
    v6 = STBlueprintTypeAlwaysAllowedApps;
LABEL_5:
    v9 = *v6;
    goto LABEL_6;
  }

  v7 = [MEMORY[0x1E6996240] registeredIdentifier];
  v8 = [v3 isEqualToString:v7];

  if (v8)
  {
    v6 = STBlueprintTypeDowntime;
    goto LABEL_5;
  }

  v11 = [MEMORY[0x1E6996218] registeredIdentifier];
  v12 = [v3 isEqualToString:v11];

  if (v12)
  {
    v9 = @"legacy.restrictions.apps";
  }

  else
  {
    v13 = [MEMORY[0x1E69962D8] registeredIdentifier];
    v14 = [v3 isEqualToString:v13];

    if (v14)
    {
      v9 = @"system.camera";
    }

    else
    {
      v15 = [MEMORY[0x1E6996310] registeredIdentifier];
      v16 = [v3 isEqualToString:v15];

      if (v16)
      {
        v9 = @"system.siri";
      }

      else
      {
        v17 = [MEMORY[0x1E69962B8] registeredIdentifier];
        v18 = [v3 isEqualToString:v17];

        if (v18)
        {
          v9 = @"system.airdrop";
        }

        else
        {
          v19 = [MEMORY[0x1E69962E0] registeredIdentifier];
          v20 = [v3 isEqualToString:v19];

          if (v20)
          {
            v9 = @"system.carplay";
          }

          else
          {
            v21 = [MEMORY[0x1E6996220] registeredIdentifier];
            v22 = [v3 isEqualToString:v21];

            if (v22)
            {
              v9 = @"media.settings";
            }

            else
            {
              v23 = [MEMORY[0x1E6996200] registeredIdentifier];
              v24 = [v3 isEqualToString:v23];

              if (v24)
              {
                v9 = @"application.store";
              }

              else
              {
                v25 = [MEMORY[0x1E6996308] registeredIdentifier];
                v26 = [v3 isEqualToString:v25];

                if (v26)
                {
                  v9 = @"system.ratings";
                }

                else
                {
                  v27 = [MEMORY[0x1E6996300] registeredIdentifier];
                  v28 = [v3 isEqualToString:v27];

                  if (v28)
                  {
                    v9 = @"system.music";
                  }

                  else
                  {
                    v29 = [MEMORY[0x1E69962C8] registeredIdentifier];
                    v30 = [v3 isEqualToString:v29];

                    if (v30)
                    {
                      v9 = @"system.webcontentfilter.basic";
                    }

                    else
                    {
                      v31 = [MEMORY[0x1E69962F8] registeredIdentifier];
                      v32 = [v3 isEqualToString:v31];

                      if (v32)
                      {
                        v9 = @"system.gamecenter";
                      }

                      else
                      {
                        v33 = [MEMORY[0x1E6996230] registeredIdentifier];
                        v34 = [v3 isEqualToString:v33];

                        if (v34)
                        {
                          v9 = @"passcode.settings";
                        }

                        else
                        {
                          v35 = [MEMORY[0x1E69961E8] registeredIdentifier];
                          v36 = [v3 isEqualToString:v35];

                          if (v36)
                          {
                            v9 = @"account.settings";
                          }

                          else
                          {
                            v37 = [MEMORY[0x1E6996228] registeredIdentifier];
                            v38 = [v3 isEqualToString:v37];

                            if (v38)
                            {
                              v9 = @"network.cellular.settings";
                            }

                            else
                            {
                              v39 = [MEMORY[0x1E69962F0] registeredIdentifier];
                              v40 = [v3 isEqualToString:v39];

                              if (v40)
                              {
                                v9 = @"system.donotdisturb";
                              }

                              else
                              {
                                v41 = [MEMORY[0x1E6996318] registeredIdentifier];
                                v42 = [v3 isEqualToString:v41];

                                if (v42)
                                {
                                  v9 = @"system.tvprovider";
                                }

                                else
                                {
                                  v43 = [MEMORY[0x1E69961F8] registeredIdentifier];
                                  v44 = [v3 isEqualToString:v43];

                                  if (v44)
                                  {
                                    v9 = @"application.settings";
                                  }

                                  else
                                  {
                                    v45 = [MEMORY[0x1E6996328] registeredIdentifier];
                                    v46 = [v3 isEqualToString:v45];

                                    if (v46)
                                    {
                                      v9 = @"system.icloud";
                                    }

                                    else
                                    {
                                      v9 = 0;
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_6:

  return v9;
}

- (id)cemConfiguration
{
  v3 = [(STBlueprintConfiguration *)self payloadPlist];
  if (v3)
  {
    v4 = [(STBlueprintConfiguration *)self type];

    if (v4)
    {
      v5 = MEMORY[0x1E6996208];
      v6 = [(STBlueprintConfiguration *)self payloadPlist];
      v10 = 0;
      v3 = [v5 declarationForData:v6 error:&v10];
      v7 = v10;

      if (!v3)
      {
        v8 = +[STLog blueprint];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [(STBlueprintConfiguration *)self cemConfiguration];
        }
      }
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (void)setCemConfiguration:(id)a3
{
  v4 = a3;
  v8 = 0;
  v5 = [v4 serializeAsDataWithError:&v8];
  v6 = v8;
  if (v5)
  {
    [(STBlueprintConfiguration *)self setPayloadPlist:v5];
  }

  else
  {
    v7 = +[STLog blueprint];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [STBlueprintConfiguration setCemConfiguration:v4];
    }
  }
}

- (BOOL)validateForUpdate:(id *)a3
{
  v10.receiver = self;
  v10.super_class = STBlueprintConfiguration;
  if ([(STBlueprintConfiguration *)&v10 validateForUpdate:?])
  {
    if (!_os_feature_enabled_impl())
    {
      return 1;
    }

    v5 = objc_opt_new();
    [(STBlueprintConfiguration *)self _validateBlueprint:v5];
    [(STBlueprintConfiguration *)self _validateIdentifier:v5];
    if ([v5 count])
    {
      v6 = +[STLog coreDataValidation];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [STBlueprintConfiguration validateForUpdate:];
      }
    }

    v9.receiver = self;
    v9.super_class = STBlueprintConfiguration;
    v7 = [(NSManagedObject *)&v9 parseValidationErrors:a3 otherErrors:v5];
  }

  else
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [STBlueprintConfiguration validateForUpdate:a3];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)validateForInsert:(id *)a3
{
  v10.receiver = self;
  v10.super_class = STBlueprintConfiguration;
  if ([(STBlueprintConfiguration *)&v10 validateForInsert:?])
  {
    if (!_os_feature_enabled_impl())
    {
      return 1;
    }

    v5 = objc_opt_new();
    [(STBlueprintConfiguration *)self _validateBlueprint:v5];
    [(STBlueprintConfiguration *)self _validateIdentifier:v5];
    if ([v5 count])
    {
      v6 = +[STLog coreDataValidation];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [STBlueprintConfiguration validateForInsert:];
      }
    }

    v9.receiver = self;
    v9.super_class = STBlueprintConfiguration;
    v7 = [(NSManagedObject *)&v9 parseValidationErrors:a3 otherErrors:v5];
  }

  else
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [STBlueprintConfiguration validateForInsert:a3];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)validateForDelete:(id *)a3
{
  v4.receiver = self;
  v4.super_class = STBlueprintConfiguration;
  return [(STBlueprintConfiguration *)&v4 validateForDelete:a3];
}

- (BOOL)_validateBlueprint:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[STBlueprintConfiguration fetchRequest];
  v33 = 0;
  v5 = [v4 execute:&v33];
  v6 = v33;
  v7 = v6;
  if (v5)
  {
    v26 = v6;
    v27 = v4;
    v28 = v3;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v25 = v5;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v29 objects:v36 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v30;
      v12 = *MEMORY[0x1E696A578];
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v30 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v29 + 1) + 8 * i);
          v15 = [v14 blueprint];

          if (!v15)
          {
            v16 = MEMORY[0x1E696ABC0];
            v34 = v12;
            v17 = MEMORY[0x1E696AEC0];
            v18 = [v14 identifier];
            v19 = [v17 stringWithFormat:@"Blueprint is missing for BlueprintConfigruation identifier: %@", v18];
            v35 = v19;
            v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
            v21 = [v16 errorWithDomain:@"STErrorDomain" code:550 userInfo:v20];
            [v28 addObject:v21];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v29 objects:v36 count:16];
      }

      while (v10);
    }

    v3 = v28;
    v22 = [v28 count] == 0;
    v7 = v26;
    v4 = v27;
    v5 = v25;
  }

  else
  {
    [v3 addObject:v6];
    v22 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

- (id)_organizationStr:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    return @"family";
  }

  else
  {
    return @"personal";
  }
}

- (BOOL)_validateIdentifier:(id)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v40 = a3;
  v4 = +[STBlueprintConfiguration fetchRequest];
  v46 = 0;
  v5 = [v4 execute:&v46];
  v6 = v46;
  v7 = v6;
  if (v5)
  {
    v33 = v6;
    v34 = v4;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v32 = v5;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v42 objects:v49 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v43;
      v35 = *MEMORY[0x1E696A578];
      v36 = self;
      v38 = *v43;
      do
      {
        v12 = 0;
        v39 = v10;
        do
        {
          if (*v43 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v42 + 1) + 8 * v12);
          if (v13)
          {
            v14 = [*(*(&v42 + 1) + 8 * v12) blueprint];

            if (v14)
            {
              v15 = [v13 blueprint];
              v16 = [v15 type];

              v17 = [v13 blueprint];
              v18 = [v17 organization];

              v19 = [(STBlueprintConfiguration *)self _organizationStr:v18];
              v20 = [v13 identifier];
              v21 = [v13 type];
              v41 = v16;
              v22 = [(STBlueprintConfiguration *)self _createIdentifierSubstringForBlueprintType:v16 organization:v19 configType:v21 identifier:v20 error:v40];
              if (v22 && ([v20 containsString:v22] & 1) == 0)
              {
                v23 = MEMORY[0x1E696ABC0];
                v47 = v35;
                v24 = MEMORY[0x1E696AEC0];
                v37 = [v13 identifier];
                v25 = [v24 stringWithFormat:@"BlueprintConfiguration identifier is not valid. Identifier: %@", v37];
                v48 = v25;
                [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
                v27 = v26 = v8;
                v28 = [v23 errorWithDomain:@"STErrorDomain" code:551 userInfo:v27];
                [v40 addObject:v28];

                self = v36;
                v8 = v26;
              }

              v11 = v38;
              v10 = v39;
            }
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v42 objects:v49 count:16];
      }

      while (v10);
    }

    v29 = [v40 count] == 0;
    v7 = v33;
    v4 = v34;
    v5 = v32;
  }

  else
  {
    [v40 addObject:v6];
    v29 = 0;
  }

  v30 = *MEMORY[0x1E69E9840];
  return v29;
}

- (id)_createIdentifierSubstringForBlueprintType:(id)a3 organization:(id)a4 configType:(id)a5 identifier:(id)a6 error:(id)a7
{
  v37[1] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (!v11)
  {
    v18 = MEMORY[0x1E696ABC0];
    v36 = *MEMORY[0x1E696A578];
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Blueprint type is nil for BlueprintConfigruation identifier: %@, Org: %@", v14, v12];
    v37[0] = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
    v21 = v18;
    v22 = 555;
    goto LABEL_6;
  }

  if (![v11 isEqualToString:@"always-allowed-apps"])
  {
    if ([v11 isEqualToString:@"restrictions"])
    {
      if (v13)
      {
        v25 = MEMORY[0x1E696AEC0];
        v26 = STRestrictionsBaseIdentifier;
LABEL_11:
        [v25 stringWithFormat:@"%@", *v26, v31];
        goto LABEL_12;
      }

LABEL_7:
      v24 = 0;
      goto LABEL_13;
    }

    if ([v11 isEqualToString:@"downtime"])
    {
      v16 = MEMORY[0x1E696AEC0];
      v17 = &STConfigurationIdentifierDowntime;
      goto LABEL_4;
    }

    if ([v11 isEqualToString:@"usage-limit"])
    {
      v16 = MEMORY[0x1E696AEC0];
      v17 = &STConfigurationIdentifierUsageLimit;
      goto LABEL_4;
    }

    if ([v11 isEqualToString:@"managed-user"])
    {
      if ([v13 isEqualToString:@"com.apple.configuration.system.dateandtime"])
      {
        v25 = MEMORY[0x1E696AEC0];
        v26 = STForceDateTimeConfigurationIdentifier;
        goto LABEL_11;
      }

      if ([v13 isEqualToString:@"com.apple.configuration.policy.icloud.account"])
      {
        v25 = MEMORY[0x1E696AEC0];
        v26 = STICloudLogoutConfigurationIdentifier;
        goto LABEL_11;
      }

      v30 = MEMORY[0x1E696ABC0];
      v34 = *MEMORY[0x1E696A578];
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported configuration type for managed user configuration. BlueprintConfigruation identifier: %@, Configuration Type: %@, Blueprint Type: %@, Org: %@", v14, v13, v11, v12];
      v35 = v19;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      v21 = v30;
      v22 = 553;
    }

    else
    {
      v29 = MEMORY[0x1E696ABC0];
      v32 = *MEMORY[0x1E696A578];
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown Blueprint type used to create BlueprintConfigruation identifier: %@, Blueprint Type: %@, Org: %@", v14, v11, v12];
      v33 = v19;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      v21 = v29;
      v22 = 554;
    }

LABEL_6:
    v23 = [v21 errorWithDomain:@"STErrorDomain" code:v22 userInfo:v20];
    [v15 addObject:v23];

    goto LABEL_7;
  }

  v16 = MEMORY[0x1E696AEC0];
  v17 = STAlwaysAllowConfigurationIdentifier;
LABEL_4:
  [v16 stringWithFormat:@"%@_%@", *v17, v12];
  v24 = LABEL_12:;
LABEL_13:

  v27 = *MEMORY[0x1E69E9840];

  return v24;
}

- (void)cemConfiguration
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 type];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_3_3(&dword_1B831F000, v2, v3, "Error creating configuration for type %{public}@: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setCemConfiguration:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 declarationType];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_3_3(&dword_1B831F000, v2, v3, "Error serializing configuration %{public}@: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)validateForUpdate:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  v4[0] = 136446466;
  OUTLINED_FUNCTION_0_2();
  _os_log_fault_impl(&dword_1B831F000, v2, OS_LOG_TYPE_FAULT, "%{public}s Built-in CoreData Validation for update on BlueprintConfiguration failed with: %{public}@", v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)validateForUpdate:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 136446466;
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(&dword_1B831F000, v0, OS_LOG_TYPE_ERROR, "%{public}s Validate for Update on BlueprintConfiguration failed with error: %{public}@", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)validateForInsert:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  v4[0] = 136446466;
  OUTLINED_FUNCTION_0_2();
  _os_log_fault_impl(&dword_1B831F000, v2, OS_LOG_TYPE_FAULT, "%{public}s Built-in CoreData Validation for insert on BlueprintConfiguration failed with: %{public}@", v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)validateForInsert:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 136446466;
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(&dword_1B831F000, v0, OS_LOG_TYPE_ERROR, "%{public}s Validate for insert on BlueprintConfiguration failed with error: %{public}@", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

@end