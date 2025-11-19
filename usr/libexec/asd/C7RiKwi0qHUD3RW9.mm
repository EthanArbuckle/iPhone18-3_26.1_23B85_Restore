@interface C7RiKwi0qHUD3RW9
+ (id)sharedInstance;
- (id)SvXmeMlpC8nbshta:(id)a3 name:(id)a4;
- (id)mF9a0iyS9JaiQAjp:(id)a3 pXKoPMsQI9AYa6US:(id)a4;
- (id)wQx5zziHtNxqlbwU:(id)a3;
- (int64_t)L2S3goqpYnHiXTRg:(int64_t)a3;
- (int64_t)LygrmXh7W0Hs2O8n:(id)a3;
- (int64_t)N2XtGIRzgUKLkZMS:(id)a3;
- (void)A6B42kYrDuXnlUJs:(int *)a3 IaS2bByRUGdVAKHz:(int *)a4 QqUmN4hrxAoSYB5g:(id)a5;
- (void)E5J0OeRApCYQUXDZ:(id)a3 completion:(id)a4;
- (void)Iv2P4WxadRhQ5ldX:(id)a3 GymwzUEOAaggmTfe:(int)a4 Y16kne8dG6NtD3ma:(id)a5 completion:(id)a6 yVhet0BX5E1CDncz:(id)a7;
- (void)KqWH25SjlYcX4wo6:(id)a3 completion:(id)a4;
- (void)MbPRHtYjEv98WrKf:(id)a3 completion:(id)a4;
- (void)SKiIwgejuzELNOY0:(id)a3 completion:(id)a4;
- (void)U4k02bIWNYQCLSGK:(id)a3 completion:(id)a4;
- (void)YMeSiVAJwqHb7P3U:(id)a3 completion:(id)a4;
- (void)b8mzIZQ1GCTnhVAP:(id)a3 completion:(id)a4;
- (void)enableCHShowProtectedAppsForManager:(id)a3;
- (void)f7RoJXIsBwkuxLd1:(id)a3 completionBlock:(id)a4;
- (void)hSmO2OC6etXclsKP:(id)a3 edrv2qHmtbt1iEyf:(id)a4 QsX3tfdMvsGwvY0F:(unsigned int)a5 completion:(id)a6;
- (void)pRfmPXmMPeo7rsRf:(id)a3 N3UHg1ij3irF9uUu:(id)a4 QsX3tfdMvsGwvY0F:(unsigned int)a5 completionBlock:(id)a6;
- (void)tfrVhQidRAUlTy5Y:(id)a3 completion:(id)a4;
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

- (int64_t)L2S3goqpYnHiXTRg:(int64_t)a3
{
  if ((a3 + 2003) >= 4)
  {
    return a3;
  }

  else
  {
    return 138000 - a3;
  }
}

- (int64_t)LygrmXh7W0Hs2O8n:(id)a3
{
  v3 = a3;
  v4 = [v3 attributeSet];
  v5 = [v4 authorEmailAddresses];

  v6 = [v3 attributeSet];
  v7 = [v6 recipientEmailAddresses];

  if (v5)
  {
    [NSSet setWithArray:v5];
  }

  else
  {
    +[NSSet set];
  }
  v8 = ;
  if (v7)
  {
    [NSSet setWithArray:v7];
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
  v10 = [v3 attributeSet];
  v11 = [v10 accountHandles];

  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = *v19;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v11);
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

      v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
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

- (int64_t)N2XtGIRzgUKLkZMS:(id)a3
{
  v3 = a3;
  v4 = [v3 attributeSet];
  v5 = [v4 authorAddresses];

  v6 = [v3 attributeSet];
  v7 = [v6 recipientAddresses];

  if (v5)
  {
    [NSSet setWithArray:v5];
  }

  else
  {
    +[NSSet set];
  }
  v8 = ;
  if (v7)
  {
    [NSSet setWithArray:v7];
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
  v10 = [v3 attributeSet];
  v11 = [v10 accountHandles];

  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = *v19;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v11);
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

      v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
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

- (id)SvXmeMlpC8nbshta:(id)a3 name:(id)a4
{
  v30 = a3;
  v29 = a4;
  v5 = [v29 firstName];
  if (v5 && ([v29 lastName], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    v7 = [v29 firstName];
    v37[0] = v7;
    v8 = [v29 lastName];
    v37[1] = v8;
    v9 = [NSArray arrayWithObjects:v37 count:2];
  }

  else
  {
    v10 = [v29 fullName];

    if (v10)
    {
      v11 = [v29 fullName];
      v12 = +[NSCharacterSet whitespaceCharacterSet];
      v9 = [v11 componentsSeparatedByCharactersInSet:v12];
    }

    else
    {
      v13 = [v29 lastName];

      if (v13)
      {
        v14 = [v29 lastName];
        v36 = v14;
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
        v24 = [NSString stringWithFormat:@"%@='*%@*'cd", v30, v23];

        [v18 addObject:v24];
      }

      v20 = [v19 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v20);
  }

  v25 = [v18 componentsJoinedByString:@" || "];

  return v25;
}

- (id)mF9a0iyS9JaiQAjp:(id)a3 pXKoPMsQI9AYa6US:(id)a4
{
  v5 = a3;
  v21 = a4;
  if (([v5 containsObject:@"public.email-message"] & 1) != 0 || objc_msgSend(v5, "containsObject:", @"public.message"))
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

  v12 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = v5;
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
  v19 = [NSString stringWithFormat:@"%@(%@) && (%@)", v11, v18, v21];

  return v19;
}

- (void)Iv2P4WxadRhQ5ldX:(id)a3 GymwzUEOAaggmTfe:(int)a4 Y16kne8dG6NtD3ma:(id)a5 completion:(id)a6 yVhet0BX5E1CDncz:(id)a7
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = malloc_type_calloc(a4, 4uLL, 0x100004052888210uLL);
  v16 = objc_opt_new();
  [v16 setFetchAttributes:v14];
  [v16 setMaxCount:100];
  v29[0] = NSFileProtectionComplete;
  v29[1] = NSFileProtectionCompleteUnlessOpen;
  v29[2] = NSFileProtectionCompleteUntilFirstUserAuthentication;
  v17 = [NSArray arrayWithObjects:v29 count:3];
  [v16 setProtectionClasses:v17];

  [v16 setIncludeUserActivities:1];
  v18 = [[CSSearchQuery alloc] initWithQueryString:v11 context:v16];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000107C8;
  v25[3] = &unk_10068F440;
  v19 = v12;
  v26 = v19;
  v27 = v15;
  v28 = a4;
  [v18 setFoundItemsHandler:v25];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000108F0;
  v21[3] = &unk_10068F468;
  v20 = v13;
  v22 = v20;
  v23 = v15;
  v24 = a4;
  [v18 setCompletionHandler:v21];
  [v18 start];
}

- (void)f7RoJXIsBwkuxLd1:(id)a3 completionBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  [v7 setFetchAttributes:&__NSArray0__struct];
  [v7 setMaxCount:100];
  v18[0] = NSFileProtectionComplete;
  v18[1] = NSFileProtectionCompleteUnlessOpen;
  v18[2] = NSFileProtectionCompleteUntilFirstUserAuthentication;
  v8 = [NSArray arrayWithObjects:v18 count:3];
  [v7 setProtectionClasses:v8];

  [v7 setIncludeUserActivities:1];
  v9 = [[CSSearchQuery alloc] initWithQueryString:v5 context:v7];
  [v9 setFoundItemsHandler:0];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100010B60;
  v15 = &unk_10068F490;
  v10 = v6;
  v17 = v10;
  v11 = v9;
  v16 = v11;
  [v11 setCompletionHandler:&v12];
  [v11 start];
}

- (void)pRfmPXmMPeo7rsRf:(id)a3 N3UHg1ij3irF9uUu:(id)a4 QsX3tfdMvsGwvY0F:(unsigned int)a5 completionBlock:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = objc_opt_new();
  [v12 setFetchAttributes:&__NSArray0__struct];
  [v12 setMaxCount:a5];
  v32[0] = NSFileProtectionComplete;
  v32[1] = NSFileProtectionCompleteUnlessOpen;
  v32[2] = NSFileProtectionCompleteUntilFirstUserAuthentication;
  v13 = [NSArray arrayWithObjects:v32 count:3];
  [v12 setProtectionClasses:v13];

  [v12 setIncludeUserActivities:1];
  v14 = [[CSSearchQuery alloc] initWithQueryString:v9 attributes:v10];
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
  v15 = v10;
  v24 = v15;
  v26 = v30;
  v27 = a5;
  [v14 setFoundItemsHandler:v23];
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_1000112B4;
  v20 = &unk_10068F4E0;
  v16 = v11;
  v21 = v16;
  v22 = v30;
  [v14 setCompletionHandler:&v17];
  [v14 start];

  _Block_object_dispose(v28, 8);
  _Block_object_dispose(v30, 8);
}

- (void)b8mzIZQ1GCTnhVAP:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = [v6 firstName];
  if (v9 || ([v6 lastName], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    v16 = [v6 fullName];

    if (!v16)
    {
      goto LABEL_5;
    }
  }

  v10 = [(C7RiKwi0qHUD3RW9 *)self SvXmeMlpC8nbshta:@"kMDItemAuthors" name:v6];
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
  v15 = v7;
  v18 = v15;
  [(C7RiKwi0qHUD3RW9 *)self Iv2P4WxadRhQ5ldX:v14 GymwzUEOAaggmTfe:2 Y16kne8dG6NtD3ma:v19 completion:v17 yVhet0BX5E1CDncz:&off_1006BAB20];
}

- (void)SKiIwgejuzELNOY0:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = [v6 firstName];
  if (v9 || ([v6 lastName], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    v16 = [v6 fullName];

    if (!v16)
    {
      goto LABEL_5;
    }
  }

  v10 = [(C7RiKwi0qHUD3RW9 *)self SvXmeMlpC8nbshta:@"kMDItemRecipients" name:v6];
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
  v15 = v7;
  v18 = v15;
  [(C7RiKwi0qHUD3RW9 *)self Iv2P4WxadRhQ5ldX:v14 GymwzUEOAaggmTfe:2 Y16kne8dG6NtD3ma:v19 completion:v17 yVhet0BX5E1CDncz:&off_1006BAB38];
}

- (void)U4k02bIWNYQCLSGK:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15 = @"public.email-message";
  v8 = [NSArray arrayWithObjects:&v15 count:1];
  v9 = [NSString stringWithFormat:@"kMDItemAuthorEmailAddresses='%@'", v6];
  v10 = [(C7RiKwi0qHUD3RW9 *)self mF9a0iyS9JaiQAjp:v8 pXKoPMsQI9AYa6US:v9];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100011B1C;
  v14[3] = &unk_10068F508;
  v14[4] = self;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100011B68;
  v12[3] = &unk_10068F530;
  v11 = v7;
  v13 = v11;
  [(C7RiKwi0qHUD3RW9 *)self Iv2P4WxadRhQ5ldX:v10 GymwzUEOAaggmTfe:2 Y16kne8dG6NtD3ma:v14 completion:v12 yVhet0BX5E1CDncz:&off_1006BAB50];
}

- (void)E5J0OeRApCYQUXDZ:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15 = @"public.email-message";
  v8 = [NSArray arrayWithObjects:&v15 count:1];
  v9 = [NSString stringWithFormat:@"kMDItemRecipientEmailAddresses='%@'", v6];
  v10 = [(C7RiKwi0qHUD3RW9 *)self mF9a0iyS9JaiQAjp:v8 pXKoPMsQI9AYa6US:v9];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100011D6C;
  v14[3] = &unk_10068F508;
  v14[4] = self;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100011DB8;
  v12[3] = &unk_10068F530;
  v11 = v7;
  v13 = v11;
  [(C7RiKwi0qHUD3RW9 *)self Iv2P4WxadRhQ5ldX:v10 GymwzUEOAaggmTfe:2 Y16kne8dG6NtD3ma:v14 completion:v12 yVhet0BX5E1CDncz:&off_1006BAB68];
}

- (void)YMeSiVAJwqHb7P3U:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15 = @"public.message";
  v8 = [NSArray arrayWithObjects:&v15 count:1];
  v9 = [NSString stringWithFormat:@"kMDItemAuthorAddresses='%@'", v6];
  v10 = [(C7RiKwi0qHUD3RW9 *)self mF9a0iyS9JaiQAjp:v8 pXKoPMsQI9AYa6US:v9];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100011FBC;
  v14[3] = &unk_10068F508;
  v14[4] = self;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100012008;
  v12[3] = &unk_10068F530;
  v11 = v7;
  v13 = v11;
  [(C7RiKwi0qHUD3RW9 *)self Iv2P4WxadRhQ5ldX:v10 GymwzUEOAaggmTfe:2 Y16kne8dG6NtD3ma:v14 completion:v12 yVhet0BX5E1CDncz:&off_1006BAB80];
}

- (void)KqWH25SjlYcX4wo6:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15 = @"public.message";
  v8 = [NSArray arrayWithObjects:&v15 count:1];
  v9 = [NSString stringWithFormat:@"kMDItemRecipientAddresses='%@'", v6];
  v10 = [(C7RiKwi0qHUD3RW9 *)self mF9a0iyS9JaiQAjp:v8 pXKoPMsQI9AYa6US:v9];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10001220C;
  v14[3] = &unk_10068F508;
  v14[4] = self;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100012258;
  v12[3] = &unk_10068F530;
  v11 = v7;
  v13 = v11;
  [(C7RiKwi0qHUD3RW9 *)self Iv2P4WxadRhQ5ldX:v10 GymwzUEOAaggmTfe:2 Y16kne8dG6NtD3ma:v14 completion:v12 yVhet0BX5E1CDncz:&off_1006BAB98];
}

- (id)wQx5zziHtNxqlbwU:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    v7 = 0;
    goto LABEL_29;
  }

  v36 = 0;
  v4 = [NSRegularExpression regularExpressionWithPattern:@"@" options:1 error:&v36];
  v5 = v36;
  v6 = [v4 matchesInString:v3 options:0 range:{0, objc_msgSend(v3, "length")}];
  if (![v6 count])
  {
    v35 = v5;
    v32 = [NSRegularExpression regularExpressionWithPattern:@"[0-9\\-\\+\\*\\(\\)\\#\\s]" options:1 error:&v35];
    v8 = v35;

    v31 = [v32 matchesInString:v3 options:0 range:{0, objc_msgSend(v3, "length")}];

    if (![v31 count])
    {
      v7 = 0;
LABEL_27:

      v6 = v31;
      v5 = v8;
      goto LABEL_28;
    }

    v9 = +[NSLocale currentLocale];
    v29 = [v9 regionCode];

    v10 = CFPhoneNumberCreate();
    String = CFPhoneNumberCreateString();
    v26 = CFPhoneNumberCreateString();
    v12 = String;
    v30 = v12;
    if (!v12)
    {
      v30 = v3;
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

    v27 = [NSString stringWithFormat:@"+%ld ", ITUCountryCodeForISOCountryCode];
    if ([v12 hasPrefix:?])
    {
      v15 = [v12 substringFromIndex:{objc_msgSend(v27, "length")}];

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

- (void)tfrVhQidRAUlTy5Y:(id)a3 completion:(id)a4
{
  v6 = a3;
  v18 = a4;
  v7 = [(C7RiKwi0qHUD3RW9 *)self wQx5zziHtNxqlbwU:v6];
  v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"_kMDItemBundleID='com.apple.MobileAddressBook' && (kMDItemEmailAddress='%@' "), v6;
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
  v17 = v18;
  v20 = v17;
  [(C7RiKwi0qHUD3RW9 *)self Iv2P4WxadRhQ5ldX:v16 GymwzUEOAaggmTfe:1 Y16kne8dG6NtD3ma:&stru_10068F570 completion:v19 yVhet0BX5E1CDncz:0];
}

- (void)MbPRHtYjEv98WrKf:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14 = @"public.contact";
  v8 = [NSArray arrayWithObjects:&v14 count:1];
  v9 = [NSString stringWithFormat:@"_kMDItemBundleID='com.apple.MobileAddressBook' && kMDItemEmailAddresses='%@'", v6];
  v10 = [(C7RiKwi0qHUD3RW9 *)self mF9a0iyS9JaiQAjp:v8 pXKoPMsQI9AYa6US:v9];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100012D2C;
  v12[3] = &unk_10068F530;
  v11 = v7;
  v13 = v11;
  [(C7RiKwi0qHUD3RW9 *)self Iv2P4WxadRhQ5ldX:v10 GymwzUEOAaggmTfe:1 Y16kne8dG6NtD3ma:&stru_10068F590 completion:v12 yVhet0BX5E1CDncz:0];
}

- (void)enableCHShowProtectedAppsForManager:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    ([v3 methodForSelector:"setShowsProtectedApps:"])(v3, "setShowsProtectedApps:", 1);
  }
}

- (void)A6B42kYrDuXnlUJs:(int *)a3 IaS2bByRUGdVAKHz:(int *)a4 QqUmN4hrxAoSYB5g:(id)a5
{
  v6 = a5;
  v22 = objc_opt_new();
  [(C7RiKwi0qHUD3RW9 *)self enableCHShowProtectedAppsForManager:?];
  v23 = [NSDate dateWithTimeIntervalSinceNow:-2592000.0];
  v20 = +[NSDate date];
  v21 = [NSPredicate predicateWithFormat:@"date > %@ AND date <= %@", v23, v20];
  v7 = [v22 recentCallsWithPredicate:?];
  *a3 = 0;
  *a4 = 0;
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
        if (v6)
        {
          v11 = [*(*(&v34 + 1) + 8 * i) remoteParticipantHandles];
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v12 = v11;
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
                  v17 = [v16 value];
                  v18 = [v6 isEqualToString:v17];

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
            v19 = a3;
          }

          else
          {
            if ((v25 & [v10 callStatus]) == 0)
            {
              continue;
            }

            v19 = a4;
          }

          ++*v19;
        }
      }

      v8 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v8);
  }
}

- (void)hSmO2OC6etXclsKP:(id)a3 edrv2qHmtbt1iEyf:(id)a4 QsX3tfdMvsGwvY0F:(unsigned int)a5 completion:(id)a6
{
  v34 = a3;
  v35 = a4;
  v33 = a6;
  v42 = objc_opt_new();
  v9 = objc_opt_new();
  [(C7RiKwi0qHUD3RW9 *)self enableCHShowProtectedAppsForManager:v9];
  v10 = [NSPredicate predicateWithFormat:v34];
  v32 = [v9 recentCallsWithPredicate:v10];

  v11 = [v35 length];
  if (v11)
  {
    v12 = [(C7RiKwi0qHUD3RW9 *)self wQx5zziHtNxqlbwU:v35];
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
        v43 = [v15 remoteParticipantHandles];
        v16 = [v15 callStatus];
        if (v40)
        {
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v17 = v43;
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
                v22 = [v21 normalizedValue];
                if (v22 && ([v12 containsObject:v22] & 1) != 0)
                {
                  goto LABEL_24;
                }

                v23 = [v21 value];
                if (v23 && ([v12 containsObject:v23] & 1) != 0)
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
        v25 = [v15 date];

        if (v25)
        {
          v26 = [v15 date];

          v24 = v26;
        }

        v52[0] = @"d";
        [v15 duration];
        v27 = [NSNumber numberWithDouble:?];
        v53[0] = v27;
        v53[1] = v24;
        v52[1] = @"cd";
        v52[2] = @"di";
        v28 = [NSNumber numberWithInt:(v37 & v16) == 0];
        v53[2] = v28;
        v52[3] = @"mp";
        v29 = [NSNumber numberWithInt:v18];
        v53[3] = v29;
        v30 = [NSDictionary dictionaryWithObjects:v53 forKeys:v52 count:4];

        [v42 addObject:v30];
        if (a5 && [v42 count] >= a5)
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
  v33[2](v33, 0, v31);
}

@end