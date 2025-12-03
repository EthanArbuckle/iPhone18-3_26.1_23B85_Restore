@interface INIntentSlotDescription(Workflow)
- (id)wf_facadeClass;
- (id)wf_objectClass;
- (id)wf_parameterClass;
- (id)wf_updatedParameterDefinition:()Workflow parameterClass:localizer:;
- (uint64_t)wf_multipleValues;
@end

@implementation INIntentSlotDescription(Workflow)

- (id)wf_updatedParameterDefinition:()Workflow parameterClass:localizer:
{
  v47[3] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  resolveSelectorStrings = [self resolveSelectorStrings];
  if (![resolveSelectorStrings count])
  {

    goto LABEL_11;
  }

  isPrivate = [self isPrivate];

  if (isPrivate)
  {
LABEL_11:
    v32 = v8;
    goto LABEL_12;
  }

  valueType = [self valueType];
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__61954;
  v40 = __Block_byref_object_dispose__61955;
  v41 = v8;
  v46[0] = @"Class";
  v13 = NSStringFromClass(a4);
  v47[0] = v13;
  v46[1] = @"Key";
  name = [self name];
  v47[1] = name;
  v46[2] = @"Label";
  name2 = [self name];
  v16 = WFAddSpacesToCamelCaseName(name2);
  v17 = WFCapitalizeFirstLetter(v16);
  v47[2] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:3];

  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __92__INIntentSlotDescription_Workflow__wf_updatedParameterDefinition_parameterClass_localizer___block_invoke;
  v35[3] = &unk_1E837D4A8;
  v35[4] = &v36;
  [v18 enumerateKeysAndObjectsUsingBlock:v35];
  if ([(objc_class *)a4 isEqual:objc_opt_class()])
  {
    v19 = v37[5];
    v44 = @"AllowsDecimalNumbers";
    v20 = [MEMORY[0x1E696AD98] numberWithBool:(valueType < 0x36) & (0x20000000200018uLL >> valueType)];
    v45 = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
    v22 = [v19 definitionByAddingEntriesInDictionary:v21];
    v23 = v37[5];
    v37[5] = v22;
  }

  if ([(objc_class *)a4 isEqual:objc_opt_class()])
  {
    v24 = [MEMORY[0x1E695DFB8] orderedSetWithObjects:{@"Variable", @"ExtensionInput", @"ActionOutput", @"CurrentDate", @"Clipboard", 0}];
    v25 = [v37[5] objectForKey:@"DisallowedVariableTypes"];
    if (v25)
    {
      v26 = [v24 orderedSetByAddingObjectsFromArray:v25];

      v24 = v26;
    }

    v27 = v37[5];
    v42 = @"DisallowedVariableTypes";
    array = [v24 array];
    v43 = array;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v30 = [v27 definitionByAddingEntriesInDictionary:v29];
    v31 = v37[5];
    v37[5] = v30;
  }

  v32 = v37[5];

  _Block_object_dispose(&v36, 8);
LABEL_12:

  v33 = *MEMORY[0x1E69E9840];

  return v32;
}

- (id)wf_parameterClass
{
  valueType = [self valueType];
  v2 = 0;
  if (valueType > 26)
  {
    if ((valueType - 98) <= 0x33 && ((1 << (valueType - 98)) & 0x82000DFC70001) != 0)
    {
      goto LABEL_6;
    }

    if ((valueType - 30) > 0x37)
    {
LABEL_30:
      if ((valueType - 27) < 2)
      {
        v3 = off_1E836EB40;
        goto LABEL_26;
      }

      goto LABEL_27;
    }

    if (((1 << (valueType - 30)) & 0xC0054618000000) != 0)
    {
LABEL_6:
      v3 = off_1E836F368;
LABEL_26:
      v4 = *v3;
      v2 = objc_opt_class();
      goto LABEL_27;
    }

    if (valueType != 30)
    {
      if (valueType == 53)
      {
        goto LABEL_25;
      }

      goto LABEL_30;
    }

LABEL_32:
    v3 = off_1E836F388;
    goto LABEL_26;
  }

  if (valueType <= 7)
  {
    if ((valueType - 3) >= 4)
    {
      if (valueType == 1)
      {
        v3 = off_1E836F358;
        goto LABEL_26;
      }

      if (valueType != 7)
      {
        goto LABEL_27;
      }

      goto LABEL_32;
    }

    goto LABEL_25;
  }

  if (valueType <= 15)
  {
    if ((valueType - 8) >= 2)
    {
      if ((valueType - 10) >= 2)
      {
        goto LABEL_27;
      }

LABEL_19:
      v3 = off_1E836E040;
      goto LABEL_26;
    }

LABEL_25:
    v3 = off_1E836EC08;
    goto LABEL_26;
  }

  if (valueType <= 20)
  {
    if (valueType == 16)
    {
      v3 = off_1E836E1E8;
      goto LABEL_26;
    }

    if (valueType != 18)
    {
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  if (valueType == 21 || valueType == 24)
  {
    goto LABEL_25;
  }

LABEL_27:

  return v2;
}

- (uint64_t)wf_multipleValues
{
  if ([self valueStyle] == 3)
  {
    LOBYTE(v2) = 1;
  }

  else
  {
    valueType = [self valueType];
    v2 = 0x92402800 >> valueType;
    if (valueType > 0x1F)
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2 & 1;
}

- (id)wf_facadeClass
{
  valueType = [self valueType];
  if ((valueType & 0xFFFFFFFFFFFFFFFELL) == 0xC)
  {
    goto LABEL_8;
  }

  if (valueType > 17)
  {
    if (valueType == 53 || valueType == 18)
    {
      goto LABEL_8;
    }
  }

  else if ((valueType - 10) < 2 || valueType == 16)
  {
LABEL_8:
    wf_objectClass = objc_opt_class();
    goto LABEL_9;
  }

  wf_objectClass = [self wf_objectClass];
LABEL_9:

  return wf_objectClass;
}

- (id)wf_objectClass
{
  valueType = [self valueType];
  v2 = 0;
  switch(valueType)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 16:
    case 18:
    case 21:
    case 22:
    case 24:
    case 25:
    case 30:
    case 31:
    case 53:
    case 54:
    case 57:
    case 58:
    case 63:
    case 64:
    case 68:
    case 70:
    case 72:
    case 84:
    case 85:
      goto LABEL_4;
    case 14:
    case 15:
    case 17:
    case 19:
    case 20:
    case 23:
    case 26:
    case 29:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 55:
    case 56:
    case 59:
    case 60:
    case 61:
    case 62:
    case 65:
    case 66:
    case 67:
    case 69:
    case 71:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
      break;
    case 27:
    case 28:
      v6 = 0;
      v7 = &v6;
      v8 = 0x2050000000;
      v4 = getCLPlacemarkClass_softClass_61956;
      v9 = getCLPlacemarkClass_softClass_61956;
      if (!getCLPlacemarkClass_softClass_61956)
      {
        v5[0] = MEMORY[0x1E69E9820];
        v5[1] = 3221225472;
        v5[2] = __getCLPlacemarkClass_block_invoke_61957;
        v5[3] = &unk_1E837FAC0;
        v5[4] = &v6;
        __getCLPlacemarkClass_block_invoke_61957(v5);
        v4 = v7[3];
      }

      v2 = v4;
      _Block_object_dispose(&v6, 8);
      break;
    default:
      if ((valueType - 98) <= 0x33 && ((1 << (valueType - 98)) & 0x82000DFC70001) != 0)
      {
LABEL_4:
        v2 = objc_opt_class();
      }

      break;
  }

  return v2;
}

@end