@interface NSDictionary(SUCoreDictionary)
+ (__CFString)_safeValueName:()SUCoreDictionary ofMaxFieldLength:providingSubstitutionMap:;
+ (__CFString)safeSummaryForDictionary:()SUCoreDictionary;
+ (id)_safeKeyName:()SUCoreDictionary paddedToLength:;
- (id)_safeDescriptionWithName:()SUCoreDictionary atNestedLevel:maxNestedLevel:showingSubLevelName:withMaxValueLength:providingSubstitutionMap:;
- (id)safeDataForKey:()SUCoreDictionary;
- (id)safeDateForKey:()SUCoreDictionary;
- (id)safeDictionaryForKey:()SUCoreDictionary fromBase:withKeyDescription:;
- (id)safeObjectForKey:()SUCoreDictionary ofClass:;
- (id)safeStringForKey:()SUCoreDictionary;
- (id)safeSubDescriptionAtNestedLevel:()SUCoreDictionary instanceAtLevel:withMaxValueLength:providingSubstitutionMap:;
- (id)safeSummary;
- (uint64_t)safeBooleanForKey:()SUCoreDictionary defaultValue:;
- (uint64_t)safeIntegerForKey:()SUCoreDictionary;
- (uint64_t)safeIntegerForKey:()SUCoreDictionary defaultValue:;
- (uint64_t)safeLLForKey:()SUCoreDictionary defaultValue:;
- (uint64_t)safeULForKey:()SUCoreDictionary defaultValue:;
- (uint64_t)safeULLForKey:()SUCoreDictionary defaultValue:;
- (unint64_t)safeTriStateForKey:()SUCoreDictionary defaultValue:;
- (void)_logReturningDefault:()SUCoreDictionary forKey:valueType:defaultValueName:;
- (void)_logReturningNil:()SUCoreDictionary forKey:valueType:fromBase:withKeyDescription:;
@end

@implementation NSDictionary(SUCoreDictionary)

- (id)safeSummary
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__3;
  v12 = __Block_byref_object_dispose__3;
  v13 = @"{";
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2020000000;
  v7 = 1;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__NSDictionary_SUCoreDictionary__safeSummary__block_invoke;
  v5[3] = &unk_1E86FCA08;
  v5[4] = v6;
  v5[5] = &v8;
  [a1 enumerateKeysAndObjectsUsingBlock:v5];
  v1 = [v9[5] stringByAppendingString:@"}"];
  v2 = v9[5];
  v9[5] = v1;

  v3 = v9[5];
  _Block_object_dispose(v6, 8);
  _Block_object_dispose(&v8, 8);

  return v3;
}

- (uint64_t)safeBooleanForKey:()SUCoreDictionary defaultValue:
{
  v6 = a3;
  v7 = [a1 objectForKey:v6];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    a4 = [v7 BOOLValue];
  }

  else
  {
    if (a4)
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    [a1 _logReturningDefault:v7 forKey:v6 valueType:@"BOOLean" defaultValueName:v8];
  }

  return a4;
}

- (uint64_t)safeLLForKey:()SUCoreDictionary defaultValue:
{
  v6 = a3;
  v7 = [a1 objectForKey:v6];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    a4 = [v7 longLongValue];
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", a4];
    [a1 _logReturningDefault:v7 forKey:v6 valueType:@"ll" defaultValueName:v8];
  }

  return a4;
}

- (uint64_t)safeULForKey:()SUCoreDictionary defaultValue:
{
  v6 = a3;
  v7 = [a1 objectForKey:v6];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    a4 = [v7 unsignedLongValue];
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lu", a4];
    [a1 _logReturningDefault:v7 forKey:v6 valueType:@"ul" defaultValueName:v8];
  }

  return a4;
}

- (uint64_t)safeULLForKey:()SUCoreDictionary defaultValue:
{
  v6 = a3;
  v7 = [a1 objectForKey:v6];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    a4 = [v7 unsignedLongLongValue];
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%llu", a4];
    [a1 _logReturningDefault:v7 forKey:v6 valueType:@"ull" defaultValueName:v8];
  }

  return a4;
}

- (uint64_t)safeIntegerForKey:()SUCoreDictionary
{
  v4 = a3;
  v5 = [a1 safeIntegerForKey:v4 defaultValue:{objc_msgSend(&unk_1F5BE9790, "integerValue")}];

  return v5;
}

- (uint64_t)safeIntegerForKey:()SUCoreDictionary defaultValue:
{
  v6 = a3;
  v7 = [a1 objectForKey:v6];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    a4 = [v7 integerValue];
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%llu", a4];
    [a1 _logReturningDefault:v7 forKey:v6 valueType:@"integer" defaultValueName:v8];
  }

  return a4;
}

- (unint64_t)safeTriStateForKey:()SUCoreDictionary defaultValue:
{
  v6 = a3;
  v7 = [a1 objectForKey:v6];
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 integerValue];
      if (v8 < 2)
      {
        goto LABEL_12;
      }

      v9 = +[SUCoreLog sharedLogger];
      v10 = [v9 oslog];

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(NSDictionary(SUCoreDictionary) *)v6 safeTriStateForKey:v7 defaultValue:v10];
      }
    }
  }

  if (a4 >= 3)
  {
    v11 = +[SUCoreLog sharedLogger];
    v12 = [v11 oslog];

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(NSDictionary(SUCoreDictionary) *)v6 safeTriStateForKey:a4 defaultValue:v12];
    }

    a4 = 2;
  }

  v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%llu", a4];
  [a1 _logReturningDefault:v7 forKey:v6 valueType:@"integer" defaultValueName:v13];

  v8 = a4;
LABEL_12:

  return v8;
}

- (id)safeStringForKey:()SUCoreDictionary
{
  v4 = a3;
  v5 = [a1 objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
  }

  else
  {
    [a1 _logReturningNil:v5 forKey:v4 valueType:@"string"];
    v6 = 0;
  }

  return v6;
}

- (id)safeDictionaryForKey:()SUCoreDictionary fromBase:withKeyDescription:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [a1 objectForKey:v8];
  if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v12 = v11;
  }

  else
  {
    [a1 _logReturningNil:v11 forKey:v8 valueType:@"dictionary" fromBase:v9 withKeyDescription:v10];
    v12 = 0;
  }

  return v12;
}

- (id)safeDataForKey:()SUCoreDictionary
{
  v4 = a3;
  v5 = [a1 objectForKey:v4];
  if (!v5)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v6 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v5 options:1]) == 0)
  {
LABEL_6:
    [a1 _logReturningNil:v5 forKey:v4 valueType:@"data"];
    v6 = 0;
  }

LABEL_7:

  return v6;
}

- (id)safeDateForKey:()SUCoreDictionary
{
  v4 = a3;
  v5 = [a1 objectForKey:v4];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      goto LABEL_10;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = objc_alloc_init(MEMORY[0x1E696AB78]);
      [v7 setDateFormat:@"yyyy-MM-dd"];
      v6 = [v7 dateFromString:v5];
      if (v6)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {

          goto LABEL_10;
        }
      }
    }
  }

  [a1 _logReturningNil:v5 forKey:v4 valueType:@"date"];
  v6 = 0;
LABEL_10:

  return v6;
}

- (id)safeObjectForKey:()SUCoreDictionary ofClass:
{
  v6 = a3;
  v7 = [a1 objectForKey:v6];
  if (v7 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = v7;
  }

  else
  {
    if (a4)
    {
      v9 = NSStringFromClass(a4);
      if (v9)
      {
        v10 = NSStringFromClass(a4);
      }

      else
      {
        v10 = @"nil-object-class";
      }
    }

    else
    {
      v10 = @"nil-object-class";
    }

    [a1 _logReturningNil:v7 forKey:v6 valueType:v10];

    v8 = 0;
  }

  return v8;
}

- (id)_safeDescriptionWithName:()SUCoreDictionary atNestedLevel:maxNestedLevel:showingSubLevelName:withMaxValueLength:providingSubstitutionMap:
{
  v14 = a3;
  v15 = a8;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__3;
  v46 = __Block_byref_object_dispose__3;
  v47 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  if (a4)
  {
    v16 = [MEMORY[0x1E696AEC0] string];
    v17 = [v16 stringByPaddingToLength:4 * a4 withString:@" " startingAtIndex:0];

    if (a6)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@ <sub-dictionary>:\n%@{>>>\n", v17, v14, v17];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%@{>>>\n", v17];
    }
    v18 = ;
  }

  else
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ <dictionary>:\n{>>>\n", v14];
    v17 = &stru_1F5BDE410;
  }

  v19 = v43[5];
  v43[5] = v18;

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __152__NSDictionary_SUCoreDictionary___safeDescriptionWithName_atNestedLevel_maxNestedLevel_showingSubLevelName_withMaxValueLength_providingSubstitutionMap___block_invoke;
  v37[3] = &unk_1E86FC990;
  v37[4] = &v38;
  [a1 enumerateKeysAndObjectsUsingBlock:v37];
  if (v39[3])
  {
    v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"[%llu]", a4];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __152__NSDictionary_SUCoreDictionary___safeDescriptionWithName_atNestedLevel_maxNestedLevel_showingSubLevelName_withMaxValueLength_providingSubstitutionMap___block_invoke_2;
    v28[3] = &unk_1E86FC9B8;
    v32 = &v38;
    v34 = a4;
    v35 = a5;
    v36 = a7;
    v29 = v15;
    v33 = &v42;
    v21 = v20;
    v30 = v21;
    v31 = v17;
    [a1 enumerateKeysAndObjectsUsingBlock:v28];
  }

  v22 = v43[5];
  v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@<<<}", v17];
  v24 = [v22 stringByAppendingString:v23];
  v25 = v43[5];
  v43[5] = v24;

  v26 = v43[5];
  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);

  return v26;
}

- (id)safeSubDescriptionAtNestedLevel:()SUCoreDictionary instanceAtLevel:withMaxValueLength:providingSubstitutionMap:
{
  v10 = a6;
  if (a3 == 1)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__3;
    v26 = __Block_byref_object_dispose__3;
    v27 = 0;
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__3;
    v20 = __Block_byref_object_dispose__3;
    v21 = 0;
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x2020000000;
    v15[3] = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __126__NSDictionary_SUCoreDictionary__safeSubDescriptionAtNestedLevel_instanceAtLevel_withMaxValueLength_providingSubstitutionMap___block_invoke;
    v14[3] = &unk_1E86FC9E0;
    v14[4] = v15;
    v14[5] = &v22;
    v14[6] = &v16;
    v14[7] = a4;
    [a1 enumerateKeysAndObjectsUsingBlock:v14];
    v11 = v17[5];
    if (v11)
    {
      v12 = [v11 _safeDescriptionWithName:v23[5] atNestedLevel:1 maxNestedLevel:3 showingSubLevelName:1 withMaxValueLength:a5 providingSubstitutionMap:v10];
    }

    else
    {
      v12 = 0;
    }

    _Block_object_dispose(v15, 8);
    _Block_object_dispose(&v16, 8);

    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)_safeKeyName:()SUCoreDictionary paddedToLength:
{
  v5 = a3;
  v6 = [v5 length];
  v7 = v5;
  v8 = v7;
  v9 = a4 >= v6;
  v10 = a4 - v6;
  if (v10 != 0 && v9)
  {
    v11 = [MEMORY[0x1E696AEC0] string];
    v12 = [v11 stringByPaddingToLength:v10 withString:@" " startingAtIndex:0];

    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@%@", v12, v8];
  }

  else
  {
    v13 = v7;
    if (v9)
    {
      goto LABEL_7;
    }

    v13 = [v7 substringWithRange:{0, a4}];
    v12 = v8;
  }

LABEL_7:

  return v13;
}

+ (__CFString)_safeValueName:()SUCoreDictionary ofMaxFieldLength:providingSubstitutionMap:
{
  v7 = a3;
  v8 = a5;
  if (!v7)
  {
    v9 = @"<nil>";
    goto LABEL_37;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = @"<NSNull>";
    goto LABEL_37;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v7 unsignedLongLongValue];
      if (!v12)
      {
        v9 = @"0[NO]";
        goto LABEL_37;
      }

      if (v12 == 1)
      {
        v9 = @"1[YES]";
        goto LABEL_37;
      }

      v15 = [MEMORY[0x1E695DF58] currentLocale];
      v11 = [v7 descriptionWithLocale:v15];

      if (!v11)
      {
        v9 = @"<NSNumber>";
        goto LABEL_36;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = objc_opt_new();
        [v11 setDateFormat:@"dd-MM-yyyy-hh-mm-ss"];
        v13 = [v11 stringFromDate:v7];
        v14 = v13;
        if (v13)
        {
          v9 = v13;
        }

        else
        {
          v9 = @"<NSDate>";
        }

        goto LABEL_36;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = @"<NSDictionary>";
        goto LABEL_37;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = @"<NSData>";
        goto LABEL_37;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = @"<NSArray>";
        goto LABEL_37;
      }

      v20 = objc_opt_class();
      v11 = NSStringFromClass(v20);
      if (!v11)
      {
        v9 = @"(not shown)";
        goto LABEL_36;
      }
    }

    goto LABEL_24;
  }

  if (!a4 || [v7 length] <= a4)
  {
    v9 = v7;
    goto LABEL_37;
  }

  if (!v8)
  {
    if (a4 < 8)
    {
      v9 = @"<NSString>";
      goto LABEL_37;
    }

    v17 = a4 - 2;
    v18 = MEMORY[0x1E696AEC0];
    v11 = [v7 substringWithRange:{0, v17}];
    v16 = [v18 stringWithFormat:@"%@..", v11];
    goto LABEL_35;
  }

  v10 = [SUCore limitString:v7 toMaxLength:a4 providingSubstitutionMap:v8];
  v11 = v10;
  if (v10 && [v10 length] <= a4)
  {
LABEL_24:
    v16 = v11;
LABEL_35:
    v9 = v16;
    goto LABEL_36;
  }

  v9 = @"<NSString>";
LABEL_36:

LABEL_37:

  return v9;
}

+ (__CFString)safeSummaryForDictionary:()SUCoreDictionary
{
  v3 = a3;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v3 safeSummary];
    }

    else
    {
      v4 = @"NOT-DICTIONARY";
    }
  }

  else
  {
    v4 = @"NONE";
  }

  return v4;
}

- (void)_logReturningDefault:()SUCoreDictionary forKey:valueType:defaultValueName:
{
  v21 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v11 = a6;
  if (a3)
  {
    v12 = +[SUCoreLog sharedLogger];
    v13 = [v12 oslog];

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = 138543874;
      v16 = v9;
      v17 = 2114;
      v18 = v10;
      v19 = 2114;
      v20 = v11;
      _os_log_error_impl(&dword_1E0F71000, v13, OS_LOG_TYPE_ERROR, "[SUCoreDictionary] key '%{public}@' is the incorrect class, returning %{public}@ default value: %{public}@", &v15, 0x20u);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_logReturningNil:()SUCoreDictionary forKey:valueType:fromBase:withKeyDescription:
{
  v38 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (v11)
  {
    v16 = +[SUCoreLog sharedLogger];
    v17 = [v16 oslog];

    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (v14)
    {
      if (v15)
      {
        if (v18)
        {
          v19 = objc_opt_class();
          v20 = NSStringFromClass(v19);
          v28 = 138544386;
          v29 = v14;
          v30 = 2114;
          v31 = v12;
          v32 = 2114;
          v33 = v15;
          v34 = 2114;
          v35 = v20;
          v36 = 2114;
          v37 = v13;
          v21 = "[SUCoreDictionary] [%{public}@] key '%{public}@' (%{public}@) references value of the incorrect class (%{public}@), returning %{public}@ value: nil";
          v22 = v17;
          v23 = 52;
LABEL_14:
          _os_log_error_impl(&dword_1E0F71000, v22, OS_LOG_TYPE_ERROR, v21, &v28, v23);
        }

LABEL_15:

        goto LABEL_16;
      }

      if (!v18)
      {
        goto LABEL_15;
      }

      v25 = objc_opt_class();
      v20 = NSStringFromClass(v25);
      v28 = 138544130;
      v29 = v14;
      v30 = 2114;
      v31 = v12;
      v32 = 2114;
      v33 = v20;
      v34 = 2114;
      v35 = v13;
      v21 = "[SUCoreDictionary] [%{public}@] key '%{public}@' references value of the incorrect class (%{public}@), returning %{public}@ value: nil";
    }

    else
    {
      if (!v15)
      {
        if (v18)
        {
          v26 = objc_opt_class();
          v20 = NSStringFromClass(v26);
          v28 = 138543874;
          v29 = v12;
          v30 = 2114;
          v31 = v20;
          v32 = 2114;
          v33 = v13;
          v21 = "[SUCoreDictionary] key '%{public}@' references value of the incorrect class (%{public}@), returning %{public}@ value: nil";
          v22 = v17;
          v23 = 32;
          goto LABEL_14;
        }

        goto LABEL_15;
      }

      if (!v18)
      {
        goto LABEL_15;
      }

      v24 = objc_opt_class();
      v20 = NSStringFromClass(v24);
      v28 = 138544130;
      v29 = v12;
      v30 = 2114;
      v31 = v15;
      v32 = 2114;
      v33 = v20;
      v34 = 2114;
      v35 = v13;
      v21 = "[SUCoreDictionary] key '%{public}@' (%{public}@) references value of the incorrect class (%{public}@), returning %{public}@ value: nil";
    }

    v22 = v17;
    v23 = 42;
    goto LABEL_14;
  }

LABEL_16:

  v27 = *MEMORY[0x1E69E9840];
}

- (void)safeTriStateForKey:()SUCoreDictionary defaultValue:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_1E0F71000, log, OS_LOG_TYPE_ERROR, "[SUCoreDictionary] key '%{public}@' is invalid value: %{public}@, returning default value", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)safeTriStateForKey:()SUCoreDictionary defaultValue:.cold.2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
  v7 = 138543618;
  v8 = a1;
  v9 = 2114;
  v10 = v5;
  _os_log_error_impl(&dword_1E0F71000, a3, OS_LOG_TYPE_ERROR, "[SUCoreDictionary] key '%{public}@' is invalid value: %{public}@, returning SUCoreTriStateNotSet", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end