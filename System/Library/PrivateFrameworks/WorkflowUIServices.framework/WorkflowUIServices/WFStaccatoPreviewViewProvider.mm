@interface WFStaccatoPreviewViewProvider
+ (id)primarySymbolForConfiguredAction:(id)action;
+ (id)secondarySymbolForConfiguredAction:(id)action;
@end

@implementation WFStaccatoPreviewViewProvider

+ (id)secondarySymbolForConfiguredAction:(id)action
{
  actionCopy = action;
  sectionIdentifier = [actionCopy sectionIdentifier];
  v5 = [sectionIdentifier isEqualToString:@"Accessibility"];

  if (v5)
  {
    v6 = actionCopy;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      intent = [v6 intent];
      serializedParameters = [intent serializedParameters];

      v9 = [serializedParameters objectForKey:@"feature"];
      if (v9)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
      }

      v12 = v10;

      v13 = [v12 objectForKey:@"symbol"];

      if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v14 = [v13 objectForKey:@"systemName"];
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

        v11 = v15;
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
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)primarySymbolForConfiguredAction:(id)action
{
  actionCopy = action;
  sectionIdentifier = [actionCopy sectionIdentifier];
  v5 = [sectionIdentifier isEqualToString:@"Accessibility"];

  if (v5)
  {
    v6 = @"accessibility.fill";
  }

  else
  {
    sectionIdentifier2 = [actionCopy sectionIdentifier];
    v8 = [sectionIdentifier2 isEqualToString:@"Camera"];

    if (v8)
    {
      v6 = @"camera.fill";
    }

    else
    {
      sectionIdentifier3 = [actionCopy sectionIdentifier];
      v10 = [sectionIdentifier3 isEqualToString:@"Magnifier"];

      if (v10)
      {
        v6 = @"plus.magnifyingglass";
      }

      else
      {
        sectionIdentifier4 = [actionCopy sectionIdentifier];
        v12 = [sectionIdentifier4 isEqualToString:@"Translate"];

        if (v12)
        {
          v6 = @"translate";
        }

        else
        {
          sectionIdentifier5 = [actionCopy sectionIdentifier];
          v14 = [sectionIdentifier5 isEqualToString:@"VisualIntelligence"];

          if (v14)
          {
            v6 = @"apple.visual.intelligence";
          }

          else
          {
            v6 = 0;
          }
        }
      }
    }
  }

  return v6;
}

@end