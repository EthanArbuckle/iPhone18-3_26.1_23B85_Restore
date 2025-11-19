@interface UMTestPrint
+ (BOOL)printInfoForUMLUser:(id)a3 outError:(id *)a4;
+ (BOOL)printInfoForUser:(id)a3 outError:(id *)a4;
+ (BOOL)printInfoForUsers:(id)a3 outError:(id *)a4;
+ (BOOL)printPersonaAttributesInfo:(id)a3 outError:(id *)a4;
+ (BOOL)printPersonaInfo:(id)a3 outError:(id *)a4;
+ (BOOL)printSyncBubbleInfoForUser:(id)a3 outError:(id *)a4;
+ (BOOL)printSyncBubbleInfoForUsers:(id)a3 outError:(id *)a4;
+ (id)_dataSizeStringFromBytes:(unint64_t)a3;
+ (void)_printInfoForUser:(id)a3;
+ (void)_printSyncBubbleInfoForUser:(id)a3;
+ (void)printTable:(id)a3 withColumns:(id)a4 rows:(id)a5;
+ (void)println:(id)a3;
@end

@implementation UMTestPrint

+ (void)println:(id)a3
{
  v3 = a3;
  v4 = [[NSString alloc] initWithFormat:v3 arguments:&v5];

  puts([v4 UTF8String]);
}

+ (void)printTable:(id)a3 withColumns:(id)a4 rows:(id)a5
{
  v7 = a4;
  v8 = a5;
  printf("%s:\n\n", [a3 UTF8String]);
  if ([v8 count])
  {
    v9 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v7 count]);
    v75[0] = _NSConcreteStackBlock;
    v75[1] = 3221225472;
    v75[2] = sub_1000040B4;
    v75[3] = &unk_100020418;
    v45 = v7;
    v10 = v7;
    v76 = v10;
    v52 = [v8 sortedArrayUsingComparator:v75];

    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    obj = v10;
    v11 = [obj countByEnumeratingWithState:&v71 objects:v81 count:16];
    v54 = v9;
    if (v11)
    {
      v12 = v11;
      v50 = *v72;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v72 != v50)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v71 + 1) + 8 * i);
          v15 = [v14 length];
          v67 = 0u;
          v68 = 0u;
          v69 = 0u;
          v70 = 0u;
          v16 = v52;
          v17 = [v16 countByEnumeratingWithState:&v67 objects:v80 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v68;
            do
            {
              for (j = 0; j != v18; j = j + 1)
              {
                if (*v68 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = [*(*(&v67 + 1) + 8 * j) objectForKeyedSubscript:v14];
                v22 = [v21 length];

                if (v22 > v15)
                {
                  v15 = v22;
                }
              }

              v18 = [v16 countByEnumeratingWithState:&v67 objects:v80 count:16];
            }

            while (v18);
          }

          v23 = [NSNumber numberWithUnsignedInteger:v15];
          v9 = v54;
          [v54 setObject:v23 forKeyedSubscript:v14];

          printf("%-*s ", v15, [v14 UTF8String]);
        }

        v12 = [obj countByEnumeratingWithState:&v71 objects:v81 count:16];
      }

      while (v12);
    }

    putchar(10);
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v51 = obj;
    v24 = [v51 countByEnumeratingWithState:&v63 objects:v79 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v64;
      do
      {
        for (k = 0; k != v25; k = k + 1)
        {
          if (*v64 != v26)
          {
            objc_enumerationMutation(v51);
          }

          v28 = *(*(&v63 + 1) + 8 * k);
          v29 = [v9 objectForKeyedSubscript:v28];
          v30 = [v29 intValue];

          if (v30 >= 1)
          {
            v31 = 0;
            do
            {
              putchar(45);
              ++v31;
              v32 = [v9 objectForKeyedSubscript:v28];
              v33 = [v32 intValue];
            }

            while (v31 < v33);
          }

          putchar(32);
        }

        v25 = [v51 countByEnumeratingWithState:&v63 objects:v79 count:16];
      }

      while (v25);
    }

    putchar(10);
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v46 = v52;
    obja = [v46 countByEnumeratingWithState:&v59 objects:v78 count:16];
    if (obja)
    {
      v47 = *v60;
      do
      {
        v34 = 0;
        do
        {
          if (*v60 != v47)
          {
            objc_enumerationMutation(v46);
          }

          v53 = v34;
          v35 = *(*(&v59 + 1) + 8 * v34);
          v55 = 0u;
          v56 = 0u;
          v57 = 0u;
          v58 = 0u;
          v36 = v51;
          v37 = [v36 countByEnumeratingWithState:&v55 objects:v77 count:16];
          if (v37)
          {
            v38 = v37;
            v39 = *v56;
            do
            {
              for (m = 0; m != v38; m = m + 1)
              {
                if (*v56 != v39)
                {
                  objc_enumerationMutation(v36);
                }

                v41 = *(*(&v55 + 1) + 8 * m);
                v42 = [v35 objectForKeyedSubscript:v41];
                if (v42)
                {
                  v43 = v42;
                }

                else
                {
                  v43 = &stru_1000209B8;
                }

                v44 = [v54 objectForKeyedSubscript:v41];
                printf("%-*s ", [v44 intValue], -[__CFString UTF8String](v43, "UTF8String"));
              }

              v38 = [v36 countByEnumeratingWithState:&v55 objects:v77 count:16];
            }

            while (v38);
          }

          putchar(10);
          v34 = v53 + 1;
        }

        while ((v53 + 1) != obja);
        obja = [v46 countByEnumeratingWithState:&v59 objects:v78 count:16];
      }

      while (obja);
    }

    v8 = v46;

    puts("\n");
    v7 = v45;
  }

  else
  {
    puts("None\n\n");
  }
}

+ (void)_printInfoForUser:(id)a3
{
  v4 = a3;
  [a1 println:{@"UID                        : %d", objc_msgSend(v4, "uid")}];
  [a1 println:{@"GID                        : %d", objc_msgSend(v4, "gid")}];
  v5 = [v4 alternateDSID];
  [a1 println:{@"Alternate DSID             : %@", v5}];

  v6 = [v4 homeDirectoryURL];
  [a1 println:{@"Home Directory URL         : %@", v6}];

  [a1 println];
  v7 = [v4 username];
  [a1 println:{@"Username                   : %@", v7}];

  v8 = [v4 givenName];
  [a1 println:{@"Given Name                 : %@", v8}];

  v9 = [v4 familyName];
  [a1 println:{@"Family Name                : %@", v9}];

  v10 = [v4 displayName];
  [a1 println:{@"Display Name               : %@", v10}];

  v11 = [v4 photoURL];
  [a1 println:{@"Photo URL                  : %@", v11}];

  v12 = [v4 userAuxiliaryString];
  [a1 println:{@"User AuxString             : %@", v12}];

  [a1 println];
  v13 = [v4 creationDate];
  [a1 println:{@"Creation Date              : %@", v13}];

  v14 = [v4 lastLoginDate];
  [a1 println:{@"Last Login Date            : %@", v14}];

  v15 = [v4 lastRemoteAuthDate];
  [a1 println:{@"Last Remote Auth Date      : %@", v15}];

  [a1 println];
  v16 = [v4 firstLoginStartDate];
  [a1 println:{@"FirstLogin Start Date       : %@", v16}];

  v17 = [v4 firstLoginEndDate];
  [a1 println:{@"FirstLogin End Date         : %@", v17}];

  v18 = [v4 lastCachedLoginStartDate];
  [a1 println:{@"CachedLogin Start Date      : %@", v18}];

  v19 = [v4 lastCachedLoginEndDate];
  [a1 println:{@"CachedLogin End Date        : %@", v19}];

  [a1 println];
  v20 = [v4 userType];
  v21 = @"Permanent";
  if (v20)
  {
    v21 = 0;
  }

  if (v20 == 1)
  {
    v21 = @"Ephemeral";
  }

  [a1 println:{@"User Type                  : %@", v21}];
  v22 = [v4 passcodeType];
  v23 = 0;
  if (v22 <= 3)
  {
    v23 = *(&off_100020438 + v22);
  }

  [a1 println:{@"Passcode Type              : %@", v23}];
  [a1 println];
  if ([v4 isLoginUser])
  {
    v24 = @"true";
  }

  else
  {
    v24 = @"false";
  }

  [a1 println:{@"Is Login User              : %@", v24}];
  if ([v4 isAuditor])
  {
    v25 = @"true";
  }

  else
  {
    v25 = @"false";
  }

  [a1 println:{@"Is Auditor                 : %@", v25}];
  if ([v4 isDisabled])
  {
    v26 = @"true";
  }

  else
  {
    v26 = @"false";
  }

  [a1 println:{@"Is Disabled                : %@", v26}];
  if ([v4 isTransientUser])
  {
    v27 = @"true";
  }

  else
  {
    v27 = @"false";
  }

  [a1 println:{@"Is TransientUser           : %@", v27}];
  if ([v4 isPrimaryUser])
  {
    v28 = @"true";
  }

  else
  {
    v28 = @"false";
  }

  [a1 println:{@"Is PrimaryUser              : %@", v28}];
  if ([v4 isAdminUser])
  {
    v29 = @"true";
  }

  else
  {
    v29 = @"false";
  }

  [a1 println:{@"Is AdminUser               : %@", v29}];
  [a1 println];
  [a1 println:{@"Passcode Lock Grace Period : %lu", objc_msgSend(v4, "passcodeLockGracePeriod")}];
  v30 = objc_opt_new();
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v31 = [v4 languages];
  v32 = [v31 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v43;
    v35 = &stru_1000209B8;
    do
    {
      v36 = 0;
      do
      {
        if (*v43 != v34)
        {
          objc_enumerationMutation(v31);
        }

        [v30 appendFormat:@"%@%@", v35, *(*(&v42 + 1) + 8 * v36)];
        v36 = v36 + 1;
        v35 = @", ";
      }

      while (v33 != v36);
      v33 = [v31 countByEnumeratingWithState:&v42 objects:v46 count:16];
      v35 = @", ";
    }

    while (v33);
  }

  [a1 println:{@"Languages                  : [%@]", v30}];
  [a1 println];
  v37 = [a1 _dataSizeStringFromBytes:{objc_msgSend(v4, "dataQuota")}];
  [a1 println:{@"Data Quota                 : %@", v37}];

  v38 = [a1 _dataSizeStringFromBytes:{objc_msgSend(v4, "dataUsed")}];
  [a1 println:{@"Data Used                  : %@", v38}];

  [a1 println];
  v39 = [v4 hasDataToSync];
  v40 = @"false";
  if (v39)
  {
    v40 = @"true";
  }

  [a1 println:{@"Has Data to Sync           : %@", v40}];
  [a1 println];
  v41 = [v4 debugErrorCausingLogout];
  [a1 println:{@"Error Causing Logout       : %@", v41}];
}

+ (BOOL)printInfoForUser:(id)a3 outError:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v11 = v6;
    v8 = [NSArray arrayWithObjects:&v11 count:1];
    v9 = [a1 printInfoForUsers:v8 outError:a4];
  }

  else
  {
    v9 = [a1 printInfoForUsers:&__NSArray0__struct outError:a4];
  }

  return v9;
}

+ (BOOL)printInfoForUsers:(id)a3 outError:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (v6 && [v6 count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          [a1 _printDivider];
          [a1 println];
          [a1 _printInfoForUser:v13];
          [a1 println];
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    [a1 _printDivider];
    v14 = 1;
  }

  else if (a4)
  {
    [UMTestError errorWithMessage:@"Nothing to print"];
    *a4 = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (BOOL)printInfoForUMLUser:(id)a3 outError:(id *)a4
{
  v5 = a3;
  +[UMTestPrint println:](UMTestPrint, "println:", @"UID                        : %d", [v5 uid]);
  +[UMTestPrint println:](UMTestPrint, "println:", @"GID                        : %d", [v5 gid]);
  v6 = [v5 userUUID];
  [UMTestPrint println:@"User UUID                  : %@", v6];

  v7 = [v5 alternateDSID];

  if (v7)
  {
    v8 = [v5 alternateDSID];
    [UMTestPrint println:@"Alternate DSID                 : %@", v8];
  }

  +[UMTestPrint println];
  v9 = [v5 userType];
  [UMTestPrint println:@"UserType                   : %@", v9];

  v10 = [v5 username];
  [UMTestPrint println:@"Username                   : %@", v10];

  v11 = [v5 firstName];
  [UMTestPrint println:@"First Name                 : %@", v11];

  v12 = [v5 lastName];
  [UMTestPrint println:@"Last Name                  : %@", v12];

  v13 = [v5 displayName];
  [UMTestPrint println:@"Display Name               : %@", v13];

  v14 = [v5 fileInfoPath];

  if (v14)
  {
    v15 = [v5 fileInfoPath];
    [UMTestPrint println:@"FileInfo Path               : %@", v15];
  }

  v16 = [v5 libInfoPath];

  if (v16)
  {
    v17 = [v5 libInfoPath];
    [UMTestPrint println:@"Libinfo Path               : %@", v17];
  }

  v18 = [v5 homeDirPath];

  if (v18)
  {
    v19 = [v5 homeDirPath];
    [UMTestPrint println:@"HomeDir Path               : %@", v19];
  }

  v20 = [v5 diskNode];

  if (v20)
  {
    v21 = [v5 diskNode];
    [UMTestPrint println:@"Disk Node               : %@", v21];

    v22 = [v5 volumeUUID];
    [UMTestPrint println:@"Disk Vol UUID               : %@", v22];
  }

  [a1 println];
  v23 = [v5 creationDate];
  [UMTestPrint println:@"Creation Date              : %@", v23];

  +[UMTestPrint println];
  if ([v5 isLoginUser])
  {
    v24 = @"true";
  }

  else
  {
    v24 = @"false";
  }

  [a1 println:{@"Is Login User              : %@", v24}];
  if ([v5 isAuditor])
  {
    v25 = @"true";
  }

  else
  {
    v25 = @"false";
  }

  [a1 println:{@"Is Auditor                 : %@", v25}];
  if ([v5 isPrimaryUser])
  {
    v26 = @"true";
  }

  else
  {
    v26 = @"false";
  }

  [a1 println:{@"Is PrimaryUser             : %@", v26}];
  if ([v5 isAdminUser])
  {
    v27 = @"true";
  }

  else
  {
    v27 = @"false";
  }

  [a1 println:{@"Is AdminUser               : %@", v27}];
  [a1 println];
  if ([v5 gracePeriod])
  {
    [a1 println:{@"Passcode Lock Grace Period : %lu", objc_msgSend(v5, "gracePeriod")}];
  }

  return 1;
}

+ (BOOL)printPersonaInfo:(id)a3 outError:(id *)a4
{
  v4 = a3;
  v5 = [v4 userPersonaUniqueString];

  if (v5)
  {
    v6 = [v4 userPersonaUniqueString];
    [UMTestPrint println:@"Persona identifier: %@", v6];
  }

  v7 = [v4 userPersonaNickName];

  if (v7)
  {
    v8 = [v4 userPersonaNickName];
    [UMTestPrint println:@"Persona NickName: %@", v8];
  }

  v9 = [v4 userPersonaType];
  if (v9 > 3)
  {
    if (v9 <= 5)
    {
      if (v9 == 4)
      {
        v10 = @"Persona Type: Universal";
      }

      else
      {
        v10 = @"Persona Type: Default";
      }

      goto LABEL_22;
    }

    if (v9 == 6)
    {
      v10 = @"Persona Type: Guest";
      goto LABEL_22;
    }

    if (v9 == 1000)
    {
      v10 = @"Persona Type: Invalid";
      goto LABEL_22;
    }
  }

  else
  {
    if (v9 > 1)
    {
      if (v9 == 2)
      {
        v10 = @"Persona Type: Enterprise";
      }

      else
      {
        v10 = @"Persona Type: System";
      }

      goto LABEL_22;
    }

    if (!v9)
    {
      v10 = @"Persona Type: Personal";
      goto LABEL_22;
    }

    if (v9 == 1)
    {
      v10 = @"Persona Type: Managed";
LABEL_22:
      [UMTestPrint println:v10];
    }
  }

  return 1;
}

+ (BOOL)printPersonaAttributesInfo:(id)a3 outError:(id *)a4
{
  v4 = a3;
  [UMTestPrint println:@"************************************************************"];
  v5 = [v4 userPersonaUniqueString];

  if (v5)
  {
    v6 = [v4 userPersonaUniqueString];
    [UMTestPrint println:@"Persona identifier: %@", v6];
  }

  else
  {
    [UMTestPrint println:@"Persona identifier: NONE"];
  }

  v7 = [v4 userPersonaType];
  if (v7 <= 2)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        v8 = @"Persona Type: Managed";
      }

      else
      {
        if (v7 != 2)
        {
          goto LABEL_20;
        }

        v8 = @"Persona Type: Enterprise";
      }
    }

    else
    {
      v8 = @"Persona Type: Personal";
    }
  }

  else if (v7 > 4)
  {
    if (v7 == 5)
    {
      v8 = @"Persona Type: Default";
    }

    else
    {
      if (v7 != 1000)
      {
        goto LABEL_20;
      }

      v8 = @"Persona Type: Invalid";
    }
  }

  else if (v7 == 3)
  {
    v8 = @"Persona Type: System";
  }

  else
  {
    v8 = @"Persona Type: Universal";
  }

  [UMTestPrint println:v8];
LABEL_20:
  if ([v4 userPersona_id])
  {
    +[UMTestPrint println:](UMTestPrint, "println:", @"Kernel Persona ID is: %d", [v4 userPersona_id]);
  }

  v9 = [v4 personaLayoutPathURL];

  if (v9)
  {
    v10 = [v4 personaLayoutPathURL];
    [UMTestPrint println:@"Persona Volume Path is: %@", v10];
  }

  if ([v4 isEnterprisePersona])
  {
    [UMTestPrint println:@"isEnterprisePersona:true"];
  }

  if ([v4 isDataSeparatedPersona])
  {
    [UMTestPrint println:@"isDataSeparatedPersona:true"];
  }

  if ([v4 isPersonalPersona])
  {
    [UMTestPrint println:@"isPersonalPersona:true"];
  }

  if ([v4 isUniversalPersona])
  {
    [UMTestPrint println:@"isUniversalPersona:true"];
  }

  if ([v4 isSystemPersona])
  {
    [UMTestPrint println:@"isSystemPersona:true"];
  }

  if ([v4 isDefaultPersona])
  {
    [UMTestPrint println:@"isDefaultPersona:true"];
  }

  if ([v4 isDisabled])
  {
    [UMTestPrint println:@"isDisabled:true"];
  }

  v11 = [v4 userPersonaDisplayName];

  if (v11)
  {
    v12 = [v4 userPersonaDisplayName];
    [UMTestPrint println:@"Persona Display String: %@", v12];
  }

  v13 = [v4 userPersonaBundleIDList];

  if (v13)
  {
    v14 = [v4 userPersonaBundleIDList];
    [UMTestPrint println:@"Persona Associated BundleIDs are: %@", v14];
  }

  [UMTestPrint println:@"************************************************************"];

  return 1;
}

+ (void)_printSyncBubbleInfoForUser:(id)a3
{
  v4 = a3;
  [a1 println:{@"UID           : %d", objc_msgSend(v4, "uid")}];
  v5 = [v4 username];
  [a1 println:{@"Username      : %@", v5}];

  [a1 println];
  [a1 println:@"Mach Services :"];
  [a1 println];
  v6 = [UMMobileKeyBag syncBubbleMachServiceNamesForUser:v4];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [a1 println:{@"\t%@", *(*(&v11 + 1) + 8 * v10)}];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

+ (BOOL)printSyncBubbleInfoForUser:(id)a3 outError:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v11 = v6;
    v8 = [NSArray arrayWithObjects:&v11 count:1];
    v9 = [a1 printSyncBubbleInfoForUsers:v8 outError:a4];
  }

  else
  {
    v9 = [a1 printSyncBubbleInfoForUsers:&__NSArray0__struct outError:a4];
  }

  return v9;
}

+ (BOOL)printSyncBubbleInfoForUsers:(id)a3 outError:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (v6 && [v6 count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          [a1 _printDivider];
          [a1 println];
          [a1 _printSyncBubbleInfoForUser:v13];
          [a1 println];
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    [a1 _printDivider];
    v14 = 1;
  }

  else if (a4)
  {
    [UMTestError errorWithMessage:@"Nothing to print"];
    *a4 = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)_dataSizeStringFromBytes:(unint64_t)a3
{
  v5 = vcvtd_n_f64_u64(a3, 0xAuLL);
  if (v5 <= 1.0)
  {
    v5 = a3;
    v7 = @"bytes";
  }

  else
  {
    v6 = v5 * 0.0009765625;
    if (v5 * 0.0009765625 <= 1.0)
    {
      v7 = @"KB";
    }

    else
    {
      v5 = v6 * 0.0009765625;
      v7 = @"MB";
      if (v6 * 0.0009765625 > 1.0)
      {
        v7 = @"GB";
      }

      if (v5 <= 1.0)
      {
        v5 = v6;
      }
    }
  }

  return [NSString stringWithFormat:@"%f %@", *&v5, v7, v3, v4];
}

@end