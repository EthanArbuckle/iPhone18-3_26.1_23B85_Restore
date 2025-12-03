@interface UMTestSysdiagnose
+ (BOOL)executeWithOutError:(id *)error;
+ (id)stringForUserType:(unint64_t)type;
@end

@implementation UMTestSysdiagnose

+ (BOOL)executeWithOutError:(id *)error
{
  multiuser_flags = 0;
  v3 = mach_host_self();
  multiuser_config_flags = host_get_multiuser_config_flags(v3, &multiuser_flags);
  if (multiuser_config_flags)
  {
    [UMTestPrint println:@"Failed to get host config: %d\n", multiuser_config_flags];
  }

  else
  {
    [UMTestPrint println:@"Host Config: 0x%08x", multiuser_flags];
    [UMTestPrint println:@"Foreground UID: %u", multiuser_flags & 0x3FFFFFFF];
    if ((multiuser_flags & 0x80000000) != 0)
    {
      v5 = "Y";
    }

    else
    {
      v5 = "N";
    }

    [UMTestPrint println:@"Shared iPad: %s", v5];
    if ((multiuser_flags & 0x40000000) != 0)
    {
      v6 = "Y";
    }

    else
    {
      v6 = "N";
    }

    [UMTestPrint println:@"Secondary Users: %s", v6];
    [UMTestPrint println:&stru_1000209B8];
  }

  v7 = +[UMUserManager sharedManager];
  allUsersUnfiltered = [v7 allUsersUnfiltered];

  v70 = +[NSMutableArray array];
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  obj = allUsersUnfiltered;
  v71 = [obj countByEnumeratingWithState:&v96 objects:v118 count:16];
  if (v71)
  {
    v68 = *v97;
    do
    {
      for (i = 0; i != v71; i = (i + 1))
      {
        if (*v97 != v68)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v96 + 1) + 8 * i);
        v116[0] = @"UID";
        v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%u", [v10 uid]);
        v117[0] = v11;
        v116[1] = @"UUID";
        alternateDSID = [v10 alternateDSID];
        if (alternateDSID)
        {
          alternateDSID2 = [v10 alternateDSID];
          v13 = alternateDSID2;
        }

        else
        {
          v13 = &stru_1000209B8;
        }

        v117[1] = v13;
        v116[2] = @"GID";
        v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%u", [v10 gid]);
        v117[2] = v14;
        v116[3] = @"Type";
        v15 = [self stringForUserType:{objc_msgSend(v10, "userType")}];
        v117[3] = v15;
        v117[4] = @"(private)";
        v116[4] = @"Username";
        v116[5] = @"Display Name";
        v117[5] = @"(private)";
        v116[6] = @"Home Directory";
        homeDirectoryURL = [v10 homeDirectoryURL];
        if (homeDirectoryURL)
        {
          homeDirectoryURL2 = [v10 homeDirectoryURL];
          path = [(__CFString *)homeDirectoryURL2 path];
          v17 = path;
        }

        else
        {
          v17 = &stru_1000209B8;
        }

        v117[6] = v17;
        v18 = [NSDictionary dictionaryWithObjects:v117 forKeys:v116 count:7];
        v19 = [NSMutableDictionary dictionaryWithDictionary:v18];

        if (homeDirectoryURL)
        {
        }

        if (alternateDSID)
        {
        }

        [(__CFString *)v70 addObject:v19];
        if (os_variant_has_internal_diagnostics())
        {
          username = [v10 username];
          if (username)
          {
            username2 = [v10 username];
            [v19 setObject:username2 forKeyedSubscript:@"Username"];
          }

          else
          {
            [v19 setObject:&stru_1000209B8 forKeyedSubscript:@"Username"];
          }

          displayName = [v10 displayName];
          if (displayName)
          {
            displayName2 = [v10 displayName];
            [v19 setObject:displayName2 forKeyedSubscript:@"Display Name"];
          }

          else
          {
            [v19 setObject:&stru_1000209B8 forKeyedSubscript:@"Display Name"];
          }
        }
      }

      v71 = [obj countByEnumeratingWithState:&v96 objects:v118 count:16];
    }

    while (v71);
  }

  [UMTestPrint printTable:@"Users" withColumns:&off_1000219B0 rows:v70];
  v90 = 0;
  v91 = &v90;
  v92 = 0x3032000000;
  v93 = sub_100003900;
  v94 = sub_100003910;
  v95 = 0;
  v24 = dispatch_semaphore_create(0);
  v25 = +[UMUserManager sharedManager];
  v87[0] = _NSConcreteStackBlock;
  v87[1] = 3221225472;
  v87[2] = sub_100003918;
  v87[3] = &unk_1000203F0;
  v89 = &v90;
  dsema = v24;
  v88 = dsema;
  [v25 fetchAllPersonasForAllUsersWithCompletionHandler:v87];

  dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
  v65 = +[NSMutableArray array];

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v61 = v91[5];
  v26 = [v61 countByEnumeratingWithState:&v83 objects:v115 count:16];
  if (v26)
  {
    v64 = *v84;
    do
    {
      for (j = 0; j != v26; j = j + 1)
      {
        if (*v84 != v64)
        {
          objc_enumerationMutation(v61);
        }

        v27 = *(*(&v83 + 1) + 8 * j);
        v113[0] = @"User UUID";
        v28 = [v27 objectForKeyedSubscript:@"UserPersonaUserODUUID"];
        if (v28)
        {
          homeDirectoryURL2 = [v27 objectForKeyedSubscript:@"UserPersonaUserODUUID"];
          v29 = homeDirectoryURL2;
        }

        else
        {
          v29 = &stru_1000209B8;
        }

        v114[0] = v29;
        v113[1] = @"Type";
        v30 = [v27 objectForKeyedSubscript:@"UserPersonaType"];
        if (v30)
        {
          path = [v27 objectForKeyedSubscript:@"UserPersonaType"];
          v71 = [NSString stringWithFormat:@"%@", path];
          v31 = v71;
        }

        else
        {
          v31 = &stru_1000209B8;
        }

        v114[1] = v31;
        v113[2] = @"UUID";
        v32 = [v27 objectForKeyedSubscript:@"UserPersonaUniqueString"];
        if (v32)
        {
          v70 = [v27 objectForKeyedSubscript:@"UserPersonaUniqueString"];
          v33 = v70;
        }

        else
        {
          v33 = &stru_1000209B8;
        }

        v114[2] = v33;
        v113[3] = @"ID";
        v34 = [v27 objectForKeyedSubscript:@"UserPersonaID"];
        if (v34)
        {
          self = [v27 objectForKeyedSubscript:@"UserPersonaID"];
          v68 = [NSString stringWithFormat:@"%@", self];
          v35 = v68;
        }

        else
        {
          v35 = &stru_1000209B8;
        }

        v114[3] = v35;
        v114[4] = @"(private)";
        v113[4] = @"Nickname";
        v113[5] = @"Volume UUID";
        v36 = [v27 objectForKeyedSubscript:@"MKBUserSessionVolumeUUID"];
        if (v36)
        {
          v67 = [v27 objectForKeyedSubscript:@"MKBUserSessionVolumeUUID"];
          v37 = v67;
        }

        else
        {
          v37 = &stru_1000209B8;
        }

        v114[5] = v37;
        v113[6] = @"Home Dir";
        v38 = [v27 objectForKeyedSubscript:@"MKBUserSessionHomeDir"];
        if (v38)
        {
          v66 = [v27 objectForKeyedSubscript:@"MKBUserSessionHomeDir"];
          v39 = v66;
        }

        else
        {
          v39 = &stru_1000209B8;
        }

        v114[6] = v39;
        v40 = [NSDictionary dictionaryWithObjects:v114 forKeys:v113 count:7];
        v41 = [NSMutableDictionary dictionaryWithDictionary:v40];

        if (v38)
        {
        }

        if (v36)
        {
        }

        if (v34)
        {
        }

        if (v32)
        {
        }

        if (v30)
        {
        }

        if (v28)
        {
        }

        [v65 addObject:v41];
        if (os_variant_has_internal_diagnostics())
        {
          v42 = [v27 objectForKeyedSubscript:@"UserPersonaNickName"];
          if (v42)
          {
            v63 = [v27 objectForKeyedSubscript:@"UserPersonaNickName"];
            v43 = v63;
          }

          else
          {
            v43 = &stru_1000209B8;
          }

          [v41 setObject:v43 forKeyedSubscript:@"Nickname"];
          if (v42)
          {
          }
        }
      }

      v26 = [v61 countByEnumeratingWithState:&v83 objects:v115 count:16];
    }

    while (v26);
  }

  [UMTestPrint printTable:@"Personas" withColumns:&off_1000219C8 rows:v65];
  v44 = +[NSMutableArray array];
  for (k = 1; k != 8; ++k)
  {
    v101[0] = 0;
    if ((kpersona_find_by_type() & 0x80000000) == 0)
    {
      v46 = malloc_type_malloc(4 * v101[0], 0x100004052888210uLL);
      if ((kpersona_find_by_type() & 0x80000000) == 0 && v101[0])
      {
        v47 = 0;
        do
        {
          v48 = [NSNumber numberWithUnsignedInt:v46[v47]];
          [v44 addObject:v48];

          ++v47;
        }

        while (v101[0] > v47);
      }

      free(v46);
    }
  }

  v75 = +[NSMutableArray array];

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v73 = v44;
  v49 = [v73 countByEnumeratingWithState:&v79 objects:v112 count:16];
  if (v49)
  {
    v78 = *v80;
    do
    {
      for (m = 0; m != v49; m = m + 1)
      {
        if (*v80 != v78)
        {
          objc_enumerationMutation(v73);
        }

        v51 = *(*(&v79 + 1) + 8 * m);
        v111 = 0;
        memset(v110, 0, sizeof(v110));
        v108 = 0u;
        v109 = 0u;
        v106 = 0u;
        v107 = 0u;
        v105 = 0u;
        v104 = 2;
        [v51 unsignedIntValue];
        if ((kpersona_info() & 0x80000000) == 0)
        {
          if (HIDWORD(v111) == -101)
          {
            v52 = @"-101";
          }

          else if (HIDWORD(v111) == -1)
          {
            v52 = @"-1";
          }

          else
          {
            v52 = [NSString stringWithFormat:@"%u", HIDWORD(v111)];
          }

          v103[0] = v52;
          v102[0] = @"UID";
          v102[1] = @"ID";
          v105 = [NSString stringWithFormat:@"%u", v105];
          v103[1] = v105;
          v102[2] = @"Type";
          v54 = [NSString stringWithFormat:@"%u", DWORD1(v105)];
          v103[2] = v54;
          v102[3] = @"Name";
          v55 = [NSString stringWithUTF8String:&v110[4]];
          v103[3] = v55;
          v56 = [NSDictionary dictionaryWithObjects:v103 forKeys:v102 count:4];
          v57 = [NSMutableDictionary dictionaryWithDictionary:v56];

          [v75 addObject:v57];
          bzero(v101, 0x400uLL);
          [v51 unsignedIntValue];
          if (!kpersona_getpath())
          {
            v58 = [NSString stringWithUTF8String:v101];
            [v57 setObject:v58 forKeyedSubscript:@"Path"];
          }
        }
      }

      v49 = [v73 countByEnumeratingWithState:&v79 objects:v112 count:16];
    }

    while (v49);
  }

  [UMTestPrint printTable:@"Kernel Personas" withColumns:&off_1000219E0 rows:v75];
  _Block_object_dispose(&v90, 8);

  return 1;
}

+ (id)stringForUserType:(unint64_t)type
{
  if (type == 1)
  {
    return @"E";
  }

  else
  {
    return @"P";
  }
}

@end