uint64_t sub_100000BC0(int a1, int a2, uint64_t a3, void *a4)
{
  v165 = 0;
  v166 = &v165;
  v167 = 0x3032000000;
  v168 = sub_100002028;
  v169 = sub_100002038;
  v170 = 0;
  v159 = 0;
  v160 = &v159;
  v161 = 0x3032000000;
  v162 = sub_100002028;
  v163 = sub_100002038;
  v164 = 0;
  if (!objc_opt_class())
  {
    v12 = 0;
    v11 = 0;
    v17 = 45;
    goto LABEL_99;
  }

  v8 = getenv("SUDO_UID");
  if (v8)
  {
    v9 = v8;
    if (!getuid())
    {
      *__error() = 0;
      v10 = strtoul(v9, 0, 0);
      if (!*__error() && !HIDWORD(v10))
      {
        setreuid(v10, 0xFFFFFFFF);
      }
    }
  }

  v11 = +[FSClient sharedInstance];
  v12 = [NSString stringWithUTF8String:*a4];
  v158[0] = _NSConcreteStackBlock;
  v158[1] = 3221225472;
  v158[2] = sub_100002040;
  v158[3] = &unk_10000C528;
  v158[4] = &v165;
  v158[5] = &v159;
  [v11 installedExtensionWithShortName:v12 synchronous:1 replyHandler:v158];
  v13 = v160[5];
  if (!v13)
  {
    if (([v166[5] isEnabled] & 1) == 0)
    {
      v22 = __stderrp;
      v23 = [v166[5] bundleIdentifier];
      fprintf(v22, "Module %s is disabled!\n", [v23 UTF8String]);

      goto LABEL_21;
    }

    v18 = [v166[5] attributes];
    v19 = v18;
    if (a1)
    {
      if (a1 == 1)
      {
        v20 = [v18 objectForKeyedSubscript:FSModuleIdentityAttributeActivateOptionSyntax];
        v21 = @"mount";
        v24 = 2;
        if (v20)
        {
          goto LABEL_26;
        }

LABEL_23:
        warnx("Filesystem %s does not support operation %s", [v12 UTF8String], -[__CFString UTF8String](v21, "UTF8String"));
        v17 = 8;
LABEL_98:

        goto LABEL_99;
      }

      if (a1 != 2)
      {
        fprintf(__stderrp, "Internal error, operation type %d unrecognized\n", a1);
        v17 = 22;
        goto LABEL_98;
      }

      v20 = [v18 objectForKeyedSubscript:FSModuleIdentityAttributeFormatOptionSyntax];
      v21 = @"newfs";
    }

    else
    {
      v20 = [v18 objectForKeyedSubscript:FSModuleIdentityAttributeCheckOptionSyntax];
      v21 = @"fsck";
    }

    v24 = 1;
    if (v20)
    {
LABEL_26:
      v103 = v20;
      v154 = 0;
      v155 = &v154;
      v156 = 0x2020000000;
      v157 = 0;
      v150 = 0;
      v151 = &v150;
      v152 = 0x2020000000;
      v153 = 0;
      +[FSTaskOptionsBundle resetOptionEnumeration];
      v149[0] = _NSConcreteStackBlock;
      v149[1] = 3221225472;
      v149[2] = sub_100005494;
      v149[3] = &unk_10000C550;
      v149[4] = &v154;
      v102 = [FSTaskOptionsBundle bundleForArguments:a4 count:a3 syntaxDictionary:v103 errorHandler:v149];
      if ((v155[3] & 1) == 0)
      {
        v25 = optind;
        if (a3 - optind == v24)
        {
          *(v151 + 24) = 1;
          if (a1 != 2)
          {
            if (a1 == 1)
            {
              v26 = v147;
              v147[0] = _NSConcreteStackBlock;
              v147[1] = 3221225472;
              v27 = sub_100002148;
            }

            else
            {
              v26 = v148;
              v148[0] = _NSConcreteStackBlock;
              v148[1] = 3221225472;
              v27 = sub_1000020C8;
            }

            v26[2] = v27;
            v26[3] = &unk_10000C578;
            v26[4] = &v150;
            [v102 enumerateOptionsUsingBlock:?];
          }

          v95 = &a4[v25];
          v101 = [NSString stringWithUTF8String:*v95];
          v28 = [v19 objectForKeyedSubscript:@"FSSupportsBlockResources"];
          if (v28 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v99 = [v28 BOOLValue];
          }

          else
          {
            v99 = 0;
          }

          v29 = [v19 objectForKeyedSubscript:@"FSSupportsPathURLs"];

          if (v29 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            group = [v29 BOOLValue];
          }

          else
          {
            group = 0;
          }

          v30 = [v19 objectForKeyedSubscript:@"FSSupportsServerURLs"];

          if (v30 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v31 = [v30 BOOLValue];
          }

          else
          {
            v31 = 0;
          }

          v32 = [v19 objectForKeyedSubscript:@"FSSupportsGenericURLResources"];

          if (v32 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v33 = [v32 BOOLValue];
          }

          else
          {
            v33 = 0;
          }

          if (v99)
          {
            v100 = [FSBlockDeviceResource proxyResourceForBSDName:v101 isWritable:*(v151 + 24)];
            v34 = 1;
LABEL_54:
            v94 = v32;
            goto LABEL_70;
          }

          if (group)
          {
            v94 = [v19 objectForKeyedSubscript:@"FSRequiresSecurityScopedPathURLResources"];

            if (v94 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v35 = [v94 BOOLValue];
            }

            else
            {
              v35 = 0;
            }

            v37 = [NSURL fileURLWithPath:v101];
            if (v35)
            {
              [FSPathURLResource secureResourceWithURL:v37 readonly:(v151[3] & 1) == 0];
            }

            else
            {
              [FSPathURLResource resourceWithURL:v37];
            }
            v100 = ;

            v34 = 1;
LABEL_70:
            if (a1 == 1)
            {
              v38 = [NSString stringWithUTF8String:v95[1]];
            }

            else
            {
              v38 = 0;
            }

            v39 = objc_opt_new();
            v141 = 0;
            v142 = &v141;
            v143 = 0x3032000000;
            v144 = sub_100002028;
            v145 = sub_100002038;
            v146 = 0;
            v92 = v39;
            if ((a1 | 2) == 2)
            {
              v40 = +[NSUUID UUID];
              v91 = [v40 fs_containerIdentifier];
            }

            else
            {
              if (v34)
              {
                v135 = 0;
                v136 = &v135;
                v137 = 0x3032000000;
                v138 = sub_100002028;
                v139 = sub_100002038;
                v140 = 0;
                v46 = [v166[5] bundleIdentifier];
                v134[0] = _NSConcreteStackBlock;
                v134[1] = 3221225472;
                v134[2] = sub_10000223C;
                v134[3] = &unk_10000C5A0;
                v134[4] = &v159;
                v134[5] = &v135;
                [v11 probeResourceSync:v100 usingBundle:v46 replyHandler:v134];

                v47 = v160[5];
                if (v47)
                {
                  v48 = [v160[5] localizedDescription];
                  warnx("Probing resource: %s", [v48 UTF8String]);

                  v91 = 0;
                }

                else
                {
                  v91 = [v136[5] containerID];
                }

                _Block_object_dispose(&v135, 8);

                if (v47)
                {
                  v17 = 5;
                  goto LABEL_95;
                }

                v39 = v92;
              }

              else
              {
                v91 = 0;
              }

              v133[0] = _NSConcreteStackBlock;
              v133[1] = 3221225472;
              v133[2] = sub_1000022BC;
              v133[3] = &unk_10000C5C8;
              v133[4] = &v159;
              v133[5] = &v141;
              [v11 loadResource:v100 shortName:v12 options:v39 synchronousReplyHandler:v133];
              v63 = v160[5];
              if (v63)
              {
                v64 = [v63 localizedDescription];
                warnx("Loading resource: %s", [v64 UTF8String]);

                v17 = [v160[5] code];
                goto LABEL_95;
              }
            }

            v131[0] = 0;
            v131[1] = v131;
            v131[2] = 0x2020000000;
            v132 = 0;
            v127[0] = _NSConcreteStackBlock;
            v127[1] = 3221225472;
            v127[2] = sub_10000233C;
            v127[3] = &unk_10000C5F0;
            v129 = &v159;
            v130 = v131;
            groupa = dispatch_group_create();
            v128 = groupa;
            v96 = [FSMessageReceiver receiverForStandardIO:v127];
            v93 = [v96 getConnection];
            dispatch_group_enter(groupa);
            if ((a1 | 2) != 2)
            {
              if (a1 == 1)
              {
                v49 = v142[5];
                if (!v49 || ![v49 count])
                {
                  warnx("Operation did not add any volumes");
                  v17 = 22;
                  goto LABEL_94;
                }

                v50 = [v142[5] objectAtIndexedSubscript:0];
                v51 = [v50 volumeID];
                v110[0] = _NSConcreteStackBlock;
                v110[1] = 3221225472;
                v110[2] = sub_10000252C;
                v110[3] = &unk_10000C6D0;
                v112 = &v159;
                v52 = groupa;
                v111 = v52;
                v113 = v131;
                [v11 activateVolume:v51 shortName:v12 options:v102 replyHandler:v110];

                dispatch_group_wait(v52, 0xFFFFFFFFFFFFFFFFLL);
                v53 = v160[5];
                if (v53)
                {
                  v54 = [v53 description];
                  warnx("operation exiting with error %s", [v54 UTF8String]);

                  v17 = [v160[5] code];
LABEL_94:

                  _Block_object_dispose(v131, 8);
LABEL_95:
                  _Block_object_dispose(&v141, 8);

LABEL_96:
                  goto LABEL_97;
                }

                v65 = v38;
                v87 = [LiveFSMountClient newClientForProvider:@"com.apple.filesystems.UserFS.FileProvider"];
                v66 = [v142[5] objectAtIndexedSubscript:0];
                v67 = [v66 volumeID];
                v68 = [v67 uuid];
                v88 = [v68 description];

                if ([v65 length])
                {
                  v38 = v65;
                }

                else
                {
                  v38 = [NSString stringWithFormat:@"%@/%@", @"com.apple.filesystems.UserFS.FileProvider", v88];
                }

                v69 = [v142[5] objectAtIndexedSubscript:0];
                v70 = [v69 volumeName];

                if (v70)
                {
                  v71 = [v142[5] objectAtIndexedSubscript:0];
                  v72 = [v71 volumeName];
                  v73 = [v72 string];
                }

                else
                {
                  v73 = &stru_10000CB90;
                }

                v74 = [v87 mountVolume:v88 fileSystem:v12 displayName:v73 provider:@"com.apple.filesystems.UserFS.FileProvider" domainError:0 on:v38 how:0 options:&stru_10000CB90];
                v75 = v160[5];
                v160[5] = v74;

                v76 = v160[5];
                if (v76)
                {
                  v90 = v38;
                  v135 = 0;
                  v136 = &v135;
                  v137 = 0x3032000000;
                  v138 = sub_100002028;
                  v139 = sub_100002038;
                  v140 = 0;
                  v77 = [v160[5] localizedDescription];
                  warnx("Final mount step ended with error: %s", [v77 UTF8String]);

                  dispatch_group_enter(v52);
                  v78 = [v142[5] objectAtIndexedSubscript:0];
                  v79 = [v78 volumeID];
                  v80 = objc_opt_new();
                  v106[0] = _NSConcreteStackBlock;
                  v106[1] = 3221225472;
                  v106[2] = sub_10000259C;
                  v106[3] = &unk_10000C6D0;
                  v108 = &v135;
                  v81 = v52;
                  v107 = v81;
                  v109 = v131;
                  [v11 deactivateVolume:v79 shortName:v12 options:v80 replyHandler:v106];

                  dispatch_group_wait(v81, 0xFFFFFFFFFFFFFFFFLL);
                  v82 = v136[5];
                  if (v82)
                  {
                    v83 = [v82 localizedDescription];
                    warnx("Final mount step cleanup ended with error: %s", [v83 UTF8String]);
                  }

                  v84 = objc_opt_new();
                  v85 = dispatch_group_create();
                  dispatch_group_enter(v85);
                  v104[0] = _NSConcreteStackBlock;
                  v104[1] = 3221225472;
                  v104[2] = sub_10000260C;
                  v104[3] = &unk_10000C6F8;
                  v86 = v85;
                  v105 = v86;
                  [v11 unloadResource:v100 shortName:v12 options:v84 replyHandler:v104];
                  v38 = v90;
                  dispatch_group_wait(v86, 0xFFFFFFFFFFFFFFFFLL);
                  v17 = [v160[5] code];

                  _Block_object_dispose(&v135, 8);
                }

                else
                {
                  v17 = 5;
                }

                if (v76)
                {
                  goto LABEL_94;
                }
              }

LABEL_93:
              v17 = 0;
              goto LABEL_94;
            }

            v89 = v38;
            if ((a2 & 0xFFF) != 0)
            {
              v41 = objc_opt_new();
              v42 = [FSMessageReceiver receiverWithDelegate:v41];

              v43 = [v42 getConnection];

              [v41 setDispatch_group:groupa];
              v125[0] = _NSConcreteStackBlock;
              v125[1] = 3221225472;
              v125[2] = sub_1000023C0;
              v125[3] = &unk_10000C658;
              v44 = v41;
              v126 = v44;
              v45 = objc_retainBlock(v125);

              v96 = v42;
              v93 = v43;
            }

            else
            {
              v44 = 0;
              v45 = 0;
            }

            v118[0] = _NSConcreteStackBlock;
            v118[1] = 3221225472;
            v118[2] = sub_100002400;
            v118[3] = &unk_10000C680;
            v122 = &v159;
            v55 = groupa;
            v119 = v55;
            v123 = v131;
            v124 = a2;
            v56 = v100;
            v120 = v56;
            v57 = v45;
            v121 = v57;
            v58 = objc_retainBlock(v118);
            if (a1)
            {
              if (a1 != 2)
              {
LABEL_92:
                v60 = dispatch_get_global_queue(0, 0);
                block[0] = _NSConcreteStackBlock;
                block[1] = 3221225472;
                block[2] = sub_1000024B0;
                block[3] = &unk_10000C6A8;
                v115 = v55;
                v61 = v44;
                v116 = v61;
                v117 = &v159;
                dispatch_async(v60, block);

                CFRunLoopRun();
                v38 = v89;
                goto LABEL_93;
              }

              v59 = [v166[5] bundleIdentifier];
              [v11 formatResource:v56 usingBundle:v59 options:v102 connection:v93 replyHandler:v58];
            }

            else
            {
              v59 = [v166[5] bundleIdentifier];
              [v11 checkResource:v56 usingBundle:v59 options:v102 connection:v93 replyHandler:v58];
            }

            goto LABEL_92;
          }

          if (v33)
          {
            v36 = [NSURL URLWithString:v101];
            v100 = [FSGenericURLResource resourceWithURL:v36];
          }

          else
          {
            if (!v31)
            {
              warnx("Filesystem %s supports neither Block Device nor PathURL resources nor ServerURL resources.", [v12 UTF8String]);
              v100 = 0;
              goto LABEL_104;
            }

            v36 = [NSURL URLWithString:v101];
            v100 = [FSServerURLResource resourceWithURL:v36];
          }

          if ((a1 & 0xFFFFFFFD) != 0)
          {
            v34 = 0;
            goto LABEL_54;
          }

          warnx("Filesystem %s doesn't support Block Device or PathURL resources, can't preform format/check task.", [v12 UTF8String]);
LABEL_104:
          v17 = 22;

          goto LABEL_96;
        }

        warnx("Argument count %d not equal to expected count %d", a3 - optind, v24);
      }

      v17 = 22;
LABEL_97:
      _Block_object_dispose(&v150, 8);
      _Block_object_dispose(&v154, 8);

      goto LABEL_98;
    }

    goto LABEL_23;
  }

  v14 = [v13 domain];
  if (!v14)
  {
LABEL_21:
    v17 = 22;
    goto LABEL_99;
  }

  v15 = [v160[5] domain];
  if (([NSPOSIXErrorDomain isEqualToString:v15] & 1) == 0)
  {

    goto LABEL_21;
  }

  v16 = [v160[5] code];

  if (v16 == 2)
  {
    v17 = 2;
  }

  else
  {
    v17 = 22;
  }

LABEL_99:
  _Block_object_dispose(&v159, 8);

  _Block_object_dispose(&v165, 8);
  return v17;
}

void sub_100001F54(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x280], 8);
  _Block_object_dispose(&STACK[0x200], 8);
  _Block_object_dispose(&STACK[0x2B0], 8);
  _Block_object_dispose(&STACK[0x358], 8);
  _Block_object_dispose(&STACK[0x378], 8);
  _Block_object_dispose((v1 - 216), 8);
  _Block_object_dispose((v1 - 168), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100002028(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100002040(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1000020C8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = a2;
  if (([v7 isEqualToString:@"q"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"n"))
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a5 = 1;
  }
}

uint64_t sub_100002148(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = [a2 isEqualToString:@"o"];
  if (v10 && v5)
  {
    v6 = [v10 componentsSeparatedByString:{@", "}];
    v7 = [[NSSet alloc] initWithArray:v6];
    if ([v7 containsObject:@"ro"] & 1) != 0 || (objc_msgSend(v7, "containsObject:", @"rdonly"))
    {
      v8 = 0;
    }

    else
    {
      if (![v7 containsObject:@"rw"])
      {
        goto LABEL_7;
      }

      v8 = 1;
    }

    *(*(*(a1 + 32) + 8) + 24) = v8;
LABEL_7:
  }

  return _objc_release_x1(v5);
}

void sub_10000223C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_1000022BC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_10000233C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v5 = v3;
    sub_100005534(v3, a1);
    v3 = v5;
  }

  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v4 = v3;
    dispatch_group_leave(*(a1 + 32));
    v3 = v4;
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

Block_layout *sub_1000023C0(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setProgress:a2];
  [*(a1 + 32) showProgress];
  return &stru_10000C630;
}

void sub_100002400(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    sub_1000055A8(v5, a1);
  }

  else if ((*(a1 + 72) & 0xFFF) != 0)
  {
    v7 = [*(a1 + 40) getProgressURLKey];
    v8 = [NSProgress addSubscriberForFileURL:v7 withPublishingHandler:*(a1 + 48)];
  }
}

void sub_1000024B0(uint64_t a1)
{
  dispatch_group_wait(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL);
  [*(a1 + 40) setProgress:0];
  v2 = *(*(*(a1 + 48) + 8) + 40);
  if (v2)
  {
    v3 = [v2 description];
    warnx("operation exiting with error %s", [v3 UTF8String]);

    LODWORD(v2) = [*(*(*(a1 + 48) + 8) + 40) code];
  }

  exit(v2);
}

void sub_10000252C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    sub_100005534(v3, a1);
  }

  dispatch_group_leave(*(a1 + 32));
  *(*(*(a1 + 48) + 8) + 24) = 1;
}

void sub_10000259C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
  *(*(*(a1 + 48) + 8) + 24) = 1;
}

void sub_10000260C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = fskit_std_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_100005638(v3, v4);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t sub_100002688(uint64_t a1)
{
  bzero(from, 0x400uLL);
  v2 = *(a1 + 8);
  v3 = "/.b/8/";
  if (sub_100002D90("/.b/8/", 0))
  {
    if (dword_1000101FC)
    {
      fprintf(__stderrp, "Default mount %s is not available. Using backup %s.\n", "/.b/8/", "/private/system_data/");
    }

    v3 = "/private/system_data/";
    if (sub_100002D90("/private/system_data/", 0))
    {
      fwrite("Mountpoints not available. Exiting.\n", 0x24uLL, 1uLL, __stderrp);
      return 2;
    }
  }

  v5 = *(a1 + 24);
  if (!v5)
  {
    v6 = __stderrp;
    v7 = "No mnt_opts provided to mount preflight.\n";
    v8 = 41;
LABEL_20:
    fwrite(v7, v8, 1uLL, v6);
LABEL_21:
    fwrite("Failed mount preflight. Exiting.\n", 0x21uLL, 1uLL, __stderrp);
    return 22;
  }

  if (sub_100002D90("/sbin/mount_tmpfs", 1))
  {
    fprintf(__stderrp, "Failed to find executable: %s \n");
    goto LABEL_21;
  }

  v9 = strdup(v5);
  v10 = strtok(v9, ",");
  if (!v10)
  {
LABEL_18:
    free(v9);
LABEL_19:
    v6 = __stderrp;
    v7 = "Ramdisk fstab not in expected format.\n";
    v8 = 38;
    goto LABEL_20;
  }

  v11 = v10;
  while (1)
  {
    v12 = strlen(v11);
    if (v12 >= 6)
    {
      v13 = v12;
      if (!strncmp("size=", v11, 5uLL) || v13 >= 0xA && !strncmp("template=", v11, 9uLL))
      {
        break;
      }
    }

    v11 = strtok(0, ",");
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  v15 = &v5[v11 - v9];
  *(v15 - 1) = 0;
  free(v9);
  if (!v15)
  {
    goto LABEL_19;
  }

  v16 = sub_100002DF4(v15, "size=");
  if (!v16)
  {
    fprintf(__stderrp, "Unexpected mount size %zu\n");
    goto LABEL_21;
  }

  v17 = v16;
  __endptr[0] = 0;
  v18 = strtol(v16, __endptr, 0);
  if (__endptr[0] == v17 || *__endptr[0] || (v19 = v18, v18 <= 0))
  {
    fprintf(__stderrp, "Unexpected size string: %s\n", v17);
    free(v17);
    goto LABEL_21;
  }

  free(v17);
  v20 = sub_100002DF4(v15, "template=");
  if (v20)
  {
    v21 = v20;
    __strlcpy_chk();
    free(v21);
  }

  v22 = v19 << 9;
  if (dword_1000101FC)
  {
    fprintf(__stdoutp, "Mounting tmpfs volume at tmp location %s\n", v3);
  }

  if (sub_100002C34(v3, v19 << 9) >= 1)
  {
    fprintf(__stderrp, "Initial mount to %s failed with %d\n");
    goto LABEL_55;
  }

  v23 = copyfile_state_alloc();
  copyfile_state_set(v23, 6u, sub_100002D10);
  if (copyfile(from, v3, v23, 0x800Fu) < 0)
  {
    v31 = __stderrp;
    v32 = __error();
    strerror(*v32);
    fprintf(v31, "Failed to copy contents from %s to %s with error: %s\n");
    goto LABEL_55;
  }

  copyfile_state_free(v23);
  if (dword_1000101FC)
  {
    fprintf(__stdoutp, "Mounting tmpfs volume at %s\n", v2);
  }

  v4 = sub_100002C34(v2, v22);
  if (v4 >= 1)
  {
    fprintf(__stderrp, "Final mount to %s failed with %d\n");
    goto LABEL_55;
  }

  v24 = copyfile_state_alloc();
  copyfile_state_set(v24, 6u, sub_100002D10);
  if (copyfile(v3, v2, v24, 0x800Fu) < 0)
  {
    v33 = __stderrp;
    v34 = __error();
    strerror(*v34);
    fprintf(v33, "Failed to copy contents from %s to %s with error: %s\n");
LABEL_55:
    v35 = __error();
    v36 = sub_10000380C(*v35, 0xFFFFFFFF);
    exit(v36);
  }

  copyfile_state_free(v24);
  LODWORD(err) = -1;
  __endptr[0] = "/sbin/umount";
  __endptr[1] = "-f";
  __endptr[2] = v3;
  __endptr[3] = 0;
  if ((sub_100002EA4(__endptr, &err) & 0x80000000) != 0)
  {
    fprintf(__stderrp, "Failed to execute command %s\n", __endptr[0]);
    v26 = __error();
    v25 = sub_10000380C(*v26, 0xFFFFFFFF);
  }

  else
  {
    v25 = err;
  }

  if (v25)
  {
    v27 = __stderrp;
    v28 = __error();
    fprintf(v27, "Failed to unmount %s (errno %d).\n", v3, *v28);
  }

  if (sub_100003790())
  {
    err = 0;
    if (UMLCreatePrimaryUserLayout())
    {
      puts("UMLCreatePrimaryUserLayout passed without error");
    }

    else
    {
      v29 = CFErrorCopyDescription(err);
      Code = CFErrorGetCode(err);
      CFStringGetCString(v29, __endptr, 256, 0x8000100u);
      fprintf(__stderrp, "Failed to copy user template: %s (%ld).\n", __endptr, Code);
      CFRelease(err);
      CFRelease(v29);
    }
  }

  if (dword_1000101FC)
  {
    sub_100004EC4(0);
  }

  return v4;
}

uint64_t sub_100002C34(char *a1, uint64_t a2)
{
  v5 = -1;
  snprintf(__str, 0x40uLL, "%zu", a2);
  v6[0] = "/sbin/mount_tmpfs";
  v6[1] = "-s";
  v6[2] = __str;
  v6[3] = a1;
  v6[4] = 0;
  if ((sub_100002EA4(v6, &v5) & 0x80000000) == 0)
  {
    return v5;
  }

  fprintf(__stderrp, "Failed to execute command %s\n", v6[0]);
  v4 = __error();
  return sub_10000380C(*v4, 0xFFFFFFFF);
}

uint64_t sub_100002D10(int a1, int a2)
{
  if (a2 == 1 && dword_1000101FC)
  {
    if (a1 == 2)
    {
      fprintf(__stderrp, "Creating %s/\n");
    }

    else if (a1 == 1)
    {
      fprintf(__stderrp, "Copying %s -> %s\n");
    }
  }

  return 0;
}

uint64_t sub_100002D90(const char *a1, int a2)
{
  result = access(a1, a2);
  if (result)
  {
    v4 = __stderrp;
    v5 = __error();
    v6 = strerror(*v5);
    fprintf(v4, "Failed access check for %s with issue %s\n", a1, v6);
    return *__error();
  }

  return result;
}

char *sub_100002DF4(char *a1, const char *a2)
{
  v3 = strstr(a1, a2);
  v4 = strlen(a2);
  if (!v3)
  {
    return 0;
  }

  v5 = v4;
  if (strlen(v3) <= v4)
  {
    return 0;
  }

  v6 = strcspn(&v3[v5], ",");
  if (v6 - 1 > 0x3FE)
  {
    return 0;
  }

  v7 = v6;
  v8 = malloc_type_calloc(1uLL, v6 + 1, 0xE6AB1245uLL);

  return strncpy(v8, &v3[v5], v7);
}

uint64_t sub_100002EA4(char **a1, _DWORD *a2)
{
  v2 = a1;
  v58 = 0;
  v59 = -1;
  v57 = 0;
  *v60 = -1;
  if (!a1)
  {
    fwrite("command_argv is NULL\n", 0x15uLL, 1uLL, __stderrp);
    v7 = 0;
    *__error() = 22;
LABEL_22:
    v33 = 0xFFFFFFFFLL;
    goto LABEL_23;
  }

  if (pipe(v60))
  {
    v4 = __stderrp;
    v5 = *__error();
    v6 = __error();
    strerror(*v6);
    fprintf(v4, "Failed to create pipe for command output: %d (%s)\n");
LABEL_20:
    v2 = 0;
LABEL_21:
    v7 = 0;
    goto LABEL_22;
  }

  v8 = posix_spawn_file_actions_init(&v57);
  if (v8)
  {
    *__error() = v8;
    v9 = __stderrp;
    v10 = *__error();
    v11 = __error();
    strerror(*v11);
    fprintf(v9, "posix_spawn_file_actions_init failed: %d (%s)\n");
    goto LABEL_20;
  }

  v12 = posix_spawn_file_actions_addclose(&v57, v60[0]);
  if (v12)
  {
    *__error() = v12;
    v13 = __stderrp;
    v14 = *__error();
    v15 = __error();
    strerror(*v15);
    fprintf(v13, "posix_spawn_file_actions_addclose output_pipe[0] failed: %d (%s)\n");
    goto LABEL_20;
  }

  v16 = posix_spawn_file_actions_adddup2(&v57, v60[1], 1);
  if (v16)
  {
    *__error() = v16;
    v17 = __stderrp;
    v18 = *__error();
    v19 = __error();
    strerror(*v19);
    fprintf(v17, "posix_spawn_file_actions_adddup2 output_pipe[1] failed: %d (%s)\n");
    goto LABEL_20;
  }

  v20 = posix_spawn_file_actions_addclose(&v57, v60[1]);
  if (v20)
  {
    *__error() = v20;
    v21 = __stderrp;
    v22 = *__error();
    v23 = __error();
    strerror(*v23);
    fprintf(v21, "posix_spawn_file_actions_addclose output_pipe[1] failed: %d (%s)\n");
    goto LABEL_20;
  }

  if (dword_1000101FC)
  {
    fwrite("Executing command: ", 0x13uLL, 1uLL, __stdoutp);
    v24 = *v2;
    if (*v2)
    {
      v25 = (v2 + 1);
      do
      {
        fprintf(__stdoutp, "%s ", v24);
        v26 = *v25++;
        v24 = v26;
      }

      while (v26);
    }

    fputc(10, __stdoutp);
  }

  v27 = *v2;
  v28 = _NSGetEnviron();
  v29 = posix_spawn(&v58, v27, &v57, 0, v2, *v28);
  if (v29)
  {
    *__error() = v29;
    v30 = __stderrp;
    v31 = *__error();
    v32 = __error();
    strerror(*v32);
    fprintf(v30, "posix_spawn failed: %d (%s)\n");
    goto LABEL_20;
  }

  close(v60[1]);
  v60[1] = -1;
  v36 = malloc_type_calloc(0x400uLL, 1uLL, 0x100004077774924uLL);
  if (!v36)
  {
    v43 = __stderrp;
    v44 = *__error();
    v45 = __error();
    strerror(*v45);
    fprintf(v43, "calloc failed: %d (%s)\n");
    goto LABEL_20;
  }

  v2 = v36;
  v37 = fdopen(v60[0], "r");
  if (!v37)
  {
    v46 = __stderrp;
    v47 = *__error();
    v48 = __error();
    strerror(*v48);
    fprintf(v46, "fdopen failed: %d (%s)\n");
    goto LABEL_21;
  }

  v7 = v37;
  v56 = 0;
  if (fgetln(v37, &v56))
  {
    v38 = 0;
    do
    {
      if (v38 >= 1023 - v56)
      {
        break;
      }

      __strncat_chk();
      v38 += v56;
    }

    while (fgetln(v7, &v56));
  }

  if (ferror(v7))
  {
    v39 = __stderrp;
    v40 = *__error();
    v41 = __error();
    v42 = strerror(*v41);
    fprintf(v39, "fgetln failed: %d (%s)\n", v40, v42);
    goto LABEL_22;
  }

  if (fclose(v7))
  {
    v49 = __stderrp;
    v50 = *__error();
    v51 = __error();
    strerror(*v51);
    fprintf(v49, "fclose failed: %d (%s)\n");
    goto LABEL_21;
  }

  close(v60[0]);
  v60[0] = -1;
  while (waitpid(v58, &v59, 0) < 0)
  {
    if (*__error() != 4)
    {
      v52 = __stderrp;
      v53 = *__error();
      v54 = __error();
      strerror(*v54);
      fprintf(v52, "waitpid failed: %d (%s)\n");
      goto LABEL_21;
    }
  }

  if (dword_1000101FC)
  {
    fprintf(__stdoutp, "Command output:\n%s\n", v2);
  }

  if ((v59 & 0x7F) == 0x7F)
  {
    goto LABEL_59;
  }

  if ((v59 & 0x7F) != 0)
  {
    if (a2)
    {
      *a2 = 0;
    }

    fprintf(__stderrp, "Command signaled: %d\n");
    goto LABEL_63;
  }

  v55 = BYTE1(v59);
  if (a2)
  {
    *a2 = BYTE1(v59);
  }

  if (!v55)
  {
LABEL_59:
    v33 = 0;
    v7 = 0;
    goto LABEL_23;
  }

  fprintf(__stderrp, "Command failed: %d\n");
LABEL_63:
  v7 = 0;
  v33 = 1;
LABEL_23:
  v34 = *__error();
  if (v57)
  {
    posix_spawn_file_actions_destroy(&v57);
  }

  if (v7)
  {
    fclose(v7);
  }

  if ((v60[0] & 0x80000000) == 0)
  {
    close(v60[0]);
  }

  if ((v60[1] & 0x80000000) == 0)
  {
    close(v60[1]);
  }

  if (v2)
  {
    free(v2);
  }

  *__error() = v34;
  return v33;
}

int *sub_100003480(_DWORD *a1)
{
  if (!dword_1000101AC)
  {
    v3 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/filesystems/fstab");
    if (v3)
    {
      v4 = v3;
      CFProperty = IORegistryEntryCreateCFProperty(v3, @"os_env_type", kCFAllocatorDefault, 0);
      if (CFProperty)
      {
        v6 = CFProperty;
        v13.length = CFDataGetLength(CFProperty);
        v13.location = 0;
        CFDataGetBytes(v6, v13, &dword_1000101A8);
        CFRelease(v6);
      }

      IOObjectRelease(v4);
      *a1 = dword_1000101A8;
      BootDevice = APFSContainerGetBootDevice();
      if (!BootDevice)
      {
LABEL_14:
        v2 = &dword_1000101AC;
        strcpy(&dword_1000101AC, "/dev/");
        CFStringGetCString(0, &word_1000101B0 + 1, 27, 0x8000100u);
        CFRelease(0);
        return v2;
      }

      v8 = 5;
      while (1)
      {
        v9 = __stderrp;
        v10 = dword_1000101A8 == 1 ? "" : "warning: ";
        v11 = strerror(BootDevice & 0x3FFF);
        fprintf(v9, "%sfailed to get boot device - %s\n", v10, v11);
        if (dword_1000101A8 == 1)
        {
          break;
        }

        sleep(1u);
        if ((v8 + 1) < 2)
        {
          break;
        }

        fprintf(__stderrp, "Retrying (%d retries left)...\n", v8);
        BootDevice = APFSContainerGetBootDevice();
        --v8;
        if (!BootDevice)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      fwrite("failed to get filesystem info\n", 0x1EuLL, 1uLL, __stderrp);
    }

    return 0;
  }

  *a1 = dword_1000101A8;
  return &dword_1000101AC;
}

char *sub_100003674()
{
  theArray = 0;
  v0 = &byte_1000101CC;
  if (!byte_1000101CC)
  {
    if (dword_1000101AC || sub_100003480(&v7))
    {
      v1 = APFSVolumeRoleFind();
      if (v1)
      {
        v2 = __stderrp;
        if (dword_1000101A8 == 1)
        {
          v3 = "";
        }

        else
        {
          v3 = "warning: ";
        }

        v4 = strerror(v1 & 0x3FFF);
        fprintf(v2, "%sfailed to lookup data volume - %s\n", v3, v4);
      }

      else
      {
        if (CFArrayGetCount(theArray) < 2)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
          CFStringGetCString(ValueAtIndex, &byte_1000101CC, 32, 0x8000100u);
          CFRelease(theArray);
          return v0;
        }

        fwrite("found multiple data volumes\n", 0x1CuLL, 1uLL, __stderrp);
        CFRelease(theArray);
      }
    }

    return 0;
  }

  return v0;
}

BOOL sub_100003790()
{
  v0 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/filesystems");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  CFProperty = IORegistryEntryCreateCFProperty(v0, @"e-apfs", kCFAllocatorDefault, 0);
  v3 = CFProperty != 0;
  if (CFProperty)
  {
    CFRelease(CFProperty);
  }

  IOObjectRelease(v1);
  return v3;
}

uint64_t sub_10000380C(unsigned int a1, unsigned int a2)
{
  if (a2 == -1)
  {
    a2 = sysexit_np();
  }

  if (dword_1000101F8)
  {
    return a1;
  }

  else
  {
    return a2;
  }
}

void start(int a1, char *const *a2)
{
  __endptr = 0;
  bzero(v71, 0x400uLL);
  v4 = 0;
  v5 = 0;
  __s = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  do
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v9 = getopt(a1, a2, "headfFko:rwt:uvP:");
          if (v9 <= 106)
          {
            break;
          }

          if (v9 <= 115)
          {
            switch(v9)
            {
              case 'k':
                v5 |= 0x8000000u;
                break;
              case 'o':
                if (*optarg)
                {
                  __s = sub_1000042E4(__s, optarg);
                  if (strstr(optarg, "union"))
                  {
                    v5 |= 0x20u;
                  }
                }

                break;
              case 'r':
                v5 |= 1u;
                break;
              default:
                goto LABEL_90;
            }
          }

          else if (v9 > 117)
          {
            if (v9 == 118)
            {
              dword_1000101FC = 1;
            }

            else
            {
              if (v9 != 119)
              {
                goto LABEL_90;
              }

              v5 &= ~1u;
            }
          }

          else if (v9 == 116)
          {
            if (v8)
            {
              if (dword_1000101F8)
              {
                v15 = 22;
              }

              else
              {
                v15 = 64;
              }

              errx(v15, "only one -t option may be specified.");
            }

            v8 = makevfslist(optarg);
            v7 = optarg;
          }

          else
          {
            v5 |= 0x10000u;
          }
        }

        if (v9 <= 99)
        {
          break;
        }

        switch(v9)
        {
          case 'd':
            dword_1000101F0 = 1;
            break;
          case 'e':
            dword_1000101F8 = 1;
            break;
          case 'f':
            v5 |= 0x80000u;
            break;
          default:
            goto LABEL_90;
        }
      }

      if (v9 <= 79)
      {
        break;
      }

      if (v9 == 80)
      {
        v10 = strtol(optarg, &__endptr, 10);
        if (__endptr == optarg || ((v6 = v10, !*__endptr) ? (v11 = (v10 - 3) > 0xFFFFFFFD) : (v11 = 0), !v11))
        {
          if (dword_1000101F8)
          {
            v12 = 22;
          }

          else
          {
            v12 = 64;
          }

          errx(v12, "-P flag requires a valid mount phase number");
        }
      }

      else
      {
        v4 = 1;
        if (v9 != 97)
        {
          goto LABEL_90;
        }
      }
    }
  }

  while (v9 == 70);
  if (v9 != -1)
  {
    goto LABEL_90;
  }

  v13 = a1 - optind;
  v14 = &a2[optind];
  if ((v6 - 1) >= 2)
  {
    if (!v6)
    {
      goto LABEL_53;
    }
  }

  else
  {
    dword_1000101F4 = v6;
  }

  v4 = 1;
  dword_1000101FC = 1;
  v7 = "nonfs";
  v8 = makevfslist("nonfs");
LABEL_53:
  if (v13 != 2)
  {
    if (v13 != 1)
    {
      if (!v13)
      {
        if (!v4)
        {
          if (!dword_1000101EC)
          {
            sub_100004EC4(v8);
          }

          exit(0);
        }

        v70 = 0;
        if (!setfsent())
        {
          if (*__error())
          {
            v22 = *__error();
          }

          else
          {
            v22 = 6;
          }

          v30 = sub_10000380C(v22, 0xFFFFFFFF);
          errx(v30, "mount: can't get filesystem checklist");
        }

        v69 = 0;
        sub_100003480(&v69);
        v25 = sub_100003674();
        if (v25)
        {
          fprintf(__stdoutp, "mount: found boot container: %s, data volume: %s env: %u\n");
        }

        else
        {
          if (v69 == 1 && dword_1000101F4 == 2)
          {
            if (*__error())
            {
              v34 = *__error();
            }

            else
            {
              v34 = 6;
            }

            v61 = sub_10000380C(v34, 0xFFFFFFFF);
            errx(v61, "mount: missing data volume");
          }

          fprintf(__stdoutp, "mount: data volume missing, but not required in env: %u\n");
        }

        v38 = getfsent();
        if (!v38)
        {
          v39 = 0;
LABEL_118:
          endfsent();
          if (v6 == 2)
          {
            sub_100004E78();
          }

          exit(v39);
        }

        v40 = v38;
        v39 = 0;
        while (1)
        {
          fs_type = v40->fs_type;
          if (*fs_type == 114)
          {
            if (fs_type[1] == 111 && !fs_type[2])
            {
              v42 = 1;
              goto LABEL_130;
            }

            if (fs_type[1] == 119 && !fs_type[2] || fs_type[1] == 113 && !fs_type[2])
            {
              v42 = 0;
LABEL_130:
              if (!checkvfsname(v40->fs_vfstype, v8) && !sub_10000441C(v40->fs_mntops, "noauto"))
              {
                if ((v43 = v40->fs_vfstype, strcmp(v43, "nfs")) && strcmp(v43, "url") || !sub_10000441C(v40->fs_mntops, "net") && v40->fs_spec && (v52 = v40->fs_file) != 0 && !sub_100004504(v40->fs_spec, v52, 0))
                {
                  if (!dword_1000101F4 || v40->fs_passno == dword_1000101F4)
                  {
                    if (!sub_100004504(v40->fs_spec, v40->fs_file, &v70) || ((v70 & 1) == 0 ? (v44 = 1) : (v44 = v42), (v44 & 1) == 0))
                    {
                      fs_spec = v40->fs_spec;
                      if (!strcmp(v40->fs_spec, "ramdisk"))
                      {
                        if (dword_1000101FC)
                        {
                          fwrite("mount: encountered ramdisk\n", 0x1BuLL, 1uLL, __stdoutp);
                        }

                        v53 = sub_100002688(v40);
                        if (v53)
                        {
                          v67 = sub_10000380C(v53, 0xFFFFFFFF);
                          errx(v67, "mount: failed to setup tmpfs mount");
                        }

                        v39 = 0;
                      }

                      else
                      {
                        if (v40->fs_passno >= 2 && !strcmp(v40->fs_vfstype, "apfs"))
                        {
                          v46 = v40->fs_type;
                          if (*v46 == 114 && v46[1] == 119 && !v46[2] && v25 && !dword_1000101F0 && v69 == 1 && !strcmp(v25, fs_spec))
                          {
                            v54 = APFSContainerMigrateMediaKeys();
                            if (v54)
                            {
                              fprintf(__stderrp, "mount: failed to migrate Media Keys, error = %x\n", v54);
                            }

                            else
                            {
                              fwrite("mount: successfully migrated Media Keys\n", 0x28uLL, 1uLL, __stdoutp);
                            }
                          }
                        }

                        v47 = v40->fs_spec;
                        fs_file = v40->fs_file;
                        fs_vfstype = v40->fs_vfstype;
                        fs_mntops = v40->fs_mntops;
                        v51 = sub_1000045B0();
                        if (v51)
                        {
                          v39 = v51;
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          v40 = getfsent();
          if (!v40)
          {
            goto LABEL_118;
          }
        }
      }

LABEL_90:
      sub_1000043B0();
    }

    v20 = *v14;
    if (strlen(*v14) >= 0x401)
    {
      if (dword_1000101F8)
      {
        v21 = 22;
      }

      else
      {
        v21 = 65;
      }

      errx(v21, "special file or file system %s too long.", v20);
    }

    if (!realpath_DARWIN_EXTSN(v20, v71))
    {
      v23 = __error();
      v24 = sub_10000380C(*v23, 0xFFFFFFFF);
      errx(v24, "%s: invalid special file or file system.", *v14);
    }

    if (v8)
    {
      goto LABEL_90;
    }

    if ((v5 & 0x10000) != 0)
    {
      v37 = sub_100004F50(v71);
      exit(v37);
    }

    v27 = getfsfile(v71);
    if (!v27)
    {
      v27 = getfsspec(v71);
      if (!v27)
      {
        v28 = __error();
        v29 = sub_10000380C(*v28, 0xFFFFFFFF);
        errx(v29, "%s: unknown special file or file system.", *v14);
      }
    }

    p_fs_spec = &v27->fs_spec;
    v56 = v27->fs_type;
    if (*v56 != 114 || (v56[1] != 111 || v56[2]) && (v56[1] != 119 || v56[2]) && (v56[1] != 113 || v56[2]))
    {
      if (dword_1000101F8)
      {
        v60 = 22;
      }

      else
      {
        v60 = 65;
      }

      errx(v60, "%s has unknown file system type.", *v14);
    }

    if (!strcmp(v27->fs_vfstype, "nfs"))
    {
      if (sub_10000441C(p_fs_spec[3], "net"))
      {
        if (dword_1000101F8)
        {
          v65 = 22;
        }

        else
        {
          v65 = 65;
        }

        errx(v65, "%s is owned by the automounter.", *v14);
      }

      if (sub_100004504(*p_fs_spec, p_fs_spec[1], 0))
      {
        if (dword_1000101F8)
        {
          v66 = 37;
        }

        else
        {
          v66 = 78;
        }

        errx(v66, "%s is already mounted at %s.", *p_fs_spec, p_fs_spec[1]);
      }
    }

    if (!strcmp(*p_fs_spec, "ramdisk"))
    {
      if (dword_1000101FC)
      {
        fwrite("Found a ramdisk entry\n", 0x16uLL, 1uLL, __stdoutp);
      }

      v57 = sub_100002688(p_fs_spec);
      exit(v57);
    }

    v63 = p_fs_spec[1];
    v62 = p_fs_spec[2];
    v64 = p_fs_spec[3];
LABEL_113:
    v36 = sub_1000045B0();
    exit(v36);
  }

  v16 = *v14;
  v17 = v14[1];
  v18 = strlen(v17);
  if (v18 >= 0x401)
  {
    if (dword_1000101F8)
    {
      v19 = 63;
    }

    else
    {
      v19 = 65;
    }

    errx(v19, "file system %s too long.", v17);
  }

  if ((v5 & 0x8000000) != 0)
  {
    if (__strlcpy_chk() >= 0x400)
    {
      if (dword_1000101F8)
      {
        v26 = 63;
      }

      else
      {
        v26 = 65;
      }

      errx(v26, "file system %s too long.", v14[1]);
    }
  }

  else if (v18)
  {
    if (!realpath_DARWIN_EXTSN(v17, v71))
    {
      v31 = __error();
      v32 = sub_10000380C(*v31, 0xFFFFFFFF);
      errx(v32, "%s: invalid file system.", v14[1]);
    }
  }

  else
  {
    v5 |= 0x8000000u;
  }

  if (!v8 && strchr(*v14, 58))
  {
    if (sub_100004504(v16, v71, 0))
    {
      if (dword_1000101F8)
      {
        v58 = 37;
      }

      else
      {
        v58 = 78;
      }

      errx(v58, "%s is already mounted at %s.", v16, v71);
    }

    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_113;
    }
  }

  else if ((v5 & 0x10000) == 0)
  {
    if (!v7)
    {
      if (dword_1000101F8)
      {
        v33 = 22;
      }

      else
      {
        v33 = 64;
      }

      errx(v33, "You must specify a filesystem type with -t.");
    }

    goto LABEL_113;
  }

  if (!sub_100004FEC(v71))
  {
    if (*__error())
    {
      v35 = *__error();
    }

    else
    {
      v35 = 2;
    }

    v59 = sub_10000380C(v35, 0xFFFFFFFF);
    errx(v59, "unknown special file or file system %s.", *v14);
  }

  goto LABEL_113;
}

char *sub_1000042E4(char *__s, char *__s1)
{
  if (__s)
  {
    if (*__s)
    {
      v4 = strlen(__s);
      v5 = v4 + strlen(__s1);
      v6 = malloc_type_malloc(v5 + 2, 0xF77B8763uLL);
      if (!v6)
      {
        sub_1000056C4();
      }

      v7 = v6;
      snprintf(v6, v5 + 2, "%s,%s", __s, __s1);
    }

    else
    {
      v7 = strdup(__s1);
    }

    free(__s);
    return v7;
  }

  else
  {

    return strdup(__s1);
  }
}

void sub_1000043B0()
{
  fprintf(__stderrp, "usage: mount %s %s\n       mount %s\n       mount %s\n", "[-dfFrkuvw] [-o options] [-t external_type]", "special mount_point", "[-adfFrkuvw] [-t external_type]", "[-dfrkuvw] special | mount_point");
  if (dword_1000101F8)
  {
    v0 = 22;
  }

  else
  {
    v0 = 64;
  }

  exit(v0);
}

uint64_t sub_10000441C(const char *a1, const char *a2)
{
  v2 = a2;
  if (*a2 == 110)
  {
    if (a2[1] == 111)
    {
      v2 = a2 + 2;
      v3 = 0;
    }

    else
    {
      v3 = 1;
    }

    v4 = *(a2 + 1) == 111;
  }

  else
  {
    v4 = 0;
    v3 = 1;
  }

  v5 = strdup(a1);
  v6 = strtok(v5, ",");
  for (i = 0; v6; v6 = strtok(0, ","))
  {
    if (*v6 == 110)
    {
      v8 = v6[1] == 111;
      v6 += 2 * v8;
      if (v8)
      {
        v9 = v4;
      }

      else
      {
        v9 = v3;
      }
    }

    else
    {
      v9 = v3;
    }

    if (!strcasecmp(v6, v2))
    {
      i = v9;
    }

    else
    {
      i = i;
    }
  }

  free(v5);
  return i;
}

uint64_t sub_100004504(const char *a1, const char *a2, void *a3)
{
  v10 = 0;
  v6 = getmntinfo(&v10, 2);
  if (!v6)
  {
    sub_1000056F8();
  }

  if (v6 < 1)
  {
    return 0;
  }

  v7 = v10;
  v8 = v6;
  while (strcmp(v7->f_mntfromname, a1) || strcmp(v7->f_mntonname, a2))
  {
    ++v7;
    if (!--v8)
    {
      return 0;
    }
  }

  if (a3)
  {
    *a3 = v7->f_flags;
  }

  return 1;
}

uint64_t sub_1000045B0()
{
  v0 = __chkstk_darwin();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v0;
  memset(v61, 0, 512);
  memset(&v60, 0, 512);
  v56 = 0;
  if ((v8 & 0x8000000) != 0)
  {
    if (__strlcpy_chk() >= 0x400)
    {
      return 22;
    }
  }

  else if (!realpath_DARWIN_EXTSN(v1, __s))
  {
    if (dword_1000101F4 != 2 || ((v13 = strlen(__s), v13 >= 0xC) ? (v14 = 12) : (v14 = v13), strncmp(__s, "/private/var", v14)))
    {
      warn("realpath %s");
      goto LABEL_89;
    }

    if (mkdir(__s, 0x1C0u))
    {
      warn("mkdir %s");
      goto LABEL_89;
    }
  }

  if (v5)
  {
    v15 = v5;
  }

  else
  {
    v15 = "";
  }

  if (!v7)
  {
    v7 = *v15 ? v15 : "";
    if (*v15)
    {
      v15 = "";
    }
  }

  v16 = strdup(v15);
  v17 = sub_1000042E4(v16, v7);
  v18 = v17;
  if (((bswap32(*__s) >> 16) - 12032) | v9 & 0x20)
  {
    v19 = v9;
  }

  else
  {
    v19 = v9 | 0x10000;
  }

  if ((v19 & 0x80000) != 0)
  {
    v18 = sub_1000042E4(v17, "force");
  }

  if (v19)
  {
    v18 = sub_1000042E4(v18, "ro");
  }

  v57 = 0;
  if ((v19 & 0x10000) != 0)
  {
    v18 = sub_1000042E4(v18, "update");
    if ((v19 & 0x100000) == 0)
    {
LABEL_29:
      if ((v19 & 0x80) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }
  }

  else if ((v19 & 0x100000) == 0)
  {
    goto LABEL_29;
  }

  v18 = sub_1000042E4(v18, "nobrowse");
  if ((v19 & 0x80) != 0)
  {
LABEL_30:
    v18 = sub_1000042E4(v18, "protect");
  }

LABEL_31:
  v54 = strndup(v18, 0x400uLL);
  if ((v19 & 0x8000000) != 0)
  {
    v18 = sub_1000042E4(v18, "nofollow");
  }

  v20 = "/sbin";
  v21 = &off_10000C720;
  memset(&v55, 0, sizeof(v55));
  while (1)
  {
    snprintf(__str, 0x401uLL, "%s/mount_%s", v20, v12);
    if (!stat(__str, &v55))
    {
      break;
    }

    v22 = *v21++;
    v20 = v22;
    if (!v22)
    {
      v23 = "/System/Library/Filesystems";
      v24 = &off_10000C738;
      while (1)
      {
        snprintf(__str, 0x401uLL, "%s/%s.fs/%s/mount_%s", v23, v12, "Contents/Resources", v12);
        if (!stat(__str, &v55))
        {
          goto LABEL_40;
        }

        v25 = *v24++;
        v23 = v25;
        if (!v25)
        {
          goto LABEL_41;
        }
      }
    }
  }

LABEL_40:
  if (v3)
  {
LABEL_41:
    v57 = 1;
    *&v61[0] = v12;
    sub_100005228(v54, &v57, v61, 97);
    v26 = v61 + v57;
    v27 = v57 + 2;
    *v26 = v11;
    v26[1] = __s;
    *(v61 + v27) = 0;
    result = sub_100000BC0(1, v19, v27, v61);
    if (result && v3)
    {
      switch(result)
      {
        case 0x2D:
          warnx("FSKit unavailable");
          v38 = dword_1000101F8 == 0;
          v39 = 45;
          break;
        case 8:
          warnx("File system named %s unable to mount", v12);
          v38 = dword_1000101F8 == 0;
          v39 = 8;
          break;
        case 2:
          warnx("File system named %s not found", v12);
          v38 = dword_1000101F8 == 0;
          v39 = 2;
          break;
        default:
          warnx("Unable to invoke task");
          v38 = dword_1000101F8 == 0;
          v39 = 22;
          break;
      }

      goto LABEL_93;
    }

    if (!result)
    {
      return result;
    }
  }

  v57 = 1;
  *&v61[0] = v12;
  sub_100005228(v18, &v57, v61, 97);
  v29 = v57;
  v30 = v61 + v57;
  v57 += 2;
  v31 = v57;
  *v30 = v11;
  v30[1] = __s;
  *(v61 + v31) = 0;
  if (dword_1000101F0)
  {
    printf("exec: mount_%s", v12);
    if ((v29 & 0x80000000) == 0)
    {
      v32 = v61 + 1;
      v33 = v31 - 1;
      do
      {
        v34 = *v32++;
        printf(" %s", v34);
        --v33;
      }

      while (v33);
    }

    putchar(10);
    return 0;
  }

  v35 = fork();
  if (v35 == -1)
  {
    warn("fork");
    free(v18);
    v39 = *__error();
    v38 = dword_1000101F8 == 0;
    v50 = 71;
    goto LABEL_94;
  }

  v36 = v35;
  if (v35)
  {
    free(v18);
    free(v54);
    if (waitpid(v36, &v56, 0) < 0)
    {
      sub_100005720(&v55);
      return v55.st_dev;
    }

    v37 = v56 & 0x7F;
    if (v37 == 127)
    {
LABEL_59:
      if (!dword_1000101FC)
      {
        return 0;
      }

      if ((statfs(__s, &v60) & 0x80000000) == 0)
      {
        sub_100005090(&v60);
        return 0;
      }

      warn("statfs %s");
LABEL_89:
      v51 = *__error();
      LODWORD(result) = sysexit_np();
      if (dword_1000101F8)
      {
        return v51;
      }

      else
      {
        return result;
      }
    }

    if ((v56 & 0x7F) == 0)
    {
      if (BYTE1(v56))
      {
        warnx("%s failed with %d", __s, BYTE1(v56));
        if (dword_1000101F8)
        {
          return 4;
        }

        else
        {
          return BYTE1(v56);
        }
      }

      goto LABEL_59;
    }

    warnx("%s: %s", __s, sys_siglist[v37]);
    v38 = dword_1000101F8 == 0;
    v39 = 4;
LABEL_93:
    v50 = 69;
    goto LABEL_94;
  }

  v40 = "/sbin";
  v41 = &off_10000C720;
  do
  {
    snprintf(__str, 0x401uLL, "%s/mount_%s", v40, v12);
    *&v61[0] = __str;
    execv(__str, v61);
    if (*__error() != 2)
    {
      warn("exec %s for %s", __str, __s);
    }

    v42 = *v41++;
    v40 = v42;
  }

  while (v42);
  v43 = 0;
  v44 = "/System/Library/Filesystems";
  v45 = &off_10000C738;
  do
  {
    snprintf(__str, 0x401uLL, "%s/%s.fs/%s/mount_%s", v44, v12, "Contents/Resources", v12);
    *&v61[0] = __str;
    execv(__str, v61);
    if (*__error() == 2)
    {
      if (v43)
      {
        goto LABEL_77;
      }

LABEL_76:
      v57 = 1;
      *&v61[0] = v12;
      sub_100005228(v54, &v57, v61, 97);
      v46 = v57;
      v57 += 2;
      v47 = v57;
      v48 = v61 + v46;
      *v48 = v11;
      v48[1] = __s;
      *(v61 + v47) = 0;
      goto LABEL_77;
    }

    warn("exec %s for %s", __str, __s);
    if ((v43 & 1) == 0)
    {
      goto LABEL_76;
    }

LABEL_77:
    v49 = *v45++;
    v44 = v49;
    v43 = 1;
  }

  while (v49);
  if (*__error() != 2)
  {
    v52 = __error();
    v53 = sub_10000380C(*v52, 0xFFFFFFFF);
    exit(v53);
  }

  warn("exec %s for %s", __str, __s);
  v39 = *__error();
  v38 = dword_1000101F8 == 0;
  v50 = 72;
LABEL_94:
  if (v38)
  {
    return v50;
  }

  else
  {
    return v39;
  }
}

void sub_100004E78()
{
  __argv[0] = "/System/Library/Filesystems/apfs.fs/apfs_boot_util";
  __argv[1] = "2";
  __argv[2] = 0;
  execv("/System/Library/Filesystems/apfs.fs/apfs_boot_util", __argv);
  v0 = __error();
  v1 = sub_10000380C(*v0, 0xFFFFFFFF);
  errx(v1, "apfs_boot_util exec failed");
}

uint64_t sub_100004EC4(const char **a1)
{
  v5 = 0;
  result = getmntinfo(&v5, 2);
  if (!result)
  {
    sub_1000056F8();
  }

  if (result >= 1)
  {
    v3 = 0;
    v4 = 2168 * result;
    do
    {
      result = checkvfsname(v5[v3 / 0x878].f_fstypename, a1);
      if (!result)
      {
        result = sub_100005090(&v5[v3 / 0x878]);
      }

      v3 += 2168;
    }

    while (v4 != v3);
  }

  return result;
}

uint64_t sub_100004F50(const char *a1)
{
  v2 = sub_100004FEC(a1);
  if (!v2)
  {
    sub_100005770(a1);
  }

  v3 = v2;
  if (!strchr(v2->f_mntfromname, 47))
  {
    v4 = getfsfile(v3->f_mntonname);
    if (v4)
    {
      fs_spec = v4->fs_spec;
    }
  }

  v6 = v3->f_flags & 0x80;

  return sub_1000045B0();
}

statfs *sub_100004FEC(const char *a1)
{
  v8 = 0;
  v2 = getmntinfo(&v8, 2);
  if (v2 < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = v8;
  v5 = v2;
  for (i = v8; strcmp(i->f_mntfromname, a1); ++i)
  {
    if (!strcmp(i->f_mntonname, a1))
    {
      return i;
    }

    ++v3;
    if (!--v5)
    {
      return 0;
    }
  }

  return &v4[v3];
}

uint64_t sub_100005090(uint64_t a1)
{
  v2 = (a1 + 88);
  printf("%s on %s (%s", (a1 + 1112), (a1 + 88), (a1 + 72));
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  v11 = xmmword_100006704;
  v12 = 0;
  if (!getattrlist(v2, &v11, &v13, 0x24uLL, 0) && (BYTE7(v14) & 2) != 0 && (DWORD1(v13) & 0x2000000) != 0)
  {
    printf(", sealed");
  }

  v3 = *(a1 + 64) & 0xDFF0F7FF;
  if (v3)
  {
    v4 = &dword_10000C748;
    do
    {
      if (!*v4)
      {
        break;
      }

      if ((*v4 & v3) != 0)
      {
        printf(", %s", *(v4 + 1));
        v3 &= ~*v4;
      }

      v4 += 6;
    }

    while (v3);
  }

  v5 = *(a1 + 2136);
  if (v5)
  {
    v6 = &dword_10000C928;
    do
    {
      if (!*v6)
      {
        break;
      }

      if ((*v6 & v5) != 0)
      {
        printf(", %s", *(v6 + 1));
        v5 &= ~*v6;
      }

      v6 += 6;
    }

    while (v5);
  }

  if (*(a1 + 56))
  {
    printf(", mounted by ");
    v7 = getpwuid(*(a1 + 56));
    if (v7)
    {
      pw_name = v7->pw_name;
      printf("%s");
    }

    else
    {
      v9 = *(a1 + 56);
      printf("%d");
    }
  }

  return puts(")");
}

char *sub_100005228(char *a1, int *a2, uint64_t a3, int a4)
{
  v7 = *a2;
  __stringp = a1;
  while (1)
  {
    result = strsep(&__stringp, ",");
    if (!result)
    {
      break;
    }

    if (*result)
    {
      if (*result != 45)
      {
        v11 = (a3 + 8 * v7);
        v7 += 2;
        *v11 = "-o";
        v11[1] = result;
        goto LABEL_11;
      }

      if (result[1] != 45 || result[2])
      {
        v9 = v7 + 1;
        *(a3 + 8 * v7) = result;
        v10 = strchr(result, 61);
        if (v10)
        {
          *v10 = 0;
          v7 += 2;
          *(a3 + 8 * v9) = v10 + 1;
        }

        else
        {
          ++v7;
        }

LABEL_11:
        if (v7 >= a4)
        {
          sub_1000057A8();
        }
      }
    }
  }

  *a2 = v7;
  return result;
}

uint64_t checkvfsname(char *__s1, const char **a2)
{
  v2 = a2;
  if (a2)
  {
    v3 = *a2;
    if (*v2)
    {
      v5 = v2 + 1;
      while (strcmp(__s1, v3))
      {
        v6 = *v5++;
        v3 = v6;
        if (!v6)
        {
          goto LABEL_6;
        }
      }

      LOBYTE(v2) = byte_100010200;
    }

    else
    {
LABEL_6:
      LOBYTE(v2) = byte_100010200 ^ 1;
    }
  }

  return v2 & 1;
}

void *makevfslist(char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  if (strchr(a1, 47))
  {
    sub_10000546C();
  }

  if (*v1 == 110 && v1[1] == 111)
  {
    v1 += 2;
    byte_100010200 = 1;
  }

  v2 = 0;
  for (i = v1; *i == 44; ++i)
  {
    ++v2;
LABEL_11:
    ;
  }

  if (*i)
  {
    goto LABEL_11;
  }

  v4 = malloc_type_malloc(8 * v2 + 16, 0x10040436913F5uLL);
  v5 = v4;
  if (v4)
  {
    *v4 = v1;
    v6 = strchr(v1, 44);
    if (v6)
    {
      v7 = 1;
      do
      {
        *v6 = 0;
        v8 = v6 + 1;
        v5[v7++] = v8;
        v6 = strchr(v8, 44);
      }

      while (v6);
      v9 = v7;
    }

    else
    {
      v9 = 1;
    }

    v5[v9] = 0;
  }

  else
  {
    warn(0);
  }

  return v5;
}

void sub_100005494(uint64_t a1, void *a2, void *a3)
{
  *(*(*(a1 + 32) + 8) + 24) = 1;
  v4 = a3;
  v8 = [a2 description];
  v5 = v8;
  v6 = [v8 UTF8String];
  v7 = [v4 UTF8String];

  warnx("Error %s parsing '%s'", v6, v7);
}

void sub_100005534(void *a1, uint64_t a2)
{
  v3 = [a1 localizedDescription];
  warnx("Operation ended with error: %s", [v3 UTF8String]);

  v4 = sub_100002678(*(a2 + 40));

  objc_storeStrong(v4, v5);
}

void sub_1000055A8(void *a1, uint64_t a2)
{
  v3 = [a1 localizedDescription];
  warnx("%s:%d: Operation ended with error: %s", "invoke_tool_from_fskit_block_invoke_10", 358, [v3 UTF8String]);

  v4 = sub_100002678(*(a2 + 56));
  objc_storeStrong(v4, v5);
  dispatch_group_leave(*(a2 + 32));
  *(*(*(a2 + 64) + 8) + 24) = 1;
}

void sub_100005638(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "invoke_tool_from_fskit_block_invoke_14";
  v4 = 2112;
  v5 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%s:error:%@", &v2, 0x16u);
}

void sub_1000056C4()
{
  v0 = *__error();
  if (dword_1000101F8)
  {
    v1 = v0;
  }

  else
  {
    v1 = 75;
  }

  err(v1, "failed to allocate memory for arguments");
}

void sub_1000056F8()
{
  v0 = __error();
  v1 = sub_10000380C(*v0, 0xFFFFFFFF);
  err(v1, "getmntinfo");
}

uint64_t sub_100005720(_DWORD *a1)
{
  warn("waitpid");
  v2 = *__error();
  result = sysexit_np();
  if (dword_1000101F8)
  {
    v4 = v2;
  }

  else
  {
    v4 = result;
  }

  *a1 = v4;
  return result;
}

void sub_100005770(const char *a1)
{
  v2 = __error();
  v3 = sub_10000380C(*v2, 0xFFFFFFFF);
  errx(v3, "unknown special file or file system %s.", a1);
}

void sub_1000057A8()
{
  if (dword_1000101F8)
  {
    v0 = 7;
  }

  else
  {
    v0 = 64;
  }

  errc(v0, 7, "too many mount arguments");
}