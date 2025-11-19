@interface SearchUIButtonItemAccessoryViewController
+ (BOOL)supportsRowModel:(id)a3;
- (id)buttonTypes;
- (id)setupView;
- (void)updateWithRowModel:(id)a3;
@end

@implementation SearchUIButtonItemAccessoryViewController

+ (BOOL)supportsRowModel:(id)a3
{
  v3 = a3;
  v4 = [v3 action];
  v5 = [v3 buttonItems];
  if ([v5 count] && (objc_msgSend(v3, "buttonItemsAreTrailing") & 1) != 0)
  {
    v6 = 1;
  }

  else
  {
    v7 = [v4 contactIdentifier];
    if (v7)
    {
      v6 = 1;
    }

    else
    {
      v8 = [v4 phoneNumber];
      if (v8)
      {
        v6 = 1;
      }

      else
      {
        v9 = [v4 email];
        if (v9)
        {
          v6 = 1;
        }

        else
        {
          v10 = [v4 mapsData];
          if (v10)
          {
            v6 = 1;
          }

          else
          {
            v11 = [v4 location];
            if (v11)
            {
              v6 = 1;
            }

            else
            {
              v12 = [v4 customDirectionsPunchout];
              if (v12)
              {
                v6 = 1;
              }

              else
              {
                v13 = [v4 messageURL];
                if (v13)
                {
                  v6 = 1;
                }

                else
                {
                  v16 = [v4 label];
                  if ([v16 length])
                  {
                    v15 = [v4 storeIdentifiers];
                    v6 = [v15 count] == 0;
                  }

                  else
                  {
                    v6 = 0;
                  }

                  v13 = 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return v6;
}

- (id)setupView
{
  v2 = objc_opt_new();

  return v2;
}

- (void)updateWithRowModel:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = [v4 buttonItems];
  v35 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (!v35)
  {
    v24 = 0;
    goto LABEL_37;
  }

  v31 = self;
  v32 = v4;
  v36 = 1;
  v34 = *v38;
  v5 = 1;
  do
  {
    for (i = 0; i != v35; ++i)
    {
      if (*v38 != v34)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v37 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }

      v9 = v8;
      v10 = [v9 image];
      v11 = v10 == 0;

      v12 = [v9 title];
      v13 = [v12 length];
      v14 = v13 != 0;

      if (v10)
      {
        v15 = v13 == 0;
      }

      else
      {
        v15 = 0;
      }

      if (v15)
      {
        v16 = [v9 image];
        objc_opt_class();
        v36 &= objc_opt_isKindOfClass();
      }

      else
      {
        v36 = 0;
      }

      if (objc_opt_respondsToSelector())
      {
        v17 = [v7 performSelector:sel_toggleButtonConfiguration];
        v18 = v17;
        if (v10)
        {
          v11 = 0;
          if (v13)
          {
            goto LABEL_18;
          }

LABEL_23:
          v21 = [v18 toggledTitle];
          if ([v21 length])
          {
            v14 = 1;
          }

          else
          {
            v22 = [v18 untoggledTitle];
            v14 = [v22 length] != 0;
          }
        }

        else
        {
          v19 = [v17 toggledImage];
          if (v19)
          {
            v11 = 0;
          }

          else
          {
            v20 = [v18 untoggledImage];
            v11 = v20 == 0;
          }

          if (!v13)
          {
            goto LABEL_23;
          }

LABEL_18:
          v14 = 1;
        }
      }

      v5 &= v14 && v11;
    }

    v35 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  }

  while (v35);
  v23 = 3;
  if ((v5 & 1) == 0)
  {
    v23 = 1;
  }

  if (v36)
  {
    v24 = 0;
  }

  else
  {
    v24 = v23;
  }

  self = v31;
  v4 = v32;
LABEL_37:

  v25 = [v4 useCompactVersionOfUI];
  v26 = [(SearchUIAccessoryViewController *)self view];
  [v26 setIsCompact:v25];

  v27 = [(SearchUIAccessoryViewController *)self view];
  v28 = [v4 buttonItems];
  if ([MEMORY[0x1E69D9240] isMacOS])
  {
    v29 = 5;
  }

  else
  {
    v29 = 3;
  }

  v30 = [(SearchUIAccessoryViewController *)self feedbackDelegate:v31];
  [v27 updateWithButtonItems:v28 maxButtonItems:v29 buttonItemViewType:v24 rowModel:v4 feedbackDelegate:v30];
}

- (id)buttonTypes
{
  v2 = [(SearchUIAccessoryViewController *)self view];
  v3 = [v2 buttonTypes];

  return v3;
}

@end