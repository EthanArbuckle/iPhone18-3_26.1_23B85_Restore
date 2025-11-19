@interface PETEventStringValidator
+ (BOOL)dictionaryContainsValidStrings:(id)a3;
+ (BOOL)setContainsValidStrings:(id)a3;
+ (BOOL)stringIsValid:(id)a3;
+ (id)sanitizedDictionary:(id)a3;
+ (id)sanitizedSet:(id)a3;
+ (id)sanitizedString:(id)a3;
@end

@implementation PETEventStringValidator

+ (id)sanitizedSet:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [a1 sanitizedString:{*(*(&v15 + 1) + 8 * i), v15}];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)sanitizedDictionary:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [v6 objectForKeyedSubscript:{v11, v19}];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [a1 sanitizedString:v11];

          v11 = v13;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [a1 sanitizedString:v12];

          v12 = v14;
        }

        if (v11)
        {
          v15 = v12 == 0;
        }

        else
        {
          v15 = 1;
        }

        if (!v15)
        {
          [v5 setObject:v12 forKeyedSubscript:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v16 = [v5 copy];
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)sanitizedString:(id)a3
{
  v3 = a3;
  v4 = [(__CFString *)v3 length];
  if (!v4)
  {
    v24 = v3;
    goto LABEL_38;
  }

  v5 = v4;
  v6 = malloc_type_calloc(v4, 1uLL, 0x100004077774924uLL);
  if (!v6)
  {
    v24 = 0;
    goto LABEL_38;
  }

  v7 = v6;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  theString = v3;
  v37 = 0;
  v38 = v5;
  CharactersPtr = CFStringGetCharactersPtr(v3);
  CStringPtr = 0;
  v35 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v3, 0x600u);
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v39 = 0;
  v40 = 0;
  v13 = 64;
  v36 = CStringPtr;
  do
  {
    if (v12 >= 4)
    {
      v14 = 4;
    }

    else
    {
      v14 = v12;
    }

    if (v12 < 0 || (v15 = v38, v38 <= v12))
    {
LABEL_22:
      LOBYTE(v17) = 95;
      goto LABEL_23;
    }

    if (v35)
    {
      v16 = &v35[v37];
LABEL_13:
      v17 = v16[v12];
      goto LABEL_16;
    }

    if (!v36)
    {
      if (v40 <= v12 || v11 > v12)
      {
        v19 = v14 + v10;
        v20 = v13 - v14;
        v21 = v12 - v14;
        v22 = v21 + 64;
        if (v21 + 64 >= v38)
        {
          v22 = v38;
        }

        v39 = v21;
        v40 = v22;
        if (v38 >= v20)
        {
          v15 = v20;
        }

        v42.location = v21 + v37;
        v42.length = v15 + v19;
        CFStringGetCharacters(theString, v42, &v26);
        v11 = v39;
      }

      v16 = &v26 - v11;
      goto LABEL_13;
    }

    v17 = v36[v37 + v12];
LABEL_16:
    v18 = v17 - 65 > 0x39 || ((1 << (v17 - 65)) & 0x3FFFFFF43FFFFFFLL) == 0;
    if (v18 && v17 - 48 >= 0xA)
    {
      goto LABEL_22;
    }

LABEL_23:
    v7[v12++] = v17;
    --v10;
    ++v13;
  }

  while (v5 != v12);
  if (*v7 == 95)
  {
    *v7 = 120;
  }

  v23 = objc_alloc(MEMORY[0x1E696AEC0]);
  v24 = [v23 initWithBytes:v7 length:v5 encoding:{1, v26, v27, v28, v29, v30, v31, v32, v33}];
  free(v7);
LABEL_38:

  return v24;
}

+ (BOOL)setContainsValidStrings:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (![a1 stringIsValid:{*(*(&v12 + 1) + 8 * i), v12}])
        {
          v9 = 0;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_11:

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (BOOL)dictionaryContainsValidStrings:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ![a1 stringIsValid:{v9, v14}])
        {
          goto LABEL_14;
        }

        v10 = [v4 objectForKeyedSubscript:{v9, v14}];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ![a1 stringIsValid:v10])
        {

LABEL_14:
          v11 = 0;
          goto LABEL_15;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_15:

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (BOOL)stringIsValid:(id)a3
{
  v3 = a3;
  v4 = [(__CFString *)v3 length];
  if (v4)
  {
    v5 = v4;
    memset(v27, 0, sizeof(v27));
    theString = v3;
    v31 = 0;
    v32 = v4;
    CharactersPtr = CFStringGetCharactersPtr(v3);
    CStringPtr = 0;
    v29 = CharactersPtr;
    if (!CharactersPtr)
    {
      CStringPtr = CFStringGetCStringPtr(v3, 0x600u);
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v33 = 0;
    v34 = 0;
    v11 = 64;
    v30 = CStringPtr;
    v12 = MEMORY[0x1E69E9830];
    while (1)
    {
      if (v10 >= 4)
      {
        v13 = 4;
      }

      else
      {
        v13 = v10;
      }

      if (v10 < 0 || (v14 = v32, v32 <= v10))
      {
        v17 = 0;
        v16 = 0;
        goto LABEL_14;
      }

      if (v29)
      {
        break;
      }

      if (!v30)
      {
        if (v34 <= v10 || (v21 = v33, v33 > v10))
        {
          v22 = v13 + v8;
          v23 = v11 - v13;
          v24 = v10 - v13;
          v25 = v24 + 64;
          if (v24 + 64 >= v32)
          {
            v25 = v32;
          }

          v33 = v24;
          v34 = v25;
          if (v32 >= v23)
          {
            v14 = v23;
          }

          v35.location = v24 + v31;
          v35.length = v14 + v22;
          CFStringGetCharacters(theString, v35, v27);
          v21 = v33;
        }

        v15 = v27 - v21;
        goto LABEL_12;
      }

      v16 = v30[v31 + v10];
LABEL_23:
      v17 = v16;
      if (v16 > 0x7Fu)
      {
        v18 = __maskrune(v16, 0x500uLL);
        v19 = 1;
        goto LABEL_15;
      }

LABEL_14:
      v18 = *(v12 + 4 * v17 + 60) & 0x500;
      v19 = v16 != 95;
LABEL_15:
      v20 = !v19;
      if (!v10)
      {
        v20 = 0;
      }

      if (v20 || v18)
      {
        v9 = ++v10 >= v5;
        --v8;
        ++v11;
        if (v5 != v10)
        {
          continue;
        }
      }

      goto LABEL_34;
    }

    v15 = &v29[v31];
LABEL_12:
    v16 = v15[v10];
    goto LABEL_23;
  }

  v9 = 0;
LABEL_34:

  return v9;
}

@end