@interface NSDictionary(MTLJSONKeyPath)
- (id)mtl_valueForJSONKeyPath:()MTLJSONKeyPath success:error:;
@end

@implementation NSDictionary(MTLJSONKeyPath)

- (id)mtl_valueForJSONKeyPath:()MTLJSONKeyPath success:error:
{
  v53[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 length];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = [v6 characterAtIndex:v11];
      if (v13 == 46)
      {
        v16 = [v6 substringWithRange:{v10, v11 - v10}];
        v17 = v16;
        if (v9)
        {
          v18 = [v16 stringByReplacingOccurrencesOfString:@"\\." withString:@"."];

          v17 = v18;
        }

        if (v12)
        {
          [v12 addObject:v17];
        }

        else
        {
          v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v17, 0}];
        }

        v14 = v11 + 1;

        v9 = 0;
        v10 = v11 + 1;
      }

      else if (v13 == 92)
      {
        v14 = v11 + 1;
        if (v11 + 1 < v8)
        {
          v15 = [v6 characterAtIndex:v11 + 1];
          if (v15 == 46)
          {
            v14 = v11 + 2;
          }

          else
          {
            v14 = v11;
          }

          v9 |= v15 == 46;
        }
      }

      else
      {
        v14 = v11 + 1;
      }

      v11 = v14;
    }

    while (v14 < v8);
    if (v10)
    {
      v19 = [v6 substringWithRange:{v10, v8 - v10}];
    }

    else
    {
      v19 = v6;
    }

    v20 = v19;
    if (v9)
    {
      v21 = [v19 stringByReplacingOccurrencesOfString:@"\\." withString:@"."];

      v20 = v21;
    }

    if (v12)
    {
      [v12 addObject:v20];
      v22 = v12;
      v23 = v22;
      goto LABEL_27;
    }
  }

  else
  {
    v20 = v6;
  }

  v53[0] = v20;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:1];
  v22 = 0;
LABEL_27:

  selfCopy = self;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v25 = v23;
  v26 = [v25 countByEnumeratingWithState:&v46 objects:v52 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v47;
    v43 = selfCopy;
    while (2)
    {
      v29 = 0;
      v30 = selfCopy;
      do
      {
        if (*v47 != v28)
        {
          objc_enumerationMutation(v25);
        }

        if (!v30)
        {
          selfCopy = 0;
          goto LABEL_40;
        }

        v31 = *(*(&v46 + 1) + 8 * v29);
        null = [MEMORY[0x1E695DFB0] null];

        if (v30 == null)
        {
          selfCopy = v30;
          goto LABEL_40;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (a5)
          {
            v50[0] = *MEMORY[0x1E696A578];
            mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
            v37 = [mainBundle localizedStringForKey:@"Invalid JSON dictionary" value:&stru_1F4A1C408 table:0];
            v50[1] = *MEMORY[0x1E696A588];
            v51[0] = v37;
            v38 = MEMORY[0x1E696AEC0];
            mainBundle2 = [MEMORY[0x1E696AAE8] mainBundle];
            v40 = [mainBundle2 localizedStringForKey:@"JSON key path %1$@ could not resolved because an incompatible JSON dictionary was supplied: %2$@" value:&stru_1F4A1C408 table:0];
            v41 = [v38 stringWithFormat:v40, v6, v43];
            v51[1] = v41;
            v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:2];

            *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MTLJSONAdapterErrorDomain" code:3 userInfo:v42];
          }

          if (a4)
          {
            *a4 = 0;
          }

          v33 = 0;
          goto LABEL_43;
        }

        selfCopy = [v30 objectForKeyedSubscript:v31];

        ++v29;
        v30 = selfCopy;
      }

      while (v27 != v29);
      v27 = [v25 countByEnumeratingWithState:&v46 objects:v52 count:16];
      if (v27)
      {
        continue;
      }

      break;
    }
  }

LABEL_40:

  if (a4)
  {
    *a4 = 1;
  }

  v30 = selfCopy;
  v33 = v30;
LABEL_43:

  v34 = *MEMORY[0x1E69E9840];

  return v33;
}

@end