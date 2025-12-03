@interface UPDialogActConverter
- (UPDialogActConverter)initWithUsoSerializer:(id)serializer;
- (id)_convertFromGaveOptionsDialogAct:(id)act error:(id *)error;
- (id)_convertFromOfferedDialogAct:(id)act error:(id *)error;
- (id)_convertFromPromptedDialogAct:(id)act error:(id *)error;
- (id)_parseUserDialogAct:(id)act error:(id *)error;
- (id)_parseUserDialogActGraph:(id)graph error:(id *)error;
- (id)convertFromDialogAct:(id)act error:(id *)error;
@end

@implementation UPDialogActConverter

- (id)_parseUserDialogActGraph:(id)graph error:(id *)error
{
  v5 = [(UPUsoSerializer *)self->_usoSerializer deserializeFromSerializedGraph:graph];
  v6 = v5;
  if (v5)
  {
    label = [v5 label];

    if (label)
    {
      directLeafNodes = [v6 directLeafNodes];
      v9 = [directLeafNodes count];

      intermediateNodes = [v6 intermediateNodes];
      v11 = [intermediateNodes count];

      if (!v9 && v11 == 1)
      {
        intermediateNodes2 = [v6 intermediateNodes];
        v13 = [intermediateNodes2 objectAtIndex:0];

        label2 = [v13 label];
        if (!label2 || (v15 = label2, [v13 leafNodes], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "count"), v16, v15, v17 != 1))
        {
          if (error)
          {
            *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.uaapcustomluframework" code:5 userInfo:0];
          }

          text = 0;
          label6 = 0;
          goto LABEL_20;
        }

        leafNodes = [v13 leafNodes];
        v19 = [leafNodes objectAtIndex:0];

        label3 = [v13 label];
        label4 = [v19 label];
        label6 = [UPUtilities higherLevelEntityLabelFromParentLabel:label3 childLabel:label4];

        text = [v19 text];

LABEL_11:
        if (label6 && text)
        {
          label5 = [v6 label];
          v26 = [[UPEntityWithValue alloc] initWithType:@"string" entityName:label6 entityValue:text];
          v27 = [[UPIntentWithSingleEntity alloc] initWithIntent:label5 singleEntity:v26];

LABEL_23:
          goto LABEL_24;
        }

        if (error)
        {
          [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.uaapcustomluframework" code:5 userInfo:0];
          *error = v27 = 0;
          goto LABEL_23;
        }

LABEL_20:
        v27 = 0;
        goto LABEL_23;
      }

      if (v9 == 1 && !v11)
      {
        directLeafNodes2 = [v6 directLeafNodes];
        v13 = [directLeafNodes2 objectAtIndex:0];

        label6 = [v13 label];
        text = [v13 text];
        goto LABEL_11;
      }
    }
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.uaapcustomluframework" code:5 userInfo:0];
    *error = v27 = 0;
  }

  else
  {
    v27 = 0;
  }

LABEL_24:

  return v27;
}

- (id)_parseUserDialogAct:(id)act error:(id *)error
{
  actCopy = act;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    task = [actCopy task];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_8;
    }

    task = [actCopy reference];
  }

  v8 = task;
  if (!task)
  {
LABEL_8:
    if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.uaapcustomluframework" code:4 userInfo:0];
      *error = v9 = 0;
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_14;
  }

  v15 = 0;
  v9 = [(UPDialogActConverter *)self _parseUserDialogActGraph:task error:&v15];
  v10 = v15;
  v11 = v10;
  if (v9)
  {
    v12 = v9;
  }

  else if (error)
  {
    v13 = v10;
    *error = v11;
  }

LABEL_14:

  return v9;
}

- (id)_convertFromPromptedDialogAct:(id)act error:(id *)error
{
  actCopy = act;
  reference = [actCopy reference];
  v22 = 0;
  v8 = [(UPDialogActConverter *)self _parseUserDialogActGraph:reference error:&v22];
  v9 = v22;

  if (v8)
  {
    entity = [v8 entity];
    entityValue = [entity entityValue];

    if ([entityValue isEqualToString:&stru_2835E9330])
    {
      v21 = [UPDialogActPrompt alloc];
      intent = [v8 intent];
      entity2 = [v8 entity];
      entityType = [entity2 entityType];
      entity3 = [v8 entity];
      entityName = [entity3 entityName];
      reference2 = [actCopy reference];
      v17 = [(UPDialogActPrompt *)v21 initWithIntent:intent entityType:entityType entityName:entityName reference:reference2];
    }

    else if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.uaapcustomluframework" code:6 userInfo:0];
      *error = v17 = 0;
    }

    else
    {
      v17 = 0;
    }
  }

  else if (error)
  {
    v18 = v9;
    v17 = 0;
    *error = v9;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)_convertFromGaveOptionsDialogAct:(id)act error:(id *)error
{
  v51 = *MEMORY[0x277D85DE8];
  actCopy = act;
  array = [MEMORY[0x277CBEB18] array];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  choices = [actCopy choices];
  v9 = [choices countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v46;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v46 != v11)
        {
          objc_enumerationMutation(choices);
        }

        v13 = *(*(&v45 + 1) + 8 * i);
        v44 = 0;
        v14 = [(UPDialogActConverter *)self _parseUserDialogAct:v13 error:&v44];
        v15 = v44;
        v16 = v15;
        if (!v14)
        {
          if (error)
          {
            v33 = v15;
            *error = v16;
          }

          goto LABEL_22;
        }

        [array addObject:v14];
      }

      v10 = [choices countByEnumeratingWithState:&v45 objects:v50 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  if ([array count])
  {
    errorCopy = error;
    v17 = [array objectAtIndex:0];
    intent = [v17 intent];
    entity = [v17 entity];
    entityType = [entity entityType];

    entity2 = [v17 entity];
    entityName = [entity2 entityName];

    array2 = [MEMORY[0x277CBEB18] array];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v21 = array;
    v22 = [v21 countByEnumeratingWithState:&v40 objects:v49 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v41;
      while (2)
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v41 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v40 + 1) + 8 * j);
          if (([v26 isEqualToIntentWithSingleEntity:v17] & 1) == 0)
          {
            if (errorCopy)
            {
              *errorCopy = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.uaapcustomluframework" code:8 userInfo:0];
            }

            v32 = 0;
            v30 = entityType;
            v29 = intent;
            v31 = entityName;
            goto LABEL_26;
          }

          entity3 = [v26 entity];
          entityValue = [entity3 entityValue];
          [array2 addObject:entityValue];
        }

        v23 = [v21 countByEnumeratingWithState:&v40 objects:v49 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }
    }

    v30 = entityType;
    v29 = intent;
    v31 = entityName;
    v32 = [[UPDialogActOptions alloc] initWithIntent:intent entityType:entityType entityName:entityName entityValues:array2];
LABEL_26:
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.uaapcustomluframework" code:7 userInfo:0];
    *error = v32 = 0;
  }

  else
  {
LABEL_22:
    v32 = 0;
  }

  v34 = *MEMORY[0x277D85DE8];

  return v32;
}

- (id)_convertFromOfferedDialogAct:(id)act error:(id *)error
{
  offeredAct = [act offeredAct];
  v15 = 0;
  v7 = [(UPDialogActConverter *)self _parseUserDialogAct:offeredAct error:&v15];
  v8 = v15;

  if (v7)
  {
    v9 = [UPDialogActOffer alloc];
    intent = [v7 intent];
    entity = [v7 entity];
    v12 = [(UPDialogActOffer *)v9 initWithIntent:intent entityWithValue:entity];
  }

  else if (error)
  {
    v13 = v8;
    v12 = 0;
    *error = v8;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)convertFromDialogAct:(id)act error:(id *)error
{
  actCopy = act;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = 0;
    v7 = &v14;
    v8 = [(UPDialogActConverter *)self _convertFromOfferedDialogAct:actCopy error:&v14];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = 0;
    v7 = &v13;
    v8 = [(UPDialogActConverter *)self _convertFromGaveOptionsDialogAct:actCopy error:&v13];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = 0;
    v7 = &v12;
    v8 = [(UPDialogActConverter *)self _convertFromPromptedDialogAct:actCopy error:&v12];
LABEL_7:
    v9 = v8;
    v10 = *v7;
    if (v9)
    {
      goto LABEL_12;
    }

    if (error)
    {
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  v10 = 0;
  if (error)
  {
LABEL_9:
    v10 = v10;
    v9 = 0;
    *error = v10;
    goto LABEL_12;
  }

LABEL_11:
  v9 = 0;
LABEL_12:

  return v9;
}

- (UPDialogActConverter)initWithUsoSerializer:(id)serializer
{
  serializerCopy = serializer;
  v9.receiver = self;
  v9.super_class = UPDialogActConverter;
  v6 = [(UPDialogActConverter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_usoSerializer, serializer);
  }

  return v7;
}

@end