@interface WFContactFieldEntry(ParameterState)
- (id)initWithSerializedRepresentation:()ParameterState variableProvider:parameter:;
- (id)serializedRepresentation;
- (void)processWithContext:()ParameterState userInputRequiredHandler:valueHandler:;
@end

@implementation WFContactFieldEntry(ParameterState)

- (void)processWithContext:()ParameterState userInputRequiredHandler:valueHandler:
{
  v7 = a5;
  v8 = [a1 underlyingObject];
  (a5)[2](v7, v8, 0);
}

- (id)serializedRepresentation
{
  v10[2] = *MEMORY[0x1E69E9840];
  if ([a1 type])
  {
    v2 = [a1 underlyingObject];
    if ([v2 conformsToProtocol:&unk_1F4ABA0E0])
    {
      v3 = [v2 wfSerializedRepresentation];
    }

    else
    {
      v3 = v2;
    }

    v4 = v3;
    if (v3)
    {
      v9[0] = @"EntryType";
      v6 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "type")}];
      v9[1] = @"SerializedEntry";
      v10[0] = v6;
      v10[1] = v4;
      v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v2 = [a1 contact];
    v4 = [v2 wfSerializedRepresentation];
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6997140]];
  }

  v7 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)initWithSerializedRepresentation:()ParameterState variableProvider:parameter:
{
  v25[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = objc_opt_class();
    v7 = WFEnforceClass_74974(v4, v6);
    v8 = v7;
    if (!v7)
    {
      v5 = 0;
LABEL_25:

      goto LABEL_26;
    }

    v9 = [v7 objectForKey:@"EntryType"];
    v10 = objc_opt_class();
    v11 = WFEnforceClass_74974(v9, v10);

    if (!v11)
    {
      v15 = MEMORY[0x1E6996D00];
      v24 = *MEMORY[0x1E6997140];
      v25[0] = v8;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
      v17 = [v15 objectWithWFSerializedRepresentation:v16];

      if (v17)
      {
        a1 = [a1 initWithContact:v17];
        v5 = a1;
      }

      else
      {
        v5 = 0;
      }

      goto LABEL_24;
    }

    v12 = [v11 integerValue];
    v13 = [v8 objectForKey:@"SerializedEntry"];
    if (v13)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }

    v17 = v14;

    v5 = 0;
    if (v12 > 2)
    {
      if (v12 == 3)
      {
        v20 = [v8 objectForKey:@"SerializedEntry"];
        v21 = objc_opt_class();
        v18 = WFEnforceClass_74974(v20, v21);

        v19 = [a1 initWithCustomHandle:v18];
        goto LABEL_23;
      }

      if (v12 == 4)
      {
        v18 = [MEMORY[0x1E6996EB8] objectWithWFSerializedRepresentation:v17];
        v19 = [a1 initWithMessageGroup:v18];
        goto LABEL_23;
      }
    }

    else
    {
      if (v12 == 1)
      {
        v18 = [MEMORY[0x1E6996F00] objectWithWFSerializedRepresentation:v17];
        v19 = [a1 initWithPhoneNumber:v18];
        goto LABEL_23;
      }

      if (v12 == 2)
      {
        v18 = [MEMORY[0x1E6996E00] objectWithWFSerializedRepresentation:v17];
        v19 = [a1 initWithEmailAddress:v18];
LABEL_23:
        a1 = v19;

        v5 = a1;
      }
    }

LABEL_24:

    goto LABEL_25;
  }

  a1 = [a1 initWithHandleString:v4];
  v5 = a1;
LABEL_26:

  v22 = *MEMORY[0x1E69E9840];
  return v5;
}

@end