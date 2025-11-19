@interface RMActivationPayload
- (BOOL)_loadAnyDeclaration:(id)a3 error:(id *)a4;
- (BOOL)_updatePropertiesForActivation:(id)a3 error:(id *)a4;
- (BOOL)loadPayload:(id)a3 error:(id *)a4;
- (BOOL)reloadReturningError:(id *)a3;
- (RMPredicateDescription)predicateDescription;
- (id)reportDetails;
- (void)setPredicateDescription:(id)a3;
@end

@implementation RMActivationPayload

- (RMPredicateDescription)predicateDescription
{
  [(RMActivationPayload *)self willAccessValueForKey:@"predicateDescription"];
  v3 = [(RMActivationPayload *)self primitiveValueForKey:@"predicateDescription"];
  [(RMActivationPayload *)self didAccessValueForKey:@"predicateDescription"];
  if (!v3)
  {
    v4 = [(RMActivationPayload *)self predicateDescription];
    if (v4)
    {
      v7 = 0;
      v3 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:&v7];
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

- (void)setPredicateDescription:(id)a3
{
  v4 = a3;
  [(RMActivationPayload *)self willChangeValueForKey:@"predicateDescription"];
  [(RMActivationPayload *)self setPrimitiveValue:v4 forKey:@"predicateDescription"];
  if (v4)
  {
    v7 = 0;
    v5 = [NSKeyedArchiver archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v7];
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
  v3 = [(RMDeclarationPayload *)&v13 reportDetails];
  v4 = [v3 mutableCopy];

  v5 = [(RMActivationPayload *)self configurationReferences];
  if ([v5 count])
  {
    v6 = [v5 valueForKey:@"configurationIdentifier"];
    v7 = [v6 allObjects];
    v8 = [v7 sortedArrayUsingSelector:"caseInsensitiveCompare:"];
  }

  else
  {
    v8 = &__NSArray0__struct;
  }

  [v4 setObject:v8 forKeyedSubscript:@"configurationReferences"];

  v9 = [(RMActivationPayload *)self predicateDescription];
  v10 = [v9 description];
  [v4 setObject:v10 forKeyedSubscript:@"predicateDescription"];

  v11 = [v4 copy];

  return v11;
}

- (BOOL)loadPayload:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    LOBYTE(a4) = [(RMActivationPayload *)self _loadAnyDeclaration:v6 error:a4];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      v20 = 0;
      v8 = [v7 serializeAsDataWithType:0 error:&v20];
      v9 = v20;
      v10 = v9;
      if (v8)
      {
        [(RMActivationPayload *)self setPayload:v8];
        v11 = [v7 declarationType];
        [(RMActivationPayload *)self setDeclarationType:v11];

        v12 = [(RMActivationPayload *)self serverToken];
        v13 = [v7 declarationServerToken];
        if (v12 != v13 && ([v12 isEqualToString:v13] & 1) == 0)
        {
          [(RMActivationPayload *)self setServerToken:v13];
        }

        LODWORD(a4) = [(RMActivationPayload *)self _updatePropertiesForActivation:v7 error:a4];
        if (a4)
        {
          [(RMActivationPayload *)self setLoadState:1];
        }
      }

      else
      {
        if (a4 && v9)
        {
          v18 = v9;
          *a4 = v10;
        }

        [(RMActivationPayload *)self failedLoadingWithError:v10];
        LOBYTE(a4) = 0;
      }
    }

    else
    {
      v14 = +[RMModelActivationBase rm_payloadTypeName];
      v15 = [objc_opt_class() rm_payloadTypeName];
      v16 = [RMErrorUtilities createIncorrectPayloadTypeErrorWithExpectedType:v14 actualType:v15];

      if (a4 && v16)
      {
        v17 = v16;
        *a4 = v16;
      }

      [(RMActivationPayload *)self failedLoadingWithError:v16];

      LOBYTE(a4) = 0;
    }
  }

  return a4;
}

- (BOOL)reloadReturningError:(id *)a3
{
  v5 = [(RMActivationPayload *)self payload];
  v14 = 0;
  v6 = [RMModelDeclarationBase loadData:v5 serializationType:0 error:&v14];
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
      v8 = [(RMActivationPayload *)self _updatePropertiesForActivation:v6 error:a3];
      if (v8)
      {
        [(RMActivationPayload *)self setLoadState:1];
      }
    }

    else
    {
      v9 = +[RMModelActivationBase rm_payloadTypeName];
      v10 = [objc_opt_class() rm_payloadTypeName];
      v11 = [RMErrorUtilities createIncorrectPayloadTypeErrorWithExpectedType:v9 actualType:v10];

      if (a3 && v11)
      {
        v12 = v11;
        *a3 = v11;
      }

      [(RMActivationPayload *)self failedLoadingWithError:v11];

      LOBYTE(v8) = 0;
    }
  }

  return v8;
}

- (BOOL)_loadAnyDeclaration:(id)a3 error:(id *)a4
{
  v6 = a3;
  v15 = 0;
  v7 = [v6 serializeAsDataWithType:0 error:&v15];
  v8 = v15;
  v9 = v8;
  if (v7)
  {
    [(RMActivationPayload *)self setPayload:v7];
    v10 = [v6 declarationType];
    [(RMActivationPayload *)self setDeclarationType:v10];

    v11 = [(RMActivationPayload *)self serverToken];
    v12 = [v6 declarationServerToken];
    if (v11 != v12 && ([v11 isEqualToString:v12] & 1) == 0)
    {
      [(RMActivationPayload *)self setServerToken:v12];
    }

    [(RMActivationPayload *)self setLoadState:4];
  }

  else
  {
    if (a4 && v8)
    {
      v13 = v8;
      *a4 = v9;
    }

    [(RMActivationPayload *)self failedLoadingWithError:v9];
  }

  return v7 != 0;
}

- (BOOL)_updatePropertiesForActivation:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v33 = v6;
    v8 = 0;
    goto LABEL_7;
  }

  v7 = v6;
  v8 = [v7 payloadStandardConfigurations];
  v9 = [v7 payloadPredicate];
  if (!v9)
  {
LABEL_5:
    v33 = v6;

LABEL_7:
    v7 = [(RMActivationPayload *)self managedObjectContext];
    v9 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [0 count] + objc_msgSend(v8, "count"));
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
          v18 = [v9 objectForKeyedSubscript:v17];

          if (!v18)
          {
            v19 = [[RMConfigurationPayloadReference alloc] initWithContext:v7];
            [(RMConfigurationPayloadReference *)v19 setConfigurationIdentifier:v17];
            [(RMConfigurationPayloadReference *)v19 setRequired:1];
            [v9 setObject:v19 forKeyedSubscript:v17];
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
    v8 = v8;
    v20 = [v8 countByEnumeratingWithState:&v34 objects:v43 count:16];
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
            objc_enumerationMutation(v8);
          }

          v24 = *(*(&v34 + 1) + 8 * j);
          v25 = [v9 objectForKeyedSubscript:v24];

          if (!v25)
          {
            v26 = [[RMConfigurationPayloadReference alloc] initWithContext:v7];
            [(RMConfigurationPayloadReference *)v26 setConfigurationIdentifier:v24];
            [v9 setObject:v26 forKeyedSubscript:v24];
          }
        }

        v21 = [v8 countByEnumeratingWithState:&v34 objects:v43 count:16];
      }

      while (v21);
    }

    v27 = [v9 allValues];
    v11 = [NSSet setWithArray:v27];

    v28 = [(RMActivationPayload *)self configurationReferences];
    v29 = v28;
    if (v28 != v11 && ([v28 isEqualToSet:v11] & 1) == 0)
    {
      [(RMActivationPayload *)self setConfigurationReferences:v11];
    }

    v30 = 1;
    v6 = v33;
    goto LABEL_29;
  }

  v42 = 0;
  v10 = [[RMPredicateDescription alloc] initWithFormat:v9 error:&v42];
  v11 = v42;
  [(RMActivationPayload *)self setPredicateDescription:v10];

  v12 = [(RMActivationPayload *)self predicateDescription];

  if (v12)
  {

    goto LABEL_5;
  }

  if (a4 && v11)
  {
    v32 = v11;
    *a4 = v11;
  }

  [(RMActivationPayload *)self failedLoadingWithError:v11];
  v30 = 0;
LABEL_29:

  return v30;
}

@end