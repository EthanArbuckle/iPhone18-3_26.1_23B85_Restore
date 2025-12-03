@interface UMTestPrint
+ (BOOL)printInfoForUMLUser:(id)user outError:(id *)error;
+ (BOOL)printInfoForUser:(id)user outError:(id *)error;
+ (BOOL)printInfoForUsers:(id)users outError:(id *)error;
+ (BOOL)printPersonaAttributesInfo:(id)info outError:(id *)error;
+ (BOOL)printPersonaInfo:(id)info outError:(id *)error;
+ (BOOL)printSyncBubbleInfoForUser:(id)user outError:(id *)error;
+ (BOOL)printSyncBubbleInfoForUsers:(id)users outError:(id *)error;
+ (id)_dataSizeStringFromBytes:(unint64_t)bytes;
+ (void)_printInfoForUser:(id)user;
+ (void)_printSyncBubbleInfoForUser:(id)user;
+ (void)printTable:(id)table withColumns:(id)columns rows:(id)rows;
+ (void)println:(id)println;
@end

@implementation UMTestPrint

+ (void)println:(id)println
{
  printlnCopy = println;
  v4 = [[NSString alloc] initWithFormat:printlnCopy arguments:&v5];

  puts([v4 UTF8String]);
}

+ (void)printTable:(id)table withColumns:(id)columns rows:(id)rows
{
  columnsCopy = columns;
  rowsCopy = rows;
  printf("%s:\n\n", [table UTF8String]);
  if ([rowsCopy count])
  {
    v9 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [columnsCopy count]);
    v75[0] = _NSConcreteStackBlock;
    v75[1] = 3221225472;
    v75[2] = sub_1000040B4;
    v75[3] = &unk_100020418;
    v45 = columnsCopy;
    v10 = columnsCopy;
    v76 = v10;
    v52 = [rowsCopy sortedArrayUsingComparator:v75];

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
          intValue = [v29 intValue];

          if (intValue >= 1)
          {
            v31 = 0;
            do
            {
              putchar(45);
              ++v31;
              v32 = [v9 objectForKeyedSubscript:v28];
              intValue2 = [v32 intValue];
            }

            while (v31 < intValue2);
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

    rowsCopy = v46;

    puts("\n");
    columnsCopy = v45;
  }

  else
  {
    puts("None\n\n");
  }
}

+ (void)_printInfoForUser:(id)user
{
  userCopy = user;
  [self println:{@"UID                        : %d", objc_msgSend(userCopy, "uid")}];
  [self println:{@"GID                        : %d", objc_msgSend(userCopy, "gid")}];
  alternateDSID = [userCopy alternateDSID];
  [self println:{@"Alternate DSID             : %@", alternateDSID}];

  homeDirectoryURL = [userCopy homeDirectoryURL];
  [self println:{@"Home Directory URL         : %@", homeDirectoryURL}];

  [self println];
  username = [userCopy username];
  [self println:{@"Username                   : %@", username}];

  givenName = [userCopy givenName];
  [self println:{@"Given Name                 : %@", givenName}];

  familyName = [userCopy familyName];
  [self println:{@"Family Name                : %@", familyName}];

  displayName = [userCopy displayName];
  [self println:{@"Display Name               : %@", displayName}];

  photoURL = [userCopy photoURL];
  [self println:{@"Photo URL                  : %@", photoURL}];

  userAuxiliaryString = [userCopy userAuxiliaryString];
  [self println:{@"User AuxString             : %@", userAuxiliaryString}];

  [self println];
  creationDate = [userCopy creationDate];
  [self println:{@"Creation Date              : %@", creationDate}];

  lastLoginDate = [userCopy lastLoginDate];
  [self println:{@"Last Login Date            : %@", lastLoginDate}];

  lastRemoteAuthDate = [userCopy lastRemoteAuthDate];
  [self println:{@"Last Remote Auth Date      : %@", lastRemoteAuthDate}];

  [self println];
  firstLoginStartDate = [userCopy firstLoginStartDate];
  [self println:{@"FirstLogin Start Date       : %@", firstLoginStartDate}];

  firstLoginEndDate = [userCopy firstLoginEndDate];
  [self println:{@"FirstLogin End Date         : %@", firstLoginEndDate}];

  lastCachedLoginStartDate = [userCopy lastCachedLoginStartDate];
  [self println:{@"CachedLogin Start Date      : %@", lastCachedLoginStartDate}];

  lastCachedLoginEndDate = [userCopy lastCachedLoginEndDate];
  [self println:{@"CachedLogin End Date        : %@", lastCachedLoginEndDate}];

  [self println];
  userType = [userCopy userType];
  v21 = @"Permanent";
  if (userType)
  {
    v21 = 0;
  }

  if (userType == 1)
  {
    v21 = @"Ephemeral";
  }

  [self println:{@"User Type                  : %@", v21}];
  passcodeType = [userCopy passcodeType];
  v23 = 0;
  if (passcodeType <= 3)
  {
    v23 = *(&off_100020438 + passcodeType);
  }

  [self println:{@"Passcode Type              : %@", v23}];
  [self println];
  if ([userCopy isLoginUser])
  {
    v24 = @"true";
  }

  else
  {
    v24 = @"false";
  }

  [self println:{@"Is Login User              : %@", v24}];
  if ([userCopy isAuditor])
  {
    v25 = @"true";
  }

  else
  {
    v25 = @"false";
  }

  [self println:{@"Is Auditor                 : %@", v25}];
  if ([userCopy isDisabled])
  {
    v26 = @"true";
  }

  else
  {
    v26 = @"false";
  }

  [self println:{@"Is Disabled                : %@", v26}];
  if ([userCopy isTransientUser])
  {
    v27 = @"true";
  }

  else
  {
    v27 = @"false";
  }

  [self println:{@"Is TransientUser           : %@", v27}];
  if ([userCopy isPrimaryUser])
  {
    v28 = @"true";
  }

  else
  {
    v28 = @"false";
  }

  [self println:{@"Is PrimaryUser              : %@", v28}];
  if ([userCopy isAdminUser])
  {
    v29 = @"true";
  }

  else
  {
    v29 = @"false";
  }

  [self println:{@"Is AdminUser               : %@", v29}];
  [self println];
  [self println:{@"Passcode Lock Grace Period : %lu", objc_msgSend(userCopy, "passcodeLockGracePeriod")}];
  v30 = objc_opt_new();
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  languages = [userCopy languages];
  v32 = [languages countByEnumeratingWithState:&v42 objects:v46 count:16];
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
          objc_enumerationMutation(languages);
        }

        [v30 appendFormat:@"%@%@", v35, *(*(&v42 + 1) + 8 * v36)];
        v36 = v36 + 1;
        v35 = @", ";
      }

      while (v33 != v36);
      v33 = [languages countByEnumeratingWithState:&v42 objects:v46 count:16];
      v35 = @", ";
    }

    while (v33);
  }

  [self println:{@"Languages                  : [%@]", v30}];
  [self println];
  v37 = [self _dataSizeStringFromBytes:{objc_msgSend(userCopy, "dataQuota")}];
  [self println:{@"Data Quota                 : %@", v37}];

  v38 = [self _dataSizeStringFromBytes:{objc_msgSend(userCopy, "dataUsed")}];
  [self println:{@"Data Used                  : %@", v38}];

  [self println];
  hasDataToSync = [userCopy hasDataToSync];
  v40 = @"false";
  if (hasDataToSync)
  {
    v40 = @"true";
  }

  [self println:{@"Has Data to Sync           : %@", v40}];
  [self println];
  debugErrorCausingLogout = [userCopy debugErrorCausingLogout];
  [self println:{@"Error Causing Logout       : %@", debugErrorCausingLogout}];
}

+ (BOOL)printInfoForUser:(id)user outError:(id *)error
{
  userCopy = user;
  v7 = userCopy;
  if (userCopy)
  {
    v11 = userCopy;
    v8 = [NSArray arrayWithObjects:&v11 count:1];
    v9 = [self printInfoForUsers:v8 outError:error];
  }

  else
  {
    v9 = [self printInfoForUsers:&__NSArray0__struct outError:error];
  }

  return v9;
}

+ (BOOL)printInfoForUsers:(id)users outError:(id *)error
{
  usersCopy = users;
  v7 = usersCopy;
  if (usersCopy && [usersCopy count])
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
          [self _printDivider];
          [self println];
          [self _printInfoForUser:v13];
          [self println];
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    [self _printDivider];
    v14 = 1;
  }

  else if (error)
  {
    [UMTestError errorWithMessage:@"Nothing to print"];
    *error = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (BOOL)printInfoForUMLUser:(id)user outError:(id *)error
{
  userCopy = user;
  +[UMTestPrint println:](UMTestPrint, "println:", @"UID                        : %d", [userCopy uid]);
  +[UMTestPrint println:](UMTestPrint, "println:", @"GID                        : %d", [userCopy gid]);
  userUUID = [userCopy userUUID];
  [UMTestPrint println:@"User UUID                  : %@", userUUID];

  alternateDSID = [userCopy alternateDSID];

  if (alternateDSID)
  {
    alternateDSID2 = [userCopy alternateDSID];
    [UMTestPrint println:@"Alternate DSID                 : %@", alternateDSID2];
  }

  +[UMTestPrint println];
  userType = [userCopy userType];
  [UMTestPrint println:@"UserType                   : %@", userType];

  username = [userCopy username];
  [UMTestPrint println:@"Username                   : %@", username];

  firstName = [userCopy firstName];
  [UMTestPrint println:@"First Name                 : %@", firstName];

  lastName = [userCopy lastName];
  [UMTestPrint println:@"Last Name                  : %@", lastName];

  displayName = [userCopy displayName];
  [UMTestPrint println:@"Display Name               : %@", displayName];

  fileInfoPath = [userCopy fileInfoPath];

  if (fileInfoPath)
  {
    fileInfoPath2 = [userCopy fileInfoPath];
    [UMTestPrint println:@"FileInfo Path               : %@", fileInfoPath2];
  }

  libInfoPath = [userCopy libInfoPath];

  if (libInfoPath)
  {
    libInfoPath2 = [userCopy libInfoPath];
    [UMTestPrint println:@"Libinfo Path               : %@", libInfoPath2];
  }

  homeDirPath = [userCopy homeDirPath];

  if (homeDirPath)
  {
    homeDirPath2 = [userCopy homeDirPath];
    [UMTestPrint println:@"HomeDir Path               : %@", homeDirPath2];
  }

  diskNode = [userCopy diskNode];

  if (diskNode)
  {
    diskNode2 = [userCopy diskNode];
    [UMTestPrint println:@"Disk Node               : %@", diskNode2];

    volumeUUID = [userCopy volumeUUID];
    [UMTestPrint println:@"Disk Vol UUID               : %@", volumeUUID];
  }

  [self println];
  creationDate = [userCopy creationDate];
  [UMTestPrint println:@"Creation Date              : %@", creationDate];

  +[UMTestPrint println];
  if ([userCopy isLoginUser])
  {
    v24 = @"true";
  }

  else
  {
    v24 = @"false";
  }

  [self println:{@"Is Login User              : %@", v24}];
  if ([userCopy isAuditor])
  {
    v25 = @"true";
  }

  else
  {
    v25 = @"false";
  }

  [self println:{@"Is Auditor                 : %@", v25}];
  if ([userCopy isPrimaryUser])
  {
    v26 = @"true";
  }

  else
  {
    v26 = @"false";
  }

  [self println:{@"Is PrimaryUser             : %@", v26}];
  if ([userCopy isAdminUser])
  {
    v27 = @"true";
  }

  else
  {
    v27 = @"false";
  }

  [self println:{@"Is AdminUser               : %@", v27}];
  [self println];
  if ([userCopy gracePeriod])
  {
    [self println:{@"Passcode Lock Grace Period : %lu", objc_msgSend(userCopy, "gracePeriod")}];
  }

  return 1;
}

+ (BOOL)printPersonaInfo:(id)info outError:(id *)error
{
  infoCopy = info;
  userPersonaUniqueString = [infoCopy userPersonaUniqueString];

  if (userPersonaUniqueString)
  {
    userPersonaUniqueString2 = [infoCopy userPersonaUniqueString];
    [UMTestPrint println:@"Persona identifier: %@", userPersonaUniqueString2];
  }

  userPersonaNickName = [infoCopy userPersonaNickName];

  if (userPersonaNickName)
  {
    userPersonaNickName2 = [infoCopy userPersonaNickName];
    [UMTestPrint println:@"Persona NickName: %@", userPersonaNickName2];
  }

  userPersonaType = [infoCopy userPersonaType];
  if (userPersonaType > 3)
  {
    if (userPersonaType <= 5)
    {
      if (userPersonaType == 4)
      {
        v10 = @"Persona Type: Universal";
      }

      else
      {
        v10 = @"Persona Type: Default";
      }

      goto LABEL_22;
    }

    if (userPersonaType == 6)
    {
      v10 = @"Persona Type: Guest";
      goto LABEL_22;
    }

    if (userPersonaType == 1000)
    {
      v10 = @"Persona Type: Invalid";
      goto LABEL_22;
    }
  }

  else
  {
    if (userPersonaType > 1)
    {
      if (userPersonaType == 2)
      {
        v10 = @"Persona Type: Enterprise";
      }

      else
      {
        v10 = @"Persona Type: System";
      }

      goto LABEL_22;
    }

    if (!userPersonaType)
    {
      v10 = @"Persona Type: Personal";
      goto LABEL_22;
    }

    if (userPersonaType == 1)
    {
      v10 = @"Persona Type: Managed";
LABEL_22:
      [UMTestPrint println:v10];
    }
  }

  return 1;
}

+ (BOOL)printPersonaAttributesInfo:(id)info outError:(id *)error
{
  infoCopy = info;
  [UMTestPrint println:@"************************************************************"];
  userPersonaUniqueString = [infoCopy userPersonaUniqueString];

  if (userPersonaUniqueString)
  {
    userPersonaUniqueString2 = [infoCopy userPersonaUniqueString];
    [UMTestPrint println:@"Persona identifier: %@", userPersonaUniqueString2];
  }

  else
  {
    [UMTestPrint println:@"Persona identifier: NONE"];
  }

  userPersonaType = [infoCopy userPersonaType];
  if (userPersonaType <= 2)
  {
    if (userPersonaType)
    {
      if (userPersonaType == 1)
      {
        v8 = @"Persona Type: Managed";
      }

      else
      {
        if (userPersonaType != 2)
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

  else if (userPersonaType > 4)
  {
    if (userPersonaType == 5)
    {
      v8 = @"Persona Type: Default";
    }

    else
    {
      if (userPersonaType != 1000)
      {
        goto LABEL_20;
      }

      v8 = @"Persona Type: Invalid";
    }
  }

  else if (userPersonaType == 3)
  {
    v8 = @"Persona Type: System";
  }

  else
  {
    v8 = @"Persona Type: Universal";
  }

  [UMTestPrint println:v8];
LABEL_20:
  if ([infoCopy userPersona_id])
  {
    +[UMTestPrint println:](UMTestPrint, "println:", @"Kernel Persona ID is: %d", [infoCopy userPersona_id]);
  }

  personaLayoutPathURL = [infoCopy personaLayoutPathURL];

  if (personaLayoutPathURL)
  {
    personaLayoutPathURL2 = [infoCopy personaLayoutPathURL];
    [UMTestPrint println:@"Persona Volume Path is: %@", personaLayoutPathURL2];
  }

  if ([infoCopy isEnterprisePersona])
  {
    [UMTestPrint println:@"isEnterprisePersona:true"];
  }

  if ([infoCopy isDataSeparatedPersona])
  {
    [UMTestPrint println:@"isDataSeparatedPersona:true"];
  }

  if ([infoCopy isPersonalPersona])
  {
    [UMTestPrint println:@"isPersonalPersona:true"];
  }

  if ([infoCopy isUniversalPersona])
  {
    [UMTestPrint println:@"isUniversalPersona:true"];
  }

  if ([infoCopy isSystemPersona])
  {
    [UMTestPrint println:@"isSystemPersona:true"];
  }

  if ([infoCopy isDefaultPersona])
  {
    [UMTestPrint println:@"isDefaultPersona:true"];
  }

  if ([infoCopy isDisabled])
  {
    [UMTestPrint println:@"isDisabled:true"];
  }

  userPersonaDisplayName = [infoCopy userPersonaDisplayName];

  if (userPersonaDisplayName)
  {
    userPersonaDisplayName2 = [infoCopy userPersonaDisplayName];
    [UMTestPrint println:@"Persona Display String: %@", userPersonaDisplayName2];
  }

  userPersonaBundleIDList = [infoCopy userPersonaBundleIDList];

  if (userPersonaBundleIDList)
  {
    userPersonaBundleIDList2 = [infoCopy userPersonaBundleIDList];
    [UMTestPrint println:@"Persona Associated BundleIDs are: %@", userPersonaBundleIDList2];
  }

  [UMTestPrint println:@"************************************************************"];

  return 1;
}

+ (void)_printSyncBubbleInfoForUser:(id)user
{
  userCopy = user;
  [self println:{@"UID           : %d", objc_msgSend(userCopy, "uid")}];
  username = [userCopy username];
  [self println:{@"Username      : %@", username}];

  [self println];
  [self println:@"Mach Services :"];
  [self println];
  v6 = [UMMobileKeyBag syncBubbleMachServiceNamesForUser:userCopy];
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

        [self println:{@"\t%@", *(*(&v11 + 1) + 8 * v10)}];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

+ (BOOL)printSyncBubbleInfoForUser:(id)user outError:(id *)error
{
  userCopy = user;
  v7 = userCopy;
  if (userCopy)
  {
    v11 = userCopy;
    v8 = [NSArray arrayWithObjects:&v11 count:1];
    v9 = [self printSyncBubbleInfoForUsers:v8 outError:error];
  }

  else
  {
    v9 = [self printSyncBubbleInfoForUsers:&__NSArray0__struct outError:error];
  }

  return v9;
}

+ (BOOL)printSyncBubbleInfoForUsers:(id)users outError:(id *)error
{
  usersCopy = users;
  v7 = usersCopy;
  if (usersCopy && [usersCopy count])
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
          [self _printDivider];
          [self println];
          [self _printSyncBubbleInfoForUser:v13];
          [self println];
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    [self _printDivider];
    v14 = 1;
  }

  else if (error)
  {
    [UMTestError errorWithMessage:@"Nothing to print"];
    *error = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)_dataSizeStringFromBytes:(unint64_t)bytes
{
  bytesCopy = vcvtd_n_f64_u64(bytes, 0xAuLL);
  if (bytesCopy <= 1.0)
  {
    bytesCopy = bytes;
    v7 = @"bytes";
  }

  else
  {
    v6 = bytesCopy * 0.0009765625;
    if (bytesCopy * 0.0009765625 <= 1.0)
    {
      v7 = @"KB";
    }

    else
    {
      bytesCopy = v6 * 0.0009765625;
      v7 = @"MB";
      if (v6 * 0.0009765625 > 1.0)
      {
        v7 = @"GB";
      }

      if (bytesCopy <= 1.0)
      {
        bytesCopy = v6;
      }
    }
  }

  return [NSString stringWithFormat:@"%f %@", *&bytesCopy, v7, v3, v4];
}

@end