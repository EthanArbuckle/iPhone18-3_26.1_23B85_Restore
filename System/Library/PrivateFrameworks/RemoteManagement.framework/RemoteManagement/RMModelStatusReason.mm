@interface RMModelStatusReason
+ (id)activationFailed:(id)a3;
+ (id)assetIsNotReferencedByConfiguration:(id)a3;
+ (id)configurationFailed:(id)a3;
+ (id)configurationIsNotReferencedByAnActivation:(id)a3;
+ (id)failedWithUnknownDeclarationType:(id)a3;
+ (id)failedWithUnknownPayloadKeys:(id)a3;
+ (id)invalidPayloadForDeclaration:(id)a3;
+ (id)missingAssetIdentifiers:(id)a3 forConfiguration:(id)a4;
+ (id)missingConfigurationIdentifiers:(id)a3 forActivation:(id)a4;
+ (id)missingStateForDeclaration:(id)a3;
+ (id)predicateEvaluatedToFalseForActivation:(id)a3;
+ (id)predicateEvaluationFailedWithError:(id)a3 forActivation:(id)a4;
@end

@implementation RMModelStatusReason

+ (id)failedWithUnknownPayloadKeys:(id)a3
{
  v9 = @"UnknownPayloadKeys";
  v10 = a3;
  v4 = a3;
  v5 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v6 = [RMModelAnyPayload buildFromDictionary:v5];

  v7 = [a1 buildWithCode:@"Error.UnknownPayloadKeys" description:@"Unknown Payload Keys" details:v6];

  return v7;
}

+ (id)failedWithUnknownDeclarationType:(id)a3
{
  v9 = @"UnknownDeclarationType";
  v10 = a3;
  v4 = a3;
  v5 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v6 = [RMModelAnyPayload buildFromDictionary:v5];

  v7 = [a1 buildWithCode:@"Error.UnknownDeclarationType" description:@"Unknown Declaration Type" details:v6];

  return v7;
}

+ (id)predicateEvaluatedToFalseForActivation:(id)a3
{
  v3 = a3;
  v16 = [v3 identifier];
  v15 = [v3 serverToken];
  v4 = [v3 predicateDescription];
  v5 = [v4 description];
  v6 = [NSString stringWithFormat:@"Activation’s (%@:%@) predicate (%@) evaluated to false.", v16, v15, v5];
  v17[0] = @"Identifier";
  v7 = [v3 identifier];
  v18[0] = v7;
  v17[1] = @"ServerToken";
  v8 = [v3 serverToken];
  v18[1] = v8;
  v17[2] = @"Predicate";
  v9 = [v3 predicateDescription];

  v10 = [v9 description];
  v18[2] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:3];
  v12 = [RMModelAnyPayload buildFromDictionary:v11];
  v13 = [RMModelStatusReason buildWithCode:@"Info.Predicate" description:v6 details:v12];

  return v13;
}

+ (id)predicateEvaluationFailedWithError:(id)a3 forActivation:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 domain];
  if ([v7 isEqualToString:RMErrorDomain] && objc_msgSend(v5, "code") >= 2100)
  {
    v8 = [v5 code];

    if (v8 <= 2199)
    {
      v9 = [RMModelStatusReason reasonWithError:v5];
      v10 = [v9 statusDetails];
      v11 = [v10 dictKeys];
      v12 = [v11 mutableCopy];
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
      v33 = [v6 identifier];
      v48[0] = v33;
      v47[1] = @"ServerToken";
      v34 = [v6 serverToken];
      v48[1] = v34;
      v47[2] = @"Predicate";
      v35 = [v6 predicateDescription];
      v36 = [v35 description];
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

  v15 = [v5 userInfo];
  v16 = [v15 objectForKeyedSubscript:NSDebugDescriptionErrorKey];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v19 = [v5 localizedDescription];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = [v5 localizedFailureReason];
    }

    v18 = v21;
  }

  v40 = [v6 identifier];
  v42 = [v6 serverToken];
  v43 = [v6 predicateDescription];
  v41 = [v43 description];
  v22 = [NSString stringWithFormat:@"Activation’s (%@:%@) predicate (%@) failed to evaluate: %@.", v40, v42, v41, v18];
  v45[0] = @"Identifier";
  v39 = [v6 identifier];
  v46[0] = v39;
  v45[1] = @"ServerToken";
  v38 = [v6 serverToken];
  v46[1] = v38;
  v45[2] = @"Predicate";
  v23 = [v6 predicateDescription];
  v24 = [v23 description];
  v46[2] = v24;
  v45[3] = @"Domain";
  v25 = [v5 domain];
  v46[3] = v25;
  v45[4] = @"Code";
  v26 = v6;
  v27 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 code]);
  v46[4] = v27;
  [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:5];
  v29 = v28 = v5;
  v30 = [RMModelAnyPayload buildFromDictionary:v29];
  v44 = [RMModelStatusReason buildWithCode:@"Error.PredicateFailed" description:v22 details:v30];

  v5 = v28;
  v6 = v26;

  v31 = v40;
LABEL_14:

  return v44;
}

+ (id)missingAssetIdentifiers:(id)a3 forConfiguration:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 identifier];
  v8 = [v5 serverToken];
  v9 = [NSString stringWithFormat:@"Configuration (%@:%@) is missing assets.", v7, v8];
  v19[0] = @"Identifier";
  v10 = [v5 identifier];
  v20[0] = v10;
  v19[1] = @"ServerToken";
  v11 = [v5 serverToken];

  v20[1] = v11;
  v19[2] = @"AssetIdentifiers";
  v12 = [v6 allObjects];

  v13 = [v12 sortedArrayUsingSelector:"caseInsensitiveCompare:"];
  v14 = [v13 componentsJoinedByString:{@", "}];

  v20[2] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:3];
  v16 = [RMModelAnyPayload buildFromDictionary:v15];
  v17 = [RMModelStatusReason buildWithCode:@"Error.MissingAssets" description:v9 details:v16];

  return v17;
}

+ (id)missingConfigurationIdentifiers:(id)a3 forActivation:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 identifier];
  v8 = [v5 serverToken];
  v9 = [NSString stringWithFormat:@"Activation (%@:%@) is missing configurations.", v7, v8];
  v19[0] = @"Identifier";
  v10 = [v5 identifier];
  v20[0] = v10;
  v19[1] = @"ServerToken";
  v11 = [v5 serverToken];

  v20[1] = v11;
  v19[2] = @"ConfigurationIdentifiers";
  v12 = [v6 allObjects];

  v13 = [v12 sortedArrayUsingSelector:"caseInsensitiveCompare:"];
  v14 = [v13 componentsJoinedByString:{@", "}];

  v20[2] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:3];
  v16 = [RMModelAnyPayload buildFromDictionary:v15];
  v17 = [RMModelStatusReason buildWithCode:@"Error.MissingConfigurations" description:v9 details:v16];

  return v17;
}

+ (id)invalidPayloadForDeclaration:(id)a3
{
  v3 = a3;
  v4 = [v3 entity];
  v5 = +[RMActivationPayload entity];
  v6 = [v4 isKindOfEntity:v5];

  if (v6)
  {
    v7 = @"Activation";
  }

  else
  {
    v8 = +[RMAssetPayload entity];
    v9 = [v4 isKindOfEntity:v8];

    if (v9)
    {
      v7 = @"Asset";
    }

    else
    {
      v10 = +[RMConfigurationPayload entity];
      v11 = [v4 isKindOfEntity:v10];

      if (v11)
      {
        v7 = @"Configuration";
      }

      else
      {
        v7 = [v4 name];
      }
    }
  }

  v12 = [v3 identifier];
  v13 = [v3 serverToken];
  v14 = [NSString stringWithFormat:@"%@ (%@:%@) has an invalid payload.", v7, v12, v13];
  v21[0] = @"Identifier";
  v15 = [v3 identifier];
  v21[1] = @"ServerToken";
  v22[0] = v15;
  v16 = [v3 serverToken];
  v22[1] = v16;
  v17 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
  v18 = [RMModelAnyPayload buildFromDictionary:v17];
  v19 = [RMModelStatusReason buildWithCode:@"Error.InvalidPayload" description:v14 details:v18];

  return v19;
}

+ (id)missingStateForDeclaration:(id)a3
{
  v3 = a3;
  v4 = [v3 entity];
  v5 = +[RMActivationPayload entity];
  v6 = [v4 isKindOfEntity:v5];

  if (v6)
  {
    v7 = @"Activation";
  }

  else
  {
    v8 = +[RMAssetPayload entity];
    v9 = [v4 isKindOfEntity:v8];

    if (v9)
    {
      v7 = @"Asset";
    }

    else
    {
      v10 = +[RMConfigurationPayload entity];
      v11 = [v4 isKindOfEntity:v10];

      if (v11)
      {
        v7 = @"Configuration";
      }

      else
      {
        v7 = [v4 name];
      }
    }
  }

  v12 = [v3 identifier];
  v13 = [v3 serverToken];
  v14 = [NSString stringWithFormat:@"%@ (%@:%@) is missing state.", v7, v12, v13];
  v21[0] = @"Identifier";
  v15 = [v3 identifier];
  v21[1] = @"ServerToken";
  v22[0] = v15;
  v16 = [v3 serverToken];
  v22[1] = v16;
  v17 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
  v18 = [RMModelAnyPayload buildFromDictionary:v17];
  v19 = [RMModelStatusReason buildWithCode:@"Error.MissingState" description:v14 details:v18];

  return v19;
}

+ (id)activationFailed:(id)a3
{
  v3 = a3;
  v4 = [v3 identifier];
  v5 = [v3 serverToken];
  v6 = [NSString stringWithFormat:@"Activation “%@:%@” has errors.", v4, v5];
  v13[0] = @"Identifier";
  v7 = [v3 identifier];
  v13[1] = @"ServerToken";
  v14[0] = v7;
  v8 = [v3 serverToken];

  v14[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
  v10 = [RMModelAnyPayload buildFromDictionary:v9];
  v11 = [RMModelStatusReason buildWithCode:@"Error.ActivationFailed" description:v6 details:v10];

  return v11;
}

+ (id)configurationFailed:(id)a3
{
  v3 = a3;
  v4 = [v3 identifier];
  v5 = [v3 serverToken];
  v6 = [NSString stringWithFormat:@"Configuration “%@:%@” has errors.", v4, v5];
  v13[0] = @"Identifier";
  v7 = [v3 identifier];
  v13[1] = @"ServerToken";
  v14[0] = v7;
  v8 = [v3 serverToken];

  v14[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
  v10 = [RMModelAnyPayload buildFromDictionary:v9];
  v11 = [RMModelStatusReason buildWithCode:@"Error.ConfigurationFailed" description:v6 details:v10];

  return v11;
}

+ (id)configurationIsNotReferencedByAnActivation:(id)a3
{
  v3 = a3;
  v4 = [v3 identifier];
  v5 = [v3 serverToken];
  v6 = [NSString stringWithFormat:@"Configuration “%@:%@” is not referenced by an activation.", v4, v5];
  v13[0] = @"Identifier";
  v7 = [v3 identifier];
  v13[1] = @"ServerToken";
  v14[0] = v7;
  v8 = [v3 serverToken];

  v14[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
  v10 = [RMModelAnyPayload buildFromDictionary:v9];
  v11 = [RMModelStatusReason buildWithCode:@"Info.NotReferencedByActivation" description:v6 details:v10];

  return v11;
}

+ (id)assetIsNotReferencedByConfiguration:(id)a3
{
  v3 = a3;
  v4 = [v3 identifier];
  v5 = [v3 serverToken];
  v6 = [NSString stringWithFormat:@"Asset “%@:%@” is not referenced by a configuration.", v4, v5];
  v13[0] = @"Identifier";
  v7 = [v3 identifier];
  v13[1] = @"ServerToken";
  v14[0] = v7;
  v8 = [v3 serverToken];

  v14[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
  v10 = [RMModelAnyPayload buildFromDictionary:v9];
  v11 = [RMModelStatusReason buildWithCode:@"Info.NotReferencedByConfiguration" description:v6 details:v10];

  return v11;
}

@end