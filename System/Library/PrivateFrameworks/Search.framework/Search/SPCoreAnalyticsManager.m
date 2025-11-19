@interface SPCoreAnalyticsManager
+ (id)aggdLogIdentifierFromItem:(id)a3 type:(int)a4 baseType:(id *)a5;
+ (void)computeEngagementMatrixForEngagedItem:(id)a3 topAnalyticsItemsPerSection:(id)a4;
+ (void)logEngagementWithBundleIdentifier:(id)a3 forEvent:(unint64_t)a4;
+ (void)logEngagementWithItem:(id)a3 atPosition:(unint64_t)a4 forEvent:(unint64_t)a5;
@end

@implementation SPCoreAnalyticsManager

+ (void)logEngagementWithBundleIdentifier:(id)a3 forEvent:(unint64_t)a4
{
  v5 = a3;
  v8 = v5;
  if (a4 == 1)
  {
    v6 = @"com.apple.searchd.eng.SEARCH_IN_APP.";
    goto LABEL_5;
  }

  if (a4 == 2)
  {
    v6 = @"com.apple.searchd.eng.SHOW_MORE.";
LABEL_5:
    v7 = [(__CFString *)v6 stringByAppendingString:v5];
    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:
  AnalyticsAddValueIfNonNull(v7);
}

+ (id)aggdLogIdentifierFromItem:(id)a3 type:(int)a4 baseType:(id *)a5
{
  v7 = a3;
  v8 = SPGetDisabledDomainSet();
  v9 = [v8 containsObject:@"DOMAIN_PARSEC"];

  v10 = [v7 type] == 36 || objc_msgSend(v7, "type") == 37;
  if (a4 <= 2)
  {
    if (a4)
    {
      v11 = @"com.apple.searchd.eng.orbpreview.";
      v12 = @"com.apple.searchd.eng.correction.static.";
      if (a4 != 2)
      {
        v12 = 0;
      }

      v13 = a4 == 1;
      goto LABEL_13;
    }

    v27 = @"com.apple.searchd.eng.enabled.";
    if (v9)
    {
      v27 = @"com.apple.searchd.eng.disabled.";
    }

    v14 = v27;
LABEL_16:
    v15 = [v7 sectionBundleIdentifier];
    v16 = [v15 isEqualToString:@"com.apple.searchd.zkw.apps"];

    if (v16)
    {
      v17 = [(__CFString *)v14 stringByAppendingString:@"zkw.application."];
      v18 = [v7 applicationBundleIdentifier];
      v19 = v17;
      v20 = v18;
LABEL_18:
      v21 = [v19 stringByAppendingString:v20];
LABEL_26:

LABEL_27:
LABEL_28:

      goto LABEL_29;
    }

    v22 = [v7 sectionBundleIdentifier];
    if ([v22 isEqualToString:@"com.apple.application"])
    {

LABEL_25:
      v17 = [(__CFString *)v14 stringByAppendingString:@"application"];
      *a5 = v17;
      v24 = MEMORY[0x1E696AEC0];
      v18 = [v7 applicationBundleIdentifier];
      v25 = [v24 stringWithFormat:@".%@", v18];
      v21 = [v17 stringByAppendingString:v25];

      goto LABEL_26;
    }

    v23 = [v7 isLocalApplicationResult];

    if (v23)
    {
      goto LABEL_25;
    }

    v29 = *MEMORY[0x1E69D3F70];
    v30 = [v7 sectionBundleIdentifier];
    v31 = [v29 isEqualToString:v30];

    if (v31)
    {
      v21 = [(__CFString *)v14 stringByAppendingString:v29];
      goto LABEL_28;
    }

    v32 = *MEMORY[0x1E69D3F10];
    v33 = [v7 sectionBundleIdentifier];
    LODWORD(v32) = [v32 isEqualToString:v33];

    if (v32)
    {
      v17 = [v7 identifier];
      v21 = [(__CFString *)v14 stringByAppendingString:v17];
      goto LABEL_27;
    }

    v34 = [v7 applicationBundleIdentifier];
    if (!v34)
    {
      v34 = [v7 sectionBundleIdentifier];
      if (!v34)
      {
        v21 = 0;
        goto LABEL_28;
      }
    }

    v17 = v34;
    v35 = [v7 type];
    if (v35 > 16)
    {
      if (v35 <= 31)
      {
        switch(v35)
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

      if (v35 > 36)
      {
        if (v35 != 37)
        {
          if (v35 == 38)
          {
            v39 = @"suggestion.person";
            goto LABEL_72;
          }

          goto LABEL_83;
        }

        *a5 = [(__CFString *)v14 stringByAppendingString:@"localCoreSpotlight"];
        v36 = @"local.people.";
      }

      else
      {
        if (v35 == 32)
        {
LABEL_67:
          v38 = [v7 contactIdentifier];

          if (!v38)
          {
LABEL_73:
            v21 = @"com.apple.searchd.eng.suggestion.local";
            goto LABEL_27;
          }

          v39 = @"suggestion.contact";
LABEL_72:
          *a5 = [(__CFString *)v14 stringByAppendingString:v39];
          goto LABEL_73;
        }

        if (v35 != 36)
        {
LABEL_83:
          v21 = @"com.apple.searchd.eng.correction.unknown";
          goto LABEL_27;
        }

        *a5 = [(__CFString *)v14 stringByAppendingString:@"localCoreSpotlight"];
        v36 = @"local.contact.";
      }
    }

    else
    {
      if (v35 > 5)
      {
        if (v35 <= 7)
        {
          if (v35 == 6)
          {
            v21 = @"com.apple.searchd.eng.calculator";
          }

          else
          {
            v21 = @"com.apple.searchd.eng.conversion";
          }

          goto LABEL_27;
        }

        if (v35 == 8)
        {
          v21 = @"com.apple.searchd.eng.definition";
          goto LABEL_27;
        }

        if (v35 == 16)
        {
          goto LABEL_67;
        }

        goto LABEL_83;
      }

      if (v35 == 1)
      {
        *a5 = [(__CFString *)v14 stringByAppendingString:@"parsec"];
        v36 = @"parsec.";
      }

      else
      {
        if (v35 == 2)
        {
          v37 = @"localCoreSpotlight";
        }

        else
        {
          if (v35 != 4)
          {
            goto LABEL_83;
          }

          v37 = @"userActivity";
        }

        *a5 = [(__CFString *)v14 stringByAppendingString:v37];
        v36 = @"local.";
      }
    }

    v19 = [(__CFString *)v14 stringByAppendingString:v36];
    v18 = v19;
    v20 = v17;
    goto LABEL_18;
  }

  if (a4 <= 4)
  {
    v11 = @"com.apple.searchd.eng.correction.dynamic.";
    v12 = @"com.apple.searchd.eng.topHit.";
    if (a4 != 4)
    {
      v12 = 0;
    }

    v13 = a4 == 3;
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

  if (a4 != 5)
  {
    if (a4 == 6)
    {
      v21 = @"com.apple.searchd.eng.shortcut";
      goto LABEL_29;
    }

    v14 = 0;
    goto LABEL_16;
  }

  v28 = @"com.apple.searchd.eng.distance.local";
  if ([v7 type] != 2 && !v10 && objc_msgSend(v7, "type") != 4)
  {
    v28 = @"com.apple.searchd.eng.distance.parsec";
  }

  v21 = v28;
LABEL_29:

  return v21;
}

+ (void)computeEngagementMatrixForEngagedItem:(id)a3 topAnalyticsItemsPerSection:(id)a4
{
  v57 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v45 = [v5 sectionBundleIdentifier];
  v7 = [v5 type];
  v8 = [v5 type];
  if (v7 == 36)
  {
    v9 = 1;
  }

  else
  {
    v25 = v8;
    v9 = 1;
    if ([v5 type] != 2 && v25 != 37 && objc_msgSend(v5, "type") != 4 && objc_msgSend(v5, "type") != 6 && objc_msgSend(v5, "type") != 7)
    {
      v9 = [v5 type] == 8;
    }
  }

  v40 = v5;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v6;
  v10 = [obj countByEnumeratingWithState:&v47 objects:v56 count:16];
  v39 = v9;
  if (v10)
  {
    v11 = v10;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v12 = 0;
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
        v18 = v12;
        if (*v48 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v47 + 1) + 8 * i);
        v12 = [v19 sectionBundleIdentifier];

        if (([v12 isEqualToString:@"com.apple.searchd.suggestions"] & 1) == 0 && (objc_msgSend(v12, "isEqualToString:", @"com.apple.searchd.zkw.apps") & 1) == 0 && (objc_msgSend(v12, "isEqualToString:", @"com.apple.spotlightui.search-through") & 1) == 0)
        {
          if (v15)
          {
            v20 = v19;

            v44 = v20;
          }

          if ([v12 isEqualToString:v45])
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
    v12 = 0;
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
  v28 = [v44 sectionBundleIdentifier];
  if ([v45 isEqualToString:v28])
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

  v29 = [v27 sectionBundleIdentifier];
  v30 = [v45 isEqualToString:v29];

  if (v30)
  {
    v51 = MEMORY[0x1E69E9820];
    v52 = 3221225472;
    v53 = __AnalyticsAddValueIfNonNull_block_invoke;
    v54 = &__block_descriptor_40_e19___NSDictionary_8__0l;
    v55 = 1;
    AnalyticsSendEventLazy();
  }

  if ([v45 isEqualToString:v28])
  {
    v51 = MEMORY[0x1E69E9820];
    v52 = 3221225472;
    v53 = __AnalyticsAddValueIfNonNull_block_invoke;
    v54 = &__block_descriptor_40_e19___NSDictionary_8__0l;
    v55 = 1;
    goto LABEL_50;
  }

LABEL_51:
  v31 = [v27 sectionBundleIdentifier];
  if ([v45 isEqualToString:v31])
  {

    v32 = v40;
  }

  else
  {
    v33 = [v27 sectionBundleIdentifier];
    v34 = [v33 isEqualToString:@"com.apple.spotlight.tophits"];

    v32 = v40;
    if (!v34)
    {
      goto LABEL_56;
    }
  }

  v35 = [v27 identifier];
  v36 = [v32 identifier];
  v37 = [v35 isEqualToString:v36];

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

+ (void)logEngagementWithItem:(id)a3 atPosition:(unint64_t)a4 forEvent:(unint64_t)a5
{
  v8 = a3;
  v9 = v8;
  if (a5 == 5)
  {
    v25 = 0;
    v10 = [a1 aggdLogIdentifierFromItem:v8 type:1 baseType:&v25];
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
    if ([v8 isStaticCorrection])
    {
      v24 = 0;
      v12 = [a1 aggdLogIdentifierFromItem:v9 type:2 baseType:&v24];
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
      v14 = [a1 aggdLogIdentifierFromItem:v9 type:3 baseType:&v23];
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
    v16 = [a1 aggdLogIdentifierFromItem:v9 type:0 baseType:&v22];
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
        v17 = [a1 aggdLogIdentifierFromItem:v9 type:6 baseType:0];
        AnalyticsAddValueIfNonNull(v17);
      }

      v21 = v11;
      v18 = [a1 aggdLogIdentifierFromItem:v9 type:4 baseType:&v21];
      v19 = v21;

      AnalyticsAddValueIfNonNull(v18);
      v11 = v19;
    }

    if (a4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v20 = [a1 aggdLogIdentifierFromItem:v9 type:5 baseType:0];
      AnalyticsAddValueIfNonNull(v20);
    }
  }
}

@end