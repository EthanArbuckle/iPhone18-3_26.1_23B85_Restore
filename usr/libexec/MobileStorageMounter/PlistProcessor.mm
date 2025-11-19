@interface PlistProcessor
+ (id)sharedPlistProcessor;
- (BOOL)jobIsManagedByMSM:(id)a3;
- (BOOL)verifyPlist:(id)a3 forMountPoint:(id)a4 withError:(id *)a5;
- (id)copyAndFixPlist:(id)a3 forMountPoint:(id)a4 withError:(id *)a5;
- (id)copyPlistWithMSMKeys:(id)a3 withError:(id *)a4;
- (void)scanPlistsAtPath:(id)a3 execBlock:(id)a4;
@end

@implementation PlistProcessor

+ (id)sharedPlistProcessor
{
  if (qword_100038888 != -1)
  {
    sub_10001B998();
  }

  v3 = qword_100038880;

  return v3;
}

- (void)scanPlistsAtPath:(id)a3 execBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = +[NSFileManager defaultManager];
  v8 = [v7 enumeratorAtPath:v5];

  obj = v8;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [v5 stringByAppendingPathComponent:v13];
        v15 = [NSDictionary dictionaryWithContentsOfFile:v14];
        if (v15 && (v6[2](v6, v15, v13) & 1) == 0)
        {

          goto LABEL_12;
        }
      }

      v10 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:
}

- (id)copyAndFixPlist:(id)a3 forMountPoint:(id)a4 withError:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v12 = v8;
  if (!v7 || !v8)
  {
    v38 = sub_100011E6C("[PlistProcessor copyAndFixPlist:forMountPoint:withError:]", 109, -3, 0, @"Invalid input(s).", v9, v10, v11, v46);
    v47 = 0;
    v37 = 0;
    v28 = 0;
    v18 = 0;
    v36 = 0;
    goto LABEL_15;
  }

  v13 = sub_100006BC0(v8);
  v14 = sub_100006BC0(@"/private/var/personalized_factory");
  v15 = [v13 hasPrefix:v14];

  v47 = v13;
  if ((v15 & 1) == 0)
  {
    v40 = v7;
    v34 = 0;
    v23 = 0;
    v38 = 0;
    v36 = 0;
LABEL_20:
    v18 = 0;
    v28 = 0;
    v37 = 0;
    goto LABEL_29;
  }

  v16 = [v7 objectForKey:@"Label"];
  v17 = sub_1000072AC(v7);
  if (!v17)
  {
    v36 = v16;
    v37 = [v7 objectForKey:@"XPCServiceName"];

    if (v37)
    {
      v40 = v7;
      v34 = 0;
      v23 = 0;
      v38 = 0;
      goto LABEL_20;
    }

    v38 = sub_100011E6C("[PlistProcessor copyAndFixPlist:forMountPoint:withError:]", 129, -2, 0, @"Missing program arguments.", v41, v42, v43, v46);
    v28 = 0;
    v18 = 0;
LABEL_15:
    v23 = 0;
    goto LABEL_16;
  }

  v18 = v17;
  v19 = [v17 objectAtIndex:0];
  v23 = v19;
  if (v19)
  {
    if ([v19 hasPrefix:@"/Developer"])
    {
      v27 = [v23 componentsSeparatedByString:@"/"];
      v28 = [v27 mutableCopy];

      v29 = [v28 objectAtIndex:0];
      v30 = [v29 isEqualToString:&stru_100033AC0];

      if (v30)
      {
        [v28 removeObjectAtIndex:0];
      }

      [v28 replaceObjectAtIndex:0 withObject:v13];
      v34 = [v28 componentsJoinedByString:@"/"];
      if (v34)
      {
        v35 = [v7 mutableCopy];
        [v18 replaceObjectAtIndex:0 withObject:v34];
        [v35 setObject:v18 forKey:@"ProgramArguments"];
        [v35 removeObjectForKey:@"Program"];
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          sub_10001B9AC();
        }

        v36 = v16;
        v37 = v35;
        v38 = 0;
        if (!a5)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v36 = v16;
        v38 = sub_100011E6C("[PlistProcessor copyAndFixPlist:forMountPoint:withError:]", 160, -2, 0, @"Failed to update program path %@.", v31, v32, v33, v23);
        v37 = 0;
        if (!a5)
        {
          goto LABEL_28;
        }
      }

      goto LABEL_17;
    }

    v36 = v16;
    sub_100011E6C("[PlistProcessor copyAndFixPlist:forMountPoint:withError:]", 146, -2, 0, @"Invalid program path: %@", v24, v25, v26, v23);
  }

  else
  {
    v36 = v16;
    sub_100011E6C("[PlistProcessor copyAndFixPlist:forMountPoint:withError:]", 137, -2, 0, @"Invalid program arguments: %@", v20, v21, v22, v18);
  }
  v38 = ;
  v37 = 0;
  v28 = 0;
LABEL_16:
  v34 = 0;
  if (!a5)
  {
LABEL_28:
    v40 = v37;
    goto LABEL_29;
  }

LABEL_17:
  if (v37)
  {
    goto LABEL_28;
  }

  v39 = v38;
  v40 = 0;
  *a5 = v38;
LABEL_29:
  v44 = v40;

  return v44;
}

- (id)copyPlistWithMSMKeys:(id)a3 withError:(id *)a4
{
  v5 = a3;
  v9 = v5;
  if (!v5)
  {
    v13 = sub_100011E6C("[PlistProcessor copyPlistWithMSMKeys:withError:]", 196, -2, 0, @"Invalid input.", v6, v7, v8, v30);
    v14 = 0;
    v10 = 0;
    v11 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    if (!a4)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v10 = [v5 mutableCopy];
  v11 = [v10 objectForKeyedSubscript:@"_ManagedBy"];
  if (!v11)
  {
    v12 = objc_alloc_init(NSMutableArray);
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v11 mutableCopy];
LABEL_8:
    v15 = v12;
    goto LABEL_10;
  }

  v32 = v11;
  v18 = [NSArray arrayWithObjects:&v32 count:1];
  v15 = [v18 mutableCopy];

LABEL_10:
  v19 = [NSString stringWithUTF8String:"com.apple.mobile.storage_mounter"];
  [v15 addObject:v19];

  v20 = [v15 copy];
  [v10 setObject:v20 forKeyedSubscript:@"_ManagedBy"];

  v16 = [v9 objectForKey:@"_AdditionalProperties"];
  v21 = sub_100011578(v16);

  if (v21)
  {
    v22 = [[NSMutableDictionary alloc] initWithDictionary:v16];
  }

  else
  {
    v22 = objc_alloc_init(NSMutableDictionary);
  }

  v17 = v22;
  if (v22)
  {
    v30 = @"ManagedByMobileStorageMounter";
    v31 = &__kCFBooleanTrue;
    v26 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    [v17 setObject:v26 forKeyedSubscript:@"MobileStorageMounter"];

    [v10 setObject:v17 forKeyedSubscript:@"_AdditionalProperties"];
    v14 = [v10 copy];
    v13 = 0;
    if (!a4)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v13 = sub_100011E6C("[PlistProcessor copyPlistWithMSMKeys:withError:]", 228, -2, 0, @"Failed to allocate dictionary.", v23, v24, v25, v30);
    v14 = 0;
    if (!a4)
    {
      goto LABEL_19;
    }
  }

LABEL_17:
  if (!v14)
  {
    v27 = v13;
    *a4 = v13;
  }

LABEL_19:
  v28 = v14;

  return v28;
}

- (BOOL)jobIsManagedByMSM:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10001BC30();
    }

    goto LABEL_22;
  }

  v5 = [v3 objectForKeyedSubscript:@"Label"];
  if (!v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10001BBEC();
    }

    goto LABEL_22;
  }

  v6 = v5;
  v7 = [v4 objectForKeyedSubscript:@"_AdditionalProperties"];
  v8 = sub_100011578(v7);

  if (!v8)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10001BB64();
    }

    goto LABEL_21;
  }

  v9 = [v7 objectForKeyedSubscript:@"MobileStorageMounter"];
  v10 = sub_100011578(v9);

  if (!v10)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10001BACC();
    }

    goto LABEL_20;
  }

  v11 = [v9 objectForKeyedSubscript:@"ManagedByMobileStorageMounter"];
  v12 = sub_10001150C(v11);

  if (!v12)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10001BA34();
    }

LABEL_20:
LABEL_21:

LABEL_22:
    v13 = 0;
    goto LABEL_23;
  }

  v13 = [v11 BOOLValue];

LABEL_23:
  return v13;
}

- (BOOL)verifyPlist:(id)a3 forMountPoint:(id)a4 withError:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v12 = v8;
  if (!v7 || !v8)
  {
    v35 = sub_100011E6C("[PlistProcessor verifyPlist:forMountPoint:withError:]", 302, -3, 0, @"Invalid input(s).", v9, v10, v11, v43);
    v21 = 0;
    v23 = 0;
    v27 = 0;
    v16 = 0;
    if (!a5)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  v16 = [v7 objectForKey:@"Label"];
  if (!v16)
  {
    v35 = sub_100011E6C("[PlistProcessor verifyPlist:forMountPoint:withError:]", 308, -2, 0, @"Failed to retrieve job label.", v13, v14, v15, v43);
    v21 = 0;
    goto LABEL_15;
  }

  v17 = sub_1000072AC(v7);
  v21 = v17;
  if (!v17)
  {
    v35 = sub_100011E6C("[PlistProcessor verifyPlist:forMountPoint:withError:]", 314, -2, 0, @"Failed to retrieve program arguments.", v18, v19, v20, v43);
    goto LABEL_15;
  }

  v22 = [v17 objectAtIndex:0];
  v23 = sub_100006BC0(v22);

  if (!v23)
  {
    v37 = [v21 objectAtIndex:0];
    v35 = sub_100011E6C("[PlistProcessor verifyPlist:forMountPoint:withError:]", 320, -2, 0, @"Failed to normalize %@.", v38, v39, v40, v37);

LABEL_15:
    v23 = 0;
    v27 = 0;
    if (!a5)
    {
LABEL_20:
      v36 = 0;
      goto LABEL_21;
    }

LABEL_16:
    v41 = v35;
    v36 = 0;
    *a5 = v35;
    goto LABEL_21;
  }

  v27 = sub_100006BC0(v12);
  if (!v27)
  {
    sub_100011E6C("[PlistProcessor verifyPlist:forMountPoint:withError:]", 326, -2, 0, @"Failed to normalize %@.", v24, v25, v26, v12);
    goto LABEL_19;
  }

  v28 = sub_100006BC0(@"/Developer");
  v29 = [v27 hasPrefix:v28];

  if (v29)
  {
    v30 = sub_100006BC0(@"/Developer");
    v31 = [v23 hasPrefix:v30];

    if ((v31 & 1) == 0)
    {
      sub_100011E6C("[PlistProcessor verifyPlist:forMountPoint:withError:]", 335, -2, 0, @"Invalid program path: %@", v32, v33, v34, v23);
      v35 = LABEL_19:;
      if (!a5)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }
  }

  v35 = 0;
  v36 = 1;
LABEL_21:

  return v36;
}

@end