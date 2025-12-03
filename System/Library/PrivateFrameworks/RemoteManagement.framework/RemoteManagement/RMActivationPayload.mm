@interface RMActivationPayload
- (BOOL)_loadAnyDeclaration:(id)declaration error:(id *)error;
- (BOOL)_updatePropertiesForActivation:(id)activation error:(id *)error;
- (BOOL)loadPayload:(id)payload error:(id *)error;
- (BOOL)reloadReturningError:(id *)error;
- (RMPredicateDescription)predicateDescription;
- (id)reportDetails;
- (void)setPredicateDescription:(id)description;
@end

@implementation RMActivationPayload

- (RMPredicateDescription)predicateDescription
{
  [(RMActivationPayload *)self willAccessValueForKey:@"predicateDescription"];
  v3 = [(RMActivationPayload *)self primitiveValueForKey:@"predicateDescription"];
  [(RMActivationPayload *)self didAccessValueForKey:@"predicateDescription"];
  if (!v3)
  {
    predicateDescription = [(RMActivationPayload *)self predicateDescription];
    if (predicateDescription)
    {
      v7 = 0;
      v3 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:predicateDescription error:&v7];
      v5 = v7;
      if (v3)
      {
        [(RMActivationPayload *)self setPrimitiveValue:v3 forKey:@"predicateDescription"];
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
      {
        sub_100007938();
      }
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (void)setPredicateDescription:(id)description
{
  descriptionCopy = description;
  [(RMActivationPayload *)self willChangeValueForKey:@"predicateDescription"];
  [(RMActivationPayload *)self setPrimitiveValue:descriptionCopy forKey:@"predicateDescription"];
  if (descriptionCopy)
  {
    v7 = 0;
    v5 = [NSKeyedArchiver archivedDataWithRootObject:descriptionCopy requiringSecureCoding:1 error:&v7];
    v6 = v7;
    if (!v5 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_1000079D4();
    }
  }

  else
  {
    v5 = 0;
  }

  [(RMActivationPayload *)self setPredicateDescription_:v5];
  [(RMActivationPayload *)self didChangeValueForKey:@"predicateDescription"];
}

- (id)reportDetails
{
  v13.receiver = self;
  v13.super_class = RMActivationPayload;
  reportDetails = [(RMDeclarationPayload *)&v13 reportDetails];
  v4 = [reportDetails mutableCopy];

  configurationReferences = [(RMActivationPayload *)self configurationReferences];
  if ([configurationReferences count])
  {
    v6 = [configurationReferences valueForKey:@"configurationIdentifier"];
    allObjects = [v6 allObjects];
    v8 = [allObjects sortedArrayUsingSelector:"caseInsensitiveCompare:"];
  }

  else
  {
    v8 = &__NSArray0__struct;
  }

  [v4 setObject:v8 forKeyedSubscript:@"configurationReferences"];

  predicateDescription = [(RMActivationPayload *)self predicateDescription];
  v10 = [predicateDescription description];
  [v4 setObject:v10 forKeyedSubscript:@"predicateDescription"];

  v11 = [v4 copy];

  return v11;
}

- (BOOL)loadPayload:(id)payload error:(id *)error
{
  payloadCopy = payload;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    LOBYTE(error) = [(RMActivationPayload *)self _loadAnyDeclaration:payloadCopy error:error];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = payloadCopy;
      v20 = 0;
      v8 = [v7 serializeAsDataWithType:0 error:&v20];
      v9 = v20;
      v10 = v9;
      if (v8)
      {
        [(RMActivationPayload *)self setPayload:v8];
        declarationType = [v7 declarationType];
        [(RMActivationPayload *)self setDeclarationType:declarationType];

        serverToken = [(RMActivationPayload *)self serverToken];
        declarationServerToken = [v7 declarationServerToken];
        if (serverToken != declarationServerToken && ([serverToken isEqualToString:declarationServerToken] & 1) == 0)
        {
          [(RMActivationPayload *)self setServerToken:declarationServerToken];
        }

        LODWORD(error) = [(RMActivationPayload *)self _updatePropertiesForActivation:v7 error:error];
        if (error)
        {
          [(RMActivationPayload *)self setLoadState:1];
        }
      }

      else
      {
        if (error && v9)
        {
          v18 = v9;
          *error = v10;
        }

        [(RMActivationPayload *)self failedLoadingWithError:v10];
        LOBYTE(error) = 0;
      }
    }

    else
    {
      v14 = +[RMModelActivationBase rm_payloadTypeName];
      rm_payloadTypeName = [objc_opt_class() rm_payloadTypeName];
      v16 = [RMErrorUtilities createIncorrectPayloadTypeErrorWithExpectedType:v14 actualType:rm_payloadTypeName];

      if (error && v16)
      {
        v17 = v16;
        *error = v16;
      }

      [(RMActivationPayload *)self failedLoadingWithError:v16];

      LOBYTE(error) = 0;
    }
  }

  return error;
}

- (BOOL)reloadReturningError:(id *)error
{
  payload = [(RMActivationPayload *)self payload];
  v14 = 0;
  v6 = [RMModelDeclarationBase loadData:payload serializationType:0 error:&v14];
  v7 = v14;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [(RMActivationPayload *)self _updatePropertiesForActivation:v6 error:error];
      if (v8)
      {
        [(RMActivationPayload *)self setLoadState:1];
      }
    }

    else
    {
      v9 = +[RMModelActivationBase rm_payloadTypeName];
      rm_payloadTypeName = [objc_opt_class() rm_payloadTypeName];
      v11 = [RMErrorUtilities createIncorrectPayloadTypeErrorWithExpectedType:v9 actualType:rm_payloadTypeName];

      if (error && v11)
      {
        v12 = v11;
        *error = v11;
      }

      [(RMActivationPayload *)self failedLoadingWithError:v11];

      LOBYTE(v8) = 0;
    }
  }

  return v8;
}

- (BOOL)_loadAnyDeclaration:(id)declaration error:(id *)error
{
  declarationCopy = declaration;
  v15 = 0;
  v7 = [declarationCopy serializeAsDataWithType:0 error:&v15];
  v8 = v15;
  v9 = v8;
  if (v7)
  {
    [(RMActivationPayload *)self setPayload:v7];
    declarationType = [declarationCopy declarationType];
    [(RMActivationPayload *)self setDeclarationType:declarationType];

    serverToken = [(RMActivationPayload *)self serverToken];
    declarationServerToken = [declarationCopy declarationServerToken];
    if (serverToken != declarationServerToken && ([serverToken isEqualToString:declarationServerToken] & 1) == 0)
    {
      [(RMActivationPayload *)self setServerToken:declarationServerToken];
    }

    [(RMActivationPayload *)self setLoadState:4];
  }

  else
  {
    if (error && v8)
    {
      v13 = v8;
      *error = v9;
    }

    [(RMActivationPayload *)self failedLoadingWithError:v9];
  }

  return v7 != 0;
}

- (BOOL)_updatePropertiesForActivation:(id)activation error:(id *)error
{
  activationCopy = activation;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v33 = activationCopy;
    payloadStandardConfigurations = 0;
    goto LABEL_7;
  }

  managedObjectContext = activationCopy;
  payloadStandardConfigurations = [managedObjectContext payloadStandardConfigurations];
  payloadPredicate = [managedObjectContext payloadPredicate];
  if (!payloadPredicate)
  {
LABEL_5:
    v33 = activationCopy;

LABEL_7:
    managedObjectContext = [(RMActivationPayload *)self managedObjectContext];
    payloadPredicate = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [0 count] + objc_msgSend(payloadStandardConfigurations, "count"));
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v13 = [0 countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v39;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v39 != v15)
          {
            objc_enumerationMutation(0);
          }

          v17 = *(*(&v38 + 1) + 8 * i);
          v18 = [payloadPredicate objectForKeyedSubscript:v17];

          if (!v18)
          {
            v19 = [[RMConfigurationPayloadReference alloc] initWithContext:managedObjectContext];
            [(RMConfigurationPayloadReference *)v19 setConfigurationIdentifier:v17];
            [(RMConfigurationPayloadReference *)v19 setRequired:1];
            [payloadPredicate setObject:v19 forKeyedSubscript:v17];
          }
        }

        v14 = [0 countByEnumeratingWithState:&v38 objects:v44 count:16];
      }

      while (v14);
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    payloadStandardConfigurations = payloadStandardConfigurations;
    v20 = [payloadStandardConfigurations countByEnumeratingWithState:&v34 objects:v43 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v35;
      do
      {
        for (j = 0; j != v21; j = j + 1)
        {
          if (*v35 != v22)
          {
            objc_enumerationMutation(payloadStandardConfigurations);
          }

          v24 = *(*(&v34 + 1) + 8 * j);
          v25 = [payloadPredicate objectForKeyedSubscript:v24];

          if (!v25)
          {
            v26 = [[RMConfigurationPayloadReference alloc] initWithContext:managedObjectContext];
            [(RMConfigurationPayloadReference *)v26 setConfigurationIdentifier:v24];
            [payloadPredicate setObject:v26 forKeyedSubscript:v24];
          }
        }

        v21 = [payloadStandardConfigurations countByEnumeratingWithState:&v34 objects:v43 count:16];
      }

      while (v21);
    }

    allValues = [payloadPredicate allValues];
    v11 = [NSSet setWithArray:allValues];

    configurationReferences = [(RMActivationPayload *)self configurationReferences];
    v29 = configurationReferences;
    if (configurationReferences != v11 && ([configurationReferences isEqualToSet:v11] & 1) == 0)
    {
      [(RMActivationPayload *)self setConfigurationReferences:v11];
    }

    v30 = 1;
    activationCopy = v33;
    goto LABEL_29;
  }

  v42 = 0;
  v10 = [[RMPredicateDescription alloc] initWithFormat:payloadPredicate error:&v42];
  v11 = v42;
  [(RMActivationPayload *)self setPredicateDescription:v10];

  predicateDescription = [(RMActivationPayload *)self predicateDescription];

  if (predicateDescription)
  {

    goto LABEL_5;
  }

  if (error && v11)
  {
    v32 = v11;
    *error = v11;
  }

  [(RMActivationPayload *)self failedLoadingWithError:v11];
  v30 = 0;
LABEL_29:

  return v30;
}

@end