uint64_t start(int a1, uint64_t a2)
{
  context = objc_autoreleasePoolPush();
  v4 = objc_opt_new();
  v5 = (a1 - 1);
  if (a1 < 1)
  {
    v30 = 0;
    v31 = 0;
    v29 = 0;
    v37 = 0;
    v35 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v36 = 0;
LABEL_30:
    v15 = v36;
    v17 = v33;
    v16 = v34;
    v18 = v32;
    v19 = [[HomeRecommendationUtilDriver alloc] initWithArgs:v4 homeID:v36 templateName:v34 serviceID:v33 accessoryID:v32];
    v8 = v19;
    if (v37)
    {
      [(HomeRecommendationUtilDriver *)v19 setAutoCommit:1];
    }

    [v8 setAutoCommitAll:v35 & 1];
    v21 = v30;
    v20 = v31;
    v22 = v29;
    if (v30)
    {
      [v8 setExtraOptions:v30];
    }

    if (v31)
    {
      [v8 setRecommendationID:v31];
    }

    if ([v29 isEqualToString:@"lights"])
    {
      v23 = +[HFAccessoryTypeGroup lightAccessoryTypeGroup];
    }

    else if ([v29 isEqualToString:@"water"])
    {
      v23 = +[HFAccessoryTypeGroup waterAccessoryTypeGroup];
    }

    else if ([v29 isEqualToString:@"media"])
    {
      v23 = +[HFAccessoryTypeGroup mediaAccessoryTypeGroup];
    }

    else if ([v29 isEqualToString:@"security"])
    {
      v23 = +[HFAccessoryTypeGroup securityAccessoryTypeGroup];
    }

    else if ([v29 isEqualToString:@"climate"])
    {
      v23 = +[HFAccessoryTypeGroup climateAccessoryTypeGroup];
    }

    else
    {
      if (![v29 isEqualToString:@"energy"])
      {
LABEL_50:
        [v8 start];
        goto LABEL_51;
      }

      v23 = +[HFAccessoryTypeGroup energyAccessoryTypeGroup];
    }

    v25 = v23;
    [v8 setTypeGroup:v23];

    goto LABEL_50;
  }

  v36 = 0;
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v35 = 0;
  v37 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v6 = a1;
  v27 = a2;
  v7 = (a2 + 8);
  while (1)
  {
    v8 = [NSString stringWithUTF8String:*(v7 - 1)];
    [v4 addObject:v8];
    v9 = [v8 length];
    if (v9 >= 2)
    {
      v10 = 2;
    }

    else
    {
      v10 = v9;
    }

    v11 = [v8 substringToIndex:v10];
    v12 = [v11 isEqualToString:@"--"];

    if (!v12)
    {
      goto LABEL_27;
    }

    if ([v8 isEqualToString:@"--auto-commit"])
    {
      v37 = 1;
      goto LABEL_27;
    }

    if ([v8 isEqualToString:@"--auto-commit-all"])
    {
      v35 = 1;
      goto LABEL_27;
    }

    if (!v5)
    {
      break;
    }

    if ([v8 isEqualToString:@"--home"])
    {
      [NSString stringWithUTF8String:*v7];
      v36 = v13 = v36;
LABEL_26:

      goto LABEL_27;
    }

    if ([v8 isEqualToString:@"--template"])
    {
      [NSString stringWithUTF8String:*v7];
      v34 = v13 = v34;
      goto LABEL_26;
    }

    if ([v8 isEqualToString:@"--service"])
    {
      [NSString stringWithUTF8String:*v7];
      v33 = v13 = v33;
      goto LABEL_26;
    }

    if ([v8 isEqualToString:@"--accessory"])
    {
      [NSString stringWithUTF8String:*v7];
      v32 = v13 = v32;
      goto LABEL_26;
    }

    if ([v8 isEqualToString:@"--recommendation"])
    {
      [NSString stringWithUTF8String:*v7];
      v31 = v13 = v31;
      goto LABEL_26;
    }

    if ([v8 isEqualToString:@"--options"])
    {
      v13 = [NSString stringWithUTF8String:*v7];
      v14 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v13 integerValue]);

      v30 = v14;
      goto LABEL_26;
    }

    if ([v8 isEqualToString:@"--typeGroup"])
    {
      [NSString stringWithUTF8String:*v7];
      v29 = v13 = v29;
      goto LABEL_26;
    }

LABEL_27:

    --v5;
    ++v7;
    if (!--v6)
    {
      goto LABEL_30;
    }
  }

  v24 = *v27;
  printf("Incorrect usage: %s %s [parameter value]\n", *v27, *(v7 - 1));
  v15 = v36;
  v17 = v33;
  v16 = v34;
  v20 = v31;
  v18 = v32;
  v22 = v29;
  v21 = v30;
LABEL_51:

  objc_autoreleasePoolPop(context);
  return 0;
}

void sub_10000170C(uint64_t a1)
{
  v1 = [*(a1 + 32) dispatchGroup];
  dispatch_group_leave(v1);
}

id sub_100001920(uint64_t a1)
{
  v2 = [*(a1 + 32) home];
  NSLog(@"Selected home: %@", v2);

  v3 = [*(a1 + 32) serviceID];

  if (!v3)
  {
    goto LABEL_3;
  }

  v4 = [*(a1 + 32) home];
  v5 = [v4 accessories];
  v6 = [v5 na_flatMap:&stru_100008298];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100001C7C;
  v26[3] = &unk_1000082C0;
  v26[4] = *(a1 + 32);
  v7 = [v6 na_firstObjectPassingTest:v26];
  [*(a1 + 32) setService:v7];

  v8 = [*(a1 + 32) service];

  if (!v8)
  {
    v22 = 2;
  }

  else
  {
LABEL_3:
    v9 = [*(a1 + 32) accessoryID];

    if (!v9)
    {
      goto LABEL_5;
    }

    v10 = [*(a1 + 32) home];
    v11 = [NSUUID alloc];
    v12 = [*(a1 + 32) accessoryID];
    v13 = [v11 initWithUUIDString:v12];
    v14 = [v10 hf_accessoryWithIdentifier:v13];
    [*(a1 + 32) setAccessory:v14];

    v15 = [*(a1 + 32) accessory];

    if (!v15)
    {
      v22 = 3;
    }

    else
    {
LABEL_5:
      v16 = [*(a1 + 32) templateName];

      if (!v16)
      {
        goto LABEL_7;
      }

      v17 = +[HRETemplateRecommendationGenerator allAvailableTemplates];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100001CF0;
      v25[3] = &unk_1000082E8;
      v25[4] = *(a1 + 32);
      v18 = [v17 na_firstObjectPassingTest:v25];
      [*(a1 + 32) setTemplate:v18];

      v19 = [*(a1 + 32) template];

      if (v19)
      {
LABEL_7:
        v20 = objc_alloc_init(HRERecommendationEngine);
        [*(a1 + 32) setRecommendationEngine:v20];

        v21 = [*(a1 + 32) loadRecommendations];
        goto LABEL_12;
      }

      v22 = 1;
    }
  }

  v23 = [NSError errorWithDomain:@"HomeRecommendationUtilDriver" code:v22 userInfo:0];
  v21 = [NAFuture futureWithError:v23];

LABEL_12:

  return v21;
}

id sub_100001C7C(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 UUIDString];
  v5 = [*(a1 + 32) serviceID];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

uint64_t sub_100001CF0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 title];
  v5 = [v4 lowercaseString];
  v6 = [*(a1 + 32) templateName];
  v7 = [v6 lowercaseString];
  if ([v5 isEqualToString:v7])
  {
    v8 = 1;
  }

  else
  {
    v9 = [v3 identifier];
    v10 = [v9 lowercaseString];
    v11 = [*(a1 + 32) templateName];
    v12 = [v11 lowercaseString];
    v8 = [v10 isEqualToString:v12];
  }

  return v8;
}

id sub_100001DF4(uint64_t a1, void *a2)
{
  v3 = a2;
  NSLog(@"%@", @"===============================");
  if (v3)
  {
    v4 = v3;
    v5 = [*(a1 + 32) recommendationID];

    if (v5)
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1000020D4;
      v16[3] = &unk_100008338;
      v16[4] = *(a1 + 32);
      v6 = [v4 na_filter:v16];

      v4 = v6;
    }

    v7 = [v4 debugDescription];
    NSLog(@"Recommendations: %@", v7);

    if ([*(a1 + 32) autoCommit] && objc_msgSend(v4, "count") == 1)
    {
      NSLog(@"%@", @"===============================");
      NSLog(@"Auto-committing first recommendation...");
      v8 = *(a1 + 32);
      v9 = [v4 firstObject];
      v10 = [v8 commit:v9];
LABEL_10:

      goto LABEL_14;
    }

    if ([*(a1 + 32) autoCommitAll] && objc_msgSend(v4, "count"))
    {
      NSLog(@"%@", @"===============================");
      NSLog(@"Auto-committing all recommendations...");
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100002138;
      v15[3] = &unk_100008388;
      v15[4] = *(a1 + 32);
      v9 = [v4 na_map:v15];
      v11 = [NAFuture chainFutures:v9];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100002280;
      v13[3] = &unk_1000083B0;
      v14 = v4;
      v10 = [v11 flatMap:v13];

      goto LABEL_10;
    }
  }

  else
  {
    NSLog(@"No recommendations available");
  }

  NSLog(@"%@", @"===============================");
  v10 = +[NAFuture futureWithNoResult];
LABEL_14:

  return v10;
}

id sub_1000020D4(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [*(a1 + 32) recommendationID];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

id sub_100002138(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000021F4;
  v7[3] = &unk_100008360;
  v7[4] = *(a1 + 32);
  v8 = v3;
  v4 = v3;
  v5 = [NAFuture lazyFutureWithBlock:v7];

  return v5;
}

void sub_1000021F4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v7 = [v2 commit:v3];
  v5 = [v4 completionHandlerAdapter];

  v6 = [v7 addCompletionBlock:v5];
}

void sub_100002294(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [*(a1 + 32) logError:a3];
  if ([*(a1 + 32) autoCommit])
  {
    objc_opt_class();
    v6 = v5;
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if (v8)
    {
      NSLog(@"Committed recommendation: %@", v8);
    }

    goto LABEL_20;
  }

  if ([*(a1 + 32) autoCommitAll])
  {
    objc_opt_class();
    v9 = v5;
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v8 = v10;

    if (!v8)
    {
      NSLog(@"Unexpected return type %@", v9);
      goto LABEL_21;
    }

    NSLog(@"Committed recommendations:");
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        v15 = 0;
        do
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v17 + 1) + 8 * v15) uniqueIdentifier];
          NSLog(@"%@", v16);

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v13);
    }

LABEL_20:
    NSLog(@"%@", @"===============================");
    NSLog(@"%@", @"===============================");
LABEL_21:
  }
}

NAFuture *__cdecl sub_1000027B8(id a1, NSSet *a2)
{
  v2 = [(NSSet *)a2 allObjects];
  v3 = [NAFuture futureWithResult:v2];

  return v3;
}

NAFuture *__cdecl sub_100002930(id a1, NSError *a2)
{
  v7 = @"error";
  v8 = a2;
  v2 = a2;
  v3 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v4 = [NSError errorWithDomain:@"HomeRecommendationUtilDriver" code:4 userInfo:v3];
  v5 = [NAFuture futureWithError:v4];

  return v5;
}

id sub_100002CBC(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 UUIDString];
  v5 = [*(a1 + 32) homeID];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

id sub_100002D30(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [*(a1 + 32) homeID];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

void sub_100002D94(uint64_t a1)
{
  v3 = [*(a1 + 32) homeFuture];
  v2 = [*(a1 + 32) home];
  [v3 finishWithResult:v2];
}