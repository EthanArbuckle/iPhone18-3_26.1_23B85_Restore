@interface CNContactStore(TUHandle)
- (id)tu_contactsByHandleForHandles:()TUHandle keyDescriptors:error:;
@end

@implementation CNContactStore(TUHandle)

- (id)tu_contactsByHandleForHandles:()TUHandle keyDescriptors:error:
{
  v64 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v34 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = v6;
  v42 = [obj countByEnumeratingWithState:&v56 objects:v63 count:16];
  if (v42)
  {
    v40 = *v57;
    do
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v57 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v56 + 1) + 8 * i);
        v10 = [MEMORY[0x1E695CD58] tu_contactHandlesForHandle:v9];
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v11 = [v10 countByEnumeratingWithState:&v52 objects:v62 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v53;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v53 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v52 + 1) + 8 * j);
              v16 = [v7 objectForKeyedSubscript:v15];
              if (v16)
              {
                v17 = v16;
                [v16 addObject:v9];
              }

              else
              {
                v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v9, 0}];
                [v7 setObject:v17 forKeyedSubscript:v15];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v52 objects:v62 count:16];
          }

          while (v12);
        }
      }

      v42 = [obj countByEnumeratingWithState:&v56 objects:v63 count:16];
    }

    while (v42);
  }

  v18 = [v7 allKeys];
  v19 = [a1 tu_contactsByContactHandleForContactHandles:v18 keyDescriptors:v34 error:a5];

  if (v19)
  {
    v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v36 = [v19 allKeys];
    v41 = [v36 countByEnumeratingWithState:&v48 objects:v61 count:16];
    if (v41)
    {
      v39 = *v49;
      do
      {
        v21 = 0;
        do
        {
          if (*v49 != v39)
          {
            objc_enumerationMutation(v36);
          }

          v43 = v21;
          v22 = *(*(&v48 + 1) + 8 * v21);
          v23 = [v7 objectForKeyedSubscript:v22];
          v24 = v23;
          if (v23)
          {
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v25 = [v23 countByEnumeratingWithState:&v44 objects:v60 count:16];
            if (v25)
            {
              v26 = v25;
              v27 = *v45;
              do
              {
                for (k = 0; k != v26; ++k)
                {
                  if (*v45 != v27)
                  {
                    objc_enumerationMutation(v24);
                  }

                  v29 = *(*(&v44 + 1) + 8 * k);
                  v30 = [v19 objectForKeyedSubscript:v22];
                  [v20 setObject:v30 forKeyedSubscript:v29];
                }

                v26 = [v24 countByEnumeratingWithState:&v44 objects:v60 count:16];
              }

              while (v26);
            }
          }

          v21 = v43 + 1;
        }

        while (v43 + 1 != v41);
        v41 = [v36 countByEnumeratingWithState:&v48 objects:v61 count:16];
      }

      while (v41);
    }
  }

  else
  {
    v20 = 0;
  }

  v31 = [v20 copy];

  v32 = *MEMORY[0x1E69E9840];

  return v31;
}

@end