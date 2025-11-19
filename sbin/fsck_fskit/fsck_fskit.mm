uint64_t sub_100000958(int a1, int a2, uint64_t a3, void *a4)
{
  v165 = 0;
  v166 = &v165;
  v167 = 0x3032000000;
  v168 = sub_100001DC0;
  v169 = sub_100001DD0;
  v170 = 0;
  v159 = 0;
  v160 = &v159;
  v161 = 0x3032000000;
  v162 = sub_100001DC0;
  v163 = sub_100001DD0;
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
  v158[2] = sub_100001DD8;
  v158[3] = &unk_100004290;
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
      v149[2] = sub_100002540;
      v149[3] = &unk_1000042B8;
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
              v27 = sub_100001EE0;
            }

            else
            {
              v26 = v148;
              v148[0] = _NSConcreteStackBlock;
              v148[1] = 3221225472;
              v27 = sub_100001E60;
            }

            v26[2] = v27;
            v26[3] = &unk_1000042E0;
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
            v144 = sub_100001DC0;
            v145 = sub_100001DD0;
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
                v138 = sub_100001DC0;
                v139 = sub_100001DD0;
                v140 = 0;
                v46 = [v166[5] bundleIdentifier];
                v134[0] = _NSConcreteStackBlock;
                v134[1] = 3221225472;
                v134[2] = sub_100001FD4;
                v134[3] = &unk_100004308;
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
              v133[2] = sub_100002054;
              v133[3] = &unk_100004330;
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
            v127[2] = sub_1000020D4;
            v127[3] = &unk_100004358;
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
                v110[2] = sub_1000022C4;
                v110[3] = &unk_100004438;
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
                  v73 = &stru_1000046A0;
                }

                v74 = [v87 mountVolume:v88 fileSystem:v12 displayName:v73 provider:@"com.apple.filesystems.UserFS.FileProvider" domainError:0 on:v38 how:0 options:&stru_1000046A0];
                v75 = v160[5];
                v160[5] = v74;

                v76 = v160[5];
                if (v76)
                {
                  v90 = v38;
                  v135 = 0;
                  v136 = &v135;
                  v137 = 0x3032000000;
                  v138 = sub_100001DC0;
                  v139 = sub_100001DD0;
                  v140 = 0;
                  v77 = [v160[5] localizedDescription];
                  warnx("Final mount step ended with error: %s", [v77 UTF8String]);

                  dispatch_group_enter(v52);
                  v78 = [v142[5] objectAtIndexedSubscript:0];
                  v79 = [v78 volumeID];
                  v80 = objc_opt_new();
                  v106[0] = _NSConcreteStackBlock;
                  v106[1] = 3221225472;
                  v106[2] = sub_100002334;
                  v106[3] = &unk_100004438;
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
                  v104[2] = sub_1000023A4;
                  v104[3] = &unk_100004460;
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
              v125[2] = sub_100002158;
              v125[3] = &unk_1000043C0;
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
            v118[2] = sub_100002198;
            v118[3] = &unk_1000043E8;
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
                block[2] = sub_100002248;
                block[3] = &unk_100004410;
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

void sub_100001CEC(_Unwind_Exception *a1)
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

uint64_t sub_100001DC0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001DD8(uint64_t a1, void *a2, void *a3)
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

void sub_100001E60(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = a2;
  if (([v7 isEqualToString:@"q"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"n"))
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a5 = 1;
  }
}

uint64_t sub_100001EE0(uint64_t a1, void *a2, void *a3)
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

void sub_100001FD4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_100002054(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_1000020D4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v5 = v3;
    sub_1000025E0(v3, a1);
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

Block_layout *sub_100002158(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setProgress:a2];
  [*(a1 + 32) showProgress];
  return &stru_100004398;
}

void sub_100002198(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    sub_100002654(v5, a1);
  }

  else if ((*(a1 + 72) & 0xFFF) != 0)
  {
    v7 = [*(a1 + 40) getProgressURLKey];
    v8 = [NSProgress addSubscriberForFileURL:v7 withPublishingHandler:*(a1 + 48)];
  }
}

void sub_100002248(uint64_t a1)
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

void sub_1000022C4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    sub_1000025E0(v3, a1);
  }

  dispatch_group_leave(*(a1 + 32));
  *(*(*(a1 + 48) + 8) + 24) = 1;
}

void sub_100002334(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
  *(*(*(a1 + 48) + 8) + 24) = 1;
}

void sub_1000023A4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = fskit_std_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_1000026E4(v3, v4);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void start(int a1, uint64_t a2)
{
  if (a1 <= 3)
  {
    fwrite("Usage: fsck_fskit [--progress] -t fstype [Module options] device\n", 0x41uLL, 1uLL, __stderrp);
    fwrite("\t--progress if passed it will display the progress of fsck (optional)\n", 0x46uLL, 1uLL, __stderrp);
    fwrite("\t-t file system type (required) e.g. msdos\n", 0x2BuLL, 1uLL, __stderrp);
    exit(8);
  }

  v4 = strcmp(*(a2 + 8), "--progress");
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  v6 = *(a2 + 8 * v5);
  if (*v6 == 45 && v6[1] == 116)
  {
    v7 = v6[2];
    v8 = v7 != 0;
    v9 = v5 + 1;
    v10 = v5 + 1;
    if (!v7)
    {
LABEL_12:
      v11 = (a2 + 8 * v10);
      if (**v11 != 45)
      {
        if (v4)
        {
          v12 = 0;
        }

        else
        {
          v12 = 4095;
        }

        v13 = sub_100000958(0, v12, a1 - v9, v11);
        exit(v13);
      }

LABEL_17:
      errx(1, "No file system type was provided");
    }
  }

  else
  {
    v9 = v5 + 1;
    v8 = 1;
  }

  v10 = v5;
  if (v8)
  {
    goto LABEL_17;
  }

  goto LABEL_12;
}

void sub_100002540(uint64_t a1, void *a2, void *a3)
{
  *(*(*(a1 + 32) + 8) + 24) = 1;
  v4 = a3;
  v8 = [a2 description];
  v5 = v8;
  v6 = [v8 UTF8String];
  v7 = [v4 UTF8String];

  warnx("Error %s parsing '%s'", v6, v7);
}

void sub_1000025E0(void *a1, uint64_t a2)
{
  v3 = [a1 localizedDescription];
  warnx("Operation ended with error: %s", [v3 UTF8String]);

  v4 = sub_100002410(*(a2 + 40));

  objc_storeStrong(v4, v5);
}

void sub_100002654(void *a1, uint64_t a2)
{
  v3 = [a1 localizedDescription];
  warnx("%s:%d: Operation ended with error: %s", "invoke_tool_from_fskit_block_invoke_10", 358, [v3 UTF8String]);

  v4 = sub_100002410(*(a2 + 56));
  objc_storeStrong(v4, v5);
  dispatch_group_leave(*(a2 + 32));
  *(*(*(a2 + 64) + 8) + 24) = 1;
}

void sub_1000026E4(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "invoke_tool_from_fskit_block_invoke_14";
  v4 = 2112;
  v5 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%s:error:%@", &v2, 0x16u);
}