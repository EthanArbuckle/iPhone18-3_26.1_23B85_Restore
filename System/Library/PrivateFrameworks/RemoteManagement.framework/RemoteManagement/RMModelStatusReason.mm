@interface RMModelStatusReason
+ (id)activationFailed:(id)failed;
+ (id)assetIsNotReferencedByConfiguration:(id)configuration;
+ (id)configurationFailed:(id)failed;
+ (id)configurationIsNotReferencedByAnActivation:(id)activation;
+ (id)failedWithUnknownDeclarationType:(id)type;
+ (id)failedWithUnknownPayloadKeys:(id)keys;
+ (id)invalidPayloadForDeclaration:(id)declaration;
+ (id)missingAssetIdentifiers:(id)identifiers forConfiguration:(id)configuration;
+ (id)missingConfigurationIdentifiers:(id)identifiers forActivation:(id)activation;
+ (id)missingStateForDeclaration:(id)declaration;
+ (id)predicateEvaluatedToFalseForActivation:(id)activation;
+ (id)predicateEvaluationFailedWithError:(id)error forActivation:(id)activation;
@end

@implementation RMModelStatusReason

+ (id)failedWithUnknownPayloadKeys:(id)keys
{
  v9 = @"UnknownPayloadKeys";
  keysCopy = keys;
  keysCopy2 = keys;
  v5 = [NSDictionary dictionaryWithObjects:&keysCopy forKeys:&v9 count:1];
  v6 = [RMModelAnyPayload buildFromDictionary:v5];

  v7 = [self buildWithCode:@"Error.UnknownPayloadKeys" description:@"Unknown Payload Keys" details:v6];

  return v7;
}

+ (id)failedWithUnknownDeclarationType:(id)type
{
  v9 = @"UnknownDeclarationType";
  typeCopy = type;
  typeCopy2 = type;
  v5 = [NSDictionary dictionaryWithObjects:&typeCopy forKeys:&v9 count:1];
  v6 = [RMModelAnyPayload buildFromDictionary:v5];

  v7 = [self buildWithCode:@"Error.UnknownDeclarationType" description:@"Unknown Declaration Type" details:v6];

  return v7;
}

+ (id)predicateEvaluatedToFalseForActivation:(id)activation
{
  activationCopy = activation;
  identifier = [activationCopy identifier];
  serverToken = [activationCopy serverToken];
  predicateDescription = [activationCopy predicateDescription];
  v5 = [predicateDescription description];
  v6 = [NSString stringWithFormat:@"Activation’s (%@:%@) predicate (%@) evaluated to false.", identifier, serverToken, v5];
  v17[0] = @"Identifier";
  identifier2 = [activationCopy identifier];
  v18[0] = identifier2;
  v17[1] = @"ServerToken";
  serverToken2 = [activationCopy serverToken];
  v18[1] = serverToken2;
  v17[2] = @"Predicate";
  predicateDescription2 = [activationCopy predicateDescription];

  v10 = [predicateDescription2 description];
  v18[2] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:3];
  v12 = [RMModelAnyPayload buildFromDictionary:v11];
  v13 = [RMModelStatusReason buildWithCode:@"Info.Predicate" description:v6 details:v12];

  return v13;
}

+ (id)predicateEvaluationFailedWithError:(id)error forActivation:(id)activation
{
  errorCopy = error;
  activationCopy = activation;
  domain = [errorCopy domain];
  if ([domain isEqualToString:RMErrorDomain] && objc_msgSend(errorCopy, "code") >= 2100)
  {
    code = [errorCopy code];

    if (code <= 2199)
    {
      v9 = [RMModelStatusReason reasonWithError:errorCopy];
      statusDetails = [v9 statusDetails];
      dictKeys = [statusDetails dictKeys];
      v12 = [dictKeys mutableCopy];
      v13 = v12;
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = objc_opt_new();
      }

      v18 = v14;

      v47[0] = @"Identifier";
      identifier = [activationCopy identifier];
      v48[0] = identifier;
      v47[1] = @"ServerToken";
      serverToken = [activationCopy serverToken];
      v48[1] = serverToken;
      v47[2] = @"Predicate";
      predicateDescription = [activationCopy predicateDescription];
      v36 = [predicateDescription description];
      v48[2] = v36;
      v37 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:3];
      [v18 setDictionary:v37];

      v31 = [RMModelAnyPayload buildFromDictionary:v18];
      v44 = v9;
      [v9 setStatusDetails:v31];
      goto LABEL_14;
    }
  }

  else
  {
  }

  userInfo = [errorCopy userInfo];
  v16 = [userInfo objectForKeyedSubscript:NSDebugDescriptionErrorKey];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    localizedDescription = [errorCopy localizedDescription];
    v20 = localizedDescription;
    if (localizedDescription)
    {
      localizedFailureReason = localizedDescription;
    }

    else
    {
      localizedFailureReason = [errorCopy localizedFailureReason];
    }

    v18 = localizedFailureReason;
  }

  identifier2 = [activationCopy identifier];
  serverToken2 = [activationCopy serverToken];
  predicateDescription2 = [activationCopy predicateDescription];
  v41 = [predicateDescription2 description];
  v22 = [NSString stringWithFormat:@"Activation’s (%@:%@) predicate (%@) failed to evaluate: %@.", identifier2, serverToken2, v41, v18];
  v45[0] = @"Identifier";
  identifier3 = [activationCopy identifier];
  v46[0] = identifier3;
  v45[1] = @"ServerToken";
  serverToken3 = [activationCopy serverToken];
  v46[1] = serverToken3;
  v45[2] = @"Predicate";
  predicateDescription3 = [activationCopy predicateDescription];
  v24 = [predicateDescription3 description];
  v46[2] = v24;
  v45[3] = @"Domain";
  domain2 = [errorCopy domain];
  v46[3] = domain2;
  v45[4] = @"Code";
  v26 = activationCopy;
  v27 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [errorCopy code]);
  v46[4] = v27;
  [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:5];
  v29 = v28 = errorCopy;
  v30 = [RMModelAnyPayload buildFromDictionary:v29];
  v44 = [RMModelStatusReason buildWithCode:@"Error.PredicateFailed" description:v22 details:v30];

  errorCopy = v28;
  activationCopy = v26;

  v31 = identifier2;
LABEL_14:

  return v44;
}

+ (id)missingAssetIdentifiers:(id)identifiers forConfiguration:(id)configuration
{
  configurationCopy = configuration;
  identifiersCopy = identifiers;
  identifier = [configurationCopy identifier];
  serverToken = [configurationCopy serverToken];
  v9 = [NSString stringWithFormat:@"Configuration (%@:%@) is missing assets.", identifier, serverToken];
  v19[0] = @"Identifier";
  identifier2 = [configurationCopy identifier];
  v20[0] = identifier2;
  v19[1] = @"ServerToken";
  serverToken2 = [configurationCopy serverToken];

  v20[1] = serverToken2;
  v19[2] = @"AssetIdentifiers";
  allObjects = [identifiersCopy allObjects];

  v13 = [allObjects sortedArrayUsingSelector:"caseInsensitiveCompare:"];
  v14 = [v13 componentsJoinedByString:{@", "}];

  v20[2] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:3];
  v16 = [RMModelAnyPayload buildFromDictionary:v15];
  v17 = [RMModelStatusReason buildWithCode:@"Error.MissingAssets" description:v9 details:v16];

  return v17;
}

+ (id)missingConfigurationIdentifiers:(id)identifiers forActivation:(id)activation
{
  activationCopy = activation;
  identifiersCopy = identifiers;
  identifier = [activationCopy identifier];
  serverToken = [activationCopy serverToken];
  v9 = [NSString stringWithFormat:@"Activation (%@:%@) is missing configurations.", identifier, serverToken];
  v19[0] = @"Identifier";
  identifier2 = [activationCopy identifier];
  v20[0] = identifier2;
  v19[1] = @"ServerToken";
  serverToken2 = [activationCopy serverToken];

  v20[1] = serverToken2;
  v19[2] = @"ConfigurationIdentifiers";
  allObjects = [identifiersCopy allObjects];

  v13 = [allObjects sortedArrayUsingSelector:"caseInsensitiveCompare:"];
  v14 = [v13 componentsJoinedByString:{@", "}];

  v20[2] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:3];
  v16 = [RMModelAnyPayload buildFromDictionary:v15];
  v17 = [RMModelStatusReason buildWithCode:@"Error.MissingConfigurations" description:v9 details:v16];

  return v17;
}

+ (id)invalidPayloadForDeclaration:(id)declaration
{
  declarationCopy = declaration;
  entity = [declarationCopy entity];
  v5 = +[RMActivationPayload entity];
  v6 = [entity isKindOfEntity:v5];

  if (v6)
  {
    name = @"Activation";
  }

  else
  {
    v8 = +[RMAssetPayload entity];
    v9 = [entity isKindOfEntity:v8];

    if (v9)
    {
      name = @"Asset";
    }

    else
    {
      v10 = +[RMConfigurationPayload entity];
      v11 = [entity isKindOfEntity:v10];

      if (v11)
      {
        name = @"Configuration";
      }

      else
      {
        name = [entity name];
      }
    }
  }

  identifier = [declarationCopy identifier];
  serverToken = [declarationCopy serverToken];
  v14 = [NSString stringWithFormat:@"%@ (%@:%@) has an invalid payload.", name, identifier, serverToken];
  v21[0] = @"Identifier";
  identifier2 = [declarationCopy identifier];
  v21[1] = @"ServerToken";
  v22[0] = identifier2;
  serverToken2 = [declarationCopy serverToken];
  v22[1] = serverToken2;
  v17 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
  v18 = [RMModelAnyPayload buildFromDictionary:v17];
  v19 = [RMModelStatusReason buildWithCode:@"Error.InvalidPayload" description:v14 details:v18];

  return v19;
}

+ (id)missingStateForDeclaration:(id)declaration
{
  declarationCopy = declaration;
  entity = [declarationCopy entity];
  v5 = +[RMActivationPayload entity];
  v6 = [entity isKindOfEntity:v5];

  if (v6)
  {
    name = @"Activation";
  }

  else
  {
    v8 = +[RMAssetPayload entity];
    v9 = [entity isKindOfEntity:v8];

    if (v9)
    {
      name = @"Asset";
    }

    else
    {
      v10 = +[RMConfigurationPayload entity];
      v11 = [entity isKindOfEntity:v10];

      if (v11)
      {
        name = @"Configuration";
      }

      else
      {
        name = [entity name];
      }
    }
  }

  identifier = [declarationCopy identifier];
  serverToken = [declarationCopy serverToken];
  v14 = [NSString stringWithFormat:@"%@ (%@:%@) is missing state.", name, identifier, serverToken];
  v21[0] = @"Identifier";
  identifier2 = [declarationCopy identifier];
  v21[1] = @"ServerToken";
  v22[0] = identifier2;
  serverToken2 = [declarationCopy serverToken];
  v22[1] = serverToken2;
  v17 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
  v18 = [RMModelAnyPayload buildFromDictionary:v17];
  v19 = [RMModelStatusReason buildWithCode:@"Error.MissingState" description:v14 details:v18];

  return v19;
}

+ (id)activationFailed:(id)failed
{
  failedCopy = failed;
  identifier = [failedCopy identifier];
  serverToken = [failedCopy serverToken];
  v6 = [NSString stringWithFormat:@"Activation “%@:%@” has errors.", identifier, serverToken];
  v13[0] = @"Identifier";
  identifier2 = [failedCopy identifier];
  v13[1] = @"ServerToken";
  v14[0] = identifier2;
  serverToken2 = [failedCopy serverToken];

  v14[1] = serverToken2;
  v9 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
  v10 = [RMModelAnyPayload buildFromDictionary:v9];
  v11 = [RMModelStatusReason buildWithCode:@"Error.ActivationFailed" description:v6 details:v10];

  return v11;
}

+ (id)configurationFailed:(id)failed
{
  failedCopy = failed;
  identifier = [failedCopy identifier];
  serverToken = [failedCopy serverToken];
  v6 = [NSString stringWithFormat:@"Configuration “%@:%@” has errors.", identifier, serverToken];
  v13[0] = @"Identifier";
  identifier2 = [failedCopy identifier];
  v13[1] = @"ServerToken";
  v14[0] = identifier2;
  serverToken2 = [failedCopy serverToken];

  v14[1] = serverToken2;
  v9 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
  v10 = [RMModelAnyPayload buildFromDictionary:v9];
  v11 = [RMModelStatusReason buildWithCode:@"Error.ConfigurationFailed" description:v6 details:v10];

  return v11;
}

+ (id)configurationIsNotReferencedByAnActivation:(id)activation
{
  activationCopy = activation;
  identifier = [activationCopy identifier];
  serverToken = [activationCopy serverToken];
  v6 = [NSString stringWithFormat:@"Configuration “%@:%@” is not referenced by an activation.", identifier, serverToken];
  v13[0] = @"Identifier";
  identifier2 = [activationCopy identifier];
  v13[1] = @"ServerToken";
  v14[0] = identifier2;
  serverToken2 = [activationCopy serverToken];

  v14[1] = serverToken2;
  v9 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
  v10 = [RMModelAnyPayload buildFromDictionary:v9];
  v11 = [RMModelStatusReason buildWithCode:@"Info.NotReferencedByActivation" description:v6 details:v10];

  return v11;
}

+ (id)assetIsNotReferencedByConfiguration:(id)configuration
{
  configurationCopy = configuration;
  identifier = [configurationCopy identifier];
  serverToken = [configurationCopy serverToken];
  v6 = [NSString stringWithFormat:@"Asset “%@:%@” is not referenced by a configuration.", identifier, serverToken];
  v13[0] = @"Identifier";
  identifier2 = [configurationCopy identifier];
  v13[1] = @"ServerToken";
  v14[0] = identifier2;
  serverToken2 = [configurationCopy serverToken];

  v14[1] = serverToken2;
  v9 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
  v10 = [RMModelAnyPayload buildFromDictionary:v9];
  v11 = [RMModelStatusReason buildWithCode:@"Info.NotReferencedByConfiguration" description:v6 details:v10];

  return v11;
}

@end