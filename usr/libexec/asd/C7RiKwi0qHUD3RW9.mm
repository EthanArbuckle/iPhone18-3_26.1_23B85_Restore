@interface C7RiKwi0qHUD3RW9
+ (id)sharedInstance;
- (id)SvXmeMlpC8nbshta:(id)c8nbshta name:(id)name;
- (id)mF9a0iyS9JaiQAjp:(id)ajp pXKoPMsQI9AYa6US:(id)s;
- (id)wQx5zziHtNxqlbwU:(id)u;
- (int64_t)L2S3goqpYnHiXTRg:(int64_t)rg;
- (int64_t)LygrmXh7W0Hs2O8n:(id)o8n;
- (int64_t)N2XtGIRzgUKLkZMS:(id)s;
- (void)A6B42kYrDuXnlUJs:(int *)js IaS2bByRUGdVAKHz:(int *)hz QqUmN4hrxAoSYB5g:(id)b5g;
- (void)E5J0OeRApCYQUXDZ:(id)z completion:(id)completion;
- (void)Iv2P4WxadRhQ5ldX:(id)x GymwzUEOAaggmTfe:(int)tfe Y16kne8dG6NtD3ma:(id)d3ma completion:(id)completion yVhet0BX5E1CDncz:(id)dncz;
- (void)KqWH25SjlYcX4wo6:(id)x4wo6 completion:(id)completion;
- (void)MbPRHtYjEv98WrKf:(id)kf completion:(id)completion;
- (void)SKiIwgejuzELNOY0:(id)y0 completion:(id)completion;
- (void)U4k02bIWNYQCLSGK:(id)k completion:(id)completion;
- (void)YMeSiVAJwqHb7P3U:(id)u completion:(id)completion;
- (void)b8mzIZQ1GCTnhVAP:(id)p completion:(id)completion;
- (void)enableCHShowProtectedAppsForManager:(id)manager;
- (void)f7RoJXIsBwkuxLd1:(id)ld1 completionBlock:(id)block;
- (void)hSmO2OC6etXclsKP:(id)p edrv2qHmtbt1iEyf:(id)eyf QsX3tfdMvsGwvY0F:(unsigned int)f completion:(id)completion;
- (void)pRfmPXmMPeo7rsRf:(id)rf N3UHg1ij3irF9uUu:(id)uu QsX3tfdMvsGwvY0F:(unsigned int)f completionBlock:(id)block;
- (void)tfrVhQidRAUlTy5Y:(id)y completion:(id)completion;
@end

@implementation C7RiKwi0qHUD3RW9

+ (id)sharedInstance
{
  if (qword_1006D7CD8 != -1)
  {
    sub_100593650();
  }

  v3 = qword_1006D7CD0;

  return v3;
}

- (int64_t)L2S3goqpYnHiXTRg:(int64_t)rg
{
  if ((rg + 2003) >= 4)
  {
    return rg;
  }

  else
  {
    return 138000 - rg;
  }
}

- (int64_t)LygrmXh7W0Hs2O8n:(id)o8n
{
  o8nCopy = o8n;
  attributeSet = [o8nCopy attributeSet];
  authorEmailAddresses = [attributeSet authorEmailAddresses];

  attributeSet2 = [o8nCopy attributeSet];
  recipientEmailAddresses = [attributeSet2 recipientEmailAddresses];

  if (authorEmailAddresses)
  {
    [NSSet setWithArray:authorEmailAddresses];
  }

  else
  {
    +[NSSet set];
  }
  v8 = ;
  if (recipientEmailAddresses)
  {
    [NSSet setWithArray:recipientEmailAddresses];
  }

  else
  {
    +[NSSet set];
  }
  v9 = ;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  attributeSet3 = [o8nCopy attributeSet];
  accountHandles = [attributeSet3 accountHandles];

  v12 = [accountHandles countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = *v19;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(accountHandles);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        if ([v8 containsObject:v15])
        {
          v16 = 2;
          goto LABEL_20;
        }

        if ([v9 containsObject:v15])
        {
          v16 = 1;
          goto LABEL_20;
        }
      }

      v12 = [accountHandles countByEnumeratingWithState:&v18 objects:v22 count:16];
      v16 = 0;
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v16 = 0;
  }

LABEL_20:

  return v16;
}

- (int64_t)N2XtGIRzgUKLkZMS:(id)s
{
  sCopy = s;
  attributeSet = [sCopy attributeSet];
  authorAddresses = [attributeSet authorAddresses];

  attributeSet2 = [sCopy attributeSet];
  recipientAddresses = [attributeSet2 recipientAddresses];

  if (authorAddresses)
  {
    [NSSet setWithArray:authorAddresses];
  }

  else
  {
    +[NSSet set];
  }
  v8 = ;
  if (recipientAddresses)
  {
    [NSSet setWithArray:recipientAddresses];
  }

  else
  {
    +[NSSet set];
  }
  v9 = ;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  attributeSet3 = [sCopy attributeSet];
  accountHandles = [attributeSet3 accountHandles];

  v12 = [accountHandles countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = *v19;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(accountHandles);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        if ([v8 containsObject:v15])
        {
          v16 = 2;
          goto LABEL_20;
        }

        if ([v9 containsObject:v15])
        {
          v16 = 1;
          goto LABEL_20;
        }
      }

      v12 = [accountHandles countByEnumeratingWithState:&v18 objects:v22 count:16];
      v16 = 0;
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v16 = 0;
  }

LABEL_20:

  return v16;
}

- (id)SvXmeMlpC8nbshta:(id)c8nbshta name:(id)name
{
  c8nbshtaCopy = c8nbshta;
  nameCopy = name;
  firstName = [nameCopy firstName];
  if (firstName && ([nameCopy lastName], v6 = objc_claimAutoreleasedReturnValue(), v6, firstName, v6))
  {
    firstName2 = [nameCopy firstName];
    v37[0] = firstName2;
    lastName = [nameCopy lastName];
    v37[1] = lastName;
    v9 = [NSArray arrayWithObjects:v37 count:2];
  }

  else
  {
    fullName = [nameCopy fullName];

    if (fullName)
    {
      fullName2 = [nameCopy fullName];
      v12 = +[NSCharacterSet whitespaceCharacterSet];
      v9 = [fullName2 componentsSeparatedByCharactersInSet:v12];
    }

    else
    {
      lastName2 = [nameCopy lastName];

      if (lastName2)
      {
        lastName3 = [nameCopy lastName];
        v36 = lastName3;
        v9 = [NSArray arrayWithObjects:&v36 count:1];
      }

      else
      {
        v9 = 0;
      }
    }
  }

  v28 = +[NSMutableArray array];
  v27 = v9;
  if ([v9 count])
  {
    [v28 addObject:v9];
  }

  if ([v9 count] >= 2)
  {
    v15 = [v9 mutableCopy];
    v16 = [v9 objectAtIndexedSubscript:1];
    [v15 setObject:v16 atIndexedSubscript:0];

    v17 = [v9 objectAtIndexedSubscript:0];
    [v15 setObject:v17 atIndexedSubscript:1];

    [v28 addObject:v15];
  }

  v18 = +[NSMutableArray array];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v19 = v28;
  v20 = [v19 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v20)
  {
    v21 = *v32;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v32 != v21)
        {
          objc_enumerationMutation(v19);
        }

        v23 = [*(*(&v31 + 1) + 8 * i) componentsJoinedByString:@"*"];
        v24 = [NSString stringWithFormat:@"%@='*%@*'cd", c8nbshtaCopy, v23];

        [v18 addObject:v24];
      }

      v20 = [v19 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v20);
  }

  v25 = [v18 componentsJoinedByString:@" || "];

  return v25;
}

- (id)mF9a0iyS9JaiQAjp:(id)ajp pXKoPMsQI9AYa6US:(id)s
{
  ajpCopy = ajp;
  sCopy = s;
  if (([ajpCopy containsObject:@"public.email-message"] & 1) != 0 || objc_msgSend(ajpCopy, "containsObject:", @"public.message"))
  {
    v6 = [NSDate dateWithTimeIntervalSinceNow:-2592000.0];
    v7 = [NSDate dateWithTimeIntervalSinceNow:86400.0];
    v8 = objc_alloc_init(NSDateFormatter);
    [v8 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZZZZZ"];
    v9 = [v8 stringFromDate:v6];
    v10 = [v8 stringFromDate:v7];
    v11 = [NSString stringWithFormat:@"InRange(kMDItemContentCreationDate, $time.iso(%@), $time.iso(%@)) && ", v9, v10];
  }

  else
  {
    v11 = &stru_1006B82F8;
  }

  v12 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [ajpCopy count]);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = ajpCopy;
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v14)
  {
    v15 = *v23;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = [NSString stringWithFormat:@"kMDItemContentType='%@'", *(*(&v22 + 1) + 8 * i)];
        [v12 addObject:v17];
      }

      v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v14);
  }

  v18 = [v12 componentsJoinedByString:@" || "];
  sCopy = [NSString stringWithFormat:@"%@(%@) && (%@)", v11, v18, sCopy];

  return sCopy;
}

- (void)Iv2P4WxadRhQ5ldX:(id)x GymwzUEOAaggmTfe:(int)tfe Y16kne8dG6NtD3ma:(id)d3ma completion:(id)completion yVhet0BX5E1CDncz:(id)dncz
{
  xCopy = x;
  d3maCopy = d3ma;
  completionCopy = completion;
  dnczCopy = dncz;
  v15 = malloc_type_calloc(tfe, 4uLL, 0x100004052888210uLL);
  v16 = objc_opt_new();
  [v16 setFetchAttributes:dnczCopy];
  [v16 setMaxCount:100];
  v29[0] = NSFileProtectionComplete;
  v29[1] = NSFileProtectionCompleteUnlessOpen;
  v29[2] = NSFileProtectionCompleteUntilFirstUserAuthentication;
  v17 = [NSArray arrayWithObjects:v29 count:3];
  [v16 setProtectionClasses:v17];

  [v16 setIncludeUserActivities:1];
  v18 = [[CSSearchQuery alloc] initWithQueryString:xCopy context:v16];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000107C8;
  v25[3] = &unk_10068F440;
  v19 = d3maCopy;
  v26 = v19;
  v27 = v15;
  tfeCopy = tfe;
  [v18 setFoundItemsHandler:v25];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000108F0;
  v21[3] = &unk_10068F468;
  v20 = completionCopy;
  v22 = v20;
  v23 = v15;
  tfeCopy2 = tfe;
  [v18 setCompletionHandler:v21];
  [v18 start];
}

- (void)f7RoJXIsBwkuxLd1:(id)ld1 completionBlock:(id)block
{
  ld1Copy = ld1;
  blockCopy = block;
  v7 = objc_opt_new();
  [v7 setFetchAttributes:&__NSArray0__struct];
  [v7 setMaxCount:100];
  v18[0] = NSFileProtectionComplete;
  v18[1] = NSFileProtectionCompleteUnlessOpen;
  v18[2] = NSFileProtectionCompleteUntilFirstUserAuthentication;
  v8 = [NSArray arrayWithObjects:v18 count:3];
  [v7 setProtectionClasses:v8];

  [v7 setIncludeUserActivities:1];
  v9 = [[CSSearchQuery alloc] initWithQueryString:ld1Copy context:v7];
  [v9 setFoundItemsHandler:0];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100010B60;
  v15 = &unk_10068F490;
  v10 = blockCopy;
  v17 = v10;
  v11 = v9;
  v16 = v11;
  [v11 setCompletionHandler:&v12];
  [v11 start];
}

- (void)pRfmPXmMPeo7rsRf:(id)rf N3UHg1ij3irF9uUu:(id)uu QsX3tfdMvsGwvY0F:(unsigned int)f completionBlock:(id)block
{
  rfCopy = rf;
  uuCopy = uu;
  blockCopy = block;
  v12 = objc_opt_new();
  [v12 setFetchAttributes:&__NSArray0__struct];
  [v12 setMaxCount:f];
  v32[0] = NSFileProtectionComplete;
  v32[1] = NSFileProtectionCompleteUnlessOpen;
  v32[2] = NSFileProtectionCompleteUntilFirstUserAuthentication;
  v13 = [NSArray arrayWithObjects:v32 count:3];
  [v12 setProtectionClasses:v13];

  [v12 setIncludeUserActivities:1];
  v14 = [[CSSearchQuery alloc] initWithQueryString:rfCopy attributes:uuCopy];
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = sub_100010F44;
  v30[4] = sub_100010F54;
  v31 = objc_alloc_init(NSMutableArray);
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = sub_100010F44;
  v28[4] = sub_100010F54;
  v29 = 0;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100010F5C;
  v23[3] = &unk_10068F4B8;
  v25 = v28;
  v15 = uuCopy;
  v24 = v15;
  v26 = v30;
  fCopy = f;
  [v14 setFoundItemsHandler:v23];
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_1000112B4;
  v20 = &unk_10068F4E0;
  v16 = blockCopy;
  v21 = v16;
  v22 = v30;
  [v14 setCompletionHandler:&v17];
  [v14 start];

  _Block_object_dispose(v28, 8);
  _Block_object_dispose(v30, 8);
}

- (void)b8mzIZQ1GCTnhVAP:(id)p completion:(id)completion
{
  pCopy = p;
  completionCopy = completion;
  v8 = objc_opt_new();
  firstName = [pCopy firstName];
  if (firstName || ([pCopy lastName], (firstName = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    fullName = [pCopy fullName];

    if (!fullName)
    {
      goto LABEL_5;
    }
  }

  v10 = [(C7RiKwi0qHUD3RW9 *)self SvXmeMlpC8nbshta:@"kMDItemAuthors" name:pCopy];
  v11 = [NSString stringWithFormat:@"(%@)", v10];
  [v8 addObject:v11];

LABEL_5:
  v20[0] = @"public.email-message";
  v20[1] = @"public.message";
  v12 = [NSArray arrayWithObjects:v20 count:2];
  v13 = [v8 componentsJoinedByString:@" || "];
  v14 = [(C7RiKwi0qHUD3RW9 *)self mF9a0iyS9JaiQAjp:v12 pXKoPMsQI9AYa6US:v13];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10001159C;
  v19[3] = &unk_10068F508;
  v19[4] = self;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000115E8;
  v17[3] = &unk_10068F530;
  v15 = completionCopy;
  v18 = v15;
  [(C7RiKwi0qHUD3RW9 *)self Iv2P4WxadRhQ5ldX:v14 GymwzUEOAaggmTfe:2 Y16kne8dG6NtD3ma:v19 completion:v17 yVhet0BX5E1CDncz:&off_1006BAB20];
}

- (void)SKiIwgejuzELNOY0:(id)y0 completion:(id)completion
{
  y0Copy = y0;
  completionCopy = completion;
  v8 = objc_opt_new();
  firstName = [y0Copy firstName];
  if (firstName || ([y0Copy lastName], (firstName = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    fullName = [y0Copy fullName];

    if (!fullName)
    {
      goto LABEL_5;
    }
  }

  v10 = [(C7RiKwi0qHUD3RW9 *)self SvXmeMlpC8nbshta:@"kMDItemRecipients" name:y0Copy];
  v11 = [NSString stringWithFormat:@"(%@)", v10];
  [v8 addObject:v11];

LABEL_5:
  v20[0] = @"public.email-message";
  v20[1] = @"public.message";
  v12 = [NSArray arrayWithObjects:v20 count:2];
  v13 = [v8 componentsJoinedByString:@" || "];
  v14 = [(C7RiKwi0qHUD3RW9 *)self mF9a0iyS9JaiQAjp:v12 pXKoPMsQI9AYa6US:v13];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000118CC;
  v19[3] = &unk_10068F508;
  v19[4] = self;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100011918;
  v17[3] = &unk_10068F530;
  v15 = completionCopy;
  v18 = v15;
  [(C7RiKwi0qHUD3RW9 *)self Iv2P4WxadRhQ5ldX:v14 GymwzUEOAaggmTfe:2 Y16kne8dG6NtD3ma:v19 completion:v17 yVhet0BX5E1CDncz:&off_1006BAB38];
}

- (void)U4k02bIWNYQCLSGK:(id)k completion:(id)completion
{
  kCopy = k;
  completionCopy = completion;
  v15 = @"public.email-message";
  v8 = [NSArray arrayWithObjects:&v15 count:1];
  kCopy = [NSString stringWithFormat:@"kMDItemAuthorEmailAddresses='%@'", kCopy];
  v10 = [(C7RiKwi0qHUD3RW9 *)self mF9a0iyS9JaiQAjp:v8 pXKoPMsQI9AYa6US:kCopy];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100011B1C;
  v14[3] = &unk_10068F508;
  v14[4] = self;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100011B68;
  v12[3] = &unk_10068F530;
  v11 = completionCopy;
  v13 = v11;
  [(C7RiKwi0qHUD3RW9 *)self Iv2P4WxadRhQ5ldX:v10 GymwzUEOAaggmTfe:2 Y16kne8dG6NtD3ma:v14 completion:v12 yVhet0BX5E1CDncz:&off_1006BAB50];
}

- (void)E5J0OeRApCYQUXDZ:(id)z completion:(id)completion
{
  zCopy = z;
  completionCopy = completion;
  v15 = @"public.email-message";
  v8 = [NSArray arrayWithObjects:&v15 count:1];
  zCopy = [NSString stringWithFormat:@"kMDItemRecipientEmailAddresses='%@'", zCopy];
  v10 = [(C7RiKwi0qHUD3RW9 *)self mF9a0iyS9JaiQAjp:v8 pXKoPMsQI9AYa6US:zCopy];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100011D6C;
  v14[3] = &unk_10068F508;
  v14[4] = self;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100011DB8;
  v12[3] = &unk_10068F530;
  v11 = completionCopy;
  v13 = v11;
  [(C7RiKwi0qHUD3RW9 *)self Iv2P4WxadRhQ5ldX:v10 GymwzUEOAaggmTfe:2 Y16kne8dG6NtD3ma:v14 completion:v12 yVhet0BX5E1CDncz:&off_1006BAB68];
}

- (void)YMeSiVAJwqHb7P3U:(id)u completion:(id)completion
{
  uCopy = u;
  completionCopy = completion;
  v15 = @"public.message";
  v8 = [NSArray arrayWithObjects:&v15 count:1];
  uCopy = [NSString stringWithFormat:@"kMDItemAuthorAddresses='%@'", uCopy];
  v10 = [(C7RiKwi0qHUD3RW9 *)self mF9a0iyS9JaiQAjp:v8 pXKoPMsQI9AYa6US:uCopy];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100011FBC;
  v14[3] = &unk_10068F508;
  v14[4] = self;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100012008;
  v12[3] = &unk_10068F530;
  v11 = completionCopy;
  v13 = v11;
  [(C7RiKwi0qHUD3RW9 *)self Iv2P4WxadRhQ5ldX:v10 GymwzUEOAaggmTfe:2 Y16kne8dG6NtD3ma:v14 completion:v12 yVhet0BX5E1CDncz:&off_1006BAB80];
}

- (void)KqWH25SjlYcX4wo6:(id)x4wo6 completion:(id)completion
{
  x4wo6Copy = x4wo6;
  completionCopy = completion;
  v15 = @"public.message";
  v8 = [NSArray arrayWithObjects:&v15 count:1];
  x4wo6Copy = [NSString stringWithFormat:@"kMDItemRecipientAddresses='%@'", x4wo6Copy];
  v10 = [(C7RiKwi0qHUD3RW9 *)self mF9a0iyS9JaiQAjp:v8 pXKoPMsQI9AYa6US:x4wo6Copy];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10001220C;
  v14[3] = &unk_10068F508;
  v14[4] = self;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100012258;
  v12[3] = &unk_10068F530;
  v11 = completionCopy;
  v13 = v11;
  [(C7RiKwi0qHUD3RW9 *)self Iv2P4WxadRhQ5ldX:v10 GymwzUEOAaggmTfe:2 Y16kne8dG6NtD3ma:v14 completion:v12 yVhet0BX5E1CDncz:&off_1006BAB98];
}

- (id)wQx5zziHtNxqlbwU:(id)u
{
  uCopy = u;
  if (!uCopy)
  {
    v7 = 0;
    goto LABEL_29;
  }

  v36 = 0;
  v4 = [NSRegularExpression regularExpressionWithPattern:@"@" options:1 error:&v36];
  v5 = v36;
  v6 = [v4 matchesInString:uCopy options:0 range:{0, objc_msgSend(uCopy, "length")}];
  if (![v6 count])
  {
    v35 = v5;
    v32 = [NSRegularExpression regularExpressionWithPattern:@"[0-9\\-\\+\\*\\(\\)\\#\\s]" options:1 error:&v35];
    v8 = v35;

    v31 = [v32 matchesInString:uCopy options:0 range:{0, objc_msgSend(uCopy, "length")}];

    if (![v31 count])
    {
      v7 = 0;
LABEL_27:

      v6 = v31;
      v5 = v8;
      goto LABEL_28;
    }

    v9 = +[NSLocale currentLocale];
    regionCode = [v9 regionCode];

    v10 = CFPhoneNumberCreate();
    String = CFPhoneNumberCreateString();
    v26 = CFPhoneNumberCreateString();
    v12 = String;
    v30 = v12;
    if (!v12)
    {
      v30 = uCopy;
    }

    v13 = CFPhoneNumberCopyISOCountryCode();
    ITUCountryCodeForISOCountryCode = CFPhoneNumberGetITUCountryCodeForISOCountryCode();
    if (v13)
    {
      CFRelease(v13);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    iTUCountryCodeForISOCountryCode = [NSString stringWithFormat:@"+%ld ", ITUCountryCodeForISOCountryCode];
    if ([v12 hasPrefix:?])
    {
      v15 = [v12 substringFromIndex:{objc_msgSend(iTUCountryCodeForISOCountryCode, "length")}];

      v12 = v15;
    }

    if (ITUCountryCodeForISOCountryCode == 1)
    {
      if (v12)
      {
        v34 = v8;
        v16 = [NSRegularExpression regularExpressionWithPattern:@"^\\([0-9]{3}\\)\\s" options:1 error:&v34];
        v17 = v34;

        if (!v17)
        {
          v18 = [v16 stringByReplacingMatchesInString:v12 options:0 range:0 withTemplate:{objc_msgSend(v12, "length"), &stru_1006B82F8}];

          v12 = v18;
        }

        v8 = v17;
LABEL_22:
        v33 = v8;
        v28 = [NSRegularExpression regularExpressionWithPattern:@"[^0-9]" options:1 error:&v33];
        v19 = v33;

        if (!v19)
        {
          v22 = [v28 stringByReplacingMatchesInString:v12 options:0 range:0 withTemplate:{objc_msgSend(v12, "length"), &stru_1006B82F8}];
          v23 = [v28 stringByReplacingMatchesInString:v30 options:0 range:0 withTemplate:{objc_msgSend(v30, "length"), &stru_1006B82F8}];
          v24 = [@"+" stringByAppendingString:v23];

          if (v22)
          {
            v37[0] = v12;
            v37[1] = v22;
            v37[2] = v24;
            v21 = [NSArray arrayWithObjects:v37 count:3];
            v20 = v22;
            v30 = v24;
            goto LABEL_26;
          }

          v30 = v24;
        }

        v20 = 0;
        v38[0] = v12;
        v38[1] = v30;
        v21 = [NSArray arrayWithObjects:v38 count:2];
LABEL_26:
        v7 = [NSSet setWithArray:v21];

        v8 = v19;
        goto LABEL_27;
      }
    }

    else if (v12)
    {
      goto LABEL_22;
    }

    v12 = v26;
    goto LABEL_22;
  }

  v7 = 0;
LABEL_28:

LABEL_29:

  return v7;
}

- (void)tfrVhQidRAUlTy5Y:(id)y completion:(id)completion
{
  yCopy = y;
  completionCopy = completion;
  v7 = [(C7RiKwi0qHUD3RW9 *)self wQx5zziHtNxqlbwU:yCopy];
  v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"_kMDItemBundleID='com.apple.MobileAddressBook' && (kMDItemEmailAddress='%@' "), yCopy;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v10)
  {
    v11 = *v22;
    do
    {
      v12 = 0;
      v13 = v8;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v8 = [v13 stringByAppendingFormat:@"|| kMDItemAccountHandles='*%@' ", *(*(&v21 + 1) + 8 * v12)];

        v12 = v12 + 1;
        v13 = v8;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v10);
  }

  v14 = [v8 stringByAppendingString:@""]);

  v25 = @"public.contact";
  v15 = [NSArray arrayWithObjects:&v25 count:1];
  v16 = [(C7RiKwi0qHUD3RW9 *)self mF9a0iyS9JaiQAjp:v15 pXKoPMsQI9AYa6US:v14];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100012B54;
  v19[3] = &unk_10068F530;
  v17 = completionCopy;
  v20 = v17;
  [(C7RiKwi0qHUD3RW9 *)self Iv2P4WxadRhQ5ldX:v16 GymwzUEOAaggmTfe:1 Y16kne8dG6NtD3ma:&stru_10068F570 completion:v19 yVhet0BX5E1CDncz:0];
}

- (void)MbPRHtYjEv98WrKf:(id)kf completion:(id)completion
{
  kfCopy = kf;
  completionCopy = completion;
  v14 = @"public.contact";
  v8 = [NSArray arrayWithObjects:&v14 count:1];
  kfCopy = [NSString stringWithFormat:@"_kMDItemBundleID='com.apple.MobileAddressBook' && kMDItemEmailAddresses='%@'", kfCopy];
  v10 = [(C7RiKwi0qHUD3RW9 *)self mF9a0iyS9JaiQAjp:v8 pXKoPMsQI9AYa6US:kfCopy];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100012D2C;
  v12[3] = &unk_10068F530;
  v11 = completionCopy;
  v13 = v11;
  [(C7RiKwi0qHUD3RW9 *)self Iv2P4WxadRhQ5ldX:v10 GymwzUEOAaggmTfe:1 Y16kne8dG6NtD3ma:&stru_10068F590 completion:v12 yVhet0BX5E1CDncz:0];
}

- (void)enableCHShowProtectedAppsForManager:(id)manager
{
  managerCopy = manager;
  if (objc_opt_respondsToSelector())
  {
    ([managerCopy methodForSelector:"setShowsProtectedApps:"])(managerCopy, "setShowsProtectedApps:", 1);
  }
}

- (void)A6B42kYrDuXnlUJs:(int *)js IaS2bByRUGdVAKHz:(int *)hz QqUmN4hrxAoSYB5g:(id)b5g
{
  b5gCopy = b5g;
  v22 = objc_opt_new();
  [(C7RiKwi0qHUD3RW9 *)self enableCHShowProtectedAppsForManager:?];
  v23 = [NSDate dateWithTimeIntervalSinceNow:-2592000.0];
  v20 = +[NSDate date];
  v21 = [NSPredicate predicateWithFormat:@"date > %@ AND date <= %@", v23, v20];
  v7 = [v22 recentCallsWithPredicate:?];
  *js = 0;
  *hz = 0;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v8)
  {
    v29 = *v35;
    v28 = kCHCallStatusIncoming;
    v25 = kCHCallStatusOutgoing;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v35 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v34 + 1) + 8 * i);
        if (b5gCopy)
        {
          remoteParticipantHandles = [*(*(&v34 + 1) + 8 * i) remoteParticipantHandles];
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v12 = remoteParticipantHandles;
          v13 = [v12 countByEnumeratingWithState:&v30 objects:v38 count:16];
          if (v13)
          {
            v14 = *v31;
            while (2)
            {
              for (j = 0; j != v13; j = j + 1)
              {
                if (*v31 != v14)
                {
                  objc_enumerationMutation(v12);
                }

                v16 = *(*(&v30 + 1) + 8 * j);
                if ([v16 type] == 2)
                {
                  value = [v16 value];
                  v18 = [b5gCopy isEqualToString:value];

                  if (v18)
                  {

                    goto LABEL_18;
                  }
                }
              }

              v13 = [v12 countByEnumeratingWithState:&v30 objects:v38 count:16];
              if (v13)
              {
                continue;
              }

              break;
            }
          }
        }

        else
        {
LABEL_18:
          if ((v28 & [v10 callStatus]) != 0)
          {
            hzCopy = js;
          }

          else
          {
            if ((v25 & [v10 callStatus]) == 0)
            {
              continue;
            }

            hzCopy = hz;
          }

          ++*hzCopy;
        }
      }

      v8 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v8);
  }
}

- (void)hSmO2OC6etXclsKP:(id)p edrv2qHmtbt1iEyf:(id)eyf QsX3tfdMvsGwvY0F:(unsigned int)f completion:(id)completion
{
  pCopy = p;
  eyfCopy = eyf;
  completionCopy = completion;
  v42 = objc_opt_new();
  v9 = objc_opt_new();
  [(C7RiKwi0qHUD3RW9 *)self enableCHShowProtectedAppsForManager:v9];
  v10 = [NSPredicate predicateWithFormat:pCopy];
  v32 = [v9 recentCallsWithPredicate:v10];

  v11 = [eyfCopy length];
  if (v11)
  {
    v12 = [(C7RiKwi0qHUD3RW9 *)self wQx5zziHtNxqlbwU:eyfCopy];
  }

  else
  {
    v12 = 0;
  }

  v40 = v11;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v32;
  v13 = [obj countByEnumeratingWithState:&v48 objects:v55 count:16];
  if (v13)
  {
    v38 = *v49;
    v37 = kCHCallStatusIncoming;
    while (2)
    {
      v39 = v13;
      for (i = 0; i != v39; i = i + 1)
      {
        if (*v49 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v48 + 1) + 8 * i);
        remoteParticipantHandles = [v15 remoteParticipantHandles];
        callStatus = [v15 callStatus];
        if (v40)
        {
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v17 = remoteParticipantHandles;
          v18 = [v17 countByEnumeratingWithState:&v44 objects:v54 count:16];
          if (v18)
          {
            v19 = *v45;
            while (2)
            {
              for (j = 0; j != v18; ++j)
              {
                if (*v45 != v19)
                {
                  objc_enumerationMutation(v17);
                }

                v21 = *(*(&v44 + 1) + 8 * j);
                normalizedValue = [v21 normalizedValue];
                if (normalizedValue && ([v12 containsObject:normalizedValue] & 1) != 0)
                {
                  goto LABEL_24;
                }

                value = [v21 value];
                if (value && ([v12 containsObject:value] & 1) != 0)
                {

LABEL_24:
                  v18 = 1;
                  goto LABEL_25;
                }
              }

              v18 = [v17 countByEnumeratingWithState:&v44 objects:v54 count:16];
              if (v18)
              {
                continue;
              }

              break;
            }
          }

LABEL_25:
        }

        else
        {
          v18 = 1;
        }

        v24 = +[NSNull null];
        date = [v15 date];

        if (date)
        {
          date2 = [v15 date];

          v24 = date2;
        }

        v52[0] = @"d";
        [v15 duration];
        v27 = [NSNumber numberWithDouble:?];
        v53[0] = v27;
        v53[1] = v24;
        v52[1] = @"cd";
        v52[2] = @"di";
        v28 = [NSNumber numberWithInt:(v37 & callStatus) == 0];
        v53[2] = v28;
        v52[3] = @"mp";
        v29 = [NSNumber numberWithInt:v18];
        v53[3] = v29;
        v30 = [NSDictionary dictionaryWithObjects:v53 forKeys:v52 count:4];

        [v42 addObject:v30];
        if (f && [v42 count] >= f)
        {

          goto LABEL_34;
        }
      }

      v13 = [obj countByEnumeratingWithState:&v48 objects:v55 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_34:

  v31 = [NSArray arrayWithArray:v42];
  completionCopy[2](completionCopy, 0, v31);
}

@end