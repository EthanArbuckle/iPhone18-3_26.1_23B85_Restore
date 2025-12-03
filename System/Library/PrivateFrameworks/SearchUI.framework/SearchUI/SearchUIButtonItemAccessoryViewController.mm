@interface SearchUIButtonItemAccessoryViewController
+ (BOOL)supportsRowModel:(id)model;
- (id)buttonTypes;
- (id)setupView;
- (void)updateWithRowModel:(id)model;
@end

@implementation SearchUIButtonItemAccessoryViewController

+ (BOOL)supportsRowModel:(id)model
{
  modelCopy = model;
  action = [modelCopy action];
  buttonItems = [modelCopy buttonItems];
  if ([buttonItems count] && (objc_msgSend(modelCopy, "buttonItemsAreTrailing") & 1) != 0)
  {
    v6 = 1;
  }

  else
  {
    contactIdentifier = [action contactIdentifier];
    if (contactIdentifier)
    {
      v6 = 1;
    }

    else
    {
      phoneNumber = [action phoneNumber];
      if (phoneNumber)
      {
        v6 = 1;
      }

      else
      {
        email = [action email];
        if (email)
        {
          v6 = 1;
        }

        else
        {
          mapsData = [action mapsData];
          if (mapsData)
          {
            v6 = 1;
          }

          else
          {
            location = [action location];
            if (location)
            {
              v6 = 1;
            }

            else
            {
              customDirectionsPunchout = [action customDirectionsPunchout];
              if (customDirectionsPunchout)
              {
                v6 = 1;
              }

              else
              {
                messageURL = [action messageURL];
                if (messageURL)
                {
                  v6 = 1;
                }

                else
                {
                  label = [action label];
                  if ([label length])
                  {
                    storeIdentifiers = [action storeIdentifiers];
                    v6 = [storeIdentifiers count] == 0;
                  }

                  else
                  {
                    v6 = 0;
                  }

                  messageURL = 0;
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

- (void)updateWithRowModel:(id)model
{
  v42 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = [modelCopy buttonItems];
  v35 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (!v35)
  {
    v24 = 0;
    goto LABEL_37;
  }

  selfCopy = self;
  v32 = modelCopy;
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
      image = [v9 image];
      v11 = image == 0;

      title = [v9 title];
      v13 = [title length];
      v14 = v13 != 0;

      if (image)
      {
        v15 = v13 == 0;
      }

      else
      {
        v15 = 0;
      }

      if (v15)
      {
        image2 = [v9 image];
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
        if (image)
        {
          v11 = 0;
          if (v13)
          {
            goto LABEL_18;
          }

LABEL_23:
          toggledTitle = [v18 toggledTitle];
          if ([toggledTitle length])
          {
            v14 = 1;
          }

          else
          {
            untoggledTitle = [v18 untoggledTitle];
            v14 = [untoggledTitle length] != 0;
          }
        }

        else
        {
          toggledImage = [v17 toggledImage];
          if (toggledImage)
          {
            v11 = 0;
          }

          else
          {
            untoggledImage = [v18 untoggledImage];
            v11 = untoggledImage == 0;
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

  self = selfCopy;
  modelCopy = v32;
LABEL_37:

  useCompactVersionOfUI = [modelCopy useCompactVersionOfUI];
  view = [(SearchUIAccessoryViewController *)self view];
  [view setIsCompact:useCompactVersionOfUI];

  view2 = [(SearchUIAccessoryViewController *)self view];
  buttonItems = [modelCopy buttonItems];
  if ([MEMORY[0x1E69D9240] isMacOS])
  {
    v29 = 5;
  }

  else
  {
    v29 = 3;
  }

  v30 = [(SearchUIAccessoryViewController *)self feedbackDelegate:selfCopy];
  [view2 updateWithButtonItems:buttonItems maxButtonItems:v29 buttonItemViewType:v24 rowModel:modelCopy feedbackDelegate:v30];
}

- (id)buttonTypes
{
  view = [(SearchUIAccessoryViewController *)self view];
  buttonTypes = [view buttonTypes];

  return buttonTypes;
}

@end