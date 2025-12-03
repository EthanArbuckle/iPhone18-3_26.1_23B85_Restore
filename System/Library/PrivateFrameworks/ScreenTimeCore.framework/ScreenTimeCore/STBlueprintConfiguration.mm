@interface STBlueprintConfiguration
+ (Class)cemDeclarationClassForConfigurationType:(id)type;
+ (id)blueprintConfigurationTypeForDeclaration:(id)declaration;
+ (id)blueprintConfigurationTypeForDeclarationType:(id)type;
+ (id)cemConfigurationIdentifierWithType:(id)type forUser:(id)user;
+ (id)fetchOrCreateWithDictionaryRepresentation:(id)representation inContext:(id)context error:(id *)error;
+ (id)fetchRequestMatchingBlueprintsConfigurationForBlueprint:(id)blueprint ofType:(id)type includeTombstones:(BOOL)tombstones;
+ (id)fetchRequestMatchingBlueprintsForUserWithDSID:(id)d ofType:(id)type;
- (BOOL)_validateBlueprint:(id)blueprint;
- (BOOL)_validateIdentifier:(id)identifier;
- (BOOL)updateWithDictionaryRepresentation:(id)representation;
- (BOOL)validateForDelete:(id *)delete;
- (BOOL)validateForInsert:(id *)insert;
- (BOOL)validateForUpdate:(id *)update;
- (id)_createIdentifierSubstringForBlueprintType:(id)type organization:(id)organization configType:(id)configType identifier:(id)identifier error:(id)error;
- (id)_organizationStr:(id)str;
- (id)cemConfiguration;
- (id)dictionaryRepresentation;
- (void)cemConfiguration;
- (void)setCemConfiguration:(id)configuration;
@end

@implementation STBlueprintConfiguration

- (BOOL)updateWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [representationCopy objectForKeyedSubscript:@"identifier"];
  [(STBlueprintConfiguration *)self setIdentifier:v5];

  v6 = [representationCopy objectForKeyedSubscript:@"type"];
  [(STBlueprintConfiguration *)self setType:v6];

  v7 = [representationCopy objectForKeyedSubscript:@"payloadPlist"];

  [(STBlueprintConfiguration *)self setPayloadPlist:v7];
  return 1;
}

- (id)dictionaryRepresentation
{
  v3 = objc_opt_new();
  identifier = [(STBlueprintConfiguration *)self identifier];
  [v3 setObject:identifier forKeyedSubscript:@"identifier"];

  type = [(STBlueprintConfiguration *)self type];
  [v3 setObject:type forKeyedSubscript:@"type"];

  payloadPlist = [(STBlueprintConfiguration *)self payloadPlist];
  [v3 setObject:payloadPlist forKeyedSubscript:@"payloadPlist"];

  v7 = [v3 copy];

  return v7;
}

+ (id)fetchOrCreateWithDictionaryRepresentation:(id)representation inContext:(id)context error:(id *)error
{
  representationCopy = representation;
  contextCopy = context;
  v10 = [representationCopy objectForKeyedSubscript:@"identifier"];
  fetchRequest = [self fetchRequest];
  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"identifier", v10];
  [fetchRequest setPredicate:v12];

  v13 = [fetchRequest execute:error];
  v14 = v13;
  if (v13)
  {
    firstObject = [v13 firstObject];
    if (!firstObject)
    {
      firstObject = [[STBlueprintConfiguration alloc] initWithContext:contextCopy];
      v16 = [representationCopy objectForKeyedSubscript:@"identifier"];
      [(STBlueprintConfiguration *)firstObject setIdentifier:v16];
    }
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

+ (id)fetchRequestMatchingBlueprintsForUserWithDSID:(id)d ofType:(id)type
{
  typeCopy = type;
  dCopy = d;
  fetchRequest = [self fetchRequest];
  v9 = &unk_1F3059AF8;
  if (dCopy)
  {
    v9 = dCopy;
  }

  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%@ IN %K AND %K == %@ AND %K == NO", v9, @"blueprint.users.dsid", @"blueprint.type", typeCopy, @"blueprint.isTombstoned"];

  [fetchRequest setPredicate:v10];

  return fetchRequest;
}

+ (id)fetchRequestMatchingBlueprintsConfigurationForBlueprint:(id)blueprint ofType:(id)type includeTombstones:(BOOL)tombstones
{
  tombstonesCopy = tombstones;
  typeCopy = type;
  blueprintCopy = blueprint;
  fetchRequest = [self fetchRequest];
  if (tombstonesCopy)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@ AND %K == %@", @"type", typeCopy, @"blueprint", blueprintCopy, v13];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@ AND %K == %@ AND %K == NO", @"type", typeCopy, @"blueprint", blueprintCopy, @"blueprint.isTombstoned"];
  }
  v11 = ;

  [fetchRequest setPredicate:v11];

  return fetchRequest;
}

+ (id)cemConfigurationIdentifierWithType:(id)type forUser:(id)user
{
  typeCopy = type;
  userCopy = user;
  localUserDeviceState = [userCopy localUserDeviceState];

  familySettings = [userCopy familySettings];
  isManaged = [familySettings isManaged];

  v10 = [@"digital_health_restrictions" mutableCopy];
  if (!localUserDeviceState && isManaged)
  {
    dsid = [userCopy dsid];
    [v10 appendFormat:@".%@", dsid];
  }

  [v10 appendFormat:@".%@", typeCopy];

  return v10;
}

+ (Class)cemDeclarationClassForConfigurationType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"legacy.restrictions.apps"])
  {
    v4 = 0x1E6996218;
LABEL_35:
    v5 = *v4;
    v6 = objc_opt_class();
    goto LABEL_36;
  }

  if ([typeCopy isEqualToString:@"system.camera"])
  {
    v4 = 0x1E69962D8;
    goto LABEL_35;
  }

  if ([typeCopy isEqualToString:@"system.siri"])
  {
    v4 = 0x1E6996310;
    goto LABEL_35;
  }

  if ([typeCopy isEqualToString:@"system.airdrop"])
  {
    v4 = 0x1E69962B8;
    goto LABEL_35;
  }

  if ([typeCopy isEqualToString:@"system.carplay"])
  {
    v4 = 0x1E69962E0;
    goto LABEL_35;
  }

  if ([typeCopy isEqualToString:@"media.settings"])
  {
    v4 = 0x1E6996220;
    goto LABEL_35;
  }

  if ([typeCopy isEqualToString:@"application.store"])
  {
    v4 = 0x1E6996200;
    goto LABEL_35;
  }

  if ([typeCopy isEqualToString:@"system.ratings"])
  {
    v4 = 0x1E6996308;
    goto LABEL_35;
  }

  if ([typeCopy isEqualToString:@"system.music"])
  {
    v4 = 0x1E6996300;
    goto LABEL_35;
  }

  if ([typeCopy isEqualToString:@"system.webcontentfilter.basic"])
  {
    v4 = 0x1E69962C8;
    goto LABEL_35;
  }

  if ([typeCopy isEqualToString:@"system.gamecenter"])
  {
    v4 = 0x1E69962F8;
    goto LABEL_35;
  }

  if ([typeCopy isEqualToString:@"passcode.settings"])
  {
    v4 = 0x1E6996230;
    goto LABEL_35;
  }

  if ([typeCopy isEqualToString:@"account.settings"])
  {
    v4 = 0x1E69961E8;
    goto LABEL_35;
  }

  if ([typeCopy isEqualToString:@"network.cellular.settings"])
  {
    v4 = 0x1E6996228;
    goto LABEL_35;
  }

  if ([typeCopy isEqualToString:@"system.donotdisturb"])
  {
    v4 = 0x1E69962F0;
    goto LABEL_35;
  }

  if ([typeCopy isEqualToString:@"system.tvprovider"])
  {
    v4 = 0x1E6996318;
    goto LABEL_35;
  }

  if ([typeCopy isEqualToString:@"application.settings"])
  {
    v4 = 0x1E69961F8;
    goto LABEL_35;
  }

  v6 = 0;
LABEL_36:

  return v6;
}

+ (id)blueprintConfigurationTypeForDeclaration:(id)declaration
{
  declarationCopy = declaration;
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

+ (id)blueprintConfigurationTypeForDeclarationType:(id)type
{
  typeCopy = type;
  registeredIdentifier = [MEMORY[0x1E6996238] registeredIdentifier];
  v5 = [typeCopy isEqualToString:registeredIdentifier];

  if (v5)
  {
    v6 = STBlueprintTypeAlwaysAllowedApps;
LABEL_5:
    v9 = *v6;
    goto LABEL_6;
  }

  registeredIdentifier2 = [MEMORY[0x1E6996240] registeredIdentifier];
  v8 = [typeCopy isEqualToString:registeredIdentifier2];

  if (v8)
  {
    v6 = STBlueprintTypeDowntime;
    goto LABEL_5;
  }

  registeredIdentifier3 = [MEMORY[0x1E6996218] registeredIdentifier];
  v12 = [typeCopy isEqualToString:registeredIdentifier3];

  if (v12)
  {
    v9 = @"legacy.restrictions.apps";
  }

  else
  {
    registeredIdentifier4 = [MEMORY[0x1E69962D8] registeredIdentifier];
    v14 = [typeCopy isEqualToString:registeredIdentifier4];

    if (v14)
    {
      v9 = @"system.camera";
    }

    else
    {
      registeredIdentifier5 = [MEMORY[0x1E6996310] registeredIdentifier];
      v16 = [typeCopy isEqualToString:registeredIdentifier5];

      if (v16)
      {
        v9 = @"system.siri";
      }

      else
      {
        registeredIdentifier6 = [MEMORY[0x1E69962B8] registeredIdentifier];
        v18 = [typeCopy isEqualToString:registeredIdentifier6];

        if (v18)
        {
          v9 = @"system.airdrop";
        }

        else
        {
          registeredIdentifier7 = [MEMORY[0x1E69962E0] registeredIdentifier];
          v20 = [typeCopy isEqualToString:registeredIdentifier7];

          if (v20)
          {
            v9 = @"system.carplay";
          }

          else
          {
            registeredIdentifier8 = [MEMORY[0x1E6996220] registeredIdentifier];
            v22 = [typeCopy isEqualToString:registeredIdentifier8];

            if (v22)
            {
              v9 = @"media.settings";
            }

            else
            {
              registeredIdentifier9 = [MEMORY[0x1E6996200] registeredIdentifier];
              v24 = [typeCopy isEqualToString:registeredIdentifier9];

              if (v24)
              {
                v9 = @"application.store";
              }

              else
              {
                registeredIdentifier10 = [MEMORY[0x1E6996308] registeredIdentifier];
                v26 = [typeCopy isEqualToString:registeredIdentifier10];

                if (v26)
                {
                  v9 = @"system.ratings";
                }

                else
                {
                  registeredIdentifier11 = [MEMORY[0x1E6996300] registeredIdentifier];
                  v28 = [typeCopy isEqualToString:registeredIdentifier11];

                  if (v28)
                  {
                    v9 = @"system.music";
                  }

                  else
                  {
                    registeredIdentifier12 = [MEMORY[0x1E69962C8] registeredIdentifier];
                    v30 = [typeCopy isEqualToString:registeredIdentifier12];

                    if (v30)
                    {
                      v9 = @"system.webcontentfilter.basic";
                    }

                    else
                    {
                      registeredIdentifier13 = [MEMORY[0x1E69962F8] registeredIdentifier];
                      v32 = [typeCopy isEqualToString:registeredIdentifier13];

                      if (v32)
                      {
                        v9 = @"system.gamecenter";
                      }

                      else
                      {
                        registeredIdentifier14 = [MEMORY[0x1E6996230] registeredIdentifier];
                        v34 = [typeCopy isEqualToString:registeredIdentifier14];

                        if (v34)
                        {
                          v9 = @"passcode.settings";
                        }

                        else
                        {
                          registeredIdentifier15 = [MEMORY[0x1E69961E8] registeredIdentifier];
                          v36 = [typeCopy isEqualToString:registeredIdentifier15];

                          if (v36)
                          {
                            v9 = @"account.settings";
                          }

                          else
                          {
                            registeredIdentifier16 = [MEMORY[0x1E6996228] registeredIdentifier];
                            v38 = [typeCopy isEqualToString:registeredIdentifier16];

                            if (v38)
                            {
                              v9 = @"network.cellular.settings";
                            }

                            else
                            {
                              registeredIdentifier17 = [MEMORY[0x1E69962F0] registeredIdentifier];
                              v40 = [typeCopy isEqualToString:registeredIdentifier17];

                              if (v40)
                              {
                                v9 = @"system.donotdisturb";
                              }

                              else
                              {
                                registeredIdentifier18 = [MEMORY[0x1E6996318] registeredIdentifier];
                                v42 = [typeCopy isEqualToString:registeredIdentifier18];

                                if (v42)
                                {
                                  v9 = @"system.tvprovider";
                                }

                                else
                                {
                                  registeredIdentifier19 = [MEMORY[0x1E69961F8] registeredIdentifier];
                                  v44 = [typeCopy isEqualToString:registeredIdentifier19];

                                  if (v44)
                                  {
                                    v9 = @"application.settings";
                                  }

                                  else
                                  {
                                    registeredIdentifier20 = [MEMORY[0x1E6996328] registeredIdentifier];
                                    v46 = [typeCopy isEqualToString:registeredIdentifier20];

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
  payloadPlist = [(STBlueprintConfiguration *)self payloadPlist];
  if (payloadPlist)
  {
    type = [(STBlueprintConfiguration *)self type];

    if (type)
    {
      v5 = MEMORY[0x1E6996208];
      payloadPlist2 = [(STBlueprintConfiguration *)self payloadPlist];
      v10 = 0;
      payloadPlist = [v5 declarationForData:payloadPlist2 error:&v10];
      v7 = v10;

      if (!payloadPlist)
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
      payloadPlist = 0;
    }
  }

  return payloadPlist;
}

- (void)setCemConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v8 = 0;
  v5 = [configurationCopy serializeAsDataWithError:&v8];
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
      [STBlueprintConfiguration setCemConfiguration:configurationCopy];
    }
  }
}

- (BOOL)validateForUpdate:(id *)update
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
    v7 = [(NSManagedObject *)&v9 parseValidationErrors:update otherErrors:v5];
  }

  else
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [STBlueprintConfiguration validateForUpdate:update];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)validateForInsert:(id *)insert
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
    v7 = [(NSManagedObject *)&v9 parseValidationErrors:insert otherErrors:v5];
  }

  else
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [STBlueprintConfiguration validateForInsert:insert];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)validateForDelete:(id *)delete
{
  v4.receiver = self;
  v4.super_class = STBlueprintConfiguration;
  return [(STBlueprintConfiguration *)&v4 validateForDelete:delete];
}

- (BOOL)_validateBlueprint:(id)blueprint
{
  v37 = *MEMORY[0x1E69E9840];
  blueprintCopy = blueprint;
  v4 = +[STBlueprintConfiguration fetchRequest];
  v33 = 0;
  v5 = [v4 execute:&v33];
  v6 = v33;
  v7 = v6;
  if (v5)
  {
    v26 = v6;
    v27 = v4;
    v28 = blueprintCopy;
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
          blueprint = [v14 blueprint];

          if (!blueprint)
          {
            v16 = MEMORY[0x1E696ABC0];
            v34 = v12;
            v17 = MEMORY[0x1E696AEC0];
            identifier = [v14 identifier];
            v19 = [v17 stringWithFormat:@"Blueprint is missing for BlueprintConfigruation identifier: %@", identifier];
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

    blueprintCopy = v28;
    v22 = [v28 count] == 0;
    v7 = v26;
    v4 = v27;
    v5 = v25;
  }

  else
  {
    [blueprintCopy addObject:v6];
    v22 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

- (id)_organizationStr:(id)str
{
  strCopy = str;
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

- (BOOL)_validateIdentifier:(id)identifier
{
  v50 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
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
      selfCopy = self;
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
            blueprint = [*(*(&v42 + 1) + 8 * v12) blueprint];

            if (blueprint)
            {
              blueprint2 = [v13 blueprint];
              type = [blueprint2 type];

              blueprint3 = [v13 blueprint];
              organization = [blueprint3 organization];

              v19 = [(STBlueprintConfiguration *)self _organizationStr:organization];
              identifier = [v13 identifier];
              type2 = [v13 type];
              v41 = type;
              v22 = [(STBlueprintConfiguration *)self _createIdentifierSubstringForBlueprintType:type organization:v19 configType:type2 identifier:identifier error:identifierCopy];
              if (v22 && ([identifier containsString:v22] & 1) == 0)
              {
                v23 = MEMORY[0x1E696ABC0];
                v47 = v35;
                v24 = MEMORY[0x1E696AEC0];
                identifier2 = [v13 identifier];
                v25 = [v24 stringWithFormat:@"BlueprintConfiguration identifier is not valid. Identifier: %@", identifier2];
                v48 = v25;
                [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
                v27 = v26 = v8;
                v28 = [v23 errorWithDomain:@"STErrorDomain" code:551 userInfo:v27];
                [identifierCopy addObject:v28];

                self = selfCopy;
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

    v29 = [identifierCopy count] == 0;
    v7 = v33;
    v4 = v34;
    v5 = v32;
  }

  else
  {
    [identifierCopy addObject:v6];
    v29 = 0;
  }

  v30 = *MEMORY[0x1E69E9840];
  return v29;
}

- (id)_createIdentifierSubstringForBlueprintType:(id)type organization:(id)organization configType:(id)configType identifier:(id)identifier error:(id)error
{
  v37[1] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  organizationCopy = organization;
  configTypeCopy = configType;
  identifierCopy = identifier;
  errorCopy = error;
  if (!typeCopy)
  {
    v18 = MEMORY[0x1E696ABC0];
    v36 = *MEMORY[0x1E696A578];
    organizationCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Blueprint type is nil for BlueprintConfigruation identifier: %@, Org: %@", identifierCopy, organizationCopy];
    v37[0] = organizationCopy;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
    v21 = v18;
    v22 = 555;
    goto LABEL_6;
  }

  if (![typeCopy isEqualToString:@"always-allowed-apps"])
  {
    if ([typeCopy isEqualToString:@"restrictions"])
    {
      if (configTypeCopy)
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

    if ([typeCopy isEqualToString:@"downtime"])
    {
      v16 = MEMORY[0x1E696AEC0];
      v17 = &STConfigurationIdentifierDowntime;
      goto LABEL_4;
    }

    if ([typeCopy isEqualToString:@"usage-limit"])
    {
      v16 = MEMORY[0x1E696AEC0];
      v17 = &STConfigurationIdentifierUsageLimit;
      goto LABEL_4;
    }

    if ([typeCopy isEqualToString:@"managed-user"])
    {
      if ([configTypeCopy isEqualToString:@"com.apple.configuration.system.dateandtime"])
      {
        v25 = MEMORY[0x1E696AEC0];
        v26 = STForceDateTimeConfigurationIdentifier;
        goto LABEL_11;
      }

      if ([configTypeCopy isEqualToString:@"com.apple.configuration.policy.icloud.account"])
      {
        v25 = MEMORY[0x1E696AEC0];
        v26 = STICloudLogoutConfigurationIdentifier;
        goto LABEL_11;
      }

      v30 = MEMORY[0x1E696ABC0];
      v34 = *MEMORY[0x1E696A578];
      organizationCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported configuration type for managed user configuration. BlueprintConfigruation identifier: %@, Configuration Type: %@, Blueprint Type: %@, Org: %@", identifierCopy, configTypeCopy, typeCopy, organizationCopy];
      v35 = organizationCopy;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      v21 = v30;
      v22 = 553;
    }

    else
    {
      v29 = MEMORY[0x1E696ABC0];
      v32 = *MEMORY[0x1E696A578];
      organizationCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown Blueprint type used to create BlueprintConfigruation identifier: %@, Blueprint Type: %@, Org: %@", identifierCopy, typeCopy, organizationCopy];
      v33 = organizationCopy;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      v21 = v29;
      v22 = 554;
    }

LABEL_6:
    v23 = [v21 errorWithDomain:@"STErrorDomain" code:v22 userInfo:v20];
    [errorCopy addObject:v23];

    goto LABEL_7;
  }

  v16 = MEMORY[0x1E696AEC0];
  v17 = STAlwaysAllowConfigurationIdentifier;
LABEL_4:
  [v16 stringWithFormat:@"%@_%@", *v17, organizationCopy];
  v24 = LABEL_12:;
LABEL_13:

  v27 = *MEMORY[0x1E69E9840];

  return v24;
}

- (void)cemConfiguration
{
  v10 = *MEMORY[0x1E69E9840];
  type = [self type];
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