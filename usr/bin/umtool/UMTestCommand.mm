@interface UMTestCommand
+ (BOOL)executeWithOutError:(id *)a3;
+ (id)_spaceForDepth:(unint64_t)a3;
+ (id)helpDetailsForDepth:(unint64_t)a3;
@end

@implementation UMTestCommand

+ (id)_spaceForDepth:(unint64_t)a3
{
  for (i = objc_opt_new(); a3; --a3)
  {
    [i appendString:@"\t"];
  }

  return i;
}

+ (id)helpDetailsForDepth:(unint64_t)a3
{
  v5 = objc_opt_new();
  v6 = [a1 name];
  if (v6)
  {
    v7 = [a1 _spaceForDepth:a3];
    v8 = [a1 _spaceForDepth:a3 + 1];
    v9 = [a1 _spaceForDepth:a3 + 2];
    v10 = [a1 name];
    [v5 appendFormat:@"%@%@%@", v7, v10, @"\n"];

    v11 = [a1 description];
    v12 = v11;
    if (v11)
    {
      [v5 appendFormat:@"%@Description: %@%@", v8, v11, @"\n"];
    }

    v13 = [a1 examples];
    v39 = v13;
    if (v13)
    {
      v14 = v13;
      if ([v13 count])
      {
        v31 = v12;
        v33 = v8;
        v35 = v7;
        v37 = v6;
        [v5 appendFormat:@"%@Examples:%@", v8, @"\n"];
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v15 = v14;
        v16 = [v15 countByEnumeratingWithState:&v44 objects:v49 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v45;
          do
          {
            for (i = 0; i != v17; i = i + 1)
            {
              if (*v45 != v18)
              {
                objc_enumerationMutation(v15);
              }

              [v5 appendFormat:@"%@%@%@", v9, *(*(&v44 + 1) + 8 * i), @"\n"];
            }

            v17 = [v15 countByEnumeratingWithState:&v44 objects:v49 count:16];
          }

          while (v17);
        }

        v7 = v35;
        v6 = v37;
        v12 = v31;
        v8 = v33;
      }
    }

    v20 = [a1 subcommands];
    v21 = v20;
    if (v20 && [v20 count])
    {
      v32 = v12;
      v34 = v8;
      v36 = v7;
      v38 = v6;
      [v5 appendFormat:@"%@%@Subcommands:%@", @"\n", v8, @"\n"];
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v30 = v21;
      v22 = v21;
      v23 = [v22 countByEnumeratingWithState:&v40 objects:v48 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v41;
        do
        {
          for (j = 0; j != v24; j = j + 1)
          {
            if (*v41 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = [*(*(&v40 + 1) + 8 * j) helpDetailsForDepth:a3 + 2];
            [v5 appendFormat:@"%@%@", @"\n", v27];
          }

          v24 = [v22 countByEnumeratingWithState:&v40 objects:v48 count:16];
        }

        while (v24);
      }

      v7 = v36;
      v6 = v38;
      v12 = v32;
      v8 = v34;
      v21 = v30;
    }

    v28 = [v5 copy];
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

+ (BOOL)executeWithOutError:(id *)a3
{
  v5 = +[UMTestArguments getNextArgument];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [a1 subcommands];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v18 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v17 + 1) + 8 * v10);
      v12 = [v11 name];
      v13 = [v12 isEqualToString:v5];

      if (v13)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v14 = [v11 executeWithOutError:a3];

    if ((v14 & 1) == 0)
    {
      goto LABEL_12;
    }

    v15 = 1;
  }

  else
  {
LABEL_9:

LABEL_12:
    +[UMTestArguments goToPreviousArgument];
    v15 = 0;
  }

  return v15;
}

@end