@interface WFParameterRelationResource
- (NSArray)comparedValues;
- (NSString)parameterKey;
- (NSString)relation;
- (WFAction)action;
- (WFParameter)parameter;
- (WFParameterRelationResource)initWithParameterKey:(id)a3 parameterValues:(id)a4 relation:(id)a5;
- (void)action:(id)a3 parameterStateDidChangeForKey:(id)a4;
- (void)refreshAvailability;
- (void)setupWithAction:(id)a3 parameter:(id)a4;
@end

@implementation WFParameterRelationResource

- (WFParameter)parameter
{
  WeakRetained = objc_loadWeakRetained(&self->_parameter);

  return WeakRetained;
}

- (WFAction)action
{
  WeakRetained = objc_loadWeakRetained(&self->_action);

  return WeakRetained;
}

- (void)action:(id)a3 parameterStateDidChangeForKey:(id)a4
{
  v5 = a4;
  v6 = [(WFParameterRelationResource *)self parameterKey];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {

    [(WFResource *)self refreshAvailabilityWithNotification];
  }
}

- (void)refreshAvailability
{
  v57 = *MEMORY[0x1E69E9840];
  v3 = [(WFParameterRelationResource *)self action];
  v4 = v3;
  if (!v3)
  {
    [(WFResource *)self updateAvailability:0 withError:0];
    goto LABEL_79;
  }

  if ([v3 isRunning] && (objc_msgSend(v4, "processedParameters"), v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [v4 processedParameters];
    v7 = [(WFParameterRelationResource *)self parameterKey];
    v8 = [v6 objectForKey:v7];
  }

  else
  {
    v6 = [(WFParameterRelationResource *)self parameterKey];
    v9 = [v4 serializedParameterStateForKey:v6];
    if (!v9)
    {
      v11 = [(WFParameterRelationResource *)self parameter];
      v10 = [v11 defaultSerializedRepresentation];

      v7 = 0;
      goto LABEL_10;
    }

    v8 = v9;
    v7 = v8;
  }

  v10 = v8;
LABEL_10:

  v12 = [(WFParameterRelationResource *)self parameter];
  v13 = v10;
  v14 = v12;
  v15 = v14;
  if (v14)
  {
    if ([v14 conformsToProtocol:&unk_1F4AD41D0])
    {
      v14 = v15;
    }

    else
    {
      v14 = 0;
    }
  }

  v16 = [v14 codableAttribute];
  if (v16 && (v17 = v16, objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v17, (isKindOfClass & 1) != 0))
  {
    v19 = [v13 valueForKeyPath:@"identifier"];
  }

  else
  {
    v19 = v13;
  }

  v20 = v19;

  v21 = [(WFParameterRelationResource *)self relation];
  if ([v21 isEqualToString:@"??"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [v20 length] == 0;
    }

    else
    {
      v22 = v20 == 0;
    }

    v29 = !v22;
    goto LABEL_35;
  }

  if ([v21 isEqualToString:@"!="])
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v23 = [(WFParameterRelationResource *)self comparedValues];
    v24 = [v23 countByEnumeratingWithState:&v51 objects:v56 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v52;
      while (2)
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v52 != v26)
          {
            objc_enumerationMutation(v23);
          }

          if ([v20 isEqual:*(*(&v51 + 1) + 8 * i)])
          {
            v30 = self;
            v31 = 0;
            goto LABEL_77;
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v51 objects:v56 count:16];
        if (v25)
        {
          continue;
        }

        break;
      }
    }

    v28 = self;
    v29 = 1;
    goto LABEL_36;
  }

  if ([v21 isEqualToString:@"nil"])
  {
    v29 = v20 == 0;
LABEL_35:
    v28 = self;
    goto LABEL_36;
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v23 = [(WFParameterRelationResource *)self comparedValues];
  v32 = [v23 countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (!v32)
  {
    goto LABEL_75;
  }

  v33 = v32;
  v34 = *v48;
  while (2)
  {
    for (j = 0; j != v33; ++j)
    {
      if (*v48 != v34)
      {
        objc_enumerationMutation(v23);
      }

      v36 = *(*(&v47 + 1) + 8 * j);
      if ([v21 isEqualToString:{@">", v44}])
      {
        if ([v20 compare:v36] == 1)
        {
          goto LABEL_76;
        }

        continue;
      }

      if ([v21 isEqualToString:@">="])
      {
        if ([v20 compare:v36] == 1)
        {
          goto LABEL_76;
        }

LABEL_50:
        if ([v20 isEqual:v36])
        {
          goto LABEL_76;
        }

        continue;
      }

      if ([v21 isEqualToString:@"<"])
      {
        if ([v20 compare:v36] == -1)
        {
          goto LABEL_76;
        }
      }

      else if ([v21 isEqualToString:@"<="])
      {
        if ([v20 compare:v36] == -1 || objc_msgSend(v20, "isEqual:", v36))
        {
          goto LABEL_76;
        }
      }

      else
      {
        if (![v21 isEqualToString:@"⊃"])
        {
          goto LABEL_50;
        }

        v37 = v36;
        if (v37)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v38 = v37;
          }

          else
          {
            v38 = 0;
          }
        }

        else
        {
          v38 = 0;
        }

        v39 = v38;

        if ([v39 length])
        {
          v44 = v39;
          v40 = v20;
          v45 = v37;
          if (v20)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v41 = v40;
            }

            else
            {
              v41 = 0;
            }
          }

          else
          {
            v41 = 0;
          }

          v42 = v41;

          v46 = [v42 containsString:v45];
          if (v46)
          {
LABEL_76:
            v30 = self;
            v31 = 1;
LABEL_77:
            [(WFResource *)v30 updateAvailability:v31 withError:0, v44];

            goto LABEL_78;
          }
        }

        else
        {
        }
      }
    }

    v33 = [v23 countByEnumeratingWithState:&v47 objects:v55 count:16];
    if (v33)
    {
      continue;
    }

    break;
  }

LABEL_75:

  v28 = self;
  v29 = 0;
LABEL_36:
  [(WFResource *)v28 updateAvailability:v29 withError:0, v44];
LABEL_78:

LABEL_79:
  v43 = *MEMORY[0x1E69E9840];
}

- (void)setupWithAction:(id)a3 parameter:(id)a4
{
  obj = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v9 = [v7 key];
    v10 = [(WFParameterRelationResource *)self parameterKey];
    v11 = [v9 isEqualToString:v10];

    if ((v11 & 1) == 0)
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      [v13 handleFailureInMethod:a2 object:self file:@"WFParameterRelationResource.m" lineNumber:83 description:@"Parameter key of relation resource must match the key of the parameter passed to setupWithAction:parameter:"];
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_action);
  [WeakRetained removeEventObserver:self];

  objc_storeWeak(&self->_action, obj);
  objc_storeWeak(&self->_parameter, v8);
  [obj addEventObserver:self];
  [(WFResource *)self invalidateAvailability];
}

- (NSString)relation
{
  v2 = [(WFResource *)self definition];
  v3 = [v2 objectForKey:@"WFParameterRelation"];

  return v3;
}

- (NSString)parameterKey
{
  v2 = [(WFResource *)self definition];
  v3 = [v2 objectForKey:@"WFParameterKey"];

  return v3;
}

- (NSArray)comparedValues
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [(WFResource *)self definition];
  v4 = [v3 objectForKey:@"WFParameterValues"];

  v5 = [(WFResource *)self definition];
  v6 = [v5 objectForKey:@"WFParameterValue"];

  if (v4)
  {
    v7 = v4;
LABEL_5:
    v8 = v7;
    goto LABEL_6;
  }

  if (v6)
  {
    v11[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    goto LABEL_5;
  }

  v8 = MEMORY[0x1E695E0F0];
LABEL_6:

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (WFParameterRelationResource)initWithParameterKey:(id)a3 parameterValues:(id)a4 relation:(id)a5
{
  v18[2] = *MEMORY[0x1E69E9840];
  v8 = a5;
  v17[0] = @"WFParameterKey";
  v17[1] = @"WFParameterValues";
  v18[0] = a3;
  v18[1] = a4;
  v9 = MEMORY[0x1E695DF20];
  v10 = a4;
  v11 = a3;
  v12 = [v9 dictionaryWithObjects:v18 forKeys:v17 count:2];

  v13 = [v12 mutableCopy];
  if (v8)
  {
    [v13 setObject:v8 forKeyedSubscript:@"WFParameterRelation"];
  }

  v14 = [(WFResource *)self initWithDefinition:v13];

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

@end