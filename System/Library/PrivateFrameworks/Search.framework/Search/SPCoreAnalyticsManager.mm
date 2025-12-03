@interface SPCoreAnalyticsManager
+ (id)aggdLogIdentifierFromItem:(id)item type:(int)type baseType:(id *)baseType;
+ (void)computeEngagementMatrixForEngagedItem:(id)item topAnalyticsItemsPerSection:(id)section;
+ (void)logEngagementWithBundleIdentifier:(id)identifier forEvent:(unint64_t)event;
+ (void)logEngagementWithItem:(id)item atPosition:(unint64_t)position forEvent:(unint64_t)event;
@end

@implementation SPCoreAnalyticsManager

+ (void)logEngagementWithBundleIdentifier:(id)identifier forEvent:(unint64_t)event
{
  identifierCopy = identifier;
  v8 = identifierCopy;
  if (event == 1)
  {
    v6 = @"com.apple.searchd.eng.SEARCH_IN_APP.";
    goto LABEL_5;
  }

  if (event == 2)
  {
    v6 = @"com.apple.searchd.eng.SHOW_MORE.";
LABEL_5:
    v7 = [(__CFString *)v6 stringByAppendingString:identifierCopy];
    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:
  AnalyticsAddValueIfNonNull(v7);
}

+ (id)aggdLogIdentifierFromItem:(id)item type:(int)type baseType:(id *)baseType
{
  itemCopy = item;
  v8 = SPGetDisabledDomainSet();
  v9 = [v8 containsObject:@"DOMAIN_PARSEC"];

  v10 = [itemCopy type] == 36 || objc_msgSend(itemCopy, "type") == 37;
  if (type <= 2)
  {
    if (type)
    {
      v11 = @"com.apple.searchd.eng.orbpreview.";
      v12 = @"com.apple.searchd.eng.correction.static.";
      if (type != 2)
      {
        v12 = 0;
      }

      v13 = type == 1;
      goto LABEL_13;
    }

    v27 = @"com.apple.searchd.eng.enabled.";
    if (v9)
    {
      v27 = @"com.apple.searchd.eng.disabled.";
    }

    v14 = v27;
LABEL_16:
    sectionBundleIdentifier = [itemCopy sectionBundleIdentifier];
    v16 = [sectionBundleIdentifier isEqualToString:@"com.apple.searchd.zkw.apps"];

    if (v16)
    {
      identifier = [(__CFString *)v14 stringByAppendingString:@"zkw.application."];
      applicationBundleIdentifier = [itemCopy applicationBundleIdentifier];
      v19 = identifier;
      v20 = applicationBundleIdentifier;
LABEL_18:
      v21 = [v19 stringByAppendingString:v20];
LABEL_26:

LABEL_27:
LABEL_28:

      goto LABEL_29;
    }

    sectionBundleIdentifier2 = [itemCopy sectionBundleIdentifier];
    if ([sectionBundleIdentifier2 isEqualToString:@"com.apple.application"])
    {

LABEL_25:
      identifier = [(__CFString *)v14 stringByAppendingString:@"application"];
      *baseType = identifier;
      v24 = MEMORY[0x1E696AEC0];
      applicationBundleIdentifier = [itemCopy applicationBundleIdentifier];
      v25 = [v24 stringWithFormat:@".%@", applicationBundleIdentifier];
      v21 = [identifier stringByAppendingString:v25];

      goto LABEL_26;
    }

    isLocalApplicationResult = [itemCopy isLocalApplicationResult];

    if (isLocalApplicationResult)
    {
      goto LABEL_25;
    }

    v29 = *MEMORY[0x1E69D3F70];
    sectionBundleIdentifier3 = [itemCopy sectionBundleIdentifier];
    v31 = [v29 isEqualToString:sectionBundleIdentifier3];

    if (v31)
    {
      v21 = [(__CFString *)v14 stringByAppendingString:v29];
      goto LABEL_28;
    }

    v32 = *MEMORY[0x1E69D3F10];
    sectionBundleIdentifier4 = [itemCopy sectionBundleIdentifier];
    LODWORD(v32) = [v32 isEqualToString:sectionBundleIdentifier4];

    if (v32)
    {
      identifier = [itemCopy identifier];
      v21 = [(__CFString *)v14 stringByAppendingString:identifier];
      goto LABEL_27;
    }

    applicationBundleIdentifier2 = [itemCopy applicationBundleIdentifier];
    if (!applicationBundleIdentifier2)
    {
      applicationBundleIdentifier2 = [itemCopy sectionBundleIdentifier];
      if (!applicationBundleIdentifier2)
      {
        v21 = 0;
        goto LABEL_28;
      }
    }

    identifier = applicationBundleIdentifier2;
    type = [itemCopy type];
    if (type > 16)
    {
      if (type <= 31)
      {
        switch(type)
        {
          case 17:
            v21 = @"com.apple.searchd.eng.suggestion.parsec";
            goto LABEL_27;
          case 20:
            v21 = @"com.apple.searchd.eng.siri.action";
            goto LABEL_27;
          case 21:
            v21 = @"com.apple.searchd.eng.siri.suggestion";
            goto LABEL_27;
        }

        goto LABEL_83;
      }

      if (type > 36)
      {
        if (type != 37)
        {
          if (type == 38)
          {
            v39 = @"suggestion.person";
            goto LABEL_72;
          }

          goto LABEL_83;
        }

        *baseType = [(__CFString *)v14 stringByAppendingString:@"localCoreSpotlight"];
        v36 = @"local.people.";
      }

      else
      {
        if (type == 32)
        {
LABEL_67:
          contactIdentifier = [itemCopy contactIdentifier];

          if (!contactIdentifier)
          {
LABEL_73:
            v21 = @"com.apple.searchd.eng.suggestion.local";
            goto LABEL_27;
          }

          v39 = @"suggestion.contact";
LABEL_72:
          *baseType = [(__CFString *)v14 stringByAppendingString:v39];
          goto LABEL_73;
        }

        if (type != 36)
        {
LABEL_83:
          v21 = @"com.apple.searchd.eng.correction.unknown";
          goto LABEL_27;
        }

        *baseType = [(__CFString *)v14 stringByAppendingString:@"localCoreSpotlight"];
        v36 = @"local.contact.";
      }
    }

    else
    {
      if (type > 5)
      {
        if (type <= 7)
        {
          if (type == 6)
          {
            v21 = @"com.apple.searchd.eng.calculator";
          }

          else
          {
            v21 = @"com.apple.searchd.eng.conversion";
          }

          goto LABEL_27;
        }

        if (type == 8)
        {
          v21 = @"com.apple.searchd.eng.definition";
          goto LABEL_27;
        }

        if (type == 16)
        {
          goto LABEL_67;
        }

        goto LABEL_83;
      }

      if (type == 1)
      {
        *baseType = [(__CFString *)v14 stringByAppendingString:@"parsec"];
        v36 = @"parsec.";
      }

      else
      {
        if (type == 2)
        {
          v37 = @"localCoreSpotlight";
        }

        else
        {
          if (type != 4)
          {
            goto LABEL_83;
          }

          v37 = @"userActivity";
        }

        *baseType = [(__CFString *)v14 stringByAppendingString:v37];
        v36 = @"local.";
      }
    }

    v19 = [(__CFString *)v14 stringByAppendingString:v36];
    applicationBundleIdentifier = v19;
    v20 = identifier;
    goto LABEL_18;
  }

  if (type <= 4)
  {
    v11 = @"com.apple.searchd.eng.correction.dynamic.";
    v12 = @"com.apple.searchd.eng.topHit.";
    if (type != 4)
    {
      v12 = 0;
    }

    v13 = type == 3;
LABEL_13:
    if (v13)
    {
      v14 = v11;
    }

    else
    {
      v14 = v12;
    }

    goto LABEL_16;
  }

  if (type != 5)
  {
    if (type == 6)
    {
      v21 = @"com.apple.searchd.eng.shortcut";
      goto LABEL_29;
    }

    v14 = 0;
    goto LABEL_16;
  }

  v28 = @"com.apple.searchd.eng.distance.local";
  if ([itemCopy type] != 2 && !v10 && objc_msgSend(itemCopy, "type") != 4)
  {
    v28 = @"com.apple.searchd.eng.distance.parsec";
  }

  v21 = v28;
LABEL_29:

  return v21;
}

+ (void)computeEngagementMatrixForEngagedItem:(id)item topAnalyticsItemsPerSection:(id)section
{
  v57 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  sectionCopy = section;
  sectionBundleIdentifier = [itemCopy sectionBundleIdentifier];
  type = [itemCopy type];
  type2 = [itemCopy type];
  if (type == 36)
  {
    v9 = 1;
  }

  else
  {
    v25 = type2;
    v9 = 1;
    if ([itemCopy type] != 2 && v25 != 37 && objc_msgSend(itemCopy, "type") != 4 && objc_msgSend(itemCopy, "type") != 6 && objc_msgSend(itemCopy, "type") != 7)
    {
      v9 = [itemCopy type] == 8;
    }
  }

  v40 = itemCopy;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = sectionCopy;
  v10 = [obj countByEnumeratingWithState:&v47 objects:v56 count:16];
  v39 = v9;
  if (v10)
  {
    v11 = v10;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    sectionBundleIdentifier2 = 0;
    v13 = *v48;
    v14 = @"com.apple.searchd.eng.parsec.engaged.top.%d.bundle";
    if (v9)
    {
      v14 = @"com.apple.searchd.eng.local.engaged.top.%d.bundle";
    }

    v41 = v14;
    v15 = 1;
    v16 = 1;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        v18 = sectionBundleIdentifier2;
        if (*v48 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v47 + 1) + 8 * i);
        sectionBundleIdentifier2 = [v19 sectionBundleIdentifier];

        if (([sectionBundleIdentifier2 isEqualToString:@"com.apple.searchd.suggestions"] & 1) == 0 && (objc_msgSend(sectionBundleIdentifier2, "isEqualToString:", @"com.apple.searchd.zkw.apps") & 1) == 0 && (objc_msgSend(sectionBundleIdentifier2, "isEqualToString:", @"com.apple.spotlightui.search-through") & 1) == 0)
        {
          if (v15)
          {
            v20 = v19;

            v44 = v20;
          }

          if ([sectionBundleIdentifier2 isEqualToString:sectionBundleIdentifier])
          {
            v21 = v16 <= 10;
          }

          else
          {
            v21 = 0;
          }

          if (v21)
          {
            v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.searchd.eng.any.engaged.top.%d.bundle", v16];
            AnalyticsAddValueIfNonNull(v22);

            v23 = [MEMORY[0x1E696AEC0] stringWithFormat:v41, v16];
            AnalyticsAddValueIfNonNull(v23);
          }

          if ([v19 type] == 1)
          {
            v24 = v42;
            if (!v42)
            {
              v24 = objc_opt_new();
              v42 = v24;
            }
          }

          else
          {
            v24 = v43;
            if (!v43)
            {
              v24 = objc_opt_new();
              v43 = v24;
            }
          }

          [v24 addObject:v19];
          v15 = 0;
          v16 = (v16 + 1);
        }
      }

      v11 = [obj countByEnumeratingWithState:&v47 objects:v56 count:16];
    }

    while (v11);
  }

  else
  {
    v42 = 0;
    v43 = 0;
    v44 = 0;
    sectionBundleIdentifier2 = 0;
  }

  if (v39)
  {
    v26 = v43;
  }

  else
  {
    v26 = v42;
  }

  v27 = [v26 objectAtIndexedSubscript:0];
  sectionBundleIdentifier3 = [v44 sectionBundleIdentifier];
  if ([sectionBundleIdentifier isEqualToString:sectionBundleIdentifier3])
  {
    v51 = MEMORY[0x1E69E9820];
    v52 = 3221225472;
    v53 = __AnalyticsAddValueIfNonNull_block_invoke;
    v54 = &__block_descriptor_40_e19___NSDictionary_8__0l;
    v55 = 1;
    AnalyticsSendEventLazy();
    if (v39)
    {
      v51 = MEMORY[0x1E69E9820];
      v52 = 3221225472;
      v53 = __AnalyticsAddValueIfNonNull_block_invoke;
      v54 = &__block_descriptor_40_e19___NSDictionary_8__0l;
      v55 = 1;
LABEL_50:
      AnalyticsSendEventLazy();
      goto LABEL_51;
    }

    v51 = MEMORY[0x1E69E9820];
    v52 = 3221225472;
    v53 = __AnalyticsAddValueIfNonNull_block_invoke;
    v54 = &__block_descriptor_40_e19___NSDictionary_8__0l;
    v55 = 1;
    AnalyticsSendEventLazy();
  }

  else if (v39)
  {
    goto LABEL_51;
  }

  sectionBundleIdentifier4 = [v27 sectionBundleIdentifier];
  v30 = [sectionBundleIdentifier isEqualToString:sectionBundleIdentifier4];

  if (v30)
  {
    v51 = MEMORY[0x1E69E9820];
    v52 = 3221225472;
    v53 = __AnalyticsAddValueIfNonNull_block_invoke;
    v54 = &__block_descriptor_40_e19___NSDictionary_8__0l;
    v55 = 1;
    AnalyticsSendEventLazy();
  }

  if ([sectionBundleIdentifier isEqualToString:sectionBundleIdentifier3])
  {
    v51 = MEMORY[0x1E69E9820];
    v52 = 3221225472;
    v53 = __AnalyticsAddValueIfNonNull_block_invoke;
    v54 = &__block_descriptor_40_e19___NSDictionary_8__0l;
    v55 = 1;
    goto LABEL_50;
  }

LABEL_51:
  sectionBundleIdentifier5 = [v27 sectionBundleIdentifier];
  if ([sectionBundleIdentifier isEqualToString:sectionBundleIdentifier5])
  {

    v32 = v40;
  }

  else
  {
    sectionBundleIdentifier6 = [v27 sectionBundleIdentifier];
    v34 = [sectionBundleIdentifier6 isEqualToString:@"com.apple.spotlight.tophits"];

    v32 = v40;
    if (!v34)
    {
      goto LABEL_56;
    }
  }

  identifier = [v27 identifier];
  identifier2 = [v32 identifier];
  v37 = [identifier isEqualToString:identifier2];

  if (v37)
  {
    v51 = MEMORY[0x1E69E9820];
    v52 = 3221225472;
    v53 = __AnalyticsAddValueIfNonNull_block_invoke;
    v54 = &__block_descriptor_40_e19___NSDictionary_8__0l;
    v55 = 1;
    AnalyticsSendEventLazy();
  }

LABEL_56:

  v38 = *MEMORY[0x1E69E9840];
}

+ (void)logEngagementWithItem:(id)item atPosition:(unint64_t)position forEvent:(unint64_t)event
{
  itemCopy = item;
  v9 = itemCopy;
  if (event == 5)
  {
    v25 = 0;
    v10 = [self aggdLogIdentifierFromItem:itemCopy type:1 baseType:&v25];
    v11 = v25;
    AnalyticsAddValueIfNonNull(v10);

    if (v11)
    {
      v26 = MEMORY[0x1E69E9820];
      v27 = 3221225472;
      v28 = __AnalyticsAddValueIfNonNull_block_invoke;
      v29 = &__block_descriptor_40_e19___NSDictionary_8__0l;
      v30 = 1;
      AnalyticsSendEventLazy();
    }
  }

  else
  {
    if ([itemCopy isStaticCorrection])
    {
      v24 = 0;
      v12 = [self aggdLogIdentifierFromItem:v9 type:2 baseType:&v24];
      v13 = v24;
      AnalyticsAddValueIfNonNull(v12);

      if (v13)
      {
        v26 = MEMORY[0x1E69E9820];
        v27 = 3221225472;
        v28 = __AnalyticsAddValueIfNonNull_block_invoke;
        v29 = &__block_descriptor_40_e19___NSDictionary_8__0l;
        v30 = 1;
        AnalyticsSendEventLazy();
      }
    }

    else
    {
      v13 = 0;
    }

    if ([v9 isDisplayNameCorrectionsMatch])
    {
      v23 = v13;
      v14 = [self aggdLogIdentifierFromItem:v9 type:3 baseType:&v23];
      v15 = v23;

      AnalyticsAddValueIfNonNull(v14);
      if (v15)
      {
        v26 = MEMORY[0x1E69E9820];
        v27 = 3221225472;
        v28 = __AnalyticsAddValueIfNonNull_block_invoke;
        v29 = &__block_descriptor_40_e19___NSDictionary_8__0l;
        v30 = 1;
        AnalyticsSendEventLazy();
        v13 = v15;
      }

      else
      {
        v13 = 0;
      }
    }

    v22 = v13;
    v16 = [self aggdLogIdentifierFromItem:v9 type:0 baseType:&v22];
    v11 = v22;

    AnalyticsAddValueIfNonNull(v16);
    if (v11)
    {
      v26 = MEMORY[0x1E69E9820];
      v27 = 3221225472;
      v28 = __AnalyticsAddValueIfNonNull_block_invoke;
      v29 = &__block_descriptor_40_e19___NSDictionary_8__0l;
      v30 = 1;
      AnalyticsSendEventLazy();
    }

    if ([v9 topHit])
    {
      if ([v9 isLocalShortcut])
      {
        v17 = [self aggdLogIdentifierFromItem:v9 type:6 baseType:0];
        AnalyticsAddValueIfNonNull(v17);
      }

      v21 = v11;
      v18 = [self aggdLogIdentifierFromItem:v9 type:4 baseType:&v21];
      v19 = v21;

      AnalyticsAddValueIfNonNull(v18);
      v11 = v19;
    }

    if (position != 0x7FFFFFFFFFFFFFFFLL)
    {
      v20 = [self aggdLogIdentifierFromItem:v9 type:5 baseType:0];
      AnalyticsAddValueIfNonNull(v20);
    }
  }
}

@end