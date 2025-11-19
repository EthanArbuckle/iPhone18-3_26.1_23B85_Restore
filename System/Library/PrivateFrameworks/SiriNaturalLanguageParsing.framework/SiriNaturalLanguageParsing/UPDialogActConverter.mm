@interface UPDialogActConverter
- (UPDialogActConverter)initWithUsoSerializer:(id)a3;
- (id)_convertFromGaveOptionsDialogAct:(id)a3 error:(id *)a4;
- (id)_convertFromOfferedDialogAct:(id)a3 error:(id *)a4;
- (id)_convertFromPromptedDialogAct:(id)a3 error:(id *)a4;
- (id)_parseUserDialogAct:(id)a3 error:(id *)a4;
- (id)_parseUserDialogActGraph:(id)a3 error:(id *)a4;
- (id)convertFromDialogAct:(id)a3 error:(id *)a4;
@end

@implementation UPDialogActConverter

- (id)_parseUserDialogActGraph:(id)a3 error:(id *)a4
{
  v5 = [(UPUsoSerializer *)self->_usoSerializer deserializeFromSerializedGraph:a3];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 label];

    if (v7)
    {
      v8 = [v6 directLeafNodes];
      v9 = [v8 count];

      v10 = [v6 intermediateNodes];
      v11 = [v10 count];

      if (!v9 && v11 == 1)
      {
        v12 = [v6 intermediateNodes];
        v13 = [v12 objectAtIndex:0];

        v14 = [v13 label];
        if (!v14 || (v15 = v14, [v13 leafNodes], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "count"), v16, v15, v17 != 1))
        {
          if (a4)
          {
            *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.uaapcustomluframework" code:5 userInfo:0];
          }

          v23 = 0;
          v22 = 0;
          goto LABEL_20;
        }

        v18 = [v13 leafNodes];
        v19 = [v18 objectAtIndex:0];

        v20 = [v13 label];
        v21 = [v19 label];
        v22 = [UPUtilities higherLevelEntityLabelFromParentLabel:v20 childLabel:v21];

        v23 = [v19 text];

LABEL_11:
        if (v22 && v23)
        {
          v25 = [v6 label];
          v26 = [[UPEntityWithValue alloc] initWithType:@"string" entityName:v22 entityValue:v23];
          v27 = [[UPIntentWithSingleEntity alloc] initWithIntent:v25 singleEntity:v26];

LABEL_23:
          goto LABEL_24;
        }

        if (a4)
        {
          [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.uaapcustomluframework" code:5 userInfo:0];
          *a4 = v27 = 0;
          goto LABEL_23;
        }

LABEL_20:
        v27 = 0;
        goto LABEL_23;
      }

      if (v9 == 1 && !v11)
      {
        v24 = [v6 directLeafNodes];
        v13 = [v24 objectAtIndex:0];

        v22 = [v13 label];
        v23 = [v13 text];
        goto LABEL_11;
      }
    }
  }

  if (a4)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.uaapcustomluframework" code:5 userInfo:0];
    *a4 = v27 = 0;
  }

  else
  {
    v27 = 0;
  }

LABEL_24:

  return v27;
}

- (id)_parseUserDialogAct:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 task];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_8;
    }

    v7 = [v6 reference];
  }

  v8 = v7;
  if (!v7)
  {
LABEL_8:
    if (a4)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.uaapcustomluframework" code:4 userInfo:0];
      *a4 = v9 = 0;
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_14;
  }

  v15 = 0;
  v9 = [(UPDialogActConverter *)self _parseUserDialogActGraph:v7 error:&v15];
  v10 = v15;
  v11 = v10;
  if (v9)
  {
    v12 = v9;
  }

  else if (a4)
  {
    v13 = v10;
    *a4 = v11;
  }

LABEL_14:

  return v9;
}

- (id)_convertFromPromptedDialogAct:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 reference];
  v22 = 0;
  v8 = [(UPDialogActConverter *)self _parseUserDialogActGraph:v7 error:&v22];
  v9 = v22;

  if (v8)
  {
    v10 = [v8 entity];
    v11 = [v10 entityValue];

    if ([v11 isEqualToString:&stru_2835E9330])
    {
      v21 = [UPDialogActPrompt alloc];
      v20 = [v8 intent];
      v12 = [v8 entity];
      v13 = [v12 entityType];
      v14 = [v8 entity];
      v15 = [v14 entityName];
      v16 = [v6 reference];
      v17 = [(UPDialogActPrompt *)v21 initWithIntent:v20 entityType:v13 entityName:v15 reference:v16];
    }

    else if (a4)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.uaapcustomluframework" code:6 userInfo:0];
      *a4 = v17 = 0;
    }

    else
    {
      v17 = 0;
    }
  }

  else if (a4)
  {
    v18 = v9;
    v17 = 0;
    *a4 = v9;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)_convertFromGaveOptionsDialogAct:(id)a3 error:(id *)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277CBEB18] array];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v8 = [v6 choices];
  v9 = [v8 countByEnumeratingWithState:&v45 objects:v50 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v45 + 1) + 8 * i);
        v44 = 0;
        v14 = [(UPDialogActConverter *)self _parseUserDialogAct:v13 error:&v44];
        v15 = v44;
        v16 = v15;
        if (!v14)
        {
          if (a4)
          {
            v33 = v15;
            *a4 = v16;
          }

          goto LABEL_22;
        }

        [v7 addObject:v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v45 objects:v50 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  if ([v7 count])
  {
    v36 = a4;
    v17 = [v7 objectAtIndex:0];
    v39 = [v17 intent];
    v18 = [v17 entity];
    v38 = [v18 entityType];

    v19 = [v17 entity];
    v37 = [v19 entityName];

    v20 = [MEMORY[0x277CBEB18] array];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v21 = v7;
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
            if (v36)
            {
              *v36 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.uaapcustomluframework" code:8 userInfo:0];
            }

            v32 = 0;
            v30 = v38;
            v29 = v39;
            v31 = v37;
            goto LABEL_26;
          }

          v27 = [v26 entity];
          v28 = [v27 entityValue];
          [v20 addObject:v28];
        }

        v23 = [v21 countByEnumeratingWithState:&v40 objects:v49 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }
    }

    v30 = v38;
    v29 = v39;
    v31 = v37;
    v32 = [[UPDialogActOptions alloc] initWithIntent:v39 entityType:v38 entityName:v37 entityValues:v20];
LABEL_26:
  }

  else if (a4)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.uaapcustomluframework" code:7 userInfo:0];
    *a4 = v32 = 0;
  }

  else
  {
LABEL_22:
    v32 = 0;
  }

  v34 = *MEMORY[0x277D85DE8];

  return v32;
}

- (id)_convertFromOfferedDialogAct:(id)a3 error:(id *)a4
{
  v6 = [a3 offeredAct];
  v15 = 0;
  v7 = [(UPDialogActConverter *)self _parseUserDialogAct:v6 error:&v15];
  v8 = v15;

  if (v7)
  {
    v9 = [UPDialogActOffer alloc];
    v10 = [v7 intent];
    v11 = [v7 entity];
    v12 = [(UPDialogActOffer *)v9 initWithIntent:v10 entityWithValue:v11];
  }

  else if (a4)
  {
    v13 = v8;
    v12 = 0;
    *a4 = v8;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)convertFromDialogAct:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = 0;
    v7 = &v14;
    v8 = [(UPDialogActConverter *)self _convertFromOfferedDialogAct:v6 error:&v14];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = 0;
    v7 = &v13;
    v8 = [(UPDialogActConverter *)self _convertFromGaveOptionsDialogAct:v6 error:&v13];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = 0;
    v7 = &v12;
    v8 = [(UPDialogActConverter *)self _convertFromPromptedDialogAct:v6 error:&v12];
LABEL_7:
    v9 = v8;
    v10 = *v7;
    if (v9)
    {
      goto LABEL_12;
    }

    if (a4)
    {
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  v10 = 0;
  if (a4)
  {
LABEL_9:
    v10 = v10;
    v9 = 0;
    *a4 = v10;
    goto LABEL_12;
  }

LABEL_11:
  v9 = 0;
LABEL_12:

  return v9;
}

- (UPDialogActConverter)initWithUsoSerializer:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = UPDialogActConverter;
  v6 = [(UPDialogActConverter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_usoSerializer, a3);
  }

  return v7;
}

@end