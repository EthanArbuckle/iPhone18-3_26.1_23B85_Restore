uint64_t __Block_byref_object_copy__5216(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1CA6F18E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void WFConfigureIntentBasedParameterResources(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v3 resourceObjectsOfClass:{objc_opt_class(), 0}];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) setupWithAction:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t WFREPBAlertButtonReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v32 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v32 & 0x7F) << v5;
        if ((v32 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 1)
      {
        v28 = PBReaderReadString();
        v29 = *(a1 + 16);
        *(a1 + 16) = v28;
      }

      else if (v13 == 2)
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        while (1)
        {
          v33 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v33 & 0x7F) << v21;
          if ((v33 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_44;
          }
        }

        v27 = [a2 hasError] ? 0 : v23;
LABEL_44:
        *(a1 + 8) = v27;
      }

      else if (v13 == 3)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          v34 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v34 & 0x7F) << v14;
          if ((v34 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            LOBYTE(v20) = 0;
            goto LABEL_46;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
LABEL_46:
        *(a1 + 24) = v20;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v31 = [a2 position];
    }

    while (v31 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__CFString *NSStringFromSyncEventType(int a1)
{
  if ((a1 - 1) > 0xC)
  {
    return @"RecordFetch";
  }

  else
  {
    return off_1E8374510[a1 - 1];
  }
}

id WFEnforceClass_6231(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = getWFGeneralLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v9 = 136315906;
      v10 = "WFEnforceClass";
      v11 = 2114;
      v12 = v3;
      v13 = 2114;
      v14 = objc_opt_class();
      v15 = 2114;
      v16 = a2;
      v6 = v14;
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_FAULT, "%s provideInputForParameters should not be called", &v9, 0x2Au);
    }

    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v4;
}

void sub_1CA6FD908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA6FE018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6342(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1CA6FE36C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA6FE554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA6FE8D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t WFPBContextualActionEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v33 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          *(a1 + 36) |= 2u;
          while (1)
          {
            v34 = 0;
            v28 = [a2 position] + 1;
            if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
            {
              v30 = [a2 data];
              [v30 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v27 |= (v34 & 0x7F) << v25;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v11 = v26++ >= 9;
            if (v11)
            {
              LOBYTE(v31) = 0;
              goto LABEL_50;
            }
          }

          v31 = (v27 != 0) & ~[a2 hasError];
LABEL_50:
          *(a1 + 32) = v31;
        }

        else
        {
          if (v13 != 4)
          {
LABEL_32:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_51;
          }

          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            v35 = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v35 & 0x7F) << v16;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_48;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v18;
          }

LABEL_48:
          *(a1 + 8) = v22;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = 16;
        }

        else
        {
          if (v13 != 2)
          {
            goto LABEL_32;
          }

          v14 = PBReaderReadString();
          v15 = 24;
        }

        v24 = *(a1 + v15);
        *(a1 + v15) = v14;
      }

LABEL_51:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id WFLocalizedPluralString(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = MEMORY[0x1E696AEC0];
    v3 = [v1 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
    v4 = [v2 stringWithFormat:@"%@ (Pluralization)", v3];

    v5 = WFCurrentBundle();
    v6 = [v5 localizedStringForKey:v4 value:v1 table:0];
  }

  else
  {
    v6 = v1;
  }

  return v6;
}

id WFLocalizedContentPropertyNameMarker(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = a1;
  v3 = [v1 stringWithFormat:@"%@ (Content Property Name)", v2];
  v4 = WFDeferrableLocalizedStringWithKey(v3, v2);

  return v4;
}

id WFDeferrableLocalizedStringWithKey(void *a1, void *a2)
{
  v3 = MEMORY[0x1E69E0A88];
  v4 = a2;
  v5 = a1;
  v6 = [[v3 alloc] initWithString:v4];
  v7 = WFCurrentBundle();
  v8 = [v7 localizedStringForKey:v5 value:v4 table:0];
  [v6 setLocalizedValue:v8];

  v9 = WFLocalizedStringResourceWithKey(v5, v4);

  [v6 setStringResource:v9];

  return v6;
}

id WFLocalizedContentPropertyPossibleValueMarker(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = a1;
  v3 = [v1 stringWithFormat:@"%@ (Content Property Possible Value)", v2];
  v4 = WFDeferrableLocalizedStringWithKey(v3, v2);

  return v4;
}

id WFLocalizedContentPropertyPossibleValue(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 localizedValue];
  }

  else
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (Content Property Possible Value)", v1];
    v2 = WFLocalizedStringWithKey(v3, v1);
  }

  return v2;
}

uint64_t WFREPBSingleActionExecutionReadFrom(char *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v19) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v15 = PBReaderReadString();
          v16 = 8;
LABEL_34:
          v14 = *&a1[v16];
          *&a1[v16] = v15;
LABEL_35:

          goto LABEL_36;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(WFREPBVariable);
          [a1 addVariables:v14];
          v19 = 0;
          v20 = 0;
          if (!PBReaderPlaceMark() || !WFREPBVariableReadFrom(v14, a2))
          {
LABEL_41:

            return 0;
          }

LABEL_31:
          PBReaderRecallMark();
          goto LABEL_35;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = objc_alloc_init(WFREPBKeyValuePair);
            [a1 addProcessedParameters:v14];
            v19 = 0;
            v20 = 0;
            if (!PBReaderPlaceMark() || !WFREPBKeyValuePairReadFrom(v14, a2))
            {
              goto LABEL_41;
            }

            goto LABEL_31;
          case 4:
            v15 = PBReaderReadData();
            v16 = 32;
            goto LABEL_34;
          case 5:
            v14 = objc_alloc_init(WFREPBContentItem);
            [a1 addInput:v14];
            v19 = 0;
            v20 = 0;
            if (!PBReaderPlaceMark() || !WFREPBContentItemReadFrom(v14, a2))
            {
              goto LABEL_41;
            }

            goto LABEL_31;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_36:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1CA707398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7456(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id WFInputActionContentItemClassCorrespondingToAskForParameterValue(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Files"])
  {
    v2 = 0x1E6996E50;
LABEL_17:
    v3 = *v2;
    v4 = objc_opt_class();
    goto LABEL_18;
  }

  if ([v1 isEqualToString:@"Text"])
  {
    v2 = 0x1E6996F60;
    goto LABEL_17;
  }

  if ([v1 isEqualToString:@"Date"])
  {
    v2 = 0x1E6996DB8;
    goto LABEL_17;
  }

  if ([v1 isEqualToString:@"Photos"])
  {
    v2 = 0x1E6996F10;
    goto LABEL_17;
  }

  if ([v1 isEqualToString:@"Contacts"])
  {
    v2 = 0x1E6996D08;
    goto LABEL_17;
  }

  if ([v1 isEqualToString:@"Email Address"])
  {
    v2 = 0x1E6996E08;
    goto LABEL_17;
  }

  if ([v1 isEqualToString:@"Music"])
  {
    v2 = 0x1E6996EA0;
    goto LABEL_17;
  }

  if ([v1 isEqualToString:@"Phone Number"])
  {
    v2 = 0x1E6996F08;
    goto LABEL_17;
  }

  v4 = 0;
LABEL_18:

  return v4;
}

id WFInputActionParameterKeysForSelectingItemOfClass(objc_class *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSSet<NSString *> * _Nonnull WFInputActionParameterKeysForSelectingItemOfClass(Class  _Nonnull __unsafe_unretained)"];
    [v15 handleFailureInFunction:v16 file:@"WFInputAction.m" lineNumber:233 description:{@"Invalid parameter not satisfying: %@", @"contentItemClass"}];
  }

  v17 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = WFContentSelectionActionParameterDefinitions();
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v18 + 1) + 8 * i);
        v8 = [v7 objectForKey:@"WFInputActionParameterContentSelectionItemClass"];
        if (v8)
        {
          v9 = NSStringFromClass(a1);
          v10 = [v8 isEqualToString:v9];

          if (v10)
          {
            v11 = [v7 objectForKey:@"Key"];
            [v17 addObject:v11];
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  v12 = [v17 copy];
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

id WFContentSelectionActionParameterDefinitions()
{
  if (WFContentSelectionActionParameterDefinitions_onceToken != -1)
  {
    dispatch_once(&WFContentSelectionActionParameterDefinitions_onceToken, &__block_literal_global_294_7948);
  }

  v1 = WFContentSelectionActionParameterDefinitions_parameterDefinitions;

  return v1;
}

void __WFContentSelectionActionParameterDefinitions_block_invoke()
{
  v23[8] = *MEMORY[0x1E69E9840];
  v23[0] = @"Files";
  v23[1] = @"Text";
  v23[2] = @"Date";
  v23[3] = @"Photos";
  v23[4] = @"Contacts";
  v23[5] = @"Email Address";
  v23[6] = @"Music";
  v23[7] = @"Phone Number";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:8];
  v1 = [v0 if_map:&__block_literal_global_297];
  v2 = +[WFActionRegistry sharedRegistry];
  v3 = [v2 createActionsForSelectingContentOfTypes:v1 serializedParameterArray:0];

  if (v3)
  {
    v4 = objc_opt_new();
    v5 = objc_opt_new();
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __WFContentSelectionActionParameterDefinitions_block_invoke_298;
    v16[3] = &unk_1E8374C98;
    v6 = v4;
    v17 = v6;
    v18 = v1;
    v7 = v5;
    v19 = v7;
    v20 = v3;
    [v0 enumerateObjectsUsingBlock:v16];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __WFContentSelectionActionParameterDefinitions_block_invoke_2_300;
    v13[3] = &unk_1E8374D10;
    v14 = v6;
    v15 = v7;
    v8 = v7;
    v9 = v6;
    v10 = [v0 if_flatMap:v13];
    v11 = WFContentSelectionActionParameterDefinitions_parameterDefinitions;
    WFContentSelectionActionParameterDefinitions_parameterDefinitions = v10;
  }

  else
  {
    v9 = getWFActionsLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v22 = "WFContentSelectionActionParameterDefinitions_block_invoke";
      _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_FAULT, "%s Couldn't make content selection actions for all content types", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __WFContentSelectionActionParameterDefinitions_block_invoke_298(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = a2;
  [*(a1 + 32) setObject:objc_msgSend(v5 forKeyedSubscript:{"objectAtIndexedSubscript:", a3), v6}];
  v7 = [*(a1 + 56) objectAtIndexedSubscript:a3];
  [*(a1 + 48) setObject:v7 forKeyedSubscript:v6];
}

id __WFContentSelectionActionParameterDefinitions_block_invoke_2_300(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  v5 = [*(a1 + 40) objectForKeyedSubscript:v3];
  v6 = v5;
  v7 = MEMORY[0x1E695E0F0];
  if (v5)
  {
    v8 = v4 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = [v5 definition];
    v10 = [v9 objectForKey:@"Parameters"];

    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    v13 = [v6 inputParameterKey];
    v14 = objc_opt_new();
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __WFContentSelectionActionParameterDefinitions_block_invoke_3;
    v23[3] = &unk_1E8374CC0;
    v24 = v13;
    v25 = v3;
    v26 = v4;
    v15 = v13;
    v16 = [v12 if_compactMap:v23];

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __WFContentSelectionActionParameterDefinitions_block_invoke_4;
    v21[3] = &unk_1E8375E38;
    v22 = v14;
    v17 = v14;
    v18 = [v16 if_map:v21];

    if (v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v7;
    }

    v7 = v19;
  }

  return v7;
}

id __WFContentSelectionActionParameterDefinitions_block_invoke_3(uint64_t a1, void *a2)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 objectForKey:@"Key"];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (*(a1 + 32) && ([v6 isEqualToString:?] & 1) != 0)
  {
    v7 = 0;
  }

  else
  {
    v8 = [WFParameterRelationResource alloc];
    v28[0] = @"Ask For";
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
    v10 = [(WFParameterRelationResource *)v8 initWithParameterKey:@"WFNoInputBehavior" parameterValues:v9 relation:0];

    v11 = [WFParameterRelationResource alloc];
    v27 = *(a1 + 40);
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
    v13 = [(WFParameterRelationResource *)v11 initWithParameterKey:@"WFAskForType" parameterValues:v12 relation:0];

    v14 = [v3 objectForKey:@"RequiredResources"];
    if (v14)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = MEMORY[0x1E695E0F0];
    }

    v18 = [v17 mutableCopy];

    v19 = WFSerializedResource(v10);
    [v18 addObject:v19];

    v20 = WFSerializedResource(v13);
    [v18 addObject:v20];

    v25[0] = @"RequiredResources";
    v25[1] = @"WFInputActionParameterContentSelectionItemClass";
    v26[0] = v18;
    v21 = NSStringFromClass(*(a1 + 48));
    v26[1] = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];
    v7 = [v3 definitionByAddingEntriesInDictionary:v22];
  }

  v23 = *MEMORY[0x1E69E9840];

  return v7;
}

id __WFContentSelectionActionParameterDefinitions_block_invoke_4(uint64_t a1, void *a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 objectForKey:@"RequiredResources"];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __WFContentSelectionActionParameterDefinitions_block_invoke_5;
  v15 = &unk_1E8374CE8;
  v16 = *(a1 + 32);
  v7 = [v6 if_map:&v12];

  v17 = @"RequiredResources";
  v18[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:{1, v12, v13, v14, v15}];
  v9 = [v3 definitionByAddingEntriesInDictionary:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id __WFContentSelectionActionParameterDefinitions_block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 mutableCopy];
  v5 = [v3 objectForKeyedSubscript:@"WFParameterKey"];
  if (v5)
  {
    v6 = [*(a1 + 32) objectForKeyedSubscript:v5];
    if (v6)
    {
      [v4 setObject:v6 forKeyedSubscript:@"WFParameterKey"];
      v7 = [v4 copy];
    }

    else
    {
      v7 = v3;
    }

    v8 = v7;
  }

  else
  {
    v8 = v3;
  }

  return v8;
}

id WFSerializedResource(void *a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSDictionary * _Nonnull WFSerializedResource(WFResource * _Nonnull __strong)"];
    [v9 handleFailureInFunction:v10 file:@"WFInputAction.m" lineNumber:117 description:{@"Invalid parameter not satisfying: %@", @"resource"}];
  }

  v2 = [v1 definition];
  v11 = @"WFResourceClass";
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v12[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v6 = [v2 if_dictionaryByAddingEntriesFromDictionary:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

id __WFContentSelectionActionParameterDefinitions_block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = WFInputActionContentItemClassCorrespondingToAskForParameterValue(v2);
  if (!v3)
  {
    v4 = getWFActionsLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      v8 = 136315394;
      v9 = "WFContentSelectionActionParameterDefinitions_block_invoke_2";
      v10 = 2112;
      v11 = v2;
      _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_FAULT, "%s Couldn't map content type to content item class: %@", &v8, 0x16u);
    }
  }

  v5 = v3;

  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

id WFEnforceClass_8337(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = getWFGeneralLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v9 = 136315906;
      v10 = "WFEnforceClass";
      v11 = 2114;
      v12 = v3;
      v13 = 2114;
      v14 = objc_opt_class();
      v15 = 2114;
      v16 = a2;
      v6 = v14;
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_FAULT, "%s %{public}@ is not a known class name.", &v9, 0x2Au);
    }

    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v4;
}

void sub_1CA718D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8610(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1CA719514(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak(&a23);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void WFMCIsAppAccountBasedSourceForOpenIn(void *a1)
{
  v1 = a1;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getMCIsAppAccountBasedSourceForOpenInSymbolLoc_ptr;
  v9 = getMCIsAppAccountBasedSourceForOpenInSymbolLoc_ptr;
  if (!getMCIsAppAccountBasedSourceForOpenInSymbolLoc_ptr)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __getMCIsAppAccountBasedSourceForOpenInSymbolLoc_block_invoke;
    v5[3] = &unk_1E837FAC0;
    v5[4] = &v6;
    __getMCIsAppAccountBasedSourceForOpenInSymbolLoc_block_invoke(v5);
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    v2(v1);
  }

  else
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL WFMCIsAppAccountBasedSourceForOpenIn(NSString *__strong)"];
    [v3 handleFailureInFunction:v4 file:@"WFAction.m" lineNumber:56 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1CA71A978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMCIsAppAccountBasedSourceForOpenInSymbolLoc_block_invoke(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!ManagedConfigurationLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __ManagedConfigurationLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E83753C8;
    v8 = 0;
    ManagedConfigurationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = ManagedConfigurationLibraryCore_frameworkLibrary;
  if (!ManagedConfigurationLibraryCore_frameworkLibrary)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ManagedConfigurationLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"WFAction.m" lineNumber:55 description:{@"%s", v6[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v6[0];
  if (v6[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "MCIsAppAccountBasedSourceForOpenIn");
  *(*(a1[4] + 8) + 24) = result;
  getMCIsAppAccountBasedSourceForOpenInSymbolLoc_ptr = *(*(a1[4] + 8) + 24);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __ManagedConfigurationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ManagedConfigurationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id WFEnforceClass_8714(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = getWFGeneralLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v9 = 136315906;
      v10 = "WFEnforceClass";
      v11 = 2114;
      v12 = v3;
      v13 = 2114;
      v14 = objc_opt_class();
      v15 = 2114;
      v16 = a2;
      v6 = v14;
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_FAULT, "%s Action: %{public}@ setting parameter state: %{public}@, key:%{public}@, value:%@", &v9, 0x2Au);
    }

    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v4;
}

void __WFActionGreenTeaContentDestinationMayLeaveDevice_block_invoke_2()
{
  v6[2] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v1 = *MEMORY[0x1E69E0EB8];
  v6[0] = *MEMORY[0x1E69E0E68];
  v6[1] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  v3 = [v0 setWithArray:v2];
  v4 = WFActionGreenTeaContentDestinationMayLeaveDevice_exfiltratingAppBundleIdentifier;
  WFActionGreenTeaContentDestinationMayLeaveDevice_exfiltratingAppBundleIdentifier = v3;

  v5 = *MEMORY[0x1E69E9840];
}

void __WFActionGreenTeaContentDestinationMayLeaveDevice_block_invoke()
{
  v5[7] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v5[0] = @"com.apple.shortcuts.airdropDestination";
  v5[1] = @"com.apple.shortcuts.appleScriptDestination";
  v5[2] = @"com.apple.shortcuts.javaScriptForAutomationDestination";
  v5[3] = @"com.apple.shortcuts.printDestination";
  v5[4] = @"com.apple.shortcuts.shareExtensionDestination";
  v5[5] = @"com.apple.shortcuts.shellDestination";
  v5[6] = @"com.apple.shortcuts.webpagesDestination";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:7];
  v2 = [v0 setWithArray:v1];
  v3 = WFActionGreenTeaContentDestinationMayLeaveDevice_dataLeavingContentDestination;
  WFActionGreenTeaContentDestinationMayLeaveDevice_dataLeavingContentDestination = v2;

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1CA725F44(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_1CA729E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id WFPreferredVariableNameForVariable(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 outputUUID];
    v3 = [v2 stringByAppendingString:@"-output"];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [v1 name];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

void sub_1CA72B72C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id WFEnforceClass_9058(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = getWFGeneralLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v9 = 136315906;
      v10 = "WFEnforceClass";
      v11 = 2114;
      v12 = v3;
      v13 = 2114;
      v14 = objc_opt_class();
      v15 = 2114;
      v16 = a2;
      v6 = v14;
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_FAULT, "%s Action %@ is being rate limited because it passed the threshold of %li runs. Delaying execution for %li seconds.", &v9, 0x2Au);
    }

    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v4;
}

id WFEnforceClass_9663(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = getWFGeneralLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v9 = 136315906;
      v10 = "WFEnforceClass";
      v11 = 2114;
      v12 = v3;
      v13 = 2114;
      v14 = objc_opt_class();
      v15 = 2114;
      v16 = a2;
      v6 = v14;
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_FAULT, "%s Received unexpected interaction response of type %@", &v9, 0x2Au);
    }

    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v4;
}

uint64_t WFPerformCustomModificationsStep(void *a1, void *a2, void *a3, void *a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v23 = a1;
  v7 = a2;
  v22 = a4;
  v8 = [MEMORY[0x1E695D6C8] persistentStoreDescriptionWithURL:v7];
  v9 = [objc_alloc(MEMORY[0x1E695D6C0]) initWithManagedObjectModel:v23];
  v10 = [v8 type];
  v11 = [v8 configuration];
  v12 = [v8 URL];
  v33 = 0;
  v13 = [v9 addPersistentStoreWithType:v10 configuration:v11 URL:v12 options:0 error:&v33];
  v14 = v33;

  if (v13)
  {
    v15 = [objc_alloc(MEMORY[0x1E695D628]) initWithConcurrencyType:1];
    [v15 setPersistentStoreCoordinator:v9];
    [v15 setMergePolicy:*MEMORY[0x1E695D388]];
    [v15 setUndoManager:0];
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 1;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v35 = __Block_byref_object_copy__9793;
    v36 = __Block_byref_object_dispose__9794;
    v37 = 0;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __WFPerformCustomModificationsStep_block_invoke;
    v24[3] = &unk_1E837A028;
    v27 = &v29;
    v26 = v22;
    v16 = v15;
    v25 = v16;
    v28 = buf;
    [v16 performBlockAndWait:v24];
    if (a3)
    {
      *a3 = *(*&buf[8] + 40);
    }

    v17 = *(v30 + 24);

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(&v29, 8);
  }

  else
  {
    v18 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "WFPerformCustomModificationsStep";
      *&buf[12] = 2114;
      *&buf[14] = v14;
      _os_log_impl(&dword_1CA256000, v18, OS_LOG_TYPE_ERROR, "%s Failed to add persistent store during Core Data migration: %{public}@", buf, 0x16u);
    }

    if (a3)
    {
      v19 = v14;
      v17 = 0;
      *a3 = v14;
    }

    else
    {
      v17 = 0;
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return v17 & 1;
}

void sub_1CA731538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9793(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __WFPerformCustomModificationsStep_block_invoke(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v4 = a1[4];
  v3 = a1[5];
  v8 = 0;
  v5 = (*(v3 + 16))();
  v6 = v8;
  v7 = v8;
  *(*(a1[6] + 8) + 24) = v5;
  if ((*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    objc_storeStrong((*(a1[7] + 8) + 40), v6);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t __Block_byref_object_copy__9838(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void WFInsertIdentifierForKey(void *a1, void *a2, void *a3)
{
  v8 = a1;
  v5 = a2;
  v6 = a3;
  v7 = [v8 objectForKey:v5];
  if (!v7)
  {
    v7 = objc_opt_new();
    [v8 setObject:v7 forKey:v5];
  }

  [v7 addObject:v6];
}

void sub_1CA73209C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t WFPBSetupGalleryShortcutEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v21 = PBReaderReadString();
          v22 = 32;
          goto LABEL_36;
        }

        if (v13 == 2)
        {
          v21 = PBReaderReadString();
          v22 = 16;
LABEL_36:
          v23 = *(a1 + v22);
          *(a1 + v22) = v21;

          goto LABEL_37;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v21 = PBReaderReadString();
            v22 = 24;
            goto LABEL_36;
          case 4:
            v21 = PBReaderReadString();
            v22 = 8;
            goto LABEL_36;
          case 5:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 44) |= 1u;
            while (1)
            {
              v27 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v27 & 0x7F) << v14;
              if ((v27 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                LOBYTE(v20) = 0;
                goto LABEL_42;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_42:
            *(a1 + 40) = v20;
            goto LABEL_37;
        }
      }

      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

LABEL_37:
      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1CA736158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10462(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t WFPBRemoteExecutionErrorEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = (v12 >> 3) - 1;
      if (v13 >= 5)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = off_1E8375640[v13];
        v15 = PBReaderReadString();
        v16 = *v14;
        v17 = *(a1 + v16);
        *(a1 + v16) = v15;
      }

      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id WFFileLocationClassByType()
{
  v4[9] = *MEMORY[0x1E69E9840];
  v3[0] = @"FileProvider";
  v4[0] = objc_opt_class();
  v3[1] = @"Desktop";
  v4[1] = objc_opt_class();
  v3[2] = @"Documents";
  v4[2] = objc_opt_class();
  v3[3] = @"Downloads";
  v4[3] = objc_opt_class();
  v3[4] = @"Shortcuts";
  v4[4] = objc_opt_class();
  v3[5] = @"iCloud";
  v4[5] = objc_opt_class();
  v3[6] = @"LocalStorage";
  v4[6] = objc_opt_class();
  v3[7] = @"Home";
  v4[7] = objc_opt_class();
  v3[8] = @"Absolute";
  v4[8] = objc_opt_class();
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:9];
  v1 = *MEMORY[0x1E69E9840];

  return v0;
}

void sub_1CA737824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA7382C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10748(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1CA7386D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t WFREPBRepeatedKeyValuePairReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = a1[1];
        a1[1] = v13;
LABEL_22:

        goto LABEL_24;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_24:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadData();
    if (v14)
    {
      [a1 addValue:v14];
    }

    goto LABEL_22;
  }

  return [a2 hasError] ^ 1;
}

id getWFWFScreenOnObserverLogObject()
{
  if (getWFWFScreenOnObserverLogObject_onceToken != -1)
  {
    dispatch_once(&getWFWFScreenOnObserverLogObject_onceToken, &__block_literal_global_11053);
  }

  v1 = getWFWFScreenOnObserverLogObject_log;

  return v1;
}

void __getWFWFScreenOnObserverLogObject_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69E1140], "WFScreenOnObserver");
  v1 = getWFWFScreenOnObserverLogObject_log;
  getWFWFScreenOnObserverLogObject_log = v0;
}

_BYTE *mtl_copyPropertyAttributes(objc_property *a1)
{
  v43[1] = *MEMORY[0x1E69E9840];
  Attributes = property_getAttributes(a1);
  if (!Attributes)
  {
    v28 = *MEMORY[0x1E69E9848];
    property_getName(a1);
    fprintf(v28, "ERROR: Could not get attribute string from property %s\n");
    goto LABEL_64;
  }

  v3 = Attributes;
  if (*Attributes != 84)
  {
    v29 = *MEMORY[0x1E69E9848];
    property_getName(a1);
    fprintf(v29, "ERROR: Expected attribute string %s for property %s to start with 'T'\n");
    goto LABEL_64;
  }

  v4 = Attributes + 1;
  v5 = NSGetSizeAndAlignment(Attributes + 1, 0, 0);
  if (!v5)
  {
    v30 = *MEMORY[0x1E69E9848];
    property_getName(a1);
    fprintf(v30, "ERROR: Could not read past type in attribute string %s for property %s\n");
    goto LABEL_64;
  }

  v6 = v5;
  v7 = v5 - v4;
  if (v5 == v4)
  {
    v31 = *MEMORY[0x1E69E9848];
    property_getName(a1);
    fprintf(v31, "ERROR: Invalid type in attribute string %s for property %s\n");
    goto LABEL_64;
  }

  v8 = malloc_type_calloc(1uLL, v7 + 49, 0x10D0040A857D93CuLL);
  if (!v8)
  {
    v38 = *MEMORY[0x1E69E9848];
    property_getName(a1);
    fprintf(v38, "ERROR: Could not allocate mtl_propertyAttributes structure for attribute string %s for property %s\n");
    goto LABEL_64;
  }

  v9 = v8;
  strncpy(v8 + 48, v3 + 1, v7)[v7] = 0;
  if (*v4 == 64 && v3[2] == 34)
  {
    v10 = (v3 + 3);
    v11 = strchr(v3 + 3, 34);
    if (v11)
    {
      v6 = v11;
      if (v10 != v11)
      {
        v12 = (v11 - v10);
        MEMORY[0x1EEE9AC00](v11);
        v14 = strncpy(v43 - v13, v3 + 3, v6 - v10);
        v12[v14] = 0;
        *(v9 + 5) = objc_getClass(v14);
      }

      goto LABEL_11;
    }

    v41 = *MEMORY[0x1E69E9848];
    property_getName(a1);
    fprintf(v41, "ERROR: Could not read class name in attribute string %s for property %s\n");
LABEL_68:
    free(v9);
LABEL_64:
    v9 = 0;
    goto LABEL_65;
  }

LABEL_11:
  if (*v6)
  {
    v6 = strchr(v6, 44);
    if (!v6)
    {
      goto LABEL_59;
    }
  }

  v15 = MEMORY[0x1E69E9848];
  while (*v6 == 44)
  {
    v16 = v6[1];
    v17 = v16;
    v6 += 2;
    if (v16 > 79)
    {
      if (v16 > 85)
      {
        switch(v16)
        {
          case 'V':
            if (*v6)
            {
              *(v9 + 4) = v6;
              v6 = "";
            }

            else
            {
LABEL_44:
              *(v9 + 4) = 0;
            }

            break;
          case 'W':
            v9[2] = 1;
            break;
          case 't':
            v18 = *v15;
            Name = property_getName(a1);
            fprintf(v18, "ERROR: Old-style type encoding is unsupported in attribute string %s for property %s\n", v3, Name);
            while (*v6 && *v6 != 44)
            {
              ++v6;
            }

            break;
          default:
            goto LABEL_48;
        }
      }

      else
      {
        switch(v16)
        {
          case 'P':
            v9[3] = 1;
            break;
          case 'R':
            *v9 = 1;
            break;
          case 'S':
            goto LABEL_37;
          default:
LABEL_48:
            v26 = *v15;
            v27 = property_getName(a1);
            fprintf(v26, "ERROR: Unrecognized attribute string flag '%c' in attribute string %s for property %s\n", v17, v3, v27);
            break;
        }
      }
    }

    else if (v16 > 67)
    {
      switch(v16)
      {
        case 'D':
          v9[4] = 1;
          goto LABEL_44;
        case 'G':
LABEL_37:
          v20 = strchr(v6, 44);
          if (v20)
          {
            v21 = v20;
            v22 = v20 - v6;
            if (v20 == v6)
            {
              v42 = *v15;
              property_getName(a1);
              fprintf(v42, "ERROR: Found zero length selector name in attribute string %s for property %s\n");
              goto LABEL_68;
            }

            MEMORY[0x1EEE9AC00](v20);
            v24 = strncpy(v43 - v23, v6, v22);
            v24[v22] = 0;
            v25 = sel_registerName(v24);
            v6 = v21;
          }

          else
          {
            v25 = sel_registerName(v6);
            v6 = "";
          }

          if (v17 == 71)
          {
            *(v9 + 2) = v25;
          }

          else
          {
            *(v9 + 3) = v25;
          }

          break;
        case 'N':
          v9[1] = 1;
          break;
        default:
          goto LABEL_48;
      }
    }

    else if (v16)
    {
      if (v16 == 38)
      {
        *(v9 + 2) = 1;
      }

      else
      {
        if (v16 != 67)
        {
          goto LABEL_48;
        }

        *(v9 + 2) = 2;
      }
    }
  }

  if (*v6)
  {
    v32 = *v15;
    v33 = property_getName(a1);
    fprintf(v32, "Warning: Unparsed data %s in attribute string %s for property %s\n", v6, v3, v33);
  }

LABEL_59:
  if (!*(v9 + 2))
  {
    v34 = property_getName(a1);
    *(v9 + 2) = sel_registerName(v34);
  }

  if (!*(v9 + 3))
  {
    v35 = property_getName(a1);
    v36 = strlen(v35);
    v37 = v43 - ((MEMORY[0x1EEE9AC00](v36) + 20) & 0xFFFFFFFFFFFFFFF0);
    v37[2] = 116;
    *v37 = 25971;
    strncpy(v37 + 3, v35, v36);
    v37[3] = __toupper(v37[3]);
    *&v37[v36 + 3] = 58;
    *(v9 + 3) = sel_registerName(v37);
  }

LABEL_65:
  v39 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t WFPBSuspendShortcutEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = (v12 >> 3) - 1;
      if (v13 >= 3)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = off_1E8375768[v13];
        v15 = PBReaderReadString();
        v16 = *v14;
        v17 = *(a1 + v16);
        *(a1 + v16) = v15;
      }

      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1CA73F968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11777(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1CA740204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAXSDSettingsClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAXSDSettingsClass_softClass;
  v7 = getAXSDSettingsClass_softClass;
  if (!getAXSDSettingsClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAXSDSettingsClass_block_invoke;
    v3[3] = &unk_1E837FAC0;
    v3[4] = &v4;
    __getAXSDSettingsClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1CA7402E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getAXSDSettingsClass_block_invoke(uint64_t a1)
{
  AXSoundDetectionLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AXSDSettings");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAXSDSettingsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAXSDSettingsClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFAXSDSettings.m" lineNumber:19 description:{@"Unable to find class %s", "AXSDSettings"}];

    __break(1u);
  }
}

void *AXSoundDetectionLibrary()
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!AXSoundDetectionLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __AXSoundDetectionLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E8375880;
    v7 = 0;
    AXSoundDetectionLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = AXSoundDetectionLibraryCore_frameworkLibrary;
  if (!AXSoundDetectionLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AXSoundDetectionLibrary(void)"];
    [v0 handleFailureInFunction:v4 file:@"WFAXSDSettings.m" lineNumber:18 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __AXSoundDetectionLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AXSoundDetectionLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void getAXSDSoundDetectionTypeApplianceBeeps()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getAXSDSoundDetectionTypeApplianceBeepsSymbolLoc_ptr;
  v9 = getAXSDSoundDetectionTypeApplianceBeepsSymbolLoc_ptr;
  if (!getAXSDSoundDetectionTypeApplianceBeepsSymbolLoc_ptr)
  {
    v1 = AXSoundDetectionLibrary();
    v7[3] = dlsym(v1, "AXSDSoundDetectionTypeApplianceBeeps");
    getAXSDSoundDetectionTypeApplianceBeepsSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"AXSDSoundDetectionType getAXSDSoundDetectionTypeApplianceBeeps(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFAXSDSettings.m" lineNumber:21 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1CA7408C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void soft_bmTypeForSoundDetectionType(void *a1)
{
  v1 = a1;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getbmTypeForSoundDetectionTypeSymbolLoc_ptr;
  v11 = getbmTypeForSoundDetectionTypeSymbolLoc_ptr;
  if (!getbmTypeForSoundDetectionTypeSymbolLoc_ptr)
  {
    v3 = AXSoundDetectionLibrary();
    v9[3] = dlsym(v3, "bmTypeForSoundDetectionType");
    getbmTypeForSoundDetectionTypeSymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v2)
  {
    v4 = v2(v1);

    v5 = v4;
  }

  else
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BMSoundDetectionType soft_bmTypeForSoundDetectionType(__strong AXSDSoundDetectionType)"];
    [v6 handleFailureInFunction:v7 file:@"WFAXSDSettings.m" lineNumber:25 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1CA740A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getAXSDSoundDetectionTypeApplianceBuzzes()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getAXSDSoundDetectionTypeApplianceBuzzesSymbolLoc_ptr;
  v9 = getAXSDSoundDetectionTypeApplianceBuzzesSymbolLoc_ptr;
  if (!getAXSDSoundDetectionTypeApplianceBuzzesSymbolLoc_ptr)
  {
    v1 = AXSoundDetectionLibrary();
    v7[3] = dlsym(v1, "AXSDSoundDetectionTypeApplianceBuzzes");
    getAXSDSoundDetectionTypeApplianceBuzzesSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"AXSDSoundDetectionType getAXSDSoundDetectionTypeApplianceBuzzes(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFAXSDSettings.m" lineNumber:22 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1CA740BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getAXSDSoundDetectionTypeApplianceBellDings()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getAXSDSoundDetectionTypeApplianceBellDingsSymbolLoc_ptr;
  v9 = getAXSDSoundDetectionTypeApplianceBellDingsSymbolLoc_ptr;
  if (!getAXSDSoundDetectionTypeApplianceBellDingsSymbolLoc_ptr)
  {
    v1 = AXSoundDetectionLibrary();
    v7[3] = dlsym(v1, "AXSDSoundDetectionTypeApplianceBellDings");
    getAXSDSoundDetectionTypeApplianceBellDingsSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"AXSDSoundDetectionType getAXSDSoundDetectionTypeApplianceBellDings(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFAXSDSettings.m" lineNumber:23 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1CA740D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAXSDSoundDetectionTypeApplianceBellDingsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AXSoundDetectionLibrary();
  result = dlsym(v2, "AXSDSoundDetectionTypeApplianceBellDings");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXSDSoundDetectionTypeApplianceBellDingsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAXSDSoundDetectionTypeApplianceBuzzesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AXSoundDetectionLibrary();
  result = dlsym(v2, "AXSDSoundDetectionTypeApplianceBuzzes");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXSDSoundDetectionTypeApplianceBuzzesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getbmTypeForSoundDetectionTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AXSoundDetectionLibrary();
  result = dlsym(v2, "bmTypeForSoundDetectionType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getbmTypeForSoundDetectionTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAXSDSoundDetectionTypeApplianceBeepsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AXSoundDetectionLibrary();
  result = dlsym(v2, "AXSDSoundDetectionTypeApplianceBeeps");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXSDSoundDetectionTypeApplianceBeepsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getHKFeatureIdentifierSleepCoachingSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HealthKitLibrary();
  result = dlsym(v2, "HKFeatureIdentifierSleepCoaching");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHKFeatureIdentifierSleepCoachingSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getHKFeatureIdentifierSleepActionsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HealthKitLibrary();
  result = dlsym(v2, "HKFeatureIdentifierSleepActions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHKFeatureIdentifierSleepActionsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1CA741A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SleepLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SleepLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __HealthKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  HealthKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t WFWorkflowHasActionsWithIdentifier(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  [a2 objectForKey:@"WFWorkflowActions"];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v14 + 1) + 8 * v8) objectForKeyedSubscript:{@"WFWorkflowActionIdentifier", v14}];
        v10 = [v9 isEqualToString:v3];

        if (v10)
        {
          v11 = 1;
          goto LABEL_11;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t WFWorkflowHasActionsWithBundleIdentifier(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  [a2 objectForKey:@"WFWorkflowActions"];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = v21 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v18 + 1) + 8 * i) objectForKeyedSubscript:{@"WFWorkflowActionIdentifier", v18}];
        v10 = [v9 rangeOfString:@"." options:4];
        if (v10 == 0x7FFFFFFFFFFFFFFFLL)
        {

          goto LABEL_12;
        }

        v11 = [v9 substringToIndex:v10];
        v12 = [v11 lowercaseString];
        v13 = [v3 lowercaseString];
        v14 = [v12 isEqualToString:v13];

        if (v14)
        {
          v15 = 1;
          goto LABEL_14;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
      v15 = 0;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
LABEL_12:
    v15 = 0;
  }

LABEL_14:

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

id WFCLLocationManagerWithOptions(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc(getCLLocationManagerClass());
  v8 = v7;
  switch(a1)
  {
    case 3:
      v9 = MEMORY[0x1E696AAE8];
      v10 = @"/System/Library/PrivateFrameworks/AssistantServices.framework";
      goto LABEL_7;
    case 2:
      v11 = MEMORY[0x1E69E0E90];
      break;
    case 1:
      v9 = MEMORY[0x1E696AAE8];
      v10 = @"/System/Library/PrivateFrameworks/HomeKitDaemon.framework";
LABEL_7:
      v12 = [v9 bundleWithPath:v10];
      v13 = [v12 bundlePath];
      v14 = [v8 initWithEffectiveBundlePath:v13 delegate:v5 onQueue:v6];

      goto LABEL_10;
    default:
      v11 = MEMORY[0x1E69E0FB0];
      break;
  }

  v14 = [v7 initWithEffectiveBundleIdentifier:*v11 delegate:v5 onQueue:v6];
LABEL_10:

  return v14;
}

id getCLLocationManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCLLocationManagerClass_softClass;
  v7 = getCLLocationManagerClass_softClass;
  if (!getCLLocationManagerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCLLocationManagerClass_block_invoke;
    v3[3] = &unk_1E837FAC0;
    v3[4] = &v4;
    __getCLLocationManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1CA742474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCLLocationManagerClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!CoreLocationLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __CoreLocationLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E8375928;
    v9 = 0;
    CoreLocationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CoreLocationLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreLocationLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"CLLocationManager+Workflow.m" lineNumber:16 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("CLLocationManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCLLocationManagerClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"CLLocationManager+Workflow.m" lineNumber:17 description:{@"Unable to find class %s", "CLLocationManager"}];

LABEL_10:
    __break(1u);
  }

  getCLLocationManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CoreLocationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreLocationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t WFCLLocationManagerAuthorizationStatusForWorkflowEnvironment(uint64_t a1)
{
  CLLocationManagerClass = getCLLocationManagerClass();
  v3 = CLLocationManagerClass;
  switch(a1)
  {
    case 3:
      v4 = MEMORY[0x1E696AAE8];
      v5 = @"/System/Library/PrivateFrameworks/AssistantServices.framework";
      goto LABEL_7;
    case 2:
      v6 = MEMORY[0x1E69E0E90];
      break;
    case 1:
      v4 = MEMORY[0x1E696AAE8];
      v5 = @"/System/Library/PrivateFrameworks/HomeKitDaemon.framework";
LABEL_7:
      v7 = [v4 bundleWithPath:v5];
      v8 = [v3 authorizationStatusForBundle:v7];

      return v8;
    default:
      v6 = MEMORY[0x1E69E0FB0];
      break;
  }

  v10 = *v6;

  return [CLLocationManagerClass authorizationStatusForBundleIdentifier:v10];
}

void WFSetEffectiveBundleForMKLocationManager(void *a1, uint64_t a2)
{
  v3 = a1;
  v8 = v3;
  switch(a2)
  {
    case 3:
      v4 = MEMORY[0x1E696AAE8];
      v5 = @"/System/Library/PrivateFrameworks/AssistantServices.framework";
      goto LABEL_7;
    case 2:
      v6 = MEMORY[0x1E69E0E90];
      break;
    case 1:
      v4 = MEMORY[0x1E696AAE8];
      v5 = @"/System/Library/PrivateFrameworks/HomeKitDaemon.framework";
LABEL_7:
      v7 = [v4 bundleWithPath:v5];
      [v8 setEffectiveBundle:v7];

      goto LABEL_10;
    default:
      v6 = MEMORY[0x1E69E0FB0];
      break;
  }

  [v3 setEffectiveBundleIdentifier:*v6];
LABEL_10:
}

id WFMetricToImperialUnitMapping()
{
  v33[13] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DF58] currentLocale];
  v1 = [v0 countryCode];
  v2 = [v1 isEqualToString:@"US"];

  if (v2)
  {
    [MEMORY[0x1E696B088] pints];
  }

  else
  {
    [MEMORY[0x1E696B088] imperialPints];
  }
  v18 = ;
  v31 = [MEMORY[0x1E696B060] kilograms];
  v32[0] = v31;
  v30 = [MEMORY[0x1E696B060] poundsMass];
  v33[0] = v30;
  v29 = [MEMORY[0x1E696B060] grams];
  v32[1] = v29;
  v28 = [MEMORY[0x1E696B060] ounces];
  v33[1] = v28;
  v27 = [MEMORY[0x1E696B088] liters];
  v32[2] = v27;
  v26 = [MEMORY[0x1E696B088] quarts];
  v33[2] = v26;
  v25 = [MEMORY[0x1E696B088] liters];
  v32[3] = v25;
  v24 = [MEMORY[0x1E696B088] cups];
  v33[3] = v24;
  v23 = [MEMORY[0x1E696B088] liters];
  v32[4] = v23;
  v33[4] = v18;
  v22 = [MEMORY[0x1E696B088] liters];
  v32[5] = v22;
  v21 = [MEMORY[0x1E696B088] gallons];
  v33[5] = v21;
  v20 = [MEMORY[0x1E696B088] milliliters];
  v32[6] = v20;
  v19 = [MEMORY[0x1E696B088] fluidOunces];
  v33[6] = v19;
  v17 = [MEMORY[0x1E696B078] kilometersPerHour];
  v32[7] = v17;
  v16 = [MEMORY[0x1E696B078] milesPerHour];
  v33[7] = v16;
  v3 = [MEMORY[0x1E696B058] kilometers];
  v32[8] = v3;
  v4 = [MEMORY[0x1E696B058] miles];
  v33[8] = v4;
  v5 = [MEMORY[0x1E696B058] meters];
  v32[9] = v5;
  v6 = [MEMORY[0x1E696B058] feet];
  v33[9] = v6;
  v7 = [MEMORY[0x1E696B058] meters];
  v32[10] = v7;
  v8 = [MEMORY[0x1E696B058] yards];
  v33[10] = v8;
  v9 = [MEMORY[0x1E696B058] centimeters];
  v32[11] = v9;
  v10 = [MEMORY[0x1E696B058] inches];
  v33[11] = v10;
  v11 = [MEMORY[0x1E696B080] celsius];
  v32[12] = v11;
  v12 = [MEMORY[0x1E696B080] fahrenheit];
  v33[12] = v12;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:13];

  v13 = *MEMORY[0x1E69E9840];

  return v15;
}

id WFImperialToMetricUnitMapping()
{
  v32[14] = *MEMORY[0x1E69E9840];
  v30 = [MEMORY[0x1E696B060] poundsMass];
  v31[0] = v30;
  v29 = [MEMORY[0x1E696B060] kilograms];
  v32[0] = v29;
  v28 = [MEMORY[0x1E696B060] ounces];
  v31[1] = v28;
  v27 = [MEMORY[0x1E696B060] grams];
  v32[1] = v27;
  v26 = [MEMORY[0x1E696B088] quarts];
  v31[2] = v26;
  v25 = [MEMORY[0x1E696B088] liters];
  v32[2] = v25;
  v24 = [MEMORY[0x1E696B088] cups];
  v31[3] = v24;
  v23 = [MEMORY[0x1E696B088] liters];
  v32[3] = v23;
  v22 = [MEMORY[0x1E696B088] pints];
  v31[4] = v22;
  v21 = [MEMORY[0x1E696B088] liters];
  v32[4] = v21;
  v20 = [MEMORY[0x1E696B088] imperialPints];
  v31[5] = v20;
  v19 = [MEMORY[0x1E696B088] liters];
  v32[5] = v19;
  v18 = [MEMORY[0x1E696B088] gallons];
  v31[6] = v18;
  v17 = [MEMORY[0x1E696B088] liters];
  v32[6] = v17;
  v16 = [MEMORY[0x1E696B088] fluidOunces];
  v31[7] = v16;
  v15 = [MEMORY[0x1E696B088] milliliters];
  v32[7] = v15;
  v14 = [MEMORY[0x1E696B078] milesPerHour];
  v31[8] = v14;
  v13 = [MEMORY[0x1E696B078] kilometersPerHour];
  v32[8] = v13;
  v0 = [MEMORY[0x1E696B058] miles];
  v31[9] = v0;
  v1 = [MEMORY[0x1E696B058] kilometers];
  v32[9] = v1;
  v2 = [MEMORY[0x1E696B058] feet];
  v31[10] = v2;
  v3 = [MEMORY[0x1E696B058] meters];
  v32[10] = v3;
  v4 = [MEMORY[0x1E696B058] yards];
  v31[11] = v4;
  v5 = [MEMORY[0x1E696B058] meters];
  v32[11] = v5;
  v6 = [MEMORY[0x1E696B058] inches];
  v31[12] = v6;
  v7 = [MEMORY[0x1E696B058] centimeters];
  v32[12] = v7;
  v8 = [MEMORY[0x1E696B080] fahrenheit];
  v31[13] = v8;
  v9 = [MEMORY[0x1E696B080] celsius];
  v32[13] = v9;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:14];

  v10 = *MEMORY[0x1E69E9840];

  return v12;
}

id WFLNMeasurementValueTypeOfUnit(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [MEMORY[0x1E69AC8B0] lengthValueType];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = [MEMORY[0x1E69AC8B0] massValueType];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v2 = [MEMORY[0x1E69AC8B0] temperatureValueType];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v2 = [MEMORY[0x1E69AC8B0] volumeValueType];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v2 = [MEMORY[0x1E69AC8B0] speedValueType];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v2 = [MEMORY[0x1E69AC8B0] energyValueType];
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [MEMORY[0x1E69AC8B0] durationValueType];
              }

              else
              {
                [MEMORY[0x1E69AC8B0] unsupportedMeasurementValueType];
              }
              v2 = ;
            }
          }
        }
      }
    }
  }

  v3 = v2;

  return v3;
}

void sub_1CA7444C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location, char a28)
{
  objc_destroyWeak(&a26);
  objc_destroyWeak(&location);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose((v28 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12286(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getWFRemoteQuarantineLogObject()
{
  if (getWFRemoteQuarantineLogObject_onceToken != -1)
  {
    dispatch_once(&getWFRemoteQuarantineLogObject_onceToken, &__block_literal_global_12293);
  }

  v1 = getWFRemoteQuarantineLogObject_log;

  return v1;
}

void __getWFRemoteQuarantineLogObject_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69E1140], "RemoteQuarantine");
  v1 = getWFRemoteQuarantineLogObject_log;
  getWFRemoteQuarantineLogObject_log = v0;
}

void sub_1CA7450A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1CA7452DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

uint64_t WFShouldRequestAccessToFile(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  if ([v2 isEqualToString:*MEMORY[0x1E69E0FD8]])
  {
    if ([v1 code] == 10001)
    {

LABEL_7:
      v3 = 1;
      goto LABEL_8;
    }

    v4 = [v1 code];

    if (v4 == 10003)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v3 = 0;
LABEL_8:

  return v3;
}

void sub_1CA7478BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v8 - 144), 8);
  _Block_object_dispose((v8 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12631(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1CA747A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t WFPBCreateFolderEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v33 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          *(a1 + 36) |= 2u;
          while (1)
          {
            v34 = 0;
            v28 = [a2 position] + 1;
            if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
            {
              v30 = [a2 data];
              [v30 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v27 |= (v34 & 0x7F) << v25;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v11 = v26++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_52;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v27;
          }

LABEL_52:
          v31 = 32;
LABEL_53:
          *(a1 + v31) = v20;
          goto LABEL_54;
        }

        if (v13 != 6)
        {
LABEL_32:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_54;
        }

        v21 = PBReaderReadString();
        v22 = 8;
      }

      else
      {
        if (v13 != 1)
        {
          if (v13 != 2)
          {
            goto LABEL_32;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            v35 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v35 & 0x7F) << v14;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_48;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_48:
          v31 = 16;
          goto LABEL_53;
        }

        v21 = PBReaderReadString();
        v22 = 24;
      }

      v24 = *(a1 + v22);
      *(a1 + v22) = v21;

LABEL_54:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t WFPBRunShortcutErrorEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 4)
      {
        break;
      }

      if (v13 > 6)
      {
        if (v13 == 7)
        {
          v21 = PBReaderReadString();
          v22 = 48;
        }

        else
        {
          if (v13 != 8)
          {
LABEL_38:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_44;
          }

          v21 = PBReaderReadString();
          v22 = 16;
        }

        goto LABEL_43;
      }

      if (v13 == 5)
      {
        v21 = PBReaderReadString();
        v22 = 8;
LABEL_43:
        v24 = *(a1 + v22);
        *(a1 + v22) = v21;

        goto LABEL_44;
      }

      if (v13 != 6)
      {
        goto LABEL_38;
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 60) |= 1u;
      while (1)
      {
        v27 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v27 & 0x7F) << v14;
        if ((v27 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          LOBYTE(v20) = 0;
          goto LABEL_47;
        }
      }

      v20 = (v16 != 0) & ~[a2 hasError];
LABEL_47:
      *(a1 + 56) = v20;
LABEL_44:
      v25 = [a2 position];
      if (v25 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 1:
        v21 = PBReaderReadString();
        v22 = 40;
        break;
      case 3:
        v21 = PBReaderReadString();
        v22 = 32;
        break;
      case 4:
        v21 = PBReaderReadString();
        v22 = 24;
        break;
      default:
        goto LABEL_38;
    }

    goto LABEL_43;
  }

  return [a2 hasError] ^ 1;
}

__CFString *WFStringForDialogPresentationMode(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E8375AE8[a1];
  }
}

uint64_t WFPBShowFocusConfigurationEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = (v12 >> 3) - 1;
      if (v13 >= 4)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = off_1E8375B00[v13];
        v15 = PBReaderReadString();
        v16 = *v14;
        v17 = *(a1 + v16);
        *(a1 + v16) = v15;
      }

      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t WFREPBRunRequestProgressReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v21 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v21 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v21 & 0x7F) << v5;
        if ((v21 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = 0;
        v15 = [a2 position] + 8;
        if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
        {
          v18 = [a2 data];
          [v18 getBytes:&v20 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 16);
        *(a1 + 16) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v19 = [a2 position];
    }

    while (v19 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

Class initUIImageSymbolConfiguration()
{
  if (UIKitLibrary_sOnce != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce, &__block_literal_global_13628);
  }

  result = objc_getClass("UIImageSymbolConfiguration");
  classUIImageSymbolConfiguration = result;
  getUIImageSymbolConfigurationClass = UIImageSymbolConfigurationFunction;
  return result;
}

void *__UIKitLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/UIKit.framework/UIKit", 2);
  UIKitLibrary_sLib = result;
  return result;
}

Class initUIColor()
{
  if (UIKitLibrary_sOnce != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce, &__block_literal_global_13628);
  }

  result = objc_getClass("UIColor");
  classUIColor = result;
  getUIColorClass = UIColorFunction;
  return result;
}

void sub_1CA74DE84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13635(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1CA74E220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA74E45C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA74E9BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getISIconClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getISIconClass_softClass;
  v7 = getISIconClass_softClass;
  if (!getISIconClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getISIconClass_block_invoke;
    v3[3] = &unk_1E837FAC0;
    v3[4] = &v4;
    __getISIconClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1CA74EAA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getISImageDescriptorClass_block_invoke(uint64_t a1)
{
  IconServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("ISImageDescriptor");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getISImageDescriptorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getISImageDescriptorClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LNImage+Workflow.m" lineNumber:24 description:{@"Unable to find class %s", "ISImageDescriptor"}];

    __break(1u);
  }
}

void *__getkISImageDescriptorTableUINameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IconServicesLibrary();
  result = dlsym(v2, "kISImageDescriptorTableUIName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkISImageDescriptorTableUINameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *IconServicesLibrary()
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!IconServicesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __IconServicesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E8375B98;
    v7 = 0;
    IconServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = IconServicesLibraryCore_frameworkLibrary;
  if (!IconServicesLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *IconServicesLibrary(void)"];
    [v0 handleFailureInFunction:v4 file:@"LNImage+Workflow.m" lineNumber:22 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __IconServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  IconServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void __getISIconClass_block_invoke(uint64_t a1)
{
  IconServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("ISIcon");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getISIconClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getISIconClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LNImage+Workflow.m" lineNumber:23 description:{@"Unable to find class %s", "ISIcon"}];

    __break(1u);
  }
}

uint64_t __WFPresentResumeSyncConfirmationAlertWithUserInterfaceIfNeeded_block_invoke_2()
{
  [WFCloudKitSyncSession setZoneWasPurged:0];
  [WFCloudKitSyncSession setIgnoresUserDeletedZoneErrors:1];

  return [WFCloudKitSyncSession setSyncEnabled:0];
}

uint64_t __WFPresentResumeSyncConfirmationAlertWithUserInterfaceIfNeeded_block_invoke()
{
  [WFCloudKitSyncSession setZoneWasPurged:0];
  [WFCloudKitSyncSession setIgnoresUserDeletedZoneErrors:1];
  result = +[WFCloudKitSyncSession isSyncEnabled];
  if (result)
  {

    return notify_post("com.apple.shortcuts.daemon-wakeup-request");
  }

  return result;
}

uint64_t WFRemoteExecuteActionIfApplicable(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  if ([v11 requiresRemoteExecution])
  {
    v17 = +[WFRemoteExecutionCoordinator sharedCoordinator];
    v18 = [v17 hasPairedDevice];
    if (v18)
    {
      v19 = [[WFRemoteExecutionRunRequest alloc] initWithAction:v11 workflowControllerState:v12];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __WFRemoteExecuteActionIfApplicable_block_invoke;
      v21[3] = &unk_1E8375BE8;
      v22 = v11;
      v23 = v15;
      v24 = v17;
      v25 = v16;
      [v24 sendRunRequest:v19 userInterface:v13 parameterInputProvider:v14 completionHandler:v21];
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

void __WFRemoteExecuteActionIfApplicable_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = a2;
  v5 = a3;
  [*(a1 + 32) setDidRunRemotely:1];
  v6 = [v20 error];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  v9 = v8;

  v10 = objc_opt_new();
  [v10 setSource:*(a1 + 40)];
  v11 = [*(a1 + 48) pairedDeviceModelIdentifier];
  [v10 setDestinationType:v11];

  v12 = [*(a1 + 32) identifier];
  [v10 setActionIdentifier:v12];

  [v10 setCompleted:v5 != 0];
  [v10 track];
  if (v5)
  {
    v13 = objc_alloc_init(WFRemoteExecutionErrorEvent);
    [(WFRemoteExecutionErrorEvent *)v13 setSource:*(a1 + 40)];
    v14 = [*(a1 + 48) pairedDeviceModelIdentifier];
    [(WFRemoteExecutionErrorEvent *)v13 setDestinationType:v14];

    v15 = [v9 domain];
    [(WFRemoteExecutionErrorEvent *)v13 setErrorDomain:v15];

    v16 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v9, "code")}];
    v17 = [v16 stringValue];
    [(WFRemoteExecutionErrorEvent *)v13 setErrorCode:v17];

    [(WFEvent *)v13 track];
  }

  v18 = *(a1 + 56);
  if (v20)
  {
    v19 = [v20 output];
    (*(v18 + 16))(v18, v19, v9);
  }

  else
  {
    (*(v18 + 16))(v18, 0, v9);
  }
}

uint64_t WFPBShowWidgetConfigurationEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v21 = PBReaderReadString();
          v22 = 24;
          goto LABEL_36;
        }

        if (v13 == 2)
        {
          v21 = PBReaderReadString();
          v22 = 8;
LABEL_36:
          v23 = *(a1 + v22);
          *(a1 + v22) = v21;

          goto LABEL_37;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v21 = PBReaderReadString();
            v22 = 16;
            goto LABEL_36;
          case 4:
            v21 = PBReaderReadString();
            v22 = 32;
            goto LABEL_36;
          case 5:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 44) |= 1u;
            while (1)
            {
              v27 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v27 & 0x7F) << v14;
              if ((v27 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                LOBYTE(v20) = 0;
                goto LABEL_42;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_42:
            *(a1 + 40) = v20;
            goto LABEL_37;
        }
      }

      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

LABEL_37:
      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t WFREPBStopRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t WFPBBrowseGalleryCategoryEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR___WFPBBrowseGalleryCategoryEvent__galleryCategoryIdentifier;
LABEL_21:
        v14 = PBReaderReadString();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___WFPBBrowseGalleryCategoryEvent__key;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t __Block_byref_object_copy__15279(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1CA75D834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void WFMigrateContactFieldValueParameterValue(void *a1, unsigned int a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [a1 objectForKey:@"Value"];
  v3 = [v2 objectForKey:@"WFContactFieldValues"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v3;
    v15 = v2;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v18;
      do
      {
        v8 = 0;
        do
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v17 + 1) + 8 * v8);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = [v9 objectForKey:@"WFContactProperty"];
            v11 = [v10 isEqual:&unk_1F4A9A228];

            if (v11)
            {
              v12 = [MEMORY[0x1E696AD98] numberWithInt:a2];
              [v9 setObject:v12 forKey:@"WFContactProperty"];

              [v9 setObject:&unk_1F4A9A240 forKey:@"WFContactMultivalue"];
            }
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v6);
    }

    v3 = v14;
    v2 = v15;
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t WFREPBAceCommandRequestResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v19[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19[0] & 0x7F) << v5;
        if ((v19[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v14 = PBReaderReadData();
        v15 = 8;
LABEL_22:
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;
LABEL_26:

        goto LABEL_28;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = 24;
        goto LABEL_22;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_28:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v16 = objc_alloc_init(WFREPBError);
    objc_storeStrong((a1 + 16), v16);
    v19[0] = 0;
    v19[1] = 0;
    if (!PBReaderPlaceMark() || !WFREPBErrorReadFrom(v16, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

id WFContactPropertySetFromContactFieldProperties(void *a1)
{
  v1 = MEMORY[0x1E695DFD8];
  v2 = [a1 if_compactMap:&__block_literal_global_15736];
  v3 = [v1 setWithArray:v2];

  return v3;
}

void *__WFContactPropertySetFromContactFieldProperties_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isEqualToString:@"Email"])
  {
    v3 = &unk_1F4A9A258;
  }

  else if ([v2 isEqualToString:@"Phone"])
  {
    v3 = &unk_1F4A9A270;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void WFAddEntriesToDictionary(void *a1, void *a2, void *a3)
{
  v11 = a3;
  v5 = a2;
  v6 = a1;
  v7 = [v6 objectForKeyedSubscript:v5];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 definitionByAddingEntriesInDictionary:v11];
  }

  else
  {
    v9 = [[WFParameterDefinition alloc] initWithDictionary:v11];
  }

  v10 = v9;
  [v6 setObject:v9 forKeyedSubscript:v5];
}

void sub_1CA76BBE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1CA76BDD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  objc_destroyWeak((v9 + 40));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__16341(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id initUIApplicationDidBecomeActiveNotification()
{
  if (UIKitLibrary_sOnce_16345 != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce_16345, &__block_literal_global_16346);
  }

  v0 = dlsym(UIKitLibrary_sLib_16347, "UIApplicationDidBecomeActiveNotification");
  if (!v0)
  {
    __assert_rtn("initUIApplicationDidBecomeActiveNotification", "WFInterchangeAppRegistry.m", 25, "constant");
  }

  objc_storeStrong(&constantUIApplicationDidBecomeActiveNotification, *v0);
  getUIApplicationDidBecomeActiveNotification = UIApplicationDidBecomeActiveNotificationFunction;
  v1 = constantUIApplicationDidBecomeActiveNotification;

  return v1;
}

void *__UIKitLibrary_block_invoke_16352()
{
  result = dlopen("/System/Library/Frameworks/UIKit.framework/UIKit", 2);
  UIKitLibrary_sLib_16347 = result;
  return result;
}

id WFEnforceClass_17313(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = getWFGeneralLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v9 = 136315906;
      v10 = "WFEnforceClass";
      v11 = 2114;
      v12 = v3;
      v13 = 2114;
      v14 = objc_opt_class();
      v15 = 2114;
      v16 = a2;
      v6 = v14;
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_FAULT, "%s Could not create bookmark (%@) for data backed file value falling back to URL backing", &v9, 0x2Au);
    }

    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v4;
}

void sub_1CA7710BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getFPSandboxingURLWrapperClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!FileProviderLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __FileProviderLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E8376080;
    v9 = 0;
    FileProviderLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!FileProviderLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *FileProviderLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFFileValue.m" lineNumber:26 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("FPSandboxingURLWrapper");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getFPSandboxingURLWrapperClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFFileValue.m" lineNumber:27 description:{@"Unable to find class %s", "FPSandboxingURLWrapper"}];

LABEL_10:
    __break(1u);
  }

  getFPSandboxingURLWrapperClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __FileProviderLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  FileProviderLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t WFPBRenameShortcutEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR___WFPBRenameShortcutEvent__source;
LABEL_21:
        v14 = PBReaderReadString();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___WFPBRenameShortcutEvent__key;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

id WFDisplayNameForDeviceIdiom(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 <= 2)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v6 = @"iPad";
      }

      else
      {
        if (a1 != 2)
        {
          goto LABEL_23;
        }

        v6 = @"Mac";
      }

      goto LABEL_22;
    }

    goto LABEL_12;
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      v6 = @"Apple Vision Pro";
    }

    else
    {
      if (a1 != 6)
      {
        goto LABEL_23;
      }

      v6 = @"HomePod";
    }
  }

  else
  {
    if (a1 != 3)
    {
LABEL_12:
      v7 = [v3 isEqualToString:@"NotAvailableOnSpecifiedPlatform"];
      v8 = @"iPod touch";
      if (a1 != 4)
      {
        v8 = @"iPhone or iPod touch";
      }

      if (!a1)
      {
        v8 = @"iPhone";
      }

      if (v7)
      {
        v6 = v8;
      }

      else
      {
        v6 = @"iPhone or iPod touch";
      }

      goto LABEL_22;
    }

    v6 = @"Apple Watch";
  }

LABEL_22:
  v5 = WFLocalizedString(v6);
LABEL_23:

  return v5;
}

void sub_1CA7751D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__18089(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1CA777478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52)
{
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose(&a52, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__18191(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1CA777D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id WFContentLocationByAccessResourceIdentifier()
{
  v34[30] = *MEMORY[0x1E69E9840];
  v33[0] = @"WFAddToReadingListAccessResource";
  v32 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0F10]];
  v34[0] = v32;
  v33[1] = @"WFAppleMusicAccessResource";
  v31 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0ED0]];
  v34[1] = v31;
  v33[2] = @"WFCameraAccessResource";
  v30 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0E50]];
  v34[2] = v30;
  v33[3] = @"WFCalendarAccessResource";
  v29 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0E48]];
  v34[3] = v29;
  v33[4] = @"WFContactAccessResource";
  v28 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0E58]];
  v34[4] = v28;
  v33[5] = @"WFEvernoteAccessResource";
  v27 = [MEMORY[0x1E6996F90] evernoteLocation];
  v34[5] = v27;
  v33[6] = @"WFHealthKitAccessResource";
  v26 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0E88]];
  v34[6] = v26;
  v33[7] = @"WFHomeKitAccessResource";
  v25 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0E90]];
  v34[7] = v25;
  v33[8] = @"WFiCloudDriveAccessResource";
  v24 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0E68]];
  v34[8] = v24;
  v33[9] = @"WFImgurAccessResource";
  v23 = [MEMORY[0x1E6996F90] imgurLocation];
  v34[9] = v23;
  v33[10] = @"WFInstapaperAccessResource";
  v22 = [MEMORY[0x1E6996F90] instapaperLocation];
  v34[10] = v22;
  v33[11] = @"WFLocalNotificationAccessResource";
  v21 = [MEMORY[0x1E6996D78] notificationLocation];
  v34[11] = v21;
  v33[12] = @"WFLocationAccessResource";
  v20 = [MEMORY[0x1E6996D78] locationLocation];
  v34[12] = v20;
  v33[13] = @"WFMessagesAccessResource";
  v19 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0EB8]];
  v34[13] = v19;
  v33[14] = @"WFMicrophoneAccessResource";
  v18 = [MEMORY[0x1E6996D78] microphoneLocation];
  v34[14] = v18;
  v33[15] = @"WFPhotoAccessResource";
  v17 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0EF0]];
  v34[15] = v17;
  v33[16] = @"WFPinboardAccessResource";
  v16 = [MEMORY[0x1E6996F90] pinboardLocation];
  v34[16] = v16;
  v33[17] = @"WFPocketAccessResource";
  v15 = [MEMORY[0x1E6996F90] pocketLocation];
  v34[17] = v15;
  v33[18] = @"WFPodcastsAccessResource";
  v14 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0EF8]];
  v34[18] = v14;
  v33[19] = @"WFReminderAccessResource";
  v13 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0F08]];
  v34[19] = v13;
  v33[20] = @"WFRequestPaymentAccessResource";
  v0 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0FA0]];
  v34[20] = v0;
  v33[21] = @"WFRunShortcutsAccessResource";
  v1 = [MEMORY[0x1E6996D78] shortcutsAppLocation];
  v34[21] = v1;
  v33[22] = @"WFScreenshotAccessResource";
  v2 = [MEMORY[0x1E6996C90] screenshotLocation];
  v34[22] = v2;
  v33[23] = @"WFSendEmailAccessResource";
  v3 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0EA0]];
  v34[23] = v3;
  v33[24] = @"WFShortcutsAccessResource";
  v4 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0FB0] promptingBehaviour:1];
  v34[24] = v4;
  v33[25] = @"WFSpeechRecognitionAccessResource";
  v5 = [MEMORY[0x1E6996D78] speechRecognitionLocation];
  v34[25] = v5;
  v33[26] = @"WFStartCallAccessResource";
  v6 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0EC0]];
  v34[26] = v6;
  v33[27] = @"WFTrelloAccessResource";
  v7 = [MEMORY[0x1E6996F90] trelloLocation];
  v34[27] = v7;
  v33[28] = @"WFTumblrAccessResource";
  v8 = [MEMORY[0x1E6996F90] tumblrLocation];
  v34[28] = v8;
  v33[29] = @"WFWallpaperModificationAccessResource";
  v9 = [MEMORY[0x1E6996D78] wallpaperLocation];
  v34[29] = v9;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:30];

  v10 = *MEMORY[0x1E69E9840];

  return v12;
}

id WFContentLocationToActionIdentifierMapping()
{
  v32[28] = *MEMORY[0x1E69E9840];
  v30 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0E48]];
  v31[0] = v30;
  v32[0] = &unk_1F4A9B1E8;
  v29 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0E58]];
  v31[1] = v29;
  v32[1] = &unk_1F4A9B200;
  v28 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0E88]];
  v31[2] = v28;
  v32[2] = &unk_1F4A9B218;
  v27 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0E90]];
  v31[3] = v27;
  v32[3] = &unk_1F4A9B230;
  v26 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0EA0]];
  v31[4] = v26;
  v32[4] = &unk_1F4A9B248;
  v25 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0EB8]];
  v31[5] = v25;
  v32[5] = &unk_1F4A9B260;
  v24 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0EC0]];
  v31[6] = v24;
  v32[6] = &unk_1F4A9B278;
  v23 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0ED0]];
  v31[7] = v23;
  v32[7] = &unk_1F4A9B290;
  v22 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0EE8]];
  v31[8] = v22;
  v32[8] = &unk_1F4A9B2A8;
  v21 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0EF0]];
  v31[9] = v21;
  v32[9] = &unk_1F4A9B2C0;
  v20 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0EF8]];
  v31[10] = v20;
  v32[10] = &unk_1F4A9B2D8;
  v19 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0F08]];
  v31[11] = v19;
  v32[11] = &unk_1F4A9B2F0;
  v18 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0F10]];
  v31[12] = v18;
  v32[12] = &unk_1F4A9B308;
  v17 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0FA0]];
  v31[13] = v17;
  v32[13] = &unk_1F4A9B320;
  v16 = [MEMORY[0x1E6996F90] evernoteLocation];
  v31[14] = v16;
  v32[14] = &unk_1F4A9B338;
  v15 = [MEMORY[0x1E6996F90] imgurLocation];
  v31[15] = v15;
  v32[15] = &unk_1F4A9B350;
  v14 = [MEMORY[0x1E6996F90] instapaperLocation];
  v31[16] = v14;
  v32[16] = &unk_1F4A9B368;
  v13 = [MEMORY[0x1E6996D78] notificationLocation];
  v31[17] = v13;
  v32[17] = &unk_1F4A9B380;
  v0 = [MEMORY[0x1E6996D78] locationLocation];
  v31[18] = v0;
  v32[18] = &unk_1F4A9B398;
  v1 = [MEMORY[0x1E6996D78] microphoneLocation];
  v31[19] = v1;
  v32[19] = &unk_1F4A9B3B0;
  v2 = [MEMORY[0x1E6996F90] pinboardLocation];
  v31[20] = v2;
  v32[20] = &unk_1F4A9B3C8;
  v3 = [MEMORY[0x1E6996F90] pocketLocation];
  v31[21] = v3;
  v32[21] = &unk_1F4A9B3E0;
  v4 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0FB0] promptingBehaviour:1];
  v31[22] = v4;
  v32[22] = &unk_1F4A9B3F8;
  v5 = [MEMORY[0x1E6996C90] screenshotLocation];
  v31[23] = v5;
  v32[23] = &unk_1F4A9B410;
  v6 = [MEMORY[0x1E6996D78] speechRecognitionLocation];
  v31[24] = v6;
  v32[24] = &unk_1F4A9B428;
  v7 = [MEMORY[0x1E6996F90] trelloLocation];
  v31[25] = v7;
  v32[25] = &unk_1F4A9B440;
  v8 = [MEMORY[0x1E6996F90] tumblrLocation];
  v31[26] = v8;
  v32[26] = &unk_1F4A9B458;
  v9 = [MEMORY[0x1E6996D78] wallpaperLocation];
  v31[27] = v9;
  v32[27] = &unk_1F4A9B470;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:28];

  v10 = *MEMORY[0x1E69E9840];

  return v12;
}

uint64_t WFPBAddShortcutEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = 32;
          goto LABEL_36;
        }

        if (v13 == 3)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 48) |= 1u;
          while (1)
          {
            v27 = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v27 & 0x7F) << v16;
            if ((v27 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_44;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v18;
          }

LABEL_44:
          *(a1 + 8) = v22;
          goto LABEL_37;
        }
      }

      else
      {
        switch(v13)
        {
          case 4:
            v14 = PBReaderReadString();
            v15 = 16;
            goto LABEL_36;
          case 5:
            v14 = PBReaderReadString();
            v15 = 24;
            goto LABEL_36;
          case 6:
            v14 = PBReaderReadString();
            v15 = 40;
LABEL_36:
            v23 = *(a1 + v15);
            *(a1 + v15) = v14;

            goto LABEL_37;
        }
      }

      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

LABEL_37:
      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1CA77E3E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__19437(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getWFWFRecordLogObject()
{
  if (getWFWFRecordLogObject_onceToken != -1)
  {
    dispatch_once(&getWFWFRecordLogObject_onceToken, &__block_literal_global_19665);
  }

  v1 = getWFWFRecordLogObject_log;

  return v1;
}

void __getWFWFRecordLogObject_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69E1140], "WFRecord");
  v1 = getWFWFRecordLogObject_log;
  getWFWFRecordLogObject_log = v0;
}

id WFShortcutPackageFileFailedToSignShortcutFileError()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A578];
  v1 = WFLocalizedString(@"Failed to sign shortcut");
  v7[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v3 = [v0 errorWithDomain:@"WFWorkflowErrorDomain" code:4 userInfo:v2];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

void sub_1CA784378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  (*(a10 + 16))();
  (*(a12 + 16))();
  (*(v12 + 16))(v12);
  _Unwind_Resume(a1);
}

id WFShortcutPackageFileInvalidShortcutFileError()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A578];
  v1 = WFLocalizedString(@"Invalid shortcut file");
  v7[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v3 = [v0 errorWithDomain:@"WFWorkflowErrorDomain" code:3 userInfo:v2];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

void sub_1CA784ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  (*(a13 + 16))();
  (*(v13 + 16))(v13);
  _Unwind_Resume(a1);
}

id WFShortcutPackageFileFailedToExtractShortcutFileError()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A578];
  v1 = WFLocalizedString(@"Failed to extract the shortcut file data");
  v7[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v3 = [v0 errorWithDomain:@"WFWorkflowErrorDomain" code:6 userInfo:v2];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

void sub_1CA7853A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 144), 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__20357(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t WFPBPersonalAutomationSuggestionEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v39 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v39 & 0x7F) << v5;
        if ((v39 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 4)
      {
        if (v13 > 2)
        {
          if (v13 != 3)
          {
            if (v13 != 4)
            {
              goto LABEL_63;
            }

            v16 = 0;
            v17 = 0;
            v18 = 0;
            *(a1 + 60) |= 4u;
            while (1)
            {
              v42 = 0;
              v19 = [a2 position] + 1;
              if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
              {
                v21 = [a2 data];
                [v21 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v18 |= (v42 & 0x7F) << v16;
              if ((v42 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v11 = v17++ >= 9;
              if (v11)
              {
                LOBYTE(v22) = 0;
                goto LABEL_66;
              }
            }

            v22 = (v18 != 0) & ~[a2 hasError];
LABEL_66:
            v37 = 58;
LABEL_71:
            *(a1 + v37) = v22;
            goto LABEL_72;
          }

          v14 = PBReaderReadString();
          v15 = 40;
        }

        else if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = 32;
        }

        else
        {
          if (v13 != 2)
          {
            goto LABEL_63;
          }

          v14 = PBReaderReadString();
          v15 = 24;
        }
      }

      else
      {
        if (v13 <= 6)
        {
          if (v13 == 5)
          {
            v29 = 0;
            v30 = 0;
            v31 = 0;
            *(a1 + 60) |= 2u;
            while (1)
            {
              v41 = 0;
              v32 = [a2 position] + 1;
              if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
              {
                v34 = [a2 data];
                [v34 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v31 |= (v41 & 0x7F) << v29;
              if ((v41 & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v11 = v30++ >= 9;
              if (v11)
              {
                LOBYTE(v22) = 0;
                goto LABEL_70;
              }
            }

            v22 = (v31 != 0) & ~[a2 hasError];
LABEL_70:
            v37 = 57;
          }

          else
          {
            if (v13 != 6)
            {
LABEL_63:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_72;
            }

            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 60) |= 1u;
            while (1)
            {
              v40 = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v40 & 0x7F) << v23;
              if ((v40 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                LOBYTE(v22) = 0;
                goto LABEL_68;
              }
            }

            v22 = (v25 != 0) & ~[a2 hasError];
LABEL_68:
            v37 = 56;
          }

          goto LABEL_71;
        }

        switch(v13)
        {
          case 7:
            v14 = PBReaderReadString();
            v15 = 16;
            break;
          case 8:
            v14 = PBReaderReadString();
            v15 = 8;
            break;
          case 9:
            v14 = PBReaderReadString();
            v15 = 48;
            break;
          default:
            goto LABEL_63;
        }
      }

      v35 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_72:
      v38 = [a2 position];
    }

    while (v38 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1CA78928C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a33, 8);
  if (a2 == 1)
  {
    v37 = objc_begin_catch(a1);
    v38 = getWFTestHarnessLogObject();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
    {
      *(v34 - 192) = 136315394;
      v39 = v34 - 192;
      *(v39 + 4) = "[WFHarnessTestRunDescriptor loadTestCaseWithError:]";
      *(v34 - 180) = 2112;
      *(v39 + 14) = v37;
      _os_log_impl(&dword_1CA256000, v38, OS_LOG_TYPE_FAULT, "%s Exception thrown while constructing and calling test invocation method: %@", (v34 - 192), 0x16u);
    }

    if (v33)
    {
      *v33 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    }

    objc_end_catch();
    JUMPOUT(0x1CA788A7CLL);
  }

  (*(a14 + 16))();
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__20765(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1CA78A1F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__20844(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL WFErrorIsRemoteQuarantineDenialError(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  if ([v2 isEqualToString:@"WFRemoteQuarantineErrorDomain"])
  {
    v3 = [v1 code] == 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id WFAddRecoveryOptionsToRemoteQuarantineDenialError(void *a1, void *a2)
{
  v21[2] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (WFErrorIsRemoteQuarantineDenialError(v3))
  {
    v5 = [v3 userInfo];
    v6 = [v5 mutableCopy];

    v7 = WFLocalizedString(@"Cancel");
    v21[0] = v7;
    v8 = WFLocalizedString(@"Delete");
    v21[1] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
    [v6 setObject:v9 forKeyedSubscript:*MEMORY[0x1E696A590]];

    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:1];
    [v6 setObject:v10 forKeyedSubscript:*MEMORY[0x1E6997068]];

    v11 = objc_alloc(MEMORY[0x1E6996CB8]);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __WFAddRecoveryOptionsToRemoteQuarantineDenialError_block_invoke;
    v18[3] = &unk_1E8376740;
    v20 = 1;
    v19 = v4;
    v12 = [v11 initWithHandlerBlock:v18];
    [v6 setObject:v12 forKeyedSubscript:*MEMORY[0x1E696A8A8]];
    [v6 setObject:v12 forKeyedSubscript:*MEMORY[0x1E6997138]];
    v13 = MEMORY[0x1E696ABC0];
    v14 = [v3 domain];
    v15 = [v13 errorWithDomain:v14 code:objc_msgSend(v3 userInfo:{"code"), v6}];
  }

  else
  {
    v15 = v3;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

void __WFAddRecoveryOptionsToRemoteQuarantineDenialError_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (*(a1 + 40) == a3)
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 16);
    v8 = a5;
    v7(v6);
    v8[2](v8, 1, 0);
  }
}

void sub_1CA78BF38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__21068(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1CA78F288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1CA7901C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1CA790928(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 88));
  _Unwind_Resume(a1);
}

void sub_1CA791F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA79401C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAFIsPersistentSiriAvailableSymbolLoc_block_invoke(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!AssistantServicesLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __AssistantServicesLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E8376A70;
    v8 = 0;
    AssistantServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = AssistantServicesLibraryCore_frameworkLibrary;
  if (!AssistantServicesLibraryCore_frameworkLibrary)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AssistantServicesLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"WFAssistantServicesWrapper.m" lineNumber:13 description:{@"%s", v6[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v6[0];
  if (v6[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "AFIsPersistentSiriAvailable");
  *(*(a1[4] + 8) + 24) = result;
  getAFIsPersistentSiriAvailableSymbolLoc_ptr = *(*(a1[4] + 8) + 24);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __AssistantServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AssistantServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1CA794428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1CA795190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__22356(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1CA799E94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getWFLaunchAngelLogObject()
{
  if (getWFLaunchAngelLogObject_onceToken != -1)
  {
    dispatch_once(&getWFLaunchAngelLogObject_onceToken, &__block_literal_global_22766);
  }

  v1 = getWFLaunchAngelLogObject_log;

  return v1;
}

void __getWFLaunchAngelLogObject_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69E1140], "LaunchAngel");
  v1 = getWFLaunchAngelLogObject_log;
  getWFLaunchAngelLogObject_log = v0;
}

uint64_t WFBundleIdentifierIsTerminalApp(void *a1)
{
  v1 = WFBundleIdentifierIsTerminalApp_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&WFBundleIdentifierIsTerminalApp_onceToken, &__block_literal_global_22864);
  }

  v3 = [WFBundleIdentifierIsTerminalApp_terminals containsObject:v2];

  return v3;
}

void __WFBundleIdentifierIsTerminalApp_block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{@"com.apple.Terminal", @"com.googlecode.iterm2", @"dev.warp.Warp-Stable", @"dev.commandline.waveterm", @"org.alacritty", @"dev.archipelago", @"org.contourterminal.Contour", @"com.yourcompany.cool-retro-term", @"com.mitchellh.ghostty", @"co.zeit.hyper", @"net.kovidgoyal.kitty", @"com.raphaelamorim.rio", @"org.tabby", @"app.termora", @"com.github.wez.wezterm", 0}];
  v1 = WFBundleIdentifierIsTerminalApp_terminals;
  WFBundleIdentifierIsTerminalApp_terminals = v0;
}

id WFLaunchDeniedErrorForLocalizedTerminalAppName(void *a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696ABC0];
  v10 = *MEMORY[0x1E696A578];
  v2 = MEMORY[0x1E696AEC0];
  v3 = a1;
  v4 = WFLocalizedString(@"The action could not run because it attempted to open a file in “%@”, but “Allow Running Scripts” is disabled in the Shortcuts settings.");
  v5 = [v2 stringWithFormat:v4, v3, v10];

  v11[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v1 errorWithDomain:@"WFActionErrorDomain" code:12 userInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

uint64_t WFPBRemoteWidgetConfigurationEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = (v12 >> 3) - 1;
      if (v13 >= 4)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = off_1E8376DF8[v13];
        v15 = PBReaderReadString();
        v16 = *v14;
        v17 = *(a1 + v16);
        *(a1 + v16) = v15;
      }

      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

Class initUIPasteboard()
{
  if (UIKitLibrary_sOnce_23061 != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce_23061, &__block_literal_global_23062);
  }

  result = objc_getClass("UIPasteboard");
  classUIPasteboard = result;
  getUIPasteboardClass = UIPasteboardFunction;
  return result;
}

void *__UIKitLibrary_block_invoke_23066()
{
  result = dlopen("/System/Library/Frameworks/UIKit.framework/UIKit", 2);
  UIKitLibrary_sLib_23068 = result;
  return result;
}

void __getPRSServiceClass_block_invoke(uint64_t a1)
{
  PosterBoardServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PRSService");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPRSServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPRSServiceClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFPosterService.m" lineNumber:31 description:{@"Unable to find class %s", "PRSService"}];

    __break(1u);
  }
}

void PosterBoardServicesLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!PosterBoardServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __PosterBoardServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E8376E98;
    v6 = 0;
    PosterBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!PosterBoardServicesLibraryCore_frameworkLibrary)
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PosterBoardServicesLibrary(void)"];
    [v2 handleFailureInFunction:v3 file:@"WFPosterService.m" lineNumber:30 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t __PosterBoardServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PosterBoardServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1CA79DF94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getPRSExternalSystemServiceClass_block_invoke(uint64_t a1)
{
  PosterBoardServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PRSExternalSystemService");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPRSExternalSystemServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPRSExternalSystemServiceClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFPosterService.m" lineNumber:32 description:{@"Unable to find class %s", "PRSExternalSystemService"}];

    __break(1u);
  }
}

id WFSanitizedPostersError(void *a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    v6 = 0;
    goto LABEL_10;
  }

  v5 = [v3 domain];
  if ([v5 hasPrefix:@"com.apple.PosterBoard"])
  {
  }

  else
  {
    v7 = [v3 domain];
    v8 = [v7 isEqualToString:@"BSServiceConnectionErrorDomain"];

    if (!v8)
    {
      v6 = v3;
      goto LABEL_10;
    }
  }

  v9 = getWFActionsLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v23 = "WFSanitizedPostersError";
    v24 = 2112;
    v25 = v4;
    v26 = 2112;
    v27 = v3;
    _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_DEFAULT, "%s %@ failed with error: %@, being remapped to user-facing error", buf, 0x20u);
  }

  v10 = MEMORY[0x1E696AEC0];
  v11 = WFLocalizedString(@"Unable to %@");
  v12 = [v10 localizedStringWithFormat:v11, v4];

  v13 = MEMORY[0x1E696ABC0];
  v14 = *MEMORY[0x1E696A588];
  v21[0] = v12;
  v15 = *MEMORY[0x1E696A578];
  v20[0] = v14;
  v20[1] = v15;
  v16 = WFLocalizedString(@"An unknown error occurred while performing the operation.");
  v21[1] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v6 = [v13 errorWithDomain:@"com.apple.shortcuts.poster-service" code:1 userInfo:v17];

LABEL_10:
  v18 = *MEMORY[0x1E69E9840];

  return v6;
}

void sub_1CA79E9D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getALCityManagerClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!AppSupportLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __AppSupportLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E8376F10;
    v9 = 0;
    AppSupportLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AppSupportLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AppSupportLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFTimeZonePickerParameter.m" lineNumber:18 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("ALCityManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getALCityManagerClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFTimeZonePickerParameter.m" lineNumber:19 description:{@"Unable to find class %s", "ALCityManager"}];

LABEL_10:
    __break(1u);
  }

  getALCityManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __AppSupportLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AppSupportLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id WFINObjectFromSerializedRepresentation(void *a1, objc_class *a2)
{
  v3 = a1;
  v4 = objc_opt_class();
  v5 = WFEnforceClass_1501(v3, v4);

  v6 = [v5 objectForKeyedSubscript:@"Identifier"];
  v7 = objc_opt_class();
  v8 = WFEnforceClass_1501(v6, v7);

  v9 = [v5 objectForKeyedSubscript:@"DisplayString"];
  v10 = objc_opt_class();
  v11 = WFEnforceClass_1501(v9, v10);

  if (v11)
  {
    v12 = [a2 alloc];
    v13 = [v12 wf_initWithIdentifier:v8 displayString:v11];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id WFSerializedRepresentationFromWFINObject(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v3 = [v1 spokenPhrase];
  [v2 setObject:v3 forKey:@"DisplayString"];

  v4 = [v1 vocabularyIdentifier];

  [v2 setValue:v4 forKey:@"Identifier"];

  return v2;
}

id WFRunnerFailureErrorMessage(void *a1)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = MEMORY[0x1E696AEC0];
    v3 = WFLocalizedString(@"Couldn’t Run “%@”");
    v4 = [v2 localizedStringWithFormat:v3, v1];
  }

  else
  {
    v4 = WFLocalizedString(@"Couldn’t run shortcut");
  }

  v5 = WFLocalizedString(@"The action couldn’t run because the runner quit unexpectedly.");
  v6 = MEMORY[0x1E696ABC0];
  v7 = *MEMORY[0x1E6997158];
  v8 = *MEMORY[0x1E696A578];
  v13[0] = *MEMORY[0x1E696A588];
  v13[1] = v8;
  v14[0] = v4;
  v14[1] = v5;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v10 = [v6 errorWithDomain:v7 code:1 userInfo:v9];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

void sub_1CA7AC3C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 256), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__24935(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getWFActionRegistryLogObject()
{
  if (getWFActionRegistryLogObject_onceToken != -1)
  {
    dispatch_once(&getWFActionRegistryLogObject_onceToken, &__block_literal_global_25468);
  }

  v1 = getWFActionRegistryLogObject_log;

  return v1;
}

void __getWFActionRegistryLogObject_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69E1140], "ActionRegistry");
  v1 = getWFActionRegistryLogObject_log;
  getWFActionRegistryLogObject_log = v0;
}

uint64_t __Block_byref_object_copy__25502(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1CA7B4364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  _Block_object_dispose((v51 - 160), 8);
  _Block_object_dispose(&a51, 8);
  _Unwind_Resume(a1);
}

uint64_t WFErrorIsExpiredCertificateError(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    IsExpiredCertificateError = 0;
    goto LABEL_8;
  }

  v3 = [v1 domain];
  if (![v3 isEqualToString:*MEMORY[0x1E696A768]])
  {

    goto LABEL_7;
  }

  v4 = [v2 code];

  if (v4 != -67818)
  {
LABEL_7:
    v6 = [v2 userInfo];
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];
    IsExpiredCertificateError = WFErrorIsExpiredCertificateError();

    goto LABEL_8;
  }

  IsExpiredCertificateError = 1;
LABEL_8:

  return IsExpiredCertificateError;
}

void sub_1CA7B6B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getREMDisplayNameUtilsClass_block_invoke(uint64_t a1)
{
  ReminderKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("REMDisplayNameUtils");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getREMDisplayNameUtilsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getREMDisplayNameUtilsClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFRemindersListPickerParameter.m" lineNumber:26 description:{@"Unable to find class %s", "REMDisplayNameUtils"}];

    __break(1u);
  }
}

void ReminderKitLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!ReminderKitLibraryCore_frameworkLibrary_25830)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __ReminderKitLibraryCore_block_invoke_25831;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E83777B0;
    v6 = 0;
    ReminderKitLibraryCore_frameworkLibrary_25830 = _sl_dlopen();
  }

  if (!ReminderKitLibraryCore_frameworkLibrary_25830)
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ReminderKitLibrary(void)"];
    [v2 handleFailureInFunction:v3 file:@"WFRemindersListPickerParameter.m" lineNumber:24 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t __ReminderKitLibraryCore_block_invoke_25831(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ReminderKitLibraryCore_frameworkLibrary_25830 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id getREMStoreClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getREMStoreClass_softClass;
  v7 = getREMStoreClass_softClass;
  if (!getREMStoreClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getREMStoreClass_block_invoke;
    v3[3] = &unk_1E837FAC0;
    v3[4] = &v4;
    __getREMStoreClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1CA7B7448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getREMStoreClass_block_invoke(uint64_t a1)
{
  ReminderKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("REMStore");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getREMStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getREMStoreClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFRemindersListPickerParameter.m" lineNumber:25 description:{@"Unable to find class %s", "REMStore"}];

    __break(1u);
  }
}

uint64_t __Block_byref_object_copy__26657(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void WFMigratePaymentActionCurrencyAmount(void *a1)
{
  v10 = a1;
  v1 = [v10 objectForKeyedSubscript:@"WFVenmoActionAmount"];
  if (v1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ([v1 objectForKey:@"WFSerializationType"], v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "isEqualToString:", @"WFQuantityFieldValue"), v2, (v3 & 1) == 0))
    {
      v4 = [(WFVariableSubstitutableParameterState *)[WFNumberStringSubstitutableState alloc] initWithSerializedRepresentation:v1 variableProvider:0 parameter:0];
      v5 = [WFQuantityParameterState alloc];
      v6 = [MEMORY[0x1E695DF58] currentLocale];
      v7 = [v6 currencyCode];
      v8 = [(WFQuantityParameterState *)v5 initWithMagnitudeState:v4 unitString:v7];

      v9 = [(WFQuantityParameterState *)v8 serializedRepresentation];
      [v10 setObject:v9 forKeyedSubscript:@"WFVenmoActionAmount"];
    }
  }
}

id WFLinkActionSerializedParametersForWFAction(void *a1, void *a2, void *a3)
{
  v70 = *MEMORY[0x1E69E9840];
  v50 = a1;
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v44 = [MEMORY[0x1E696AAA8] currentHandler];
    v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSDictionary<NSString *, id<WFPropertyListObject>> * _Nonnull WFLinkActionSerializedParametersForWFAction(WFAction * _Nullable __strong, LNAction * _Nonnull __strong, LNActionMetadata * _Nonnull __strong)"}];
    [v44 handleFailureInFunction:v45 file:@"WFLinkAction.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"lnAction"}];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v46 = [MEMORY[0x1E696AAA8] currentHandler];
  v47 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSDictionary<NSString *, id<WFPropertyListObject>> * _Nonnull WFLinkActionSerializedParametersForWFAction(WFAction * _Nullable __strong, LNAction * _Nonnull __strong, LNActionMetadata * _Nonnull __strong)"}];
  [v46 handleFailureInFunction:v47 file:@"WFLinkAction.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"metadata"}];

LABEL_3:
  v48 = objc_opt_new();
  v8 = objc_opt_new();
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v9 = [v5 parameters];
  v10 = [v9 countByEnumeratingWithState:&v63 objects:v69 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v64;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v64 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v63 + 1) + 8 * i);
        v15 = [v14 value];
        v16 = [v14 identifier];
        [v8 setObject:v15 forKeyedSubscript:v16];
      }

      v11 = [v9 countByEnumeratingWithState:&v63 objects:v69 count:16];
    }

    while (v11);
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = [v7 parameters];
  v54 = [obj countByEnumeratingWithState:&v59 objects:v68 count:16];
  if (v54)
  {
    v52 = v5;
    v53 = *v60;
    do
    {
      for (j = 0; j != v54; ++j)
      {
        if (*v60 != v53)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v59 + 1) + 8 * j);
        v19 = [v18 valueType];
        v20 = [v5 identifier];
        v21 = [v19 wf_parameterDefinitionWithParameterMetadata:v18 actionIdentifier:v20];

        if (v21)
        {
          v22 = [v18 name];
          v23 = [v50 parameterDefinitions];
          v55 = 0u;
          v56 = 0u;
          v57 = 0u;
          v58 = 0u;
          v24 = v23;
          v25 = [v24 countByEnumeratingWithState:&v55 objects:v67 count:16];
          v26 = v22;
          if (v25)
          {
            v27 = v25;
            v51 = v21;
            v28 = *v56;
            while (2)
            {
              for (k = 0; k != v27; ++k)
              {
                if (*v56 != v28)
                {
                  objc_enumerationMutation(v24);
                }

                v30 = *(*(&v55 + 1) + 8 * k);
                v31 = [v30 objectForKey:@"Key"];
                if (v31 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  if ([v31 isEqualToString:v22])
                  {
                    v32 = [v30 objectForKey:@"KeyForSerialization"];
                    v33 = v32;
                    if (v32)
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v34 = v33;
                      }

                      else
                      {
                        v34 = 0;
                      }
                    }

                    else
                    {
                      v34 = 0;
                    }

                    v5 = v52;
                    v35 = v34;

                    if (v35)
                    {
                      v36 = v35;
                    }

                    else
                    {
                      v36 = v31;
                    }

                    v26 = v36;

                    goto LABEL_38;
                  }
                }

                else
                {

                  v31 = 0;
                }
              }

              v27 = [v24 countByEnumeratingWithState:&v55 objects:v67 count:16];
              if (v27)
              {
                continue;
              }

              break;
            }

            v26 = v22;
            v5 = v52;
LABEL_38:
            v21 = v51;
          }

          v37 = [v8 objectForKeyedSubscript:v22];
          if (v37)
          {
            v38 = v21;
            v39 = [v21 parameterStateFromLinkValue:v37];
            v40 = [v39 serializedRepresentation];
            if (v40)
            {
              [v48 setObject:v40 forKeyedSubscript:v26];
            }

            v21 = v38;
            v5 = v52;
          }
        }
      }

      v54 = [obj countByEnumeratingWithState:&v59 objects:v68 count:16];
    }

    while (v54);
  }

  v41 = [v48 copy];
  v42 = *MEMORY[0x1E69E9840];

  return v41;
}

void RunningBoardServicesLibrary_27608()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!RunningBoardServicesLibraryCore_frameworkLibrary_27611)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __RunningBoardServicesLibraryCore_block_invoke_27612;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E8377D28;
    v6 = 0;
    RunningBoardServicesLibraryCore_frameworkLibrary_27611 = _sl_dlopen();
  }

  if (!RunningBoardServicesLibraryCore_frameworkLibrary_27611)
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *RunningBoardServicesLibrary(void)"];
    [v2 handleFailureInFunction:v3 file:@"WFWorkflowController.m" lineNumber:41 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t __RunningBoardServicesLibraryCore_block_invoke_27612(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  RunningBoardServicesLibraryCore_frameworkLibrary_27611 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1CA7C6034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__27632(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id WFSupportedCharacteristicsForHMService(void *a1)
{
  v1 = [a1 characteristicsSupportedForShortcutConditions];
  v2 = [v1 allObjects];
  v3 = [v2 sortedArrayUsingComparator:&__block_literal_global_28398];

  return v3;
}

uint64_t __WFSupportedCharacteristicsForHMService_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 localizedDescription];
  v6 = [v4 localizedDescription];

  v7 = [v5 localizedStandardCompare:v6];
  return v7;
}

id WFUnitForHMCharacteristic(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 units];

  v3 = getHMCharacteristicMetadataUnitsCelsius();
  v4 = [v2 isEqualToString:v3];

  if (v4)
  {
    v5 = [MEMORY[0x1E696B080] celsius];
LABEL_15:
    v18 = v5;
    goto LABEL_16;
  }

  v6 = getHMCharacteristicMetadataUnitsFahrenheit();
  v7 = [v2 isEqualToString:v6];

  if (v7)
  {
    v5 = [MEMORY[0x1E696B080] fahrenheit];
    goto LABEL_15;
  }

  v8 = getHMCharacteristicMetadataUnitsArcDegree();
  v9 = [v2 isEqualToString:v8];

  if (v9)
  {
    v5 = [MEMORY[0x1E696AFE0] degrees];
    goto LABEL_15;
  }

  v10 = getHMCharacteristicMetadataUnitsSeconds();
  v11 = [v2 isEqualToString:v10];

  if (v11)
  {
    v5 = [MEMORY[0x1E696B008] seconds];
    goto LABEL_15;
  }

  v12 = getHMCharacteristicMetadataUnitsLux();
  v13 = [v2 isEqualToString:v12];

  if (v13)
  {
    v5 = [MEMORY[0x1E696B048] lux];
    goto LABEL_15;
  }

  v14 = getHMCharacteristicMetadataUnitsPartsPerMillion();
  v15 = [v2 isEqualToString:v14];

  if (v15)
  {
    v5 = [MEMORY[0x1E696B000] partsPerMillion];
    goto LABEL_15;
  }

  v16 = getHMCharacteristicMetadataUnitsMicrogramsPerCubicMeter();
  v17 = [v2 isEqualToString:v16];

  if (v17)
  {
    v5 = [MEMORY[0x1E696AFF0] wf_microgramsPerCubicMeter];
    goto LABEL_15;
  }

  v18 = 0;
LABEL_16:

  return v18;
}

id initHMCharacteristicMetadataUnitsMicrogramsPerCubicMeter()
{
  if (HomeKitLibrary_sOnce_28403 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_28403, &__block_literal_global_266);
  }

  v0 = dlsym(HomeKitLibrary_sLib_28404, "HMCharacteristicMetadataUnitsMicrogramsPerCubicMeter");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicMetadataUnitsMicrogramsPerCubicMeter", "WFHomeUtilities.m", 56, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicMetadataUnitsMicrogramsPerCubicMeter, *v0);
  getHMCharacteristicMetadataUnitsMicrogramsPerCubicMeter = HMCharacteristicMetadataUnitsMicrogramsPerCubicMeterFunction;
  v1 = constantHMCharacteristicMetadataUnitsMicrogramsPerCubicMeter;

  return v1;
}

void *__HomeKitLibrary_block_invoke_28409()
{
  result = dlopen("/System/Library/Frameworks/HomeKit.framework/HomeKit", 2);
  HomeKitLibrary_sLib_28404 = result;
  return result;
}

id initHMCharacteristicMetadataUnitsPartsPerMillion()
{
  if (HomeKitLibrary_sOnce_28403 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_28403, &__block_literal_global_266);
  }

  v0 = dlsym(HomeKitLibrary_sLib_28404, "HMCharacteristicMetadataUnitsPartsPerMillion");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicMetadataUnitsPartsPerMillion", "WFHomeUtilities.m", 55, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicMetadataUnitsPartsPerMillion, *v0);
  getHMCharacteristicMetadataUnitsPartsPerMillion = HMCharacteristicMetadataUnitsPartsPerMillionFunction;
  v1 = constantHMCharacteristicMetadataUnitsPartsPerMillion;

  return v1;
}

id initHMCharacteristicMetadataUnitsLux()
{
  if (HomeKitLibrary_sOnce_28403 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_28403, &__block_literal_global_266);
  }

  v0 = dlsym(HomeKitLibrary_sLib_28404, "HMCharacteristicMetadataUnitsLux");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicMetadataUnitsLux", "WFHomeUtilities.m", 54, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicMetadataUnitsLux, *v0);
  getHMCharacteristicMetadataUnitsLux = HMCharacteristicMetadataUnitsLuxFunction;
  v1 = constantHMCharacteristicMetadataUnitsLux;

  return v1;
}

id initHMCharacteristicMetadataUnitsSeconds()
{
  if (HomeKitLibrary_sOnce_28403 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_28403, &__block_literal_global_266);
  }

  v0 = dlsym(HomeKitLibrary_sLib_28404, "HMCharacteristicMetadataUnitsSeconds");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicMetadataUnitsSeconds", "WFHomeUtilities.m", 53, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicMetadataUnitsSeconds, *v0);
  getHMCharacteristicMetadataUnitsSeconds = HMCharacteristicMetadataUnitsSecondsFunction;
  v1 = constantHMCharacteristicMetadataUnitsSeconds;

  return v1;
}

id initHMCharacteristicMetadataUnitsArcDegree()
{
  if (HomeKitLibrary_sOnce_28403 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_28403, &__block_literal_global_266);
  }

  v0 = dlsym(HomeKitLibrary_sLib_28404, "HMCharacteristicMetadataUnitsArcDegree");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicMetadataUnitsArcDegree", "WFHomeUtilities.m", 52, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicMetadataUnitsArcDegree, *v0);
  getHMCharacteristicMetadataUnitsArcDegree = HMCharacteristicMetadataUnitsArcDegreeFunction;
  v1 = constantHMCharacteristicMetadataUnitsArcDegree;

  return v1;
}

id initHMCharacteristicMetadataUnitsFahrenheit()
{
  if (HomeKitLibrary_sOnce_28403 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_28403, &__block_literal_global_266);
  }

  v0 = dlsym(HomeKitLibrary_sLib_28404, "HMCharacteristicMetadataUnitsFahrenheit");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicMetadataUnitsFahrenheit", "WFHomeUtilities.m", 51, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicMetadataUnitsFahrenheit, *v0);
  getHMCharacteristicMetadataUnitsFahrenheit = HMCharacteristicMetadataUnitsFahrenheitFunction;
  v1 = constantHMCharacteristicMetadataUnitsFahrenheit;

  return v1;
}

id initHMCharacteristicMetadataUnitsCelsius()
{
  if (HomeKitLibrary_sOnce_28403 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_28403, &__block_literal_global_266);
  }

  v0 = dlsym(HomeKitLibrary_sLib_28404, "HMCharacteristicMetadataUnitsCelsius");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicMetadataUnitsCelsius", "WFHomeUtilities.m", 50, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicMetadataUnitsCelsius, *v0);
  getHMCharacteristicMetadataUnitsCelsius = HMCharacteristicMetadataUnitsCelsiusFunction;
  v1 = constantHMCharacteristicMetadataUnitsCelsius;

  return v1;
}

uint64_t WFHMCharacteristicIsBooleanFormat(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 format];
  v3 = getHMCharacteristicMetadataFormatBool_28417();
  v4 = [v2 isEqualToString:v3];

  return v4;
}

id initHMCharacteristicMetadataFormatBool_28419()
{
  if (HomeKitLibrary_sOnce_28403 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_28403, &__block_literal_global_266);
  }

  v0 = dlsym(HomeKitLibrary_sLib_28404, "HMCharacteristicMetadataFormatBool");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicMetadataFormatBool", "WFHomeUtilities.m", 38, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicMetadataFormatBool_28422, *v0);
  getHMCharacteristicMetadataFormatBool_28417 = HMCharacteristicMetadataFormatBoolFunction_28424;
  v1 = constantHMCharacteristicMetadataFormatBool_28422;

  return v1;
}

id WFBooleanLocalizedDescriptionForHMCharacteristic(void *a1, int a2)
{
  v3 = [a1 characteristicType];
  v4 = getHMCharacteristicTypePowerState();
  v5 = [v3 isEqualToString:v4];

  if (v5)
  {
    v6 = @"Is Off";
    v7 = @"Is On";
LABEL_21:
    if (a2)
    {
      v26 = v7;
    }

    else
    {
      v26 = v6;
    }

    v27 = WFLocalizedString(v26);
    goto LABEL_25;
  }

  v8 = getHMCharacteristicTypeObstructionDetected();
  v9 = [v3 isEqualToString:v8];

  if (v9)
  {
    v6 = @"Is Not Obstructed";
    v7 = @"Is Obstructed";
    goto LABEL_21;
  }

  v10 = getHMCharacteristicTypeOutletInUse();
  v11 = [v3 isEqualToString:v10];

  if (v11)
  {
    v6 = @"Outlet Is Not In Use";
    v7 = @"Outlet Is In Use";
    goto LABEL_21;
  }

  v12 = getHMCharacteristicTypeAudioFeedback();
  v13 = [v3 isEqualToString:v12];

  if (v13)
  {
    v6 = @"Audio Feedback Is Disabled";
    v7 = @"Audio Feedback Is Enabled";
    goto LABEL_21;
  }

  v14 = getHMCharacteristicTypeAdminOnlyAccess();
  v15 = [v3 isEqualToString:v14];

  if (v15)
  {
    v6 = @"Admin Access Is Not Required";
    v7 = @"Admin Access Is Required";
    goto LABEL_21;
  }

  v16 = getHMCharacteristicTypeMotionDetected();
  v17 = [v3 isEqualToString:v16];

  if (v17)
  {
    v6 = @"Motion Is Not Detected";
    v7 = @"Motion Is Detected";
    goto LABEL_21;
  }

  v18 = getHMCharacteristicTypeStatusActive();
  v19 = [v3 isEqualToString:v18];

  if (v19)
  {
    v6 = @"Is Not Active";
    v7 = @"Is Active";
    goto LABEL_21;
  }

  v20 = getHMCharacteristicTypeMute();
  v21 = [v3 isEqualToString:v20];

  if (v21)
  {
    v6 = @"Is Not Muted";
    v7 = @"Is Muted";
    goto LABEL_21;
  }

  v22 = getHMCharacteristicTypeNightVision();
  v23 = [v3 isEqualToString:v22];

  if (v23)
  {
    v6 = @"Night Vision Is Not Enabled";
    v7 = @"Night Vision Is Enabled";
    goto LABEL_21;
  }

  v24 = getHMCharacteristicTypeImageMirroring();
  v25 = [v3 isEqualToString:v24];

  if (v25)
  {
    v6 = @"Image Is Not Mirrored";
    v7 = @"Image Is Mirrored";
    goto LABEL_21;
  }

  v27 = 0;
LABEL_25:

  return v27;
}

id initHMCharacteristicTypeImageMirroring()
{
  if (HomeKitLibrary_sOnce_28403 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_28403, &__block_literal_global_266);
  }

  v0 = dlsym(HomeKitLibrary_sLib_28404, "HMCharacteristicTypeImageMirroring");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicTypeImageMirroring", "WFHomeUtilities.m", 48, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicTypeImageMirroring, *v0);
  getHMCharacteristicTypeImageMirroring = HMCharacteristicTypeImageMirroringFunction;
  v1 = constantHMCharacteristicTypeImageMirroring;

  return v1;
}

id initHMCharacteristicTypeNightVision()
{
  if (HomeKitLibrary_sOnce_28403 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_28403, &__block_literal_global_266);
  }

  v0 = dlsym(HomeKitLibrary_sLib_28404, "HMCharacteristicTypeNightVision");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicTypeNightVision", "WFHomeUtilities.m", 47, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicTypeNightVision, *v0);
  getHMCharacteristicTypeNightVision = HMCharacteristicTypeNightVisionFunction;
  v1 = constantHMCharacteristicTypeNightVision;

  return v1;
}

id initHMCharacteristicTypeMute()
{
  if (HomeKitLibrary_sOnce_28403 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_28403, &__block_literal_global_266);
  }

  v0 = dlsym(HomeKitLibrary_sLib_28404, "HMCharacteristicTypeMute");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicTypeMute", "WFHomeUtilities.m", 46, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicTypeMute, *v0);
  getHMCharacteristicTypeMute = HMCharacteristicTypeMuteFunction;
  v1 = constantHMCharacteristicTypeMute;

  return v1;
}

id initHMCharacteristicTypeStatusActive()
{
  if (HomeKitLibrary_sOnce_28403 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_28403, &__block_literal_global_266);
  }

  v0 = dlsym(HomeKitLibrary_sLib_28404, "HMCharacteristicTypeStatusActive");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicTypeStatusActive", "WFHomeUtilities.m", 45, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicTypeStatusActive, *v0);
  getHMCharacteristicTypeStatusActive = HMCharacteristicTypeStatusActiveFunction;
  v1 = constantHMCharacteristicTypeStatusActive;

  return v1;
}

id initHMCharacteristicTypeMotionDetected()
{
  if (HomeKitLibrary_sOnce_28403 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_28403, &__block_literal_global_266);
  }

  v0 = dlsym(HomeKitLibrary_sLib_28404, "HMCharacteristicTypeMotionDetected");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicTypeMotionDetected", "WFHomeUtilities.m", 44, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicTypeMotionDetected, *v0);
  getHMCharacteristicTypeMotionDetected = HMCharacteristicTypeMotionDetectedFunction;
  v1 = constantHMCharacteristicTypeMotionDetected;

  return v1;
}

id initHMCharacteristicTypeAdminOnlyAccess()
{
  if (HomeKitLibrary_sOnce_28403 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_28403, &__block_literal_global_266);
  }

  v0 = dlsym(HomeKitLibrary_sLib_28404, "HMCharacteristicTypeAdminOnlyAccess");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicTypeAdminOnlyAccess", "WFHomeUtilities.m", 43, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicTypeAdminOnlyAccess, *v0);
  getHMCharacteristicTypeAdminOnlyAccess = HMCharacteristicTypeAdminOnlyAccessFunction;
  v1 = constantHMCharacteristicTypeAdminOnlyAccess;

  return v1;
}

id initHMCharacteristicTypeAudioFeedback()
{
  if (HomeKitLibrary_sOnce_28403 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_28403, &__block_literal_global_266);
  }

  v0 = dlsym(HomeKitLibrary_sLib_28404, "HMCharacteristicTypeAudioFeedback");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicTypeAudioFeedback", "WFHomeUtilities.m", 42, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicTypeAudioFeedback, *v0);
  getHMCharacteristicTypeAudioFeedback = HMCharacteristicTypeAudioFeedbackFunction;
  v1 = constantHMCharacteristicTypeAudioFeedback;

  return v1;
}

id initHMCharacteristicTypeOutletInUse()
{
  if (HomeKitLibrary_sOnce_28403 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_28403, &__block_literal_global_266);
  }

  v0 = dlsym(HomeKitLibrary_sLib_28404, "HMCharacteristicTypeOutletInUse");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicTypeOutletInUse", "WFHomeUtilities.m", 41, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicTypeOutletInUse, *v0);
  getHMCharacteristicTypeOutletInUse = HMCharacteristicTypeOutletInUseFunction;
  v1 = constantHMCharacteristicTypeOutletInUse;

  return v1;
}

id initHMCharacteristicTypeObstructionDetected()
{
  if (HomeKitLibrary_sOnce_28403 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_28403, &__block_literal_global_266);
  }

  v0 = dlsym(HomeKitLibrary_sLib_28404, "HMCharacteristicTypeObstructionDetected");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicTypeObstructionDetected", "WFHomeUtilities.m", 40, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicTypeObstructionDetected, *v0);
  getHMCharacteristicTypeObstructionDetected = HMCharacteristicTypeObstructionDetectedFunction;
  v1 = constantHMCharacteristicTypeObstructionDetected;

  return v1;
}

id initHMCharacteristicTypePowerState()
{
  if (HomeKitLibrary_sOnce_28403 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_28403, &__block_literal_global_266);
  }

  v0 = dlsym(HomeKitLibrary_sLib_28404, "HMCharacteristicTypePowerState");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicTypePowerState", "WFHomeUtilities.m", 39, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicTypePowerState, *v0);
  getHMCharacteristicTypePowerState = HMCharacteristicTypePowerStateFunction;
  v1 = constantHMCharacteristicTypePowerState;

  return v1;
}

BOOL WFHMCharacteristicIsEnumeration(void *a1)
{
  v2 = [a1 metadata];
  v3 = [v2 validValues];
  v4 = [v3 count];

  if (!v4)
  {
    v6 = [v2 format];
    v7 = getHMCharacteristicMetadataFormatUInt8_28527();
    v8 = [v6 isEqualToString:v7];
    if ((v8 & 1) != 0 || (getHMCharacteristicMetadataFormatInt_28528(), v1 = objc_claimAutoreleasedReturnValue(), [v6 isEqualToString:v1]))
    {
      v9 = [v2 minimumValue];
      if (v9)
      {
        v10 = v9;
        v11 = [v2 maximumValue];
        if (v11)
        {
          v12 = v11;
          v13 = [v2 stepValue];
          if (v13)
          {
            v14 = v13;
            v15 = [v2 units];
            v5 = v15 == 0;

            if (v8)
            {
              goto LABEL_15;
            }

            goto LABEL_14;
          }
        }
      }

      v5 = 0;
      if (v8)
      {
LABEL_15:

        goto LABEL_16;
      }
    }

    else
    {
      v5 = 0;
    }

LABEL_14:

    goto LABEL_15;
  }

  v5 = 1;
LABEL_16:

  return v5;
}

id initHMCharacteristicMetadataFormatInt_28530()
{
  if (HomeKitLibrary_sOnce_28403 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_28403, &__block_literal_global_266);
  }

  v0 = dlsym(HomeKitLibrary_sLib_28404, "HMCharacteristicMetadataFormatInt");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicMetadataFormatInt", "WFHomeUtilities.m", 58, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicMetadataFormatInt_28533, *v0);
  getHMCharacteristicMetadataFormatInt_28528 = HMCharacteristicMetadataFormatIntFunction_28535;
  v1 = constantHMCharacteristicMetadataFormatInt_28533;

  return v1;
}

id initHMCharacteristicMetadataFormatUInt8_28537()
{
  if (HomeKitLibrary_sOnce_28403 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_28403, &__block_literal_global_266);
  }

  v0 = dlsym(HomeKitLibrary_sLib_28404, "HMCharacteristicMetadataFormatUInt8");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicMetadataFormatUInt8", "WFHomeUtilities.m", 59, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicMetadataFormatUInt8_28540, *v0);
  getHMCharacteristicMetadataFormatUInt8_28527 = HMCharacteristicMetadataFormatUInt8Function_28542;
  v1 = constantHMCharacteristicMetadataFormatUInt8_28540;

  return v1;
}

id WFFormattedCharacteristicValueForCharacteristic(void *a1)
{
  v1 = a1;
  if (WFHMCharacteristicIsEnumeration(v1) && ([v1 value], v2 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v2, (isKindOfClass & 1) != 0))
  {
    if (HomeLibrary_sOnce_28545 != -1)
    {
      dispatch_once(&HomeLibrary_sOnce_28545, &__block_literal_global_288);
    }

    v4 = [MEMORY[0x1E696AC40] hf_valueFormatterForCharacteristic:v1 options:0];
    v5 = [v1 value];
    v6 = [v4 stringForObjectValue:v5];
  }

  else
  {
    v6 = [v1 value];
  }

  return v6;
}

void *__HomeLibrary_block_invoke_28547()
{
  result = dlopen("/System/Library/PrivateFrameworks/Home.framework/Home", 2);
  HomeLibrary_sLib_28549 = result;
  return result;
}

id WFWFWorkflowControllerStateDefaultSerializedURLFromContext(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E695DFF8] wf_savedShortcutStatesURL];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v10 = 0;
  v4 = [v3 createDirectoryAtURL:v2 withIntermediateDirectories:0 attributes:0 error:&v10];
  v5 = v10;

  if (v4 & 1) != 0 || ([v5 vc_isFileAlreadyExists])
  {
    v6 = [v1 identifier];
    v7 = [v2 URLByAppendingPathComponent:v6];
  }

  else
  {
    v6 = getWFGeneralLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v12 = "WFWFWorkflowControllerStateDefaultSerializedURLFromContext";
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_FAULT, "%s Unable to create folder for workflow controller states: %@", buf, 0x16u);
    }

    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

Class initUIFont()
{
  if (UIKitLibrary_sOnce_28810 != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce_28810, &__block_literal_global_28811);
  }

  result = objc_getClass("UIFont");
  classUIFont = result;
  getUIFontClass = UIFontFunction;
  return result;
}

void *__UIKitLibrary_block_invoke_28815()
{
  result = dlopen("/System/Library/Frameworks/UIKit.framework/UIKit", 2);
  UIKitLibrary_sLib_28817 = result;
  return result;
}

Class initUIFontDescriptor()
{
  if (UIKitLibrary_sOnce_28810 != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce_28810, &__block_literal_global_28811);
  }

  result = objc_getClass("UIFontDescriptor");
  classUIFontDescriptor = result;
  getUIFontDescriptorClass = UIFontDescriptorFunction;
  return result;
}

id initUIFontDescriptorVisibleNameAttribute()
{
  if (UIKitLibrary_sOnce_28810 != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce_28810, &__block_literal_global_28811);
  }

  v0 = dlsym(UIKitLibrary_sLib_28817, "UIFontDescriptorVisibleNameAttribute");
  if (!v0)
  {
    __assert_rtn("initUIFontDescriptorVisibleNameAttribute", "WFFontDescriptor.m", 26, "constant");
  }

  objc_storeStrong(&constantUIFontDescriptorVisibleNameAttribute, *v0);
  getUIFontDescriptorVisibleNameAttribute = UIFontDescriptorVisibleNameAttributeFunction;
  v1 = constantUIFontDescriptorVisibleNameAttribute;

  return v1;
}

id initUIFontDescriptorFaceAttribute()
{
  if (UIKitLibrary_sOnce_28810 != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce_28810, &__block_literal_global_28811);
  }

  v0 = dlsym(UIKitLibrary_sLib_28817, "UIFontDescriptorFaceAttribute");
  if (!v0)
  {
    __assert_rtn("initUIFontDescriptorFaceAttribute", "WFFontDescriptor.m", 24, "constant");
  }

  objc_storeStrong(&constantUIFontDescriptorFaceAttribute, *v0);
  getUIFontDescriptorFaceAttribute = UIFontDescriptorFaceAttributeFunction;
  v1 = constantUIFontDescriptorFaceAttribute;

  return v1;
}

id initUIFontDescriptorNameAttribute()
{
  if (UIKitLibrary_sOnce_28810 != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce_28810, &__block_literal_global_28811);
  }

  v0 = dlsym(UIKitLibrary_sLib_28817, "UIFontDescriptorNameAttribute");
  if (!v0)
  {
    __assert_rtn("initUIFontDescriptorNameAttribute", "WFFontDescriptor.m", 23, "constant");
  }

  objc_storeStrong(&constantUIFontDescriptorNameAttribute, *v0);
  getUIFontDescriptorNameAttribute = UIFontDescriptorNameAttributeFunction;
  v1 = constantUIFontDescriptorNameAttribute;

  return v1;
}

id initUIFontDescriptorFamilyAttribute()
{
  if (UIKitLibrary_sOnce_28810 != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce_28810, &__block_literal_global_28811);
  }

  v0 = dlsym(UIKitLibrary_sLib_28817, "UIFontDescriptorFamilyAttribute");
  if (!v0)
  {
    __assert_rtn("initUIFontDescriptorFamilyAttribute", "WFFontDescriptor.m", 25, "constant");
  }

  objc_storeStrong(&constantUIFontDescriptorFamilyAttribute, *v0);
  getUIFontDescriptorFamilyAttribute = UIFontDescriptorFamilyAttributeFunction;
  v1 = constantUIFontDescriptorFamilyAttribute;

  return v1;
}

id WFEnforceClass_29244(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = getWFGeneralLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v9 = 136315906;
      v10 = "WFEnforceClass";
      v11 = 2114;
      v12 = v3;
      v13 = 2114;
      v14 = objc_opt_class();
      v15 = 2114;
      v16 = a2;
      v6 = v14;
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_FAULT, "%s The current content attribution set has public disclosure level, no approval required.", &v9, 0x2Au);
    }

    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v4;
}

void sub_1CA7D8DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__29403(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id WFCreateDocumentInteractionController(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [getUIDocumentInteractionControllerSubclass() interactionControllerWithURL:v4];

  UIDocumentInteractionControllerSubclass = getUIDocumentInteractionControllerSubclass();
  InstanceVariable = class_getInstanceVariable(UIDocumentInteractionControllerSubclass, "_wf_openCompletionHandler");
  v8 = [v3 copy];

  object_setIvarWithStrongDefault(v5, InstanceVariable, v8);

  return v5;
}

id getUIDocumentInteractionControllerSubclass()
{
  if (getUIDocumentInteractionControllerSubclass_onceToken != -1)
  {
    dispatch_once(&getUIDocumentInteractionControllerSubclass_onceToken, &__block_literal_global_29406);
  }

  v1 = getUIDocumentInteractionControllerSubclass_dynamicSubclass;

  return v1;
}

void __getUIDocumentInteractionControllerSubclass_block_invoke()
{
  UIDocumentInteractionControllerClass = getUIDocumentInteractionControllerClass();
  getUIDocumentInteractionControllerSubclass_dynamicSubclass = objc_allocateClassPair(UIDocumentInteractionControllerClass, "_WFUIDocumentInteractionController", 0);
  class_addIvar(getUIDocumentInteractionControllerSubclass_dynamicSubclass, "_wf_openCompletionHandler", 8uLL, 3u, "@");
  class_addMethod(getUIDocumentInteractionControllerSubclass_dynamicSubclass, sel_openResourceOperationDidComplete_, WFOpenOperationDidComplete, "v@:@");
  class_addMethod(getUIDocumentInteractionControllerSubclass_dynamicSubclass, sel_openResourceOperation_didFailWithError_, WFOpenOperationDidFailWithError, "v@:@@");
  v1 = getUIDocumentInteractionControllerSubclass_dynamicSubclass;

  objc_registerClassPair(v1);
}

void WFOpenOperationDidFailWithError(void *a1)
{
  v1 = a1;
  UIDocumentInteractionControllerSubclass = getUIDocumentInteractionControllerSubclass();
  InstanceVariable = class_getInstanceVariable(UIDocumentInteractionControllerSubclass, "_wf_openCompletionHandler");
  v5 = object_getIvar(v1, InstanceVariable);
  object_setIvar(v1, InstanceVariable, 0);

  v4 = v5;
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
    v4 = v5;
  }
}

void WFOpenOperationDidComplete(void *a1)
{
  v1 = a1;
  UIDocumentInteractionControllerSubclass = getUIDocumentInteractionControllerSubclass();
  InstanceVariable = class_getInstanceVariable(UIDocumentInteractionControllerSubclass, "_wf_openCompletionHandler");
  v5 = object_getIvar(v1, InstanceVariable);
  object_setIvar(v1, InstanceVariable, 0);

  v4 = v5;
  if (v5)
  {
    (*(v5 + 16))(v5, 1);
    v4 = v5;
  }
}

Class initUIDocumentInteractionController()
{
  if (UIKitLibrary_sOnce_29414 != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce_29414, &__block_literal_global_44);
  }

  result = objc_getClass("UIDocumentInteractionController");
  classUIDocumentInteractionController = result;
  getUIDocumentInteractionControllerClass = UIDocumentInteractionControllerFunction;
  return result;
}

void *__UIKitLibrary_block_invoke_29416()
{
  result = dlopen("/System/Library/Frameworks/UIKit.framework/UIKit", 2);
  UIKitLibrary_sLib_29417 = result;
  return result;
}

void sub_1CA7D93F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA7DA8D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPMediaItemCollectionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPMediaItemCollectionClass_softClass;
  v7 = getMPMediaItemCollectionClass_softClass;
  if (!getMPMediaItemCollectionClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPMediaItemCollectionClass_block_invoke;
    v3[3] = &unk_1E837FAC0;
    v3[4] = &v4;
    __getMPMediaItemCollectionClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1CA7DA9BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMPMediaItemClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaItem");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMPMediaItemClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFMediaItemDescriptor+Library.m" lineNumber:16 description:{@"Unable to find class %s", "MPMediaItem"}];

    __break(1u);
  }
}

void *MediaPlayerLibrary()
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __MediaPlayerLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E8378168;
    v7 = 0;
    MediaPlayerLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = MediaPlayerLibraryCore_frameworkLibrary;
  if (!MediaPlayerLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MediaPlayerLibrary(void)"];
    [v0 handleFailureInFunction:v4 file:@"WFMediaItemDescriptor+Library.m" lineNumber:14 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __MediaPlayerLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void __getMPMediaItemCollectionClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaItemCollection");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaItemCollectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMPMediaItemCollectionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFMediaItemDescriptor+Library.m" lineNumber:17 description:{@"Unable to find class %s", "MPMediaItemCollection"}];

    __break(1u);
  }
}

void sub_1CA7DB4B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPMediaPropertyPredicateClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPMediaPropertyPredicateClass_softClass;
  v7 = getMPMediaPropertyPredicateClass_softClass;
  if (!getMPMediaPropertyPredicateClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPMediaPropertyPredicateClass_block_invoke;
    v3[3] = &unk_1E837FAC0;
    v3[4] = &v4;
    __getMPMediaPropertyPredicateClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1CA7DB5A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMPMediaPlaylistPropertyNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPMediaPlaylistPropertyName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaPlaylistPropertyNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t WFGroupingPropertyForMediaType(void *a1)
{
  v9[7] = *MEMORY[0x1E69E9840];
  v8[0] = @"Album";
  v8[1] = @"Playlist";
  v9[0] = &unk_1F4A9A4E0;
  v9[1] = &unk_1F4A9A4F8;
  v8[2] = @"Song";
  v8[3] = @"Artist";
  v9[2] = &unk_1F4A9A510;
  v9[3] = &unk_1F4A9A528;
  v8[4] = @"Genre";
  v8[5] = @"Compilation";
  v9[4] = &unk_1F4A9A540;
  v9[5] = &unk_1F4A9A4E0;
  v8[6] = @"Composer";
  v9[6] = &unk_1F4A9A558;
  v1 = MEMORY[0x1E695DF20];
  v2 = a1;
  v3 = [v1 dictionaryWithObjects:v9 forKeys:v8 count:7];
  v4 = [v3 objectForKeyedSubscript:v2];

  v5 = [v4 integerValue];
  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

void getMPMediaItemPropertyTitle()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getMPMediaItemPropertyTitleSymbolLoc_ptr;
  v9 = getMPMediaItemPropertyTitleSymbolLoc_ptr;
  if (!getMPMediaItemPropertyTitleSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary();
    v7[3] = dlsym(v1, "MPMediaItemPropertyTitle");
    getMPMediaItemPropertyTitleSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMPMediaItemPropertyTitle(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFMediaItemDescriptor+Library.m" lineNumber:27 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1CA7DB890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMPMediaItemPropertyAlbumTitleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPMediaItemPropertyAlbumTitle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyAlbumTitleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyArtistSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPMediaItemPropertyArtist");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyArtistSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyAlbumArtistSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPMediaItemPropertyAlbumArtist");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyAlbumArtistSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyComposerSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPMediaItemPropertyComposer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyComposerSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyGenreSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPMediaItemPropertyGenre");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyGenreSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getMPMediaQueryClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPMediaQueryClass_softClass;
  v7 = getMPMediaQueryClass_softClass;
  if (!getMPMediaQueryClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPMediaQueryClass_block_invoke;
    v3[3] = &unk_1E837FAC0;
    v3[4] = &v4;
    __getMPMediaQueryClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1CA7DBB00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMPMediaQueryClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaQuery");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaQueryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMPMediaQueryClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFMediaItemDescriptor+Library.m" lineNumber:18 description:{@"Unable to find class %s", "MPMediaQuery"}];

    __break(1u);
  }
}

void *__getMPMediaItemPropertyTitleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPMediaItemPropertyTitle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyTitleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getMPMediaPropertyPredicateClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaPropertyPredicate");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaPropertyPredicateClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMPMediaPropertyPredicateClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFMediaItemDescriptor+Library.m" lineNumber:15 description:{@"Unable to find class %s", "MPMediaPropertyPredicate"}];

    __break(1u);
  }
}

void sub_1CA7DC368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMPMediaPlaylistPropertyPersistentIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPMediaPlaylistPropertyPersistentID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaPlaylistPropertyPersistentIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyPersistentIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPMediaItemPropertyPersistentID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyPersistentIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyAlbumPersistentIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPMediaItemPropertyAlbumPersistentID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyAlbumPersistentIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyArtistPersistentIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPMediaItemPropertyArtistPersistentID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyArtistPersistentIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void getMPMediaItemPropertyGenrePersistentID()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getMPMediaItemPropertyGenrePersistentIDSymbolLoc_ptr;
  v9 = getMPMediaItemPropertyGenrePersistentIDSymbolLoc_ptr;
  if (!getMPMediaItemPropertyGenrePersistentIDSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary();
    v7[3] = dlsym(v1, "MPMediaItemPropertyGenrePersistentID");
    getMPMediaItemPropertyGenrePersistentIDSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMPMediaItemPropertyGenrePersistentID(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFMediaItemDescriptor+Library.m" lineNumber:25 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1CA7DC618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getMPMediaItemPropertyComposerPersistentID()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getMPMediaItemPropertyComposerPersistentIDSymbolLoc_ptr;
  v9 = getMPMediaItemPropertyComposerPersistentIDSymbolLoc_ptr;
  if (!getMPMediaItemPropertyComposerPersistentIDSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary();
    v7[3] = dlsym(v1, "MPMediaItemPropertyComposerPersistentID");
    getMPMediaItemPropertyComposerPersistentIDSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMPMediaItemPropertyComposerPersistentID(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFMediaItemDescriptor+Library.m" lineNumber:24 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1CA7DC77C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMPMediaItemPropertyComposerPersistentIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPMediaItemPropertyComposerPersistentID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyComposerPersistentIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyGenrePersistentIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPMediaItemPropertyGenrePersistentID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyGenrePersistentIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id WFEnforceClass_29964(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = getWFGeneralLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v9 = 136315906;
      v10 = "WFEnforceClass";
      v11 = 2114;
      v12 = v3;
      v13 = 2114;
      v14 = objc_opt_class();
      v15 = 2114;
      v16 = a2;
      v6 = v14;
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_FAULT, "%s Showing internal apps in WFAppPickerParameter because the Show Internal Apps in Open App default is on", &v9, 0x2Au);
    }

    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v4;
}

void sub_1CA7DDC80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1CA7DE0EC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id WFEnforceClass_30212(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = getWFGeneralLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v9 = 136315906;
      v10 = "WFEnforceClass";
      v11 = 2114;
      v12 = v3;
      v13 = 2114;
      v14 = objc_opt_class();
      v15 = 2114;
      v16 = a2;
      v6 = v14;
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_FAULT, "identifier=%{signpost.description:attribute}@", &v9, 0x2Au);
    }

    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v4;
}

id WFSerializedParametersForDonatedIntent(void *a1, int a2, char a3, void *a4, void *a5)
{
  v62 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v45 = a4;
  v42 = a5;
  v8 = [v7 _codableDescription];
  if (([v8 isConfigurable] & 1) == 0 && (objc_msgSend(v8, "isEligibleForWidgets") & 1) == 0 && !a2)
  {
    v29 = 0;
    goto LABEL_39;
  }

  v40 = v8;
  v41 = objc_opt_new();
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v9 = [v8 displayOrderedAttributes];
  v10 = [v9 countByEnumeratingWithState:&v47 objects:v61 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v48;
    v43 = v7;
LABEL_4:
    v13 = 0;
    while (1)
    {
      if (*v48 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v47 + 1) + 8 * v13);
      v15 = [v14 propertyName];
      v16 = [v15 isEqualToString:@"_metadata"];

      if (v16)
      {
        goto LABEL_26;
      }

      v17 = [v14 propertyName];
      v18 = [v7 valueForKey:v17];

      if (v18)
      {
        if (([v14 isConfigurable] & 1) == 0 && (a2 & 1) == 0)
        {
          if ((a3 & 1) == 0)
          {
            v30 = getWFGeneralLogObject();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              v32 = [v7 launchId];
              v33 = [v7 _className];
              v34 = [v14 propertyName];
              *buf = 136315906;
              v52 = "WFSerializedParametersForDonatedIntent";
              v53 = 2114;
              v54 = v32;
              v55 = 2114;
              v56 = v33;
              v57 = 2114;
              v58 = v34;
              _os_log_impl(&dword_1CA256000, v30, OS_LOG_TYPE_DEFAULT, "%s Skipping migration for donated intent: %{public}@ - %{public}@, because the intent has a value for %{public}@, but that parameter isn't configurable, so data loss would occur.", buf, 0x2Au);

              v7 = v43;
            }

            v29 = 0;
            v8 = v40;
            v28 = v41;
            goto LABEL_38;
          }

          goto LABEL_25;
        }

        v19 = [v14 propertyName];
        v20 = [v45 objectForKey:v19];

        if (v20)
        {
          break;
        }
      }

LABEL_25:

LABEL_26:
      if (v11 == ++v13)
      {
        v27 = [v9 countByEnumeratingWithState:&v47 objects:v61 count:16];
        v11 = v27;
        if (v27)
        {
          goto LABEL_4;
        }

        goto LABEL_31;
      }
    }

    if ([v14 supportsDynamicEnumeration])
    {
      v21 = [[WFCodableAttributeBackedSubstitutableState alloc] initWithValue:v18 codableAttribute:v14 stringLocalizer:v42];
      v22 = [(WFCodableAttributeBackedSubstitutableState *)v21 serializedRepresentation];
    }

    else
    {
      v23 = [v20 definition];
      v21 = [v14 wf_parameterStateForIntentValue:v18 parameterDefinition:v23];

      if (!v21)
      {
LABEL_23:

        v7 = v43;
        goto LABEL_24;
      }

      [v20 stateClass];
      v24 = objc_opt_class();
      if (([v24 isSubclassOfClass:objc_opt_class()] & 1) == 0)
      {
        v25 = objc_opt_class();
        [v20 stateClass];
        if (([v25 isSubclassOfClass:objc_opt_class()] & 1) == 0)
        {
          v26 = getWFGeneralLogObject();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
          {
            v39 = NSStringFromClass([v20 stateClass]);
            v37 = [v20 key];
            v38 = [v14 propertyName];
            *buf = 136316162;
            v52 = "WFSerializedParametersForDonatedIntent";
            v53 = 2114;
            v54 = v21;
            v55 = 2114;
            v56 = v39;
            v57 = 2114;
            v58 = v37;
            v59 = 2114;
            v60 = v38;
            _os_log_impl(&dword_1CA256000, v26, OS_LOG_TYPE_FAULT, "%s Incorrect parameter state type found when converting donated intent to custom intent: %{public}@, expected %{public}@. Parameter: %{public}@, Intent slot: %{public}@", buf, 0x34u);
          }

LABEL_22:

          goto LABEL_23;
        }
      }

      v22 = [(WFCodableAttributeBackedSubstitutableState *)v21 serializedRepresentation];
      v7 = v43;
    }

    if (!v22)
    {
LABEL_24:

      goto LABEL_25;
    }

    v26 = [v20 key];
    [v41 setObject:v22 forKey:v26];
    v21 = v22;
    goto LABEL_22;
  }

LABEL_31:

  v28 = v41;
  v29 = v41;
  v8 = v40;
LABEL_38:

LABEL_39:
  v35 = *MEMORY[0x1E69E9840];

  return v29;
}

uint64_t __Block_byref_object_copy__30291(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void WFMigrateDropboxAction(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  [v6 setObject:a2 forKey:@"WFWorkflowActionIdentifier"];
  v7 = [v6 objectForKey:@"WFWorkflowActionParameters"];

  [v7 setObject:@"Dropbox" forKey:@"WFFileStorageService"];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __WFMigrateDropboxAction_block_invoke;
  v9[3] = &unk_1E837B748;
  v10 = v7;
  v8 = v7;
  [v5 enumerateKeysAndObjectsUsingBlock:v9];
}

void __WFMigrateDropboxAction_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [v4 wf_popObjectForKey:a2];
  [v4 setValue:v6 forKey:v5];
}

Class __getWTWritingToolsControllerClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!WritingToolsUILibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __WritingToolsUILibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E8378348;
    v9 = 0;
    WritingToolsUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!WritingToolsUILibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *WritingToolsUILibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFWritingToolsAvailabilityResource.m" lineNumber:18 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("WTWritingToolsController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getWTWritingToolsControllerClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFWritingToolsAvailabilityResource.m" lineNumber:24 description:{@"Unable to find class %s", "WTWritingToolsController"}];

LABEL_10:
    __break(1u);
  }

  getWTWritingToolsControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __WritingToolsUILibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  WritingToolsUILibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id WFGallerySharingURLForIdentifier(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E695DFF8] URLWithString:@"https://www.icloud.com/shortcuts"];
  v3 = v2;
  if (v1)
  {
    v4 = WFGallerySharingIdentifierForRecordName(v1);
    v5 = [v3 URLByAppendingPathComponent:v4];
  }

  else
  {
    v5 = v2;
  }

  return v5;
}

id WFGallerySharingIdentifierForRecordName(void *a1)
{
  v1 = [a1 stringByReplacingOccurrencesOfString:@"-" withString:&stru_1F4A1C408];
  v2 = [v1 lowercaseString];

  return v2;
}

void initTCCAccessRequest(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  if (TCCLibrary_sOnce != -1)
  {
    dispatch_once(&TCCLibrary_sOnce, &__block_literal_global_31797);
  }

  v5 = dlsym(TCCLibrary_sLib, "TCCAccessRequest");
  softLinkTCCAccessRequest = v5;
  v6 = v7;
  if (v5)
  {
    (v5)(a1, a2, v7);
    v6 = v7;
  }
}

void sub_1CA7ED208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__31932(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void getEKEventStoreChangedNotification()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getEKEventStoreChangedNotificationSymbolLoc_ptr;
  v9 = getEKEventStoreChangedNotificationSymbolLoc_ptr;
  if (!getEKEventStoreChangedNotificationSymbolLoc_ptr)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __getEKEventStoreChangedNotificationSymbolLoc_block_invoke;
    v5[3] = &unk_1E837FAC0;
    v5[4] = &v6;
    __getEKEventStoreChangedNotificationSymbolLoc_block_invoke(v5);
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v1 = *v0;

    v2 = v1;
  }

  else
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSNotificationName getEKEventStoreChangedNotification(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFCalendarPickerParameter.m" lineNumber:22 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1CA7ED850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getEKEventStoreChangedNotificationSymbolLoc_block_invoke(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!EventKitLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __EventKitLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E83784B8;
    v8 = 0;
    EventKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = EventKitLibraryCore_frameworkLibrary;
  if (!EventKitLibraryCore_frameworkLibrary)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *EventKitLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"WFCalendarPickerParameter.m" lineNumber:21 description:{@"%s", v6[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v6[0];
  if (v6[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "EKEventStoreChangedNotification");
  *(*(a1[4] + 8) + 24) = result;
  getEKEventStoreChangedNotificationSymbolLoc_ptr = *(*(a1[4] + 8) + 24);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __EventKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  EventKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1CA7EFCB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCNContactClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!ContactsLibraryCore_frameworkLibrary_32362)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __ContactsLibraryCore_block_invoke_32363;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E83784F8;
    v9 = 0;
    ContactsLibraryCore_frameworkLibrary_32362 = _sl_dlopen();
  }

  if (!ContactsLibraryCore_frameworkLibrary_32362)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ContactsLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFMessageTrigger.m" lineNumber:16 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("CNContact");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCNContactClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFMessageTrigger.m" lineNumber:17 description:{@"Unable to find class %s", "CNContact"}];

LABEL_10:
    __break(1u);
  }

  getCNContactClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}