void start()
{
  v0 = objc_autoreleasePoolPush();
  MainBundle = CFBundleGetMainBundle();
  [(__CFString *)CFBundleGetIdentifier(MainBundle) fileSystemRepresentation];
  if ((_set_user_dir_suffix() & 1) == 0)
  {
    v7 = +[NSAssertionHandler currentHandler];
    v8 = [NSString stringWithUTF8String:"int main(int, const char * _Nonnull *)"];
    [v7 handleFailureInFunction:v8 file:@"main.m" lineNumber:38 description:@"Failed to set the user directory suffix"];
  }

  if (!confstr(65537, 0, 0))
  {
    v9 = +[NSAssertionHandler currentHandler];
    v10 = [NSString stringWithUTF8String:"int main(int, const char * _Nonnull *)"];
    [v9 handleFailureInFunction:v10 file:@"main.m" lineNumber:39 description:@"User temporary directory has no length"];
  }

  v2 = objc_opt_new();
  if (_os_feature_enabled_impl())
  {
    +[_TtC18UsageTrackingAgent15SyncCoordinator startSyncing];
  }

  v3 = [NSXPCListener alloc];
  v4 = [v3 initWithMachServiceName:USMachServiceNameUsageTracking];
  [v4 setDelegate:v2];
  [v4 resume];
  v5 = [NSXPCListener alloc];
  v6 = [v5 initWithMachServiceName:USMachServiceNameUsageTrackingPrivate];
  [v6 setDelegate:v2];
  [v6 resume];
  +[USBudgetTracker startTracking];
  +[_TtC18UsageTrackingAgent23DeviceActivityCollector startCollecting];
  +[USUncategorizedUsageReporter startReporting];
  objc_autoreleasePoolPop(v0);
  dispatch_main();
}

void sub_100002444(id a1)
{
  qword_100091C30 = objc_opt_new();

  _objc_release_x1();
}

void sub_1000027C4(id a1, NSPersistentStoreDescription *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  if (v5 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006391C();
  }
}

void sub_100002ADC()
{
  v0 = __chkstk_darwin();
  v1 = +[USRegisteredBudget fetchRequest];
  [v1 setReturnsObjectsAsFaults:0];
  v350[0] = @"schedule";
  v350[1] = @"budgetedCategories";
  v350[2] = @"budgetedApplications";
  v350[3] = @"exemptApplications";
  v350[4] = @"budgetedWebDomains";
  v350[5] = @"notificationTimes";
  v2 = [NSArray arrayWithObjects:v350 count:6];
  v231 = v1;
  [v1 setRelationshipKeyPathsForPrefetching:v2];

  v243 = v0;
  v239 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(*(v0 + 32), "count")}];
  v271 = 0u;
  v272 = 0u;
  v273 = 0u;
  v274 = 0u;
  v229 = (v0 + 32);
  obj = *(v0 + 32);
  v3 = [obj countByEnumeratingWithState:&v271 objects:v349 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v272;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v272 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(v0 + 40);
        v228 = [*(*(&v271 + 1) + 8 * i) identifier];
        v227 = @"clientIdentifier";
        v8 = [NSPredicate predicateWithFormat:@"(%K == %@) && (%K == %@)"];
        [v239 addObject:v8];
      }

      v4 = [obj countByEnumeratingWithState:&v271 objects:v349 count:16];
    }

    while (v4);
  }

  v9 = [[NSCompoundPredicate alloc] initWithType:2 subpredicates:v239];
  [v231 setPredicate:v9];

  v270 = 0;
  v10 = [v231 execute:&v270];
  v230 = v270;
  v236 = v10;
  if (v10)
  {
    v268 = 0u;
    v269 = 0u;
    v266 = 0u;
    v267 = 0u;
    v232 = *v229;
    v11 = v0;
    v237 = [v232 countByEnumeratingWithState:&v266 objects:v348 count:16];
    if (v237)
    {
      v235 = *v267;
      do
      {
        v12 = 0;
        do
        {
          if (*v267 != v235)
          {
            objc_enumerationMutation(v232);
          }

          v240 = v12;
          v13 = *(*(&v266 + 1) + 8 * v12);
          v14 = [v13 identifier];
          v262 = 0u;
          v263 = 0u;
          v264 = 0u;
          v265 = 0u;
          v15 = v236;
          v16 = [v15 countByEnumeratingWithState:&v262 objects:v347 count:16];
          v242 = v14;
          if (!v16)
          {
LABEL_25:

LABEL_39:
            v42 = v243[5];
            v43 = v243[6];
            v44 = v243[7];
            v45 = v243[8];
            v46 = v13;
            v47 = v42;
            objb = v43;
            v48 = v44;
            v49 = v45;
            v50 = [[USRegisteredBudget alloc] initWithContext:v49];
            v51 = [v46 identifier];
            [(USRegisteredBudget *)v50 setIdentifier:v51];

            v255 = v47;
            [(USRegisteredBudget *)v50 setClientIdentifier:v47];
            v52 = [v46 calendarIdentifier];
            [(USRegisteredBudget *)v50 setCalendarIdentifier:v52];

            v53 = [v46 schedule];
            v357[0] = _NSConcreteStackBlock;
            v357[1] = 3221225472;
            v357[2] = sub_10000E4AC;
            v357[3] = &unk_100086110;
            v54 = v49;
            v358 = v54;
            v55 = v50;
            v359 = v55;
            [v53 enumerateKeysAndObjectsUsingBlock:v357];

            v379 = 0u;
            v378 = 0u;
            v377 = 0u;
            v376 = 0u;
            v56 = [v46 categoryIdentifiers];
            v57 = [v56 countByEnumeratingWithState:&v376 objects:v384 count:16];
            if (v57)
            {
              v58 = v57;
              v59 = *v377;
              do
              {
                for (j = 0; j != v58; j = j + 1)
                {
                  if (*v377 != v59)
                  {
                    objc_enumerationMutation(v56);
                  }

                  v61 = *(*(&v376 + 1) + 8 * j);
                  v62 = [[USBudgetedCategory alloc] initWithContext:v54];
                  [(USBudgetedCategory *)v62 setCategoryIdentifier:v61];
                  [(USRegisteredBudget *)v55 addBudgetedCategoriesObject:v62];
                }

                v58 = [v56 countByEnumeratingWithState:&v376 objects:v384 count:16];
              }

              while (v58);
            }

            v375 = 0u;
            v374 = 0u;
            v373 = 0u;
            v372 = 0u;
            v63 = [v46 bundleIdentifiers];
            v64 = [v63 countByEnumeratingWithState:&v372 objects:v383 count:16];
            if (v64)
            {
              v65 = v64;
              v66 = *v373;
              do
              {
                for (k = 0; k != v65; k = k + 1)
                {
                  if (*v373 != v66)
                  {
                    objc_enumerationMutation(v63);
                  }

                  v68 = *(*(&v372 + 1) + 8 * k);
                  v69 = [[USBudgetedApplication alloc] initWithContext:v54];
                  [(USBudgetedApplication *)v69 setBundleIdentifier:v68];
                  [(USRegisteredBudget *)v55 addBudgetedApplicationsObject:v69];
                }

                v65 = [v63 countByEnumeratingWithState:&v372 objects:v383 count:16];
              }

              while (v65);
            }

            v371 = 0u;
            v370 = 0u;
            v369 = 0u;
            v368 = 0u;
            v70 = [v46 webDomains];
            v71 = [v70 countByEnumeratingWithState:&v368 objects:v382 count:16];
            if (v71)
            {
              v72 = v71;
              v73 = *v369;
              do
              {
                for (m = 0; m != v72; m = m + 1)
                {
                  if (*v369 != v73)
                  {
                    objc_enumerationMutation(v70);
                  }

                  v75 = *(*(&v368 + 1) + 8 * m);
                  v76 = [[USBudgetedWebDomain alloc] initWithContext:v54];
                  [(USBudgetedWebDomain *)v76 setWebDomain:v75];
                  [(USRegisteredBudget *)v55 addBudgetedWebDomainsObject:v76];
                }

                v72 = [v70 countByEnumeratingWithState:&v368 objects:v382 count:16];
              }

              while (v72);
            }

            v367 = 0u;
            v366 = 0u;
            v365 = 0u;
            v364 = 0u;
            v77 = [v46 exemptBundleIdentifiers];
            v78 = [v77 countByEnumeratingWithState:&v364 objects:v381 count:16];
            if (v78)
            {
              v79 = v78;
              v80 = *v365;
              do
              {
                for (n = 0; n != v79; n = n + 1)
                {
                  if (*v365 != v80)
                  {
                    objc_enumerationMutation(v77);
                  }

                  v82 = *(*(&v364 + 1) + 8 * n);
                  v83 = [[USExemptApplication alloc] initWithContext:v54];
                  [(USExemptApplication *)v83 setBundleIdentifier:v82];
                  [(USRegisteredBudget *)v55 addExemptApplicationsObject:v83];
                }

                v79 = [v77 countByEnumeratingWithState:&v364 objects:v381 count:16];
              }

              while (v79);
            }

            [(USRegisteredBudget *)v55 setDarwinNotificationName:objb];
            v363 = 0u;
            v362 = 0u;
            v361 = 0u;
            v360 = 0u;
            v84 = v48;
            v85 = [v84 countByEnumeratingWithState:&v360 objects:v380 count:16];
            if (v85)
            {
              v86 = v85;
              v87 = *v361;
              v88 = 1;
              do
              {
                for (ii = 0; ii != v86; ii = ii + 1)
                {
                  if (*v361 != v87)
                  {
                    objc_enumerationMutation(v84);
                  }

                  v90 = *(*(&v360 + 1) + 8 * ii);
                  v91 = [[USNotificationTime alloc] initWithContext:v54];
                  [v90 doubleValue];
                  v93 = v92;
                  [(USNotificationTime *)v91 setRemainingTime:?];
                  v88 &= v93 != 0.0;
                  [(USRegisteredBudget *)v55 addNotificationTimesObject:v91];
                }

                v86 = [v84 countByEnumeratingWithState:&v360 objects:v380 count:16];
              }

              while (v86);

              if ((v88 & 1) == 0)
              {
                goto LABEL_78;
              }
            }

            else
            {
            }

            v94 = [[USNotificationTime alloc] initWithContext:v54];
            [(USNotificationTime *)v94 setRemainingTime:0.0];
            [(USRegisteredBudget *)v55 addNotificationTimesObject:v94];

LABEL_78:
            v11 = v243;
            goto LABEL_225;
          }

          v17 = v16;
          v18 = *v263;
LABEL_16:
          v19 = 0;
          while (1)
          {
            if (*v263 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v262 + 1) + 8 * v19);
            v21 = [v20 identifier];
            if (([v21 isEqualToString:v14] & 1) == 0)
            {

              goto LABEL_23;
            }

            v22 = [v20 clientIdentifier];
            v23 = [v22 isEqualToString:v243[5]];

            v14 = v242;
            if (v23)
            {
              break;
            }

LABEL_23:
            if (v17 == ++v19)
            {
              v17 = [v15 countByEnumeratingWithState:&v262 objects:v347 count:16];
              if (v17)
              {
                goto LABEL_16;
              }

              goto LABEL_25;
            }
          }

          v24 = v20;

          if (!v24)
          {
            goto LABEL_39;
          }

          v25 = v243[5];
          v26 = v243[6];
          v27 = v243[7];
          v28 = v243[8];
          v29 = v24;
          v30 = v13;
          v234 = v25;
          v238 = v26;
          v248 = v27;
          v31 = v28;
          v32 = [v30 calendarIdentifier];
          [v29 setCalendarIdentifier:v32];

          v241 = v30;
          v249 = [v30 schedule];
          v33 = [v29 schedule];
          v343 = 0u;
          v344 = 0u;
          v345 = 0u;
          v346 = 0u;
          v34 = v33;
          v35 = [v34 countByEnumeratingWithState:&v343 objects:v384 count:16];
          if (v35)
          {
            v36 = v35;
            obja = 0;
            v37 = *v344;
            do
            {
              for (jj = 0; jj != v36; jj = jj + 1)
              {
                if (*v344 != v37)
                {
                  objc_enumerationMutation(v34);
                }

                v39 = *(*(&v343 + 1) + 8 * jj);
                v40 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v39 weekday]);
                v41 = [v249 objectForKeyedSubscript:v40];

                if (!v41)
                {
                  if (obja)
                  {
                    [obja addObject:v39];
                  }

                  else
                  {
                    v227 = 0;
                    obja = [[NSMutableArray alloc] initWithObjects:v39];
                  }
                }
              }

              v36 = [v34 countByEnumeratingWithState:&v343 objects:v384 count:16];
            }

            while (v36);
          }

          else
          {
            obja = 0;
          }

          v339[0] = _NSConcreteStackBlock;
          v339[1] = 3221225472;
          v339[2] = sub_10000E56C;
          v339[3] = &unk_100086138;
          v233 = v34;
          v340 = v233;
          v256 = v31;
          v341 = v256;
          v95 = v29;
          v342 = v95;
          [v249 enumerateKeysAndObjectsUsingBlock:v339];
          v96 = [v241 categoryIdentifiers];
          v254 = v95;
          v97 = [v95 budgetedCategories];
          v335 = 0u;
          v336 = 0u;
          v337 = 0u;
          v338 = 0u;
          v253 = v97;
          v98 = [v253 countByEnumeratingWithState:&v335 objects:v383 count:16];
          if (v98)
          {
            v99 = v98;
            v100 = *v336;
            do
            {
              for (kk = 0; kk != v99; kk = kk + 1)
              {
                if (*v336 != v100)
                {
                  objc_enumerationMutation(v253);
                }

                v102 = *(*(&v335 + 1) + 8 * kk);
                v103 = [v102 categoryIdentifier];
                v104 = [v96 containsObject:v103];

                if ((v104 & 1) == 0)
                {
                  if (obja)
                  {
                    [obja addObject:v102];
                  }

                  else
                  {
                    v227 = 0;
                    obja = [[NSMutableArray alloc] initWithObjects:v102];
                  }
                }
              }

              v99 = [v253 countByEnumeratingWithState:&v335 objects:v383 count:16];
            }

            while (v99);
          }

          v334 = 0u;
          v333 = 0u;
          v332 = 0u;
          v331 = 0u;
          v247 = v96;
          v105 = [v247 countByEnumeratingWithState:&v331 objects:v382 count:16];
          if (v105)
          {
            v106 = v105;
            v107 = *v332;
            do
            {
              for (mm = 0; mm != v106; mm = mm + 1)
              {
                if (*v332 != v107)
                {
                  objc_enumerationMutation(v247);
                }

                v109 = *(*(&v331 + 1) + 8 * mm);
                v327 = 0u;
                v328 = 0u;
                v329 = 0u;
                v330 = 0u;
                v110 = v253;
                v111 = [(USBudgetedCategory *)v110 countByEnumeratingWithState:&v327 objects:v381 count:16];
                if (v111)
                {
                  v112 = v111;
                  v113 = *v328;
LABEL_98:
                  v114 = 0;
                  while (1)
                  {
                    if (*v328 != v113)
                    {
                      objc_enumerationMutation(v110);
                    }

                    v115 = [*(*(&v327 + 1) + 8 * v114) categoryIdentifier];
                    v116 = [v115 isEqualToString:v109];

                    if (v116)
                    {
                      break;
                    }

                    if (v112 == ++v114)
                    {
                      v112 = [(USBudgetedCategory *)v110 countByEnumeratingWithState:&v327 objects:v381 count:16];
                      if (v112)
                      {
                        goto LABEL_98;
                      }

                      goto LABEL_104;
                    }
                  }
                }

                else
                {
LABEL_104:

                  v110 = [[USBudgetedCategory alloc] initWithContext:v256];
                  [(USBudgetedCategory *)v110 setCategoryIdentifier:v109];
                  [v254 addBudgetedCategoriesObject:v110];
                }
              }

              v106 = [v247 countByEnumeratingWithState:&v331 objects:v382 count:16];
            }

            while (v106);
          }

          v117 = [v241 bundleIdentifiers];
          v118 = [v254 budgetedApplications];
          v323 = 0u;
          v324 = 0u;
          v325 = 0u;
          v326 = 0u;
          v252 = v118;
          v119 = [v252 countByEnumeratingWithState:&v323 objects:v380 count:16];
          if (v119)
          {
            v120 = v119;
            v121 = *v324;
            do
            {
              for (nn = 0; nn != v120; nn = nn + 1)
              {
                if (*v324 != v121)
                {
                  objc_enumerationMutation(v252);
                }

                v123 = *(*(&v323 + 1) + 8 * nn);
                v124 = [v123 bundleIdentifier];
                v125 = [v117 containsObject:v124];

                if ((v125 & 1) == 0)
                {
                  if (obja)
                  {
                    [obja addObject:v123];
                  }

                  else
                  {
                    v227 = 0;
                    obja = [[NSMutableArray alloc] initWithObjects:v123];
                  }
                }
              }

              v120 = [v252 countByEnumeratingWithState:&v323 objects:v380 count:16];
            }

            while (v120);
          }

          v322 = 0u;
          v321 = 0u;
          v320 = 0u;
          v319 = 0u;
          v246 = v117;
          v126 = [v246 countByEnumeratingWithState:&v319 objects:&v376 count:16];
          if (v126)
          {
            v127 = v126;
            v128 = *v320;
            do
            {
              for (i1 = 0; i1 != v127; i1 = i1 + 1)
              {
                if (*v320 != v128)
                {
                  objc_enumerationMutation(v246);
                }

                v130 = *(*(&v319 + 1) + 8 * i1);
                v315 = 0u;
                v316 = 0u;
                v317 = 0u;
                v318 = 0u;
                v131 = v252;
                v132 = [(USBudgetedApplication *)v131 countByEnumeratingWithState:&v315 objects:&v372 count:16];
                if (v132)
                {
                  v133 = v132;
                  v134 = *v316;
LABEL_125:
                  v135 = 0;
                  while (1)
                  {
                    if (*v316 != v134)
                    {
                      objc_enumerationMutation(v131);
                    }

                    v136 = [*(*(&v315 + 1) + 8 * v135) bundleIdentifier];
                    v137 = [v136 isEqualToString:v130];

                    if (v137)
                    {
                      break;
                    }

                    if (v133 == ++v135)
                    {
                      v133 = [(USBudgetedApplication *)v131 countByEnumeratingWithState:&v315 objects:&v372 count:16];
                      if (v133)
                      {
                        goto LABEL_125;
                      }

                      goto LABEL_131;
                    }
                  }
                }

                else
                {
LABEL_131:

                  v131 = [[USBudgetedApplication alloc] initWithContext:v256];
                  [(USBudgetedApplication *)v131 setBundleIdentifier:v130];
                  [v254 addBudgetedApplicationsObject:v131];
                }
              }

              v127 = [v246 countByEnumeratingWithState:&v319 objects:&v376 count:16];
            }

            while (v127);
          }

          v138 = [v241 webDomains];
          v139 = [v254 budgetedWebDomains];
          v311 = 0u;
          v312 = 0u;
          v313 = 0u;
          v314 = 0u;
          v251 = v139;
          v140 = [v251 countByEnumeratingWithState:&v311 objects:&v368 count:16];
          if (v140)
          {
            v141 = v140;
            v142 = *v312;
            do
            {
              for (i2 = 0; i2 != v141; i2 = i2 + 1)
              {
                if (*v312 != v142)
                {
                  objc_enumerationMutation(v251);
                }

                v144 = *(*(&v311 + 1) + 8 * i2);
                v145 = [v144 webDomain];
                v146 = [v138 containsObject:v145];

                if ((v146 & 1) == 0)
                {
                  if (obja)
                  {
                    [obja addObject:v144];
                  }

                  else
                  {
                    v227 = 0;
                    obja = [[NSMutableArray alloc] initWithObjects:v144];
                  }
                }
              }

              v141 = [v251 countByEnumeratingWithState:&v311 objects:&v368 count:16];
            }

            while (v141);
          }

          v310 = 0u;
          v309 = 0u;
          v308 = 0u;
          v307 = 0u;
          v245 = v138;
          v147 = [v245 countByEnumeratingWithState:&v307 objects:&v364 count:16];
          if (v147)
          {
            v148 = v147;
            v149 = *v308;
            do
            {
              for (i3 = 0; i3 != v148; i3 = i3 + 1)
              {
                if (*v308 != v149)
                {
                  objc_enumerationMutation(v245);
                }

                v151 = *(*(&v307 + 1) + 8 * i3);
                v303 = 0u;
                v304 = 0u;
                v305 = 0u;
                v306 = 0u;
                v152 = v251;
                v153 = [(USBudgetedWebDomain *)v152 countByEnumeratingWithState:&v303 objects:&v360 count:16];
                if (v153)
                {
                  v154 = v153;
                  v155 = *v304;
LABEL_152:
                  v156 = 0;
                  while (1)
                  {
                    if (*v304 != v155)
                    {
                      objc_enumerationMutation(v152);
                    }

                    v157 = [*(*(&v303 + 1) + 8 * v156) webDomain];
                    v158 = [v157 isEqualToString:v151];

                    if (v158)
                    {
                      break;
                    }

                    if (v154 == ++v156)
                    {
                      v154 = [(USBudgetedWebDomain *)v152 countByEnumeratingWithState:&v303 objects:&v360 count:16];
                      if (v154)
                      {
                        goto LABEL_152;
                      }

                      goto LABEL_158;
                    }
                  }
                }

                else
                {
LABEL_158:

                  v152 = [[USBudgetedWebDomain alloc] initWithContext:v256];
                  [(USBudgetedWebDomain *)v152 setWebDomain:v151];
                  [v254 addBudgetedWebDomainsObject:v152];
                }
              }

              v148 = [v245 countByEnumeratingWithState:&v307 objects:&v364 count:16];
            }

            while (v148);
          }

          v159 = [v241 exemptBundleIdentifiers];
          v160 = [v254 exemptApplications];
          v299 = 0u;
          v300 = 0u;
          v301 = 0u;
          v302 = 0u;
          v250 = v160;
          v161 = [v250 countByEnumeratingWithState:&v299 objects:v357 count:16];
          if (v161)
          {
            v162 = v161;
            v163 = *v300;
            do
            {
              for (i4 = 0; i4 != v162; i4 = i4 + 1)
              {
                if (*v300 != v163)
                {
                  objc_enumerationMutation(v250);
                }

                v165 = *(*(&v299 + 1) + 8 * i4);
                v166 = [v165 bundleIdentifier];
                v167 = [v159 containsObject:v166];

                if ((v167 & 1) == 0)
                {
                  if (obja)
                  {
                    [obja addObject:v165];
                  }

                  else
                  {
                    v227 = 0;
                    obja = [[NSMutableArray alloc] initWithObjects:v165];
                  }
                }
              }

              v162 = [v250 countByEnumeratingWithState:&v299 objects:v357 count:16];
            }

            while (v162);
          }

          v297 = 0u;
          v298 = 0u;
          v295 = 0u;
          v296 = 0u;
          v244 = v159;
          v168 = [v244 countByEnumeratingWithState:&v295 objects:v356 count:16];
          if (v168)
          {
            v169 = v168;
            v170 = *v296;
            do
            {
              for (i5 = 0; i5 != v169; i5 = i5 + 1)
              {
                if (*v296 != v170)
                {
                  objc_enumerationMutation(v244);
                }

                v172 = *(*(&v295 + 1) + 8 * i5);
                v291 = 0u;
                v292 = 0u;
                v293 = 0u;
                v294 = 0u;
                v173 = v250;
                v174 = [(USExemptApplication *)v173 countByEnumeratingWithState:&v291 objects:v355 count:16];
                if (v174)
                {
                  v175 = v174;
                  v176 = *v292;
LABEL_179:
                  v177 = 0;
                  while (1)
                  {
                    if (*v292 != v176)
                    {
                      objc_enumerationMutation(v173);
                    }

                    v178 = [*(*(&v291 + 1) + 8 * v177) bundleIdentifier];
                    v179 = [v178 isEqualToString:v172];

                    if (v179)
                    {
                      break;
                    }

                    if (v175 == ++v177)
                    {
                      v175 = [(USExemptApplication *)v173 countByEnumeratingWithState:&v291 objects:v355 count:16];
                      if (v175)
                      {
                        goto LABEL_179;
                      }

                      goto LABEL_185;
                    }
                  }
                }

                else
                {
LABEL_185:

                  v173 = [[USExemptApplication alloc] initWithContext:v256];
                  [(USExemptApplication *)v173 setBundleIdentifier:v172];
                  [v254 addExemptApplicationsObject:v173];
                }
              }

              v169 = [v244 countByEnumeratingWithState:&v295 objects:v356 count:16];
            }

            while (v169);
          }

          [v254 setDarwinNotificationName:v238];
          v180 = [v254 notificationTimes];
          v287 = 0u;
          v288 = 0u;
          v289 = 0u;
          v290 = 0u;
          v181 = v180;
          v182 = [v181 countByEnumeratingWithState:&v287 objects:v354 count:16];
          if (v182)
          {
            v183 = v182;
            v184 = *v288;
            do
            {
              for (i6 = 0; i6 != v183; i6 = i6 + 1)
              {
                if (*v288 != v184)
                {
                  objc_enumerationMutation(v181);
                }

                v186 = *(*(&v287 + 1) + 8 * i6);
                [v186 remainingTime];
                if (v187 == 0.0 || (+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:"), v188 = objc_claimAutoreleasedReturnValue(), v189 = [v248 containsObject:v188], v188, v189))
                {
                  [v186 setNotificationWasPosted:0];
                }

                else if (obja)
                {
                  [obja addObject:v186];
                }

                else
                {
                  v227 = 0;
                  obja = [[NSMutableArray alloc] initWithObjects:v186];
                }
              }

              v183 = [v181 countByEnumeratingWithState:&v287 objects:v354 count:16];
            }

            while (v183);
          }

          v285 = 0u;
          v286 = 0u;
          v283 = 0u;
          v284 = 0u;
          v190 = v248;
          v191 = [v190 countByEnumeratingWithState:&v283 objects:v353 count:16];
          v11 = v243;
          if (v191)
          {
            v192 = v191;
            v193 = *v284;
            do
            {
              for (i7 = 0; i7 != v192; i7 = i7 + 1)
              {
                if (*v284 != v193)
                {
                  objc_enumerationMutation(v190);
                }

                [*(*(&v283 + 1) + 8 * i7) doubleValue];
                v196 = v195;
                v279 = 0u;
                v280 = 0u;
                v281 = 0u;
                v282 = 0u;
                v197 = v181;
                v198 = [(USNotificationTime *)v197 countByEnumeratingWithState:&v279 objects:v352 count:16];
                if (v198)
                {
                  v199 = v198;
                  v200 = *v280;
LABEL_208:
                  v201 = 0;
                  while (1)
                  {
                    if (*v280 != v200)
                    {
                      objc_enumerationMutation(v197);
                    }

                    [*(*(&v279 + 1) + 8 * v201) remainingTime];
                    if (v202 == v196)
                    {
                      break;
                    }

                    if (v199 == ++v201)
                    {
                      v199 = [(USNotificationTime *)v197 countByEnumeratingWithState:&v279 objects:v352 count:16];
                      if (v199)
                      {
                        goto LABEL_208;
                      }

                      goto LABEL_214;
                    }
                  }
                }

                else
                {
LABEL_214:

                  v197 = [[USNotificationTime alloc] initWithContext:v256];
                  [(USNotificationTime *)v197 setRemainingTime:v196];
                  [v254 addNotificationTimesObject:v197];
                }
              }

              v192 = [v190 countByEnumeratingWithState:&v283 objects:v353 count:16];
            }

            while (v192);
          }

          v277 = 0u;
          v278 = 0u;
          v275 = 0u;
          v276 = 0u;
          v203 = obja;
          v204 = [v203 countByEnumeratingWithState:&v275 objects:v351 count:16];
          if (v204)
          {
            v205 = v204;
            v206 = *v276;
            do
            {
              for (i8 = 0; i8 != v205; i8 = i8 + 1)
              {
                if (*v276 != v206)
                {
                  objc_enumerationMutation(v203);
                }

                [v256 deleteObject:*(*(&v275 + 1) + 8 * i8)];
              }

              v205 = [v203 countByEnumeratingWithState:&v275 objects:v351 count:16];
            }

            while (v205);
          }

          [v254 setTimeRemainingBeforeUsageDeletion:0.0];
          [v254 setDeletedTime:0.0];

LABEL_225:
          v12 = v240 + 1;
        }

        while ((v240 + 1) != v237);
        v237 = [v232 countByEnumeratingWithState:&v266 objects:v348 count:16];
      }

      while (v237);
    }

    v208 = v11[8];
    v261 = v230;
    v209 = [v208 save:&v261];
    v210 = v261;

    if (v209)
    {
      (*(v11[10] + 16))();
      v211 = [v11[9] notificationPostingQueue];
      v260[0] = _NSConcreteStackBlock;
      v260[1] = 3221225472;
      v260[2] = sub_1000045E8;
      v260[3] = &unk_100085D00;
      v260[4] = v11[9];
      [v211 addOperationWithBlock:v260];
    }

    else
    {
      v219 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100063998(v229);
      }

      v220 = v11[10];
      v226 = sub_100004648(100, @"PersistBudgetError", @"SeeSystemLog", v221, v222, v223, v224, v225, v227);
      (*(v220 + 16))(v220, v226);
    }
  }

  else
  {
    v11 = v0;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100063A14(v0, v229);
    }

    v217 = *(v0 + 80);
    v218 = sub_100004648(101, @"FetchBudgetError", @"SeeSystemLog", v212, v213, v214, v215, v216, v227);
    (*(v217 + 16))(v217, v218);

    v210 = v230;
  }

  [v11[8] reset];
}

void sub_1000045E8(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"RegisteredBudgetsDidChange" object:*(a1 + 32)];
}

id sub_100004648(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = a3;
  v12 = a2;
  v13 = +[USUsageTrackingBundle usageTrackingBundle];
  v14 = [NSString alloc];
  v15 = [v13 localizedStringForKey:v12 value:&stru_100088840 table:0];

  v16 = +[NSLocale currentLocale];
  v17 = [v14 initWithFormat:v15 locale:v16 arguments:&a9];

  if (v11)
  {
    v18 = [v13 localizedStringForKey:v11 value:&stru_100088840 table:0];
    v25[0] = NSLocalizedDescriptionKey;
    v25[1] = NSLocalizedRecoverySuggestionErrorKey;
    v26[0] = v17;
    v26[1] = v18;
    v19 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];
  }

  else
  {
    v23 = NSLocalizedDescriptionKey;
    v24 = v17;
    v19 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  }

  v20 = [NSError alloc];
  v21 = [v20 initWithDomain:USErrorDomain code:a1 userInfo:v19];

  return v21;
}

void sub_100004D88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose((v27 - 144), 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100004DC0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100004DD8(uint64_t a1)
{
  v289 = @"events";
  v2 = [NSArray arrayWithObjects:&v289 count:1];
  v3 = +[USDeviceActivityBudget fetchRequest];
  [v3 setReturnsObjectsAsFaults:0];
  if (v2)
  {
    [v3 setRelationshipKeyPathsForPrefetching:v2];
  }

  v4 = v3;

  v185 = @"clientIdentifier";
  v186 = *(a1 + 32);
  v5 = [NSPredicate predicateWithFormat:@"%K == %@"];
  [v4 setPredicate:v5];

  v194 = a1 + 80;
  v6 = *(*(a1 + 80) + 8);
  obj = *(v6 + 40);
  [v4 execute:&obj];
  v8 = v7 = a1;
  objc_storeStrong((v6 + 40), obj);
  v195 = v7;
  if (v8)
  {
    v223[0] = _NSConcreteStackBlock;
    v223[1] = 3221225472;
    v223[2] = sub_1000063D4;
    v223[3] = &unk_100085D50;
    v192 = (v7 + 40);
    v224 = *(v7 + 40);
    v9 = [v8 indexOfObjectPassingTest:v223];
    v191 = v4;
    v193 = v8;
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = 0;
    }

    else
    {
      v10 = [v8 objectAtIndex:v9];
    }

    v19 = [v10 name];
    v20 = [v19 isEqualToString:*v192];

    if (v20)
    {
      v21 = [v10 events];
      v187 = [v21 count];

      v22 = *(v7 + 48);
      v23 = *(v7 + 56);
      v24 = *(v7 + 64);
      v25 = *(v7 + 72);
      v26 = v10;
      v27 = v24;
      v28 = v22;
      v199 = v23;
      v215 = v25;
      v190 = v27;
      [v26 setExtensionIdentifier:v27];
      v29 = [v28 intervalStart];
      [v26 setIntervalStart:v29];

      v30 = [v28 intervalEnd];
      [v26 setIntervalEnd:v30];

      [v26 setRepeats:{objc_msgSend(v28, "repeats")}];
      v189 = v28;
      v31 = [v28 warningTime];
      [v26 setWarningTime:v31];

      v284 = 0u;
      v285 = 0u;
      v282 = 0u;
      v283 = 0u;
      v188 = v26;
      v196 = [v26 events];
      v200 = [v196 countByEnumeratingWithState:&v282 objects:&buf count:16];
      if (v200)
      {
        v217 = 0;
        v197 = 0;
        v198 = *v283;
        do
        {
          v32 = 0;
          do
          {
            if (*v283 != v198)
            {
              objc_enumerationMutation(v196);
            }

            v216 = *(*(&v282 + 1) + 8 * v32);
            v33 = [v216 name];
            v203 = [v199 objectForKeyedSubscript:v33];
            if (v203)
            {
              if (v197)
              {
                [v197 addObject:v33];
              }

              else
              {
                v185 = 0;
                v197 = [[NSMutableSet alloc] initWithObjects:v33];
              }

              v34 = [v203 threshold];
              [v216 setThreshold:v34];

              [v216 setIncludesPastActivity:{objc_msgSend(v203, "includesPastActivity")}];
              if ([v203 isUntokenized])
              {
                [v216 setIsUntokenized:1];
                v211 = [v203 bundleIdentifiers];
                v209 = [v203 exemptBundleIdentifiers];
                v35 = [v203 categoryIdentifiers];
                v204 = [v203 webDomains];
              }

              else
              {
                [v216 setIsUntokenized:0];
                v36 = objc_opt_new();
                v37 = [v203 applicationTokens];
                v211 = [v36 decodeApplications:v37];

                v38 = [v203 exemptApplicationTokens];
                v209 = [v36 decodeApplications:v38];

                v39 = [v203 categoryTokens];
                v35 = [v36 decodeCategories:v39];

                v40 = [v203 webDomainTokens];
                v204 = [v36 decodeWebDomains:v40];
              }

              v201 = v33;
              v202 = v32;
              v41 = [v216 budgetedCategories];
              v278 = 0u;
              v279 = 0u;
              v280 = 0u;
              v281 = 0u;
              v214 = v41;
              v42 = [v214 countByEnumeratingWithState:&v278 objects:v302 count:16];
              if (v42)
              {
                v43 = v42;
                v44 = *v279;
                do
                {
                  for (i = 0; i != v43; i = i + 1)
                  {
                    if (*v279 != v44)
                    {
                      objc_enumerationMutation(v214);
                    }

                    v46 = *(*(&v278 + 1) + 8 * i);
                    v47 = [v46 categoryIdentifier];
                    v48 = [v35 containsObject:v47];

                    if ((v48 & 1) == 0)
                    {
                      if (v217)
                      {
                        [v217 addObject:v46];
                      }

                      else
                      {
                        v185 = 0;
                        v217 = [[NSMutableArray alloc] initWithObjects:v46];
                      }
                    }
                  }

                  v43 = [v214 countByEnumeratingWithState:&v278 objects:v302 count:16];
                }

                while (v43);
              }

              v276 = 0u;
              v277 = 0u;
              v274 = 0u;
              v275 = 0u;
              v208 = v35;
              v49 = [v208 countByEnumeratingWithState:&v274 objects:v301 count:16];
              if (v49)
              {
                v50 = v49;
                v51 = *v275;
                do
                {
                  for (j = 0; j != v50; j = j + 1)
                  {
                    if (*v275 != v51)
                    {
                      objc_enumerationMutation(v208);
                    }

                    v53 = *(*(&v274 + 1) + 8 * j);
                    v270 = 0u;
                    v271 = 0u;
                    v272 = 0u;
                    v273 = 0u;
                    v54 = v214;
                    v55 = [(USBudgetedCategory *)v54 countByEnumeratingWithState:&v270 objects:v300 count:16];
                    if (v55)
                    {
                      v56 = v55;
                      v57 = *v271;
LABEL_43:
                      v58 = 0;
                      while (1)
                      {
                        if (*v271 != v57)
                        {
                          objc_enumerationMutation(v54);
                        }

                        v59 = [*(*(&v270 + 1) + 8 * v58) categoryIdentifier];
                        v60 = [v59 isEqualToString:v53];

                        if (v60)
                        {
                          break;
                        }

                        if (v56 == ++v58)
                        {
                          v56 = [(USBudgetedCategory *)v54 countByEnumeratingWithState:&v270 objects:v300 count:16];
                          if (v56)
                          {
                            goto LABEL_43;
                          }

                          goto LABEL_49;
                        }
                      }
                    }

                    else
                    {
LABEL_49:

                      v54 = [[USBudgetedCategory alloc] initWithContext:v215];
                      [(USBudgetedCategory *)v54 setCategoryIdentifier:v53];
                      [v216 addBudgetedCategoriesObject:v54];
                    }
                  }

                  v50 = [v208 countByEnumeratingWithState:&v274 objects:v301 count:16];
                }

                while (v50);
              }

              v61 = [v216 budgetedApplications];
              v266 = 0u;
              v267 = 0u;
              v268 = 0u;
              v269 = 0u;
              v213 = v61;
              v62 = [v213 countByEnumeratingWithState:&v266 objects:v299 count:16];
              if (v62)
              {
                v63 = v62;
                v64 = *v267;
                v65 = v211;
                do
                {
                  for (k = 0; k != v63; k = k + 1)
                  {
                    if (*v267 != v64)
                    {
                      objc_enumerationMutation(v213);
                    }

                    v67 = *(*(&v266 + 1) + 8 * k);
                    v68 = [v67 bundleIdentifier];
                    v69 = [v211 containsObject:v68];

                    if ((v69 & 1) == 0)
                    {
                      if (v217)
                      {
                        [v217 addObject:v67];
                      }

                      else
                      {
                        v185 = 0;
                        v217 = [[NSMutableArray alloc] initWithObjects:v67];
                      }
                    }
                  }

                  v63 = [v213 countByEnumeratingWithState:&v266 objects:v299 count:16];
                }

                while (v63);
              }

              else
              {
                v65 = v211;
              }

              v264 = 0u;
              v265 = 0u;
              v262 = 0u;
              v263 = 0u;
              v207 = v65;
              v70 = [v207 countByEnumeratingWithState:&v262 objects:v298 count:16];
              if (v70)
              {
                v71 = v70;
                v72 = *v263;
                do
                {
                  for (m = 0; m != v71; m = m + 1)
                  {
                    if (*v263 != v72)
                    {
                      objc_enumerationMutation(v207);
                    }

                    v74 = *(*(&v262 + 1) + 8 * m);
                    v258 = 0u;
                    v259 = 0u;
                    v260 = 0u;
                    v261 = 0u;
                    v75 = v213;
                    v76 = [(USBudgetedApplication *)v75 countByEnumeratingWithState:&v258 objects:v297 count:16];
                    if (v76)
                    {
                      v77 = v76;
                      v78 = *v259;
LABEL_72:
                      v79 = 0;
                      while (1)
                      {
                        if (*v259 != v78)
                        {
                          objc_enumerationMutation(v75);
                        }

                        v80 = [*(*(&v258 + 1) + 8 * v79) bundleIdentifier];
                        v81 = [v80 isEqualToString:v74];

                        if (v81)
                        {
                          break;
                        }

                        if (v77 == ++v79)
                        {
                          v77 = [(USBudgetedApplication *)v75 countByEnumeratingWithState:&v258 objects:v297 count:16];
                          if (v77)
                          {
                            goto LABEL_72;
                          }

                          goto LABEL_78;
                        }
                      }
                    }

                    else
                    {
LABEL_78:

                      v75 = [[USBudgetedApplication alloc] initWithContext:v215];
                      [(USBudgetedApplication *)v75 setBundleIdentifier:v74];
                      [v216 addBudgetedApplicationsObject:v75];
                    }
                  }

                  v71 = [v207 countByEnumeratingWithState:&v262 objects:v298 count:16];
                }

                while (v71);
              }

              v82 = v216;
              v83 = [v216 exemptApplications];
              v254 = 0u;
              v255 = 0u;
              v256 = 0u;
              v257 = 0u;
              v212 = v83;
              v84 = [v212 countByEnumeratingWithState:&v254 objects:v296 count:16];
              if (v84)
              {
                v85 = v84;
                v86 = *v255;
                do
                {
                  for (n = 0; n != v85; n = n + 1)
                  {
                    if (*v255 != v86)
                    {
                      objc_enumerationMutation(v212);
                    }

                    v88 = *(*(&v254 + 1) + 8 * n);
                    v89 = [v88 bundleIdentifier];
                    v90 = [v209 containsObject:v89];

                    if ((v90 & 1) == 0)
                    {
                      if (v217)
                      {
                        [v217 addObject:v88];
                      }

                      else
                      {
                        v185 = 0;
                        v217 = [[NSMutableArray alloc] initWithObjects:v88];
                      }
                    }
                  }

                  v85 = [v212 countByEnumeratingWithState:&v254 objects:v296 count:16];
                }

                while (v85);
              }

              v252 = 0u;
              v253 = 0u;
              v250 = 0u;
              v251 = 0u;
              v206 = v209;
              v91 = [v206 countByEnumeratingWithState:&v250 objects:v295 count:16];
              if (v91)
              {
                v92 = v91;
                v93 = *v251;
                do
                {
                  for (ii = 0; ii != v92; ii = ii + 1)
                  {
                    if (*v251 != v93)
                    {
                      objc_enumerationMutation(v206);
                    }

                    v95 = *(*(&v250 + 1) + 8 * ii);
                    v246 = 0u;
                    v247 = 0u;
                    v248 = 0u;
                    v249 = 0u;
                    v96 = v212;
                    v97 = [(USExemptApplication *)v96 countByEnumeratingWithState:&v246 objects:v294 count:16];
                    if (v97)
                    {
                      v98 = v97;
                      v99 = *v247;
                      while (2)
                      {
                        for (jj = 0; jj != v98; jj = jj + 1)
                        {
                          if (*v247 != v99)
                          {
                            objc_enumerationMutation(v96);
                          }

                          v101 = [*(*(&v246 + 1) + 8 * jj) bundleIdentifier];
                          v102 = [v101 isEqualToString:v95];

                          if (v102)
                          {
                            v82 = v216;
                            goto LABEL_107;
                          }
                        }

                        v98 = [(USExemptApplication *)v96 countByEnumeratingWithState:&v246 objects:v294 count:16];
                        if (v98)
                        {
                          continue;
                        }

                        break;
                      }
                    }

                    v96 = [[USExemptApplication alloc] initWithContext:v215];
                    [(USExemptApplication *)v96 setBundleIdentifier:v95];
                    v82 = v216;
                    [v216 addExemptApplicationsObject:v96];
LABEL_107:
                  }

                  v92 = [v206 countByEnumeratingWithState:&v250 objects:v295 count:16];
                }

                while (v92);
              }

              v103 = [v82 budgetedWebDomains];
              v242 = 0u;
              v243 = 0u;
              v244 = 0u;
              v245 = 0u;
              v210 = v103;
              v104 = [v210 countByEnumeratingWithState:&v242 objects:v293 count:16];
              if (v104)
              {
                v105 = v104;
                v106 = *v243;
                v107 = v204;
                do
                {
                  for (kk = 0; kk != v105; kk = kk + 1)
                  {
                    if (*v243 != v106)
                    {
                      objc_enumerationMutation(v210);
                    }

                    v109 = *(*(&v242 + 1) + 8 * kk);
                    v110 = [v109 webDomain];
                    v111 = [v204 containsObject:v110];

                    if ((v111 & 1) == 0)
                    {
                      if (v217)
                      {
                        [v217 addObject:v109];
                      }

                      else
                      {
                        v185 = 0;
                        v217 = [[NSMutableArray alloc] initWithObjects:v109];
                      }
                    }
                  }

                  v105 = [v210 countByEnumeratingWithState:&v242 objects:v293 count:16];
                }

                while (v105);
              }

              else
              {
                v107 = v204;
              }

              v240 = 0u;
              v241 = 0u;
              v238 = 0u;
              v239 = 0u;
              v205 = v107;
              v112 = [v205 countByEnumeratingWithState:&v238 objects:v292 count:16];
              if (v112)
              {
                v113 = v112;
                v114 = *v239;
                do
                {
                  for (mm = 0; mm != v113; mm = mm + 1)
                  {
                    if (*v239 != v114)
                    {
                      objc_enumerationMutation(v205);
                    }

                    v116 = *(*(&v238 + 1) + 8 * mm);
                    v234 = 0u;
                    v235 = 0u;
                    v236 = 0u;
                    v237 = 0u;
                    v117 = v210;
                    v118 = [(USBudgetedWebDomain *)v117 countByEnumeratingWithState:&v234 objects:v291 count:16];
                    if (v118)
                    {
                      v119 = v118;
                      v120 = *v235;
LABEL_129:
                      v121 = 0;
                      while (1)
                      {
                        if (*v235 != v120)
                        {
                          objc_enumerationMutation(v117);
                        }

                        v122 = [*(*(&v234 + 1) + 8 * v121) webDomain];
                        v123 = [v122 isEqualToString:v116];

                        if (v123)
                        {
                          break;
                        }

                        if (v119 == ++v121)
                        {
                          v119 = [(USBudgetedWebDomain *)v117 countByEnumeratingWithState:&v234 objects:v291 count:16];
                          if (v119)
                          {
                            goto LABEL_129;
                          }

                          goto LABEL_135;
                        }
                      }
                    }

                    else
                    {
LABEL_135:

                      v117 = [[USBudgetedWebDomain alloc] initWithContext:v215];
                      [(USBudgetedWebDomain *)v117 setWebDomain:v116];
                      [v216 addBudgetedWebDomainsObject:v117];
                    }
                  }

                  v113 = [v205 countByEnumeratingWithState:&v238 objects:v292 count:16];
                }

                while (v113);
              }

              [v216 setDidReachThreshold:0];
              [v216 setDidWarnForThreshold:0];
              [v216 setThresholdAdjustmentTime:0.0];
              [v216 setTimeRemainingBeforeUsageDeletion:0.0];
              [v216 setDeletedTime:0.0];

              v33 = v201;
              v32 = v202;
            }

            else if (v217)
            {
              [v217 addObject:v216];
            }

            else
            {
              v185 = 0;
              v217 = [[NSMutableArray alloc] initWithObjects:v216];
            }

            v32 = v32 + 1;
          }

          while (v32 != v200);
          v124 = [v196 countByEnumeratingWithState:&v282 objects:&buf count:16];
          v200 = v124;
        }

        while (v124);
      }

      else
      {
        v197 = 0;
        v217 = 0;
      }

      v232 = 0u;
      v233 = 0u;
      v230 = 0u;
      v231 = 0u;
      v152 = v217;
      v153 = [v152 countByEnumeratingWithState:&v230 objects:v290 count:16];
      if (v153)
      {
        v154 = v153;
        v155 = *v231;
        do
        {
          for (nn = 0; nn != v154; nn = nn + 1)
          {
            if (*v231 != v155)
            {
              objc_enumerationMutation(v152);
            }

            [v215 deleteObject:*(*(&v230 + 1) + 8 * nn)];
          }

          v154 = [v152 countByEnumeratingWithState:&v230 objects:v290 count:16];
        }

        while (v154);
      }

      v226[0] = _NSConcreteStackBlock;
      v226[1] = 3221225472;
      v226[2] = sub_10000EC0C;
      v226[3] = &unk_100086188;
      v157 = v197;
      v227 = v157;
      v151 = v188;
      v228 = v151;
      v158 = v215;
      v229 = v158;
      [v199 enumerateKeysAndObjectsUsingBlock:v226];

      if (([(USDeviceActivityBudget *)v151 hasPersistentChangedValues]& 1) != 0)
      {
        goto LABEL_172;
      }

      v159 = [(USDeviceActivityBudget *)v151 events];
      v160 = [v159 count];

      if (v187 != v160)
      {
        goto LABEL_172;
      }

      v221 = 0u;
      v222 = 0u;
      v219 = 0u;
      v220 = 0u;
      v10 = [(USDeviceActivityBudget *)v151 events];
      v161 = [v10 countByEnumeratingWithState:&v219 objects:v288 count:16];
      if (!v161)
      {
LABEL_169:

        v166 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v167 = *v192;
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v167;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}@ has not changed; skipping all callbacks and event processing", &buf, 0xCu);
        }

        *(*(*(v195 + 88) + 8) + 24) = 1;
        goto LABEL_174;
      }

      v162 = v161;
      v163 = *v220;
LABEL_161:
      v164 = 0;
      while (1)
      {
        if (*v220 != v163)
        {
          objc_enumerationMutation(v10);
        }

        v165 = *(*(&v219 + 1) + 8 * v164);
        if ([v165 isInserted] & 1) != 0 || (objc_msgSend(v165, "isDeleted") & 1) != 0 || (objc_msgSend(v165, "hasPersistentChangedValues"))
        {
          break;
        }

        if (v162 == ++v164)
        {
          v162 = [v10 countByEnumeratingWithState:&v219 objects:v288 count:16];
          if (v162)
          {
            goto LABEL_161;
          }

          goto LABEL_169;
        }
      }

LABEL_148:

LABEL_172:
      v168 = *(v195 + 72);
      v169 = *(*(v195 + 80) + 8);
      v218 = *(v169 + 40);
      v170 = [v168 save:&v218];
      objc_storeStrong((v169 + 40), v218);
      *(*(*(v195 + 88) + 8) + 24) = v170;
      if (*(*(*(v195 + 88) + 8) + 24) != 1)
      {
        v176 = &_os_log_default;
        v4 = v191;
        v8 = v193;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100063B94(v192, v194);
        }

        v182 = sub_100004648(100, @"PersistBudgetError", @"SeeSystemLog", v177, v178, v179, v180, v181, v185);
        v183 = *(*v194 + 8);
        v184 = *(v183 + 40);
        *(v183 + 40) = v182;

        goto LABEL_178;
      }

      v286[0] = @"BudgetID";
      v171 = [(USDeviceActivityBudget *)v151 objectID];
      v286[1] = @"ClientIdentifier";
      v172 = *(v195 + 32);
      v287[0] = v171;
      v287[1] = v172;
      v173 = [NSDictionary dictionaryWithObjects:v287 forKeys:v286 count:2];
      v174 = *(*(v195 + 96) + 8);
      v175 = *(v174 + 40);
      *(v174 + 40) = v173;

LABEL_174:
      v4 = v191;
      v8 = v193;
LABEL_178:

      v18 = v224;
      goto LABEL_179;
    }

    if ((*(v7 + 104) & 1) != 0 || [v193 count] < 0x14)
    {
      v134 = *(v7 + 48);
      v133 = *(v7 + 56);
      v136 = *(v195 + 32);
      v135 = *(v195 + 40);
      v137 = *(v195 + 64);
      v138 = *(v195 + 72);
      v139 = v137;
      v140 = v136;
      v141 = v133;
      v142 = v134;
      v143 = v135;
      v144 = [[USDeviceActivityBudget alloc] initWithContext:v138];
      [(USDeviceActivityBudget *)v144 setName:v143];
      [(USDeviceActivityBudget *)v144 setClientIdentifier:v140];
      [(USDeviceActivityBudget *)v144 setExtensionIdentifier:v139];
      v145 = [v142 intervalStart];
      [(USDeviceActivityBudget *)v144 setIntervalStart:v145];

      v146 = [v142 intervalEnd];
      [(USDeviceActivityBudget *)v144 setIntervalEnd:v146];

      -[USDeviceActivityBudget setRepeats:](v144, "setRepeats:", [v142 repeats]);
      v147 = [v142 warningTime];
      [(USDeviceActivityBudget *)v144 setWarningTime:v147];

      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 3221225472;
      v304 = sub_10000E6E8;
      v305 = &unk_100086160;
      v148 = v144;
      v306 = v148;
      v307 = v138;
      v149 = v138;
      [v141 enumerateKeysAndObjectsUsingBlock:&buf];
      v150 = v307;
      v151 = v148;

      goto LABEL_148;
    }

    *(*(*(v7 + 88) + 8) + 24) = 0;
    v130 = sub_100004648(103, @"ExcessiveActivitiesError", @"MonitorFewerActivities", v125, v126, v127, v128, v129, @"clientIdentifier");
    v131 = *(*(v7 + 80) + 8);
    v132 = *(v131 + 40);
    *(v131 + 40) = v130;

    v18 = v224;
    v4 = v191;
    v8 = v193;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100063C0C(v7, v194);
    }

    v16 = sub_100004648(101, @"FetchBudgetError", @"SeeSystemLog", v11, v12, v13, v14, v15, @"clientIdentifier");
    v17 = *(*v194 + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;
  }

LABEL_179:
}

id sub_1000063D4(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_100006B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose((v27 - 144), 8);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_100006B3C(uint64_t *a1)
{
  v2 = +[USDeviceActivityBudget fetchRequest];
  [v2 setReturnsObjectsAsFaults:0];
  v4 = a1[4];
  v3 = a1[5];
  if (v4)
  {
    [NSPredicate predicateWithFormat:@"(%K == %@) && (%K IN %@)", @"clientIdentifier", v3, @"name", v4];
  }

  else
  {
    [NSPredicate predicateWithFormat:@"%K == %@", @"clientIdentifier", v3, v42, v43];
  }
  v5 = ;
  [v2 setPredicate:v5];

  v6 = *(a1[7] + 8);
  obj = *(v6 + 40);
  v7 = [v2 execute:&obj];
  objc_storeStrong((v6 + 40), obj);
  if (v7)
  {
    v44 = a1 + 4;
    v45 = (a1 + 7);
    v47 = v7;
    v48 = v2;
    v46 = a1;
    v8 = a1[6];
    v9 = v7;
    v50 = v8;
    v10 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v9, "count")}];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v49 = v9;
    v11 = [v49 countByEnumeratingWithState:&v53 objects:v59 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v54;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v54 != v13)
          {
            objc_enumerationMutation(v49);
          }

          v15 = *(*(&v53 + 1) + 8 * i);
          v16 = [USDeviceActivityBudgetMetadata alloc];
          v17 = [v15 name];
          v18 = [v15 objectID];
          v19 = [v15 clientIdentifier];
          v20 = [v15 extensionIdentifier];
          v21 = -[USDeviceActivityBudgetMetadata initWithActivity:budgetID:clientIdentifier:extensionIdentifier:intervalDidStart:](v16, "initWithActivity:budgetID:clientIdentifier:extensionIdentifier:intervalDidStart:", v17, v18, v19, v20, [v15 intervalDidStart]);

          [v10 addObject:v21];
          [v50 deleteObject:v15];
        }

        v12 = [v49 countByEnumeratingWithState:&v53 objects:v59 count:16];
      }

      while (v12);
    }

    v22 = v46[6];
    v23 = *(v46[7] + 8);
    v51 = *(v23 + 40);
    v24 = [v22 save:&v51];
    objc_storeStrong((v23 + 40), v51);
    *(*(v46[8] + 8) + 24) = v24;
    if (*(*(v46[8] + 8) + 24) == 1)
    {
      v57 = @"BudgetMetadata";
      v58 = v10;
      v25 = [NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1];
      v26 = v46 + 9;
      v2 = v48;
    }

    else
    {
      v2 = v48;
      v26 = v45;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100063CA0(v44, v45);
      }

      v25 = sub_100004648(102, @"DeleteBudgetError", @"SeeSystemLog", v34, v35, v36, v37, v38, v41);
    }

    v7 = v47;
    v39 = *(*v26 + 8);
    v40 = *(v39 + 40);
    *(v39 + 40) = v25;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100063D18(a1 + 4, (a1 + 7));
    }

    v32 = sub_100004648(101, @"FetchBudgetError", @"SeeSystemLog", v27, v28, v29, v30, v31, v41);
    v33 = *(a1[7] + 8);
    v10 = *(v33 + 40);
    *(v33 + 40) = v32;
  }
}

void sub_100007010(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[USRegisteredBudget fetchRequest];
  [v4 setPredicate:*(a1 + 32)];
  [v4 setReturnsObjectsAsFaults:0];
  v33 = 0;
  v5 = [v4 execute:&v33];
  v6 = v33;
  if (v5)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v30;
      do
      {
        v11 = 0;
        do
        {
          if (*v30 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [v3 deleteObject:*(*(&v29 + 1) + 8 * v11)];
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v9);
    }

    v28 = 0;
    v12 = [v3 save:&v28];
    v13 = v28;
    if (v12)
    {
      (*(*(a1 + 48) + 16))();
      v14 = [*(a1 + 40) notificationPostingQueue];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_1000072E0;
      v27[3] = &unk_100085D00;
      v27[4] = *(a1 + 40);
      [v14 addOperationWithBlock:v27];
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100063D90((a1 + 32));
      }

      v26 = *(a1 + 48);
      v14 = sub_100004648(102, @"DeleteBudgetError", @"SeeSystemLog", v21, v22, v23, v24, v25, v27[0]);
      (*(v26 + 16))(v26, v14);
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100063E0C((a1 + 32));
    }

    v20 = *(a1 + 48);
    v13 = sub_100004648(101, @"FetchBudgetError", @"SeeSystemLog", v15, v16, v17, v18, v19, v27[0]);
    (*(v20 + 16))(v20, v13);
  }
}

void sub_1000072E0(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"RegisteredBudgetsDidChange" object:*(a1 + 32)];
}

void sub_100007438(void *a1)
{
  v2 = +[USRegisteredBudget fetchRequest];
  v4 = a1[4];
  v3 = a1[5];
  if (!v4)
  {
    if (!v3)
    {
      goto LABEL_9;
    }

    v69 = @"clientIdentifier";
    v70 = a1[5];
    goto LABEL_7;
  }

  if (!v3)
  {
    v69 = @"identifier";
    v70 = a1[4];
LABEL_7:
    [NSPredicate predicateWithFormat:@"%K == %@", v69, v70, v71, v72];
    goto LABEL_8;
  }

  [NSPredicate predicateWithFormat:@"(%K == %@) && (%K == %@)", @"clientIdentifier", v3, @"identifier", v4];
  v5 = LABEL_8:;
  [v2 setPredicate:v5];

LABEL_9:
  [v2 setReturnsObjectsAsFaults:0];
  v122[0] = @"schedule";
  v122[1] = @"budgetedCategories";
  v122[2] = @"budgetedApplications";
  v122[3] = @"exemptApplications";
  v122[4] = @"budgetedWebDomains";
  v122[5] = @"notificationTimes";
  v6 = [NSArray arrayWithObjects:v122 count:6];
  [v2 setRelationshipKeyPathsForPrefetching:v6];

  v113 = 0;
  v7 = [v2 execute:&v113];
  v8 = v113;
  v9 = v8;
  if (v7)
  {
    v73 = v8;
    v75 = a1;
    v76 = v2;
    v10 = &swift_defaultActor_destroy_ptr;
    v79 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    v74 = v7;
    obj = v7;
    v80 = [obj countByEnumeratingWithState:&v109 objects:v121 count:16];
    if (v80)
    {
      v78 = *v110;
      v11 = &swift_defaultActor_destroy_ptr;
      v12 = &swift_defaultActor_destroy_ptr;
      do
      {
        v13 = 0;
        do
        {
          if (*v110 != v78)
          {
            objc_enumerationMutation(obj);
          }

          v85 = v13;
          v86 = *(*(&v109 + 1) + 8 * v13);
          v14 = [v86 schedule];
          v88 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v14, "count")}];
          v105 = 0u;
          v106 = 0u;
          v107 = 0u;
          v108 = 0u;
          v87 = v14;
          v15 = [v87 countByEnumeratingWithState:&v105 objects:v120 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v106;
            do
            {
              for (i = 0; i != v16; i = i + 1)
              {
                if (*v106 != v17)
                {
                  objc_enumerationMutation(v87);
                }

                v19 = *(*(&v105 + 1) + 8 * i);
                v20 = [objc_alloc(v12[117]) initWithFormat:@"%lld", objc_msgSend(v19, "weekday")];
                v21 = v11[114];
                [v19 timeLimit];
                v22 = [v21 numberWithDouble:?];
                [v88 setObject:v22 forKeyedSubscript:v20];
              }

              v16 = [v87 countByEnumeratingWithState:&v105 objects:v120 count:16];
            }

            while (v16);
          }

          v23 = [v86 budgetedCategories];
          v24 = [objc_alloc(v10[186]) initWithCapacity:{objc_msgSend(v23, "count")}];
          v101 = 0u;
          v102 = 0u;
          v103 = 0u;
          v104 = 0u;
          v25 = v23;
          v26 = [v25 countByEnumeratingWithState:&v101 objects:v119 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = *v102;
            do
            {
              for (j = 0; j != v27; j = j + 1)
              {
                if (*v102 != v28)
                {
                  objc_enumerationMutation(v25);
                }

                v30 = [*(*(&v101 + 1) + 8 * j) categoryIdentifier];
                [v24 addObject:v30];
              }

              v27 = [v25 countByEnumeratingWithState:&v101 objects:v119 count:16];
            }

            while (v27);
          }

          v84 = v25;

          v31 = [v86 budgetedApplications];
          v32 = [objc_alloc(v10[186]) initWithCapacity:{objc_msgSend(v31, "count")}];
          v97 = 0u;
          v98 = 0u;
          v99 = 0u;
          v100 = 0u;
          v33 = v31;
          v34 = [v33 countByEnumeratingWithState:&v97 objects:v118 count:16];
          if (v34)
          {
            v35 = v34;
            v36 = *v98;
            do
            {
              for (k = 0; k != v35; k = k + 1)
              {
                if (*v98 != v36)
                {
                  objc_enumerationMutation(v33);
                }

                v38 = [*(*(&v97 + 1) + 8 * k) bundleIdentifier];
                [v32 addObject:v38];
              }

              v35 = [v33 countByEnumeratingWithState:&v97 objects:v118 count:16];
            }

            while (v35);
          }

          v83 = v33;

          v39 = [v86 budgetedWebDomains];
          v40 = [objc_alloc(v10[186]) initWithCapacity:{objc_msgSend(v39, "count")}];
          v93 = 0u;
          v94 = 0u;
          v95 = 0u;
          v96 = 0u;
          v41 = v39;
          v42 = [v41 countByEnumeratingWithState:&v93 objects:v117 count:16];
          if (v42)
          {
            v43 = v42;
            v44 = *v94;
            do
            {
              for (m = 0; m != v43; m = m + 1)
              {
                if (*v94 != v44)
                {
                  objc_enumerationMutation(v41);
                }

                v46 = [*(*(&v93 + 1) + 8 * m) webDomain];
                [v40 addObject:v46];
              }

              v43 = [v41 countByEnumeratingWithState:&v93 objects:v117 count:16];
            }

            while (v43);
          }

          v82 = v41;

          v47 = [v86 notificationTimes];
          v48 = [objc_alloc(v10[186]) initWithCapacity:{objc_msgSend(v47, "count") - 1}];
          v89 = 0u;
          v90 = 0u;
          v91 = 0u;
          v92 = 0u;
          v49 = v47;
          v50 = [v49 countByEnumeratingWithState:&v89 objects:v116 count:16];
          if (v50)
          {
            v51 = v50;
            v52 = *v90;
            do
            {
              for (n = 0; n != v51; n = n + 1)
              {
                if (*v90 != v52)
                {
                  objc_enumerationMutation(v49);
                }

                v54 = *(*(&v89 + 1) + 8 * n);
                [v54 remainingTime];
                if (v55 != 0.0)
                {
                  [v54 remainingTime];
                  v56 = [NSNumber numberWithDouble:?];
                  [v48 addObject:v56];
                }
              }

              v51 = [v49 countByEnumeratingWithState:&v89 objects:v116 count:16];
            }

            while (v51);
          }

          v114[0] = @"identifier";
          v81 = [v86 identifier];
          v115[0] = v81;
          v114[1] = @"clientIdentifier";
          v57 = [v86 clientIdentifier];
          v115[1] = v57;
          v114[2] = @"calendarIdentifier";
          v58 = [v86 calendarIdentifier];
          v115[2] = v58;
          v115[3] = v88;
          v114[3] = @"schedule";
          v114[4] = @"budgetedCategories";
          v115[4] = v24;
          v115[5] = v32;
          v114[5] = @"budgetedApplications";
          v114[6] = @"budgetedWebDomains";
          v115[6] = v40;
          v114[7] = @"darwinNotificationName";
          v59 = [v86 darwinNotificationName];
          v114[8] = @"notificationTimes";
          v115[7] = v59;
          v115[8] = v48;
          v60 = [NSDictionary dictionaryWithObjects:v115 forKeys:v114 count:9];
          [v79 addObject:v60];

          v13 = v85 + 1;
          v10 = &swift_defaultActor_destroy_ptr;
          v11 = &swift_defaultActor_destroy_ptr;
          v12 = &swift_defaultActor_destroy_ptr;
        }

        while ((v85 + 1) != v80);
        v80 = [obj countByEnumeratingWithState:&v109 objects:v121 count:16];
      }

      while (v80);
    }

    v61 = v79;
    (*(v75[6] + 16))();
    v2 = v76;
    v9 = v73;
    v7 = v74;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100063E88(v2);
    }

    v67 = a1[6];
    v61 = sub_100004648(101, @"FetchBudgetError", @"SeeSystemLog", v62, v63, v64, v65, v66, v68);
    (*(v67 + 16))(v67, 0, v61);
  }
}

void sub_100008034(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a2;
  v8 = [v5 objectAtIndexedSubscript:a3];
  v7 = [NSPredicate predicateWithFormat:@"(%K == %@) && (%K == %@)", @"clientIdentifier", v8, @"identifier", v6];

  [v4 addObject:v7];
}

void sub_1000081C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = +[USRegisteredBudget fetchRequest];
  [v5 setPredicate:*(a1 + 32)];
  [v5 setReturnsObjectsAsFaults:0];
  v10[0] = @"schedule";
  v10[1] = @"budgetedCategories";
  v10[2] = @"budgetedApplications";
  v10[3] = @"exemptApplications";
  v10[4] = @"budgetedWebDomains";
  v6 = [NSArray arrayWithObjects:v10 count:5];
  [v5 setRelationshipKeyPathsForPrefetching:v6];

  v9 = 0;
  v7 = [v5 execute:&v9];
  v8 = v9;
  (*(*(a1 + 40) + 16))();

  objc_autoreleasePoolPop(v4);
}

void sub_1000083E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[USNotificationTime fetchRequest];
  v5 = [NSPredicate predicateWithFormat:@"((%K == YES) || (%K.%K > 0.0)) && (%K.%K == %@)", @"notificationWasPosted", @"budget", @"deletedTime", @"budget", @"calendarIdentifier", *(a1 + 32)];
  [v4 setPredicate:v5];

  v28 = @"budget";
  v6 = [NSArray arrayWithObjects:&v28 count:1];
  [v4 setRelationshipKeyPathsForPrefetching:v6];

  v26 = 0;
  v7 = [v4 execute:&v26];
  v8 = v26;
  if (v7)
  {
    v19 = a1;
    v20 = v3;
    v9 = objc_opt_new();
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          if ([v15 notificationWasPosted])
          {
            [v9 addObject:v15];
            [v15 setNotificationWasPosted:0];
          }

          v16 = [v15 budget];
          [v16 setTimeRemainingBeforeUsageDeletion:0.0];

          v17 = [v15 budget];
          [v17 setDeletedTime:0.0];
        }

        v12 = [v10 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v12);
    }

    v21 = v8;
    v3 = v20;
    [v20 save:&v21];
    v18 = v21;

    (*(*(v19 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
    v18 = v8;
  }
}

void sub_100008AA0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) lock];
  if (v5)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100008BC0;
    v10[3] = &unk_100085E68;
    v10[4] = *(a1 + 40);
    [v5 enumerateKeysAndObjectsUsingBlock:v10];
  }

  else
  {
    v7 = *(*(a1 + 48) + 8);
    v9 = *(v7 + 40);
    v8 = (v7 + 40);
    if (!v9)
    {
      objc_storeStrong(v8, a3);
    }
  }

  [*(a1 + 32) unlockWithCondition:{objc_msgSend(*(a1 + 32), "condition") - 1}];
}

void sub_100008BC0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 equivalentBundleIdentifiers];
  if ([v4 count] >= 2)
  {
    [*(*(*(a1 + 32) + 8) + 40) addObjectsFromArray:v4];
  }
}

void sub_100008C2C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) lock];
  if (v5)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100008D4C;
    v10[3] = &unk_100085E68;
    v10[4] = *(a1 + 40);
    [v5 enumerateKeysAndObjectsUsingBlock:v10];
  }

  else
  {
    v7 = *(*(a1 + 48) + 8);
    v9 = *(v7 + 40);
    v8 = (v7 + 40);
    if (!v9)
    {
      objc_storeStrong(v8, a3);
    }
  }

  [*(a1 + 32) unlockWithCondition:{objc_msgSend(*(a1 + 32), "condition") - 1}];
}

void sub_100008D4C(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = [a3 equivalentBundleIdentifiers];
  if ([v8 count])
  {
    v4 = *(*(*(a1 + 32) + 8) + 40);
    if (v4)
    {
      [v4 addObjectsFromArray:v8];
    }

    else
    {
      v5 = [[NSMutableOrderedSet alloc] initWithArray:v8];
      v6 = *(*(a1 + 32) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;
    }
  }
}

void sub_1000091FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_100009250(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x3032000000;
    v14[3] = sub_100004DC0;
    v14[4] = sub_100004DD0;
    v15 = 0;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000093A8;
    v9[3] = &unk_100085EB8;
    v11 = *(a1 + 48);
    v7 = *(a1 + 32);
    v8 = *(a1 + 64);
    v10 = v7;
    v12 = v8;
    v13 = v14;
    [v5 enumerateKeysAndObjectsUsingBlock:v9];

    _Block_object_dispose(v14, 8);
  }

  else
  {
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), a3);
  }

  [*(a1 + 40) lock];
  [*(a1 + 40) unlockWithCondition:*(a1 + 80)];
}

void sub_100009390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000093A8(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = *(*(a1[5] + 8) + 40);
  if (v8)
  {
    v9 = [v6 identifier];
    [v8 addObject:v9];
  }

  else
  {
    v10 = [NSMutableSet alloc];
    v9 = [v7 identifier];
    v11 = [v10 initWithObjects:{v9, 0}];
    v12 = *(a1[5] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  v14 = [v7 equivalentBundleIdentifiers];
  if ([v14 count] >= 2)
  {
    v15 = *(*(a1[6] + 8) + 40);
    if (!v15)
    {
      v16 = [[NSMutableSet alloc] initWithArray:a1[4]];
      v17 = *(a1[6] + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = v16;

      v15 = *(*(a1[6] + 8) + 40);
    }

    [v15 addObjectsFromArray:v14];
  }

  v19 = [v7 webDomains];
  if ([v19 count])
  {
    v33 = v5;
    if (!*(*(a1[7] + 8) + 40))
    {
      v20 = objc_opt_new();
      v21 = *(a1[7] + 8);
      v22 = *(v21 + 40);
      *(v21 + 40) = v20;

      v23 = objc_opt_new();
      v24 = *(a1[8] + 8);
      v25 = *(v24 + 40);
      *(v24 + 40) = v23;
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v26 = v19;
    v27 = [v26 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v35;
      do
      {
        v30 = 0;
        do
        {
          if (*v35 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(a1[7] + 8) + 40);
          v32 = [*(*(a1[8] + 8) + 40) normalizeDomainName:*(*(&v34 + 1) + 8 * v30)];
          [v31 addObject:v32];

          v30 = v30 + 1;
        }

        while (v28 != v30);
        v28 = [v26 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v28);
    }

    v5 = v33;
  }
}

void sub_100009AA4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) lock];
  if (v5)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100009BC4;
    v10[3] = &unk_100085F08;
    v11 = *(a1 + 40);
    [v5 enumerateKeysAndObjectsUsingBlock:v10];
  }

  else
  {
    v7 = *(*(a1 + 56) + 8);
    v9 = *(v7 + 40);
    v8 = (v7 + 40);
    if (!v9)
    {
      objc_storeStrong(v8, a3);
    }
  }

  [*(a1 + 32) unlockWithCondition:{objc_msgSend(*(a1 + 32), "condition") - 1}];
}

void sub_100009BC4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 webDomains];
  if ([v4 count] >= 2)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        v9 = 0;
        do
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v17 + 1) + 8 * v9);
          v11 = *(*(*(a1 + 32) + 8) + 40);
          if (!v11)
          {
            v12 = objc_opt_new();
            v13 = *(*(a1 + 32) + 8);
            v14 = *(v13 + 40);
            *(v13 + 40) = v12;

            v11 = *(*(*(a1 + 32) + 8) + 40);
          }

          v15 = *(*(*(a1 + 40) + 8) + 40);
          v16 = [v11 normalizeDomainName:{v10, v17}];
          [v15 addObject:v16];

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }
  }
}

void sub_100009D44(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) lock];
  if (v5)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100009E64;
    v10[3] = &unk_100085F08;
    v11 = *(a1 + 40);
    [v5 enumerateKeysAndObjectsUsingBlock:v10];
  }

  else
  {
    v7 = *(*(a1 + 56) + 8);
    v9 = *(v7 + 40);
    v8 = (v7 + 40);
    if (!v9)
    {
      objc_storeStrong(v8, a3);
    }
  }

  [*(a1 + 32) unlockWithCondition:{objc_msgSend(*(a1 + 32), "condition") - 1}];
}

void sub_100009E64(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [a3 webDomains];
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      v8 = 0;
      do
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v19 + 1) + 8 * v8);
        v10 = *(*(*(a1 + 32) + 8) + 40);
        if (!v10)
        {
          v11 = objc_opt_new();
          v12 = *(*(a1 + 32) + 8);
          v13 = *(v12 + 40);
          *(v12 + 40) = v11;

          v10 = *(*(*(a1 + 32) + 8) + 40);
        }

        v14 = [v10 normalizeDomainName:v9];
        v15 = *(*(*(a1 + 40) + 8) + 40);
        if (v15)
        {
          [v15 addObject:v14];
        }

        else
        {
          v16 = [[NSMutableOrderedSet alloc] initWithObject:v14];
          v17 = *(*(a1 + 40) + 8);
          v18 = *(v17 + 40);
          *(v17 + 40) = v16;
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }
}

void sub_10000A414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_10000A468(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x3032000000;
    v12[3] = sub_100004DC0;
    v12[4] = sub_100004DD0;
    v13 = 0;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10000A5C4;
    v7[3] = &unk_100085F58;
    v9 = *(a1 + 48);
    v10 = *(a1 + 64);
    v8 = *(a1 + 32);
    v11 = v12;
    [v5 enumerateKeysAndObjectsUsingBlock:v7];

    _Block_object_dispose(v12, 8);
  }

  else
  {
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), a3);
  }

  [*(a1 + 40) lock];
  [*(a1 + 40) unlockWithCondition:*(a1 + 80)];
}

void sub_10000A5AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000A5C4(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = *(*(a1[5] + 8) + 40);
  if (v8)
  {
    v9 = [v6 identifier];
    [v8 addObject:v9];
  }

  else
  {
    v10 = [NSMutableSet alloc];
    v9 = [v7 identifier];
    v11 = [v10 initWithObjects:{v9, 0}];
    v12 = *(a1[5] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  v14 = [v7 equivalentBundleIdentifiers];
  if ([v14 count])
  {
    v15 = *(*(a1[6] + 8) + 40);
    if (v15)
    {
      [v15 addObjectsFromArray:v14];
    }

    else
    {
      v16 = [[NSMutableSet alloc] initWithArray:v14];
      v17 = *(a1[6] + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = v16;
    }
  }

  v19 = [v7 webDomains];
  if ([v19 count] >= 2)
  {
    v33 = v5;
    if (!*(*(a1[7] + 8) + 40))
    {
      v20 = [[NSMutableSet alloc] initWithArray:a1[4]];
      v21 = *(a1[7] + 8);
      v22 = *(v21 + 40);
      *(v21 + 40) = v20;

      v23 = objc_opt_new();
      v24 = *(a1[8] + 8);
      v25 = *(v24 + 40);
      *(v24 + 40) = v23;
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v26 = v19;
    v27 = [v26 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v35;
      do
      {
        v30 = 0;
        do
        {
          if (*v35 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(a1[7] + 8) + 40);
          v32 = [*(*(a1[8] + 8) + 40) normalizeDomainName:*(*(&v34 + 1) + 8 * v30)];
          [v31 addObject:v32];

          v30 = v30 + 1;
        }

        while (v28 != v30);
        v28 = [v26 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v28);
    }

    v5 = v33;
  }
}

void sub_10000AB40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_10000AB64(void *a1)
{
  v2 = +[USBudgetedCategory fetchRequest];
  [v2 setResultType:4];
  v3 = [NSPredicate predicateWithFormat:@"(%K != nil) || (%K.%K.%K == YES)", @"budget", @"event", @"budget", @"intervalDidStart"];
  if (a1[4])
  {
    v4 = [NSCompoundPredicate alloc];
    v19[0] = a1[4];
    v19[1] = v3;
    v5 = [NSArray arrayWithObjects:v19 count:2];
    v6 = [v4 initWithType:1 subpredicates:v5];
    [v2 setPredicate:v6];
  }

  else
  {
    [v2 setPredicate:v3];
  }

  v7 = *(a1[5] + 8);
  obj = *(v7 + 40);
  v8 = [v2 execute:&obj];
  objc_storeStrong((v7 + 40), obj);
  v9 = [v8 firstObject];

  if (v9)
  {
    if ([v9 BOOLValue])
    {
      v10 = *(a1[6] + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = &__kCFBooleanTrue;
    }

    else
    {
      v11 = +[USRegisteredDeviceActivityEvent fetchRequest];
      [v11 setResultType:4];
      v12 = [NSPredicate predicateWithFormat:@"(%K.@count <= 0) && (%K.@count <= 0) && (%K.@count <= 0)", @"budgetedCategories", @"budgetedApplications", @"budgetedWebDomains"];
      [v11 setPredicate:v12];

      v13 = *(a1[5] + 8);
      v17 = *(v13 + 40);
      v14 = [v11 execute:&v17];
      objc_storeStrong((v13 + 40), v17);
      v15 = [v14 firstObject];

      if (v15)
      {
        v16 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v15 BOOLValue]);
      }

      else
      {
        v16 = 0;
      }

      objc_storeStrong((*(a1[6] + 8) + 40), v16);
      if (v15)
      {
      }
    }
  }
}

void sub_10000B030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 144), 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_10000B06C(void *a1)
{
  v2 = [NSPredicate predicateWithFormat:@"(%K != nil) || (%K.%K.%K == YES)", @"budget", @"event", @"budget", @"intervalDidStart"];
  v3 = +[USBudgetedApplication fetchRequest];
  [v3 setReturnsObjectsAsFaults:0];
  [v3 setPredicate:v2];
  v4 = *(a1[4] + 8);
  obj = *(v4 + 40);
  v5 = [v3 execute:&obj];
  objc_storeStrong((v4 + 40), obj);
  if (v5)
  {
    v6 = +[USBudgetedWebDomain fetchRequest];
    [v6 setReturnsObjectsAsFaults:0];
    [v6 setPredicate:v2];
    v7 = *(a1[4] + 8);
    v43 = *(v7 + 40);
    v8 = [v6 execute:&v43];
    objc_storeStrong((v7 + 40), v43);
    *(*(a1[5] + 8) + 24) = v8 != 0;
  }

  else
  {
    v8 = 0;
  }

  if (*(*(a1[5] + 8) + 24) == 1)
  {
    v33 = v5;
    v34 = v2;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v39 objects:v46 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v40;
      do
      {
        v13 = 0;
        do
        {
          if (*v40 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v39 + 1) + 8 * v13);
          v15 = *(*(a1[6] + 8) + 40);
          if (v15)
          {
            v16 = [*(*(&v39 + 1) + 8 * v13) bundleIdentifier];
            [v15 addObject:v16];
          }

          else
          {
            v17 = [NSMutableOrderedSet alloc];
            v16 = [v14 bundleIdentifier];
            v18 = [v17 initWithObject:v16];
            v19 = *(a1[6] + 8);
            v20 = *(v19 + 40);
            *(v19 + 40) = v18;
          }

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v39 objects:v46 count:16];
      }

      while (v11);
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v21 = v8;
    v22 = [v21 countByEnumeratingWithState:&v35 objects:v45 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v36;
      do
      {
        v25 = 0;
        do
        {
          if (*v36 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v35 + 1) + 8 * v25);
          v27 = *(*(a1[7] + 8) + 40);
          if (v27)
          {
            v28 = [*(*(&v35 + 1) + 8 * v25) webDomain];
            [v27 addObject:v28];
          }

          else
          {
            v29 = [NSMutableOrderedSet alloc];
            v28 = [v26 webDomain];
            v30 = [v29 initWithObject:v28];
            v31 = *(a1[7] + 8);
            v32 = *(v31 + 40);
            *(v31 + 40) = v30;
          }

          v25 = v25 + 1;
        }

        while (v23 != v25);
        v23 = [v21 countByEnumeratingWithState:&v35 objects:v45 count:16];
      }

      while (v23);
    }

    v5 = v33;
    v2 = v34;
  }
}

void sub_10000B4D8(uint64_t a1)
{
  v1 = objc_autoreleasePoolPush();
  v2 = +[USRegisteredBudget fetchRequest];
  v3 = [NSPredicate predicateWithFormat:@"ANY %K.%K == YES", @"notificationTimes", @"notificationWasPosted"];
  [v2 setPredicate:v3];

  [v2 setReturnsObjectsAsFaults:0];
  v20[0] = @"schedule";
  v20[1] = @"budgetedCategories";
  v20[2] = @"budgetedApplications";
  v20[3] = @"exemptApplications";
  v20[4] = @"budgetedWebDomains";
  v20[5] = @"notificationTimes";
  v4 = [NSArray arrayWithObjects:v20 count:6];
  [v2 setRelationshipKeyPathsForPrefetching:v4];

  v18 = 0;
  v5 = [v2 execute:&v18];
  v6 = v18;
  if (v5)
  {
    v14 = v1;
    v7 = +[USRegisteredDeviceActivityEvent fetchRequest];
    v8 = [NSPredicate predicateWithFormat:@"%K == YES", @"didReachThreshold"];
    [v7 setPredicate:v8];

    [v7 setReturnsObjectsAsFaults:0];
    v19[0] = @"budget";
    v19[1] = @"budgetedCategories";
    v19[2] = @"budgetedApplications";
    v19[3] = @"exemptApplications";
    v19[4] = @"budgetedWebDomains";
    v9 = [NSArray arrayWithObjects:v19 count:5];
    [v7 setRelationshipKeyPathsForPrefetching:v9];

    v17 = v6;
    v10 = [v7 execute:&v17];
    v11 = v17;

    if ((*(*(a1 + 40) + 16))())
    {
      v12 = *(a1 + 32);
      v16 = v11;
      v13 = [v12 save:&v16];
      v6 = v16;

      if ((v13 & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100064118();
      }
    }

    else
    {
      v6 = v11;
    }

    v1 = v14;
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_autoreleasePoolPop(v1);
}

void sub_10000B8A8(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = +[USRegisteredBudget fetchRequest];
  [v3 setPredicate:a1[4]];
  [v3 setReturnsObjectsAsFaults:0];
  v29[0] = @"schedule";
  v29[1] = @"budgetedCategories";
  v29[2] = @"budgetedApplications";
  v29[3] = @"exemptApplications";
  v29[4] = @"budgetedWebDomains";
  v29[5] = @"notificationTimes";
  v4 = [NSArray arrayWithObjects:v29 count:6];
  [v3 setRelationshipKeyPathsForPrefetching:v4];

  v25 = 0;
  v5 = [v3 execute:&v25];
  v6 = v25;
  if (v5)
  {
    v22 = v2;
    v7 = +[USRegisteredDeviceActivityEvent fetchRequest];
    [v7 setReturnsObjectsAsFaults:0];
    v28[0] = @"budget";
    v28[1] = @"budgetedCategories";
    v28[2] = @"budgetedApplications";
    v28[3] = @"exemptApplications";
    v28[4] = @"budgetedWebDomains";
    v8 = [NSArray arrayWithObjects:v28 count:5];
    [v7 setRelationshipKeyPathsForPrefetching:v8];

    v9 = [NSPredicate predicateWithFormat:@"%K.%K == YES", @"budget", @"intervalDidStart"];
    if (a1[4])
    {
      v10 = [NSPredicate predicateWithFormat:@"(%K.@count <= 0) && (%K.@count <= 0) && (%K.@count <= 0)", @"budgetedCategories", @"budgetedApplications", @"budgetedWebDomains"];
      v11 = [NSCompoundPredicate alloc];
      v27[0] = a1[4];
      v27[1] = v10;
      v12 = [NSArray arrayWithObjects:v27 count:2];
      v13 = [v11 initWithType:2 subpredicates:v12];

      v14 = [NSCompoundPredicate alloc];
      v26[0] = v13;
      v26[1] = v9;
      v15 = [NSArray arrayWithObjects:v26 count:2];
      v16 = [v14 initWithType:1 subpredicates:v15];
      [v7 setPredicate:v16];
    }

    else
    {
      [v7 setPredicate:v9];
    }

    v17 = v9;
    v24 = v6;
    v18 = [v7 execute:&v24];
    v19 = v24;

    if ((*(a1[6] + 16))())
    {
      v20 = a1[5];
      v23 = v19;
      v21 = [v20 save:&v23];
      v6 = v23;

      if ((v21 & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000641A8();
      }
    }

    else
    {
      v6 = v19;
    }

    v2 = v22;
  }

  else
  {
    (*(a1[6] + 16))();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10000C080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000C0AC(uint64_t a1)
{
  v2 = +[USDeviceActivityBudget fetchRequest];
  [v2 setReturnsObjectsAsFaults:0];
  v15 = *(a1 + 32);
  v3 = [NSPredicate predicateWithFormat:@"%K == %@"];
  [v2 setPredicate:v3];

  v4 = a1 + 40;
  v5 = *(*(a1 + 40) + 8);
  obj = *(v5 + 40);
  v6 = [v2 execute:&obj];
  objc_storeStrong((v5 + 40), obj);
  if (v6)
  {
    v7 = [v6 valueForKeyPath:@"name"];
    v4 = a1 + 48;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100064220((a1 + 32), a1 + 40);
    }

    v7 = sub_100004648(101, @"FetchBudgetError", @"SeeSystemLog", v8, v9, v10, v11, v12, @"clientIdentifier");
  }

  v13 = *(*v4 + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v7;
}

void sub_10000C664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

void sub_10000C690(uint64_t *a1)
{
  v2 = +[USDeviceActivityBudget fetchRequest];
  [v2 setReturnsObjectsAsFaults:0];
  v23 = a1[5];
  v22 = a1[4];
  v3 = [NSPredicate predicateWithFormat:@"(%K == %@) && (%K == %@)"];
  [v2 setPredicate:v3];

  v4 = *(a1[6] + 8);
  obj = *(v4 + 40);
  v5 = [v2 execute:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = [v5 firstObject];
  if (v6)
  {
    v7 = [USDeviceActivitySchedule alloc];
    v8 = [v6 intervalStart];
    v9 = [v6 intervalEnd];
    v10 = [v6 repeats];
    v11 = [v6 warningTime];
    v12 = [v7 initWithIntervalStart:v8 intervalEnd:v9 repeats:v10 warningTime:v11];
    v13 = *(a1[7] + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  else
  {
    if (v5)
    {
      goto LABEL_5;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100064220(a1 + 4, (a1 + 6));
    }

    v20 = sub_100004648(101, @"FetchBudgetError", @"SeeSystemLog", v15, v16, v17, v18, v19, @"clientIdentifier");
    v21 = *(a1[6] + 8);
    v8 = *(v21 + 40);
    *(v21 + 40) = v20;
  }

LABEL_5:
}

void sub_10000CCEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

void sub_10000CD18(uint64_t *a1)
{
  v152 = @"events";
  v2 = [NSArray arrayWithObjects:&v152 count:1];
  v3 = +[USDeviceActivityBudget fetchRequest];
  [v3 setReturnsObjectsAsFaults:0];
  if (v2)
  {
    [v3 setRelationshipKeyPathsForPrefetching:v2];
  }

  v92 = a1[5];
  v91 = a1[4];
  v4 = [NSPredicate predicateWithFormat:@"(%K == %@) && (%K == %@)"];
  [v3 setPredicate:v4];

  v5 = *(a1[6] + 8);
  obj = *(v5 + 40);
  v6 = [v3 execute:&obj];
  objc_storeStrong((v5 + 40), obj);
  v94 = v3;
  if (v6)
  {
    v7 = objc_opt_new();
    v8 = *(a1[7] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = objc_opt_new();
    v138 = 0u;
    v139 = 0u;
    v140 = 0u;
    v141 = 0u;
    v93 = v6;
    v11 = [v6 firstObject];
    v12 = [v11 events];

    v95 = v12;
    v99 = [v12 countByEnumeratingWithState:&v138 objects:v151 count:16];
    if (v99)
    {
      v97 = *v139;
      v98 = a1;
      do
      {
        v13 = 0;
        do
        {
          if (*v139 != v97)
          {
            objc_enumerationMutation(v95);
          }

          v14 = *(*(&v138 + 1) + 8 * v13);
          v15 = [v14 budgetedApplications];
          v16 = [v14 exemptApplications];
          v105 = [v14 budgetedCategories];
          v104 = [v14 budgetedWebDomains];
          v100 = v14;
          v17 = [v14 isUntokenized];
          v18 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v15, "count")}];
          v102 = v15;
          v103 = v13;
          v101 = v16;
          if (v17)
          {
            v136 = 0uLL;
            v137 = 0uLL;
            v134 = 0uLL;
            v135 = 0uLL;
            v19 = v15;
            v20 = [v19 countByEnumeratingWithState:&v134 objects:v150 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v135;
              do
              {
                for (i = 0; i != v21; i = i + 1)
                {
                  if (*v135 != v22)
                  {
                    objc_enumerationMutation(v19);
                  }

                  v24 = [*(*(&v134 + 1) + 8 * i) bundleIdentifier];
                  [v18 addObject:v24];
                }

                v21 = [v19 countByEnumeratingWithState:&v134 objects:v150 count:16];
              }

              while (v21);
            }

            v25 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v16, "count")}];
            v130 = 0u;
            v131 = 0u;
            v132 = 0u;
            v133 = 0u;
            v26 = v16;
            v27 = [v26 countByEnumeratingWithState:&v130 objects:v149 count:16];
            if (v27)
            {
              v28 = v27;
              v29 = *v131;
              do
              {
                for (j = 0; j != v28; j = j + 1)
                {
                  if (*v131 != v29)
                  {
                    objc_enumerationMutation(v26);
                  }

                  v31 = [*(*(&v130 + 1) + 8 * j) bundleIdentifier];
                  [v25 addObject:v31];
                }

                v28 = [v26 countByEnumeratingWithState:&v130 objects:v149 count:16];
              }

              while (v28);
            }

            v32 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v105, "count")}];
            v126 = 0u;
            v127 = 0u;
            v128 = 0u;
            v129 = 0u;
            v33 = v105;
            v34 = [v33 countByEnumeratingWithState:&v126 objects:v148 count:16];
            if (v34)
            {
              v35 = v34;
              v36 = *v127;
              do
              {
                for (k = 0; k != v35; k = k + 1)
                {
                  if (*v127 != v36)
                  {
                    objc_enumerationMutation(v33);
                  }

                  v38 = [*(*(&v126 + 1) + 8 * k) categoryIdentifier];
                  [v32 addObject:v38];
                }

                v35 = [v33 countByEnumeratingWithState:&v126 objects:v148 count:16];
              }

              while (v35);
            }

            v39 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v104, "count")}];
            v122 = 0u;
            v123 = 0u;
            v124 = 0u;
            v125 = 0u;
            v40 = v104;
            v41 = [v40 countByEnumeratingWithState:&v122 objects:v147 count:16];
            if (v41)
            {
              v42 = v41;
              v43 = *v123;
              do
              {
                for (m = 0; m != v42; m = m + 1)
                {
                  if (*v123 != v43)
                  {
                    objc_enumerationMutation(v40);
                  }

                  v45 = [*(*(&v122 + 1) + 8 * m) webDomain];
                  [v39 addObject:v45];
                }

                v42 = [v40 countByEnumeratingWithState:&v122 objects:v147 count:16];
              }

              while (v42);
            }

            v46 = [USDeviceActivityEvent alloc];
            v47 = v100;
            v48 = [v100 threshold];
            v49 = [v46 initWithBundleIdentifiers:v18 exemptBundleIdentifiers:v25 categoryIdentifiers:v32 webDomains:v39 threshold:v48 includesPastActivity:{objc_msgSend(v100, "includesPastActivity")}];
          }

          else
          {
            v120 = 0uLL;
            v121 = 0uLL;
            v118 = 0uLL;
            v119 = 0uLL;
            v50 = v15;
            v51 = [v50 countByEnumeratingWithState:&v118 objects:v146 count:16];
            if (v51)
            {
              v52 = v51;
              v53 = *v119;
              do
              {
                for (n = 0; n != v52; n = n + 1)
                {
                  if (*v119 != v53)
                  {
                    objc_enumerationMutation(v50);
                  }

                  v55 = [*(*(&v118 + 1) + 8 * n) bundleIdentifier];
                  v56 = [v10 encodeApplication:v55];

                  if (v56)
                  {
                    [v18 addObject:v56];
                  }
                }

                v52 = [v50 countByEnumeratingWithState:&v118 objects:v146 count:16];
              }

              while (v52);
            }

            v25 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v16, "count")}];
            v114 = 0u;
            v115 = 0u;
            v116 = 0u;
            v117 = 0u;
            v57 = v16;
            v58 = [v57 countByEnumeratingWithState:&v114 objects:v145 count:16];
            if (v58)
            {
              v59 = v58;
              v60 = *v115;
              do
              {
                for (ii = 0; ii != v59; ii = ii + 1)
                {
                  if (*v115 != v60)
                  {
                    objc_enumerationMutation(v57);
                  }

                  v62 = [*(*(&v114 + 1) + 8 * ii) bundleIdentifier];
                  v63 = [v10 encodeApplication:v62];

                  if (v63)
                  {
                    [v25 addObject:v63];
                  }
                }

                v59 = [v57 countByEnumeratingWithState:&v114 objects:v145 count:16];
              }

              while (v59);
            }

            v96 = v18;

            v32 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v105, "count")}];
            v110 = 0u;
            v111 = 0u;
            v112 = 0u;
            v113 = 0u;
            v64 = v105;
            v65 = [v64 countByEnumeratingWithState:&v110 objects:v144 count:16];
            if (v65)
            {
              v66 = v65;
              v67 = *v111;
              do
              {
                for (jj = 0; jj != v66; jj = jj + 1)
                {
                  if (*v111 != v67)
                  {
                    objc_enumerationMutation(v64);
                  }

                  v69 = [*(*(&v110 + 1) + 8 * jj) categoryIdentifier];
                  v70 = [v10 encodeCategory:v69];

                  if (v70)
                  {
                    [v32 addObject:v70];
                  }
                }

                v66 = [v64 countByEnumeratingWithState:&v110 objects:v144 count:16];
              }

              while (v66);
            }

            v39 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v104, "count")}];
            v106 = 0u;
            v107 = 0u;
            v108 = 0u;
            v109 = 0u;
            v71 = v104;
            v72 = [v71 countByEnumeratingWithState:&v106 objects:v143 count:16];
            if (v72)
            {
              v73 = v72;
              v74 = *v107;
              do
              {
                for (kk = 0; kk != v73; kk = kk + 1)
                {
                  if (*v107 != v74)
                  {
                    objc_enumerationMutation(v71);
                  }

                  v76 = [*(*(&v106 + 1) + 8 * kk) webDomain];
                  v77 = [v10 encodeWebDomain:v76];

                  if (v77)
                  {
                    [v39 addObject:v77];
                  }
                }

                v73 = [v71 countByEnumeratingWithState:&v106 objects:v143 count:16];
              }

              while (v73);
            }

            v78 = [USDeviceActivityEvent alloc];
            v48 = [v100 threshold];
            v79 = [v100 includesPastActivity];
            v80 = v78;
            v47 = v100;
            v18 = v96;
            v49 = [v80 initWithApplicationTokens:v96 exemptApplicationTokens:v25 categoryTokens:v32 webDomainTokens:v39 threshold:v48 includesPastActivity:v79];
          }

          v81 = v49;

          v82 = *(*(v98[7] + 8) + 40);
          v83 = [v47 name];
          [v82 setObject:v81 forKeyedSubscript:v83];

          v13 = v103 + 1;
        }

        while ((v103 + 1) != v99);
        v99 = [v95 countByEnumeratingWithState:&v138 objects:v151 count:16];
      }

      while (v99);
    }

    v6 = v93;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100064220(a1 + 4, (a1 + 6));
    }

    v89 = sub_100004648(101, @"FetchBudgetError", @"SeeSystemLog", v84, v85, v86, v87, v88, @"clientIdentifier");
    v90 = *(a1[6] + 8);
    v10 = *(v90 + 40);
    *(v90 + 40) = v89;
  }
}

void sub_10000D93C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000D958(uint64_t a1)
{
  v2 = [*(a1 + 32) persistentStoreCoordinator];
  v3 = [v2 managedObjectIDForURIRepresentation:*(a1 + 40)];

  if (v3)
  {
    v4 = *(a1 + 48);
    v10 = 0;
    v5 = [v4 existingObjectWithID:v3 error:&v10];
    v6 = v10;
    v7 = [v5 clientIdentifier];
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    sub_100064298((a1 + 40));
  }
}

void sub_10000DB60(uint64_t a1)
{
  v2 = [*(a1 + 32) persistentStoreCoordinator];
  v3 = [v2 managedObjectIDForURIRepresentation:*(a1 + 40)];

  if (v3)
  {
    v4 = *(a1 + 48);
    v11 = 0;
    v5 = [v4 existingObjectWithID:v3 error:&v11];
    v6 = v11;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_100064298((a1 + 40));
    }

    v6 = 0;
    v5 = 0;
  }

  if ((*(*(a1 + 56) + 16))())
  {
    v7 = *(a1 + 48);
    v10 = v6;
    v8 = [v7 save:&v10];
    v9 = v10;

    if ((v8 & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100064318();
    }
  }

  else
  {
    v9 = v6;
  }
}

void sub_10000DD60(uint64_t a1)
{
  v11 = @"events";
  v2 = [NSArray arrayWithObjects:&v11 count:1];
  v3 = +[USDeviceActivityBudget fetchRequest];
  [v3 setReturnsObjectsAsFaults:0];
  if (v2)
  {
    [v3 setRelationshipKeyPathsForPrefetching:v2];
  }

  v10 = 0;
  v4 = [v3 execute:&v10];
  v5 = v10;
  if ((*(*(a1 + 40) + 16))())
  {
    v6 = *(a1 + 32);
    v9 = v5;
    v7 = [v6 save:&v9];
    v8 = v9;

    if ((v7 & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100064394();
    }
  }

  else
  {
    v8 = v5;
  }
}

void sub_10000DFD0(void *a1)
{
  v46 = @"events";
  v2 = [NSArray arrayWithObjects:&v46 count:1];
  v3 = +[USDeviceActivityBudget fetchRequest];
  [v3 setReturnsObjectsAsFaults:0];
  if (v2)
  {
    [v3 setRelationshipKeyPathsForPrefetching:v2];
  }

  v41 = 0;
  v4 = [v3 execute:&v41];
  v5 = v41;
  v6 = v5;
  if (v4)
  {
    v30 = v5;
    v31 = v4;
    v32 = a1;
    v33 = v3;
    v7 = a1[4];
    v8 = a1[5];
    v9 = v4;
    v10 = v7;
    v35 = v8;
    v11 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v9, "count")}];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = v9;
    v12 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v12)
    {
      v13 = v12;
      v36 = *v43;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v43 != v36)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v42 + 1) + 8 * i);
          if (v10)
          {
            v16 = [*(*(&v42 + 1) + 8 * i) clientIdentifier];
            v17 = [v10 containsObject:v16];

            if (v17)
            {
              continue;
            }
          }

          v18 = [USDeviceActivityBudgetMetadata alloc];
          v19 = [v15 name];
          v20 = [v15 objectID];
          v21 = [v15 clientIdentifier];
          [v15 extensionIdentifier];
          v23 = v22 = v11;
          v24 = -[USDeviceActivityBudgetMetadata initWithActivity:budgetID:clientIdentifier:extensionIdentifier:intervalDidStart:](v18, "initWithActivity:budgetID:clientIdentifier:extensionIdentifier:intervalDidStart:", v19, v20, v21, v23, [v15 intervalDidStart]);

          v11 = v22;
          [v22 addObject:v24];
          [v35 deleteObject:v15];
        }

        v13 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v13);
    }

    v25 = v32[5];
    v40 = v30;
    v26 = [v25 save:&v40];
    v6 = v40;

    (*(v32[7] + 16))();
    if (v26)
    {
      v27 = [v32[6] notificationPostingQueue];
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_10000E388;
      v37[3] = &unk_1000860C0;
      v28 = v11;
      v29 = v32[6];
      v38 = v28;
      v39 = v29;
      [v27 addOperationWithBlock:v37];
    }

    v3 = v33;
    v4 = v31;
  }

  else
  {
    (*(a1[7] + 16))();
  }
}

void sub_10000E388(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5 = @"BudgetMetadata";
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"DeviceActivityBudgetsWereRemoved" object:*(a1 + 40) userInfo:v3];
}

void sub_10000E4AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v10 = [[USDailyLimit alloc] initWithContext:*(a1 + 32)];
  v7 = [v6 integerValue];

  [(USDailyLimit *)v10 setWeekday:v7];
  [v5 doubleValue];
  v9 = v8;

  [(USDailyLimit *)v10 setTimeLimit:v9];
  [*(a1 + 40) addScheduleObject:v10];
}

void sub_10000E56C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 integerValue];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v15 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v14 + 1) + 8 * v11);
      if ([v12 weekday] == v6)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v13 = v12;

    if (v13)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_9:
  }

  v13 = [[USDailyLimit alloc] initWithContext:*(a1 + 40)];
  [(USDailyLimit *)v13 setWeekday:v6];
  [*(a1 + 48) addScheduleObject:v13];
LABEL_12:
  [v5 doubleValue];
  [(USDailyLimit *)v13 setTimeLimit:?];
}

void sub_10000E6E8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = [[USRegisteredDeviceActivityEvent alloc] initWithContext:v8];
  [(USRegisteredDeviceActivityEvent *)v9 setName:v5];
  v10 = [v6 threshold];
  [(USRegisteredDeviceActivityEvent *)v9 setThreshold:v10];

  -[USRegisteredDeviceActivityEvent setIncludesPastActivity:](v9, "setIncludesPastActivity:", [v6 includesPastActivity]);
  v49 = v6;
  v50 = v5;
  v48 = v7;
  if ([v6 isUntokenized])
  {
    [(USRegisteredDeviceActivityEvent *)v9 setIsUntokenized:1];
    v11 = [v6 bundleIdentifiers];
    v12 = [v6 exemptBundleIdentifiers];
    v13 = [v6 categoryIdentifiers];
    v47 = [v6 webDomains];
  }

  else
  {
    [(USRegisteredDeviceActivityEvent *)v9 setIsUntokenized:0];
    v14 = objc_opt_new();
    v15 = [v6 applicationTokens];
    v11 = [v14 decodeApplications:v15];

    v16 = [v6 exemptApplicationTokens];
    v12 = [v14 decodeApplications:v16];

    v17 = [v6 categoryTokens];
    v13 = [v14 decodeCategories:v17];

    v18 = [v6 webDomainTokens];
    v47 = [v14 decodeWebDomains:v18];
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v13;
  v19 = [obj countByEnumeratingWithState:&v64 objects:v71 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v65;
    do
    {
      v22 = 0;
      do
      {
        if (*v65 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v64 + 1) + 8 * v22);
        v24 = [[USBudgetedCategory alloc] initWithContext:v8];
        [(USBudgetedCategory *)v24 setCategoryIdentifier:v23];
        [(USRegisteredDeviceActivityEvent *)v9 addBudgetedCategoriesObject:v24];

        v22 = v22 + 1;
      }

      while (v20 != v22);
      v20 = [obj countByEnumeratingWithState:&v64 objects:v71 count:16];
    }

    while (v20);
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v25 = v11;
  v26 = [v25 countByEnumeratingWithState:&v60 objects:v70 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v61;
    do
    {
      v29 = 0;
      do
      {
        if (*v61 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v60 + 1) + 8 * v29);
        v31 = [[USBudgetedApplication alloc] initWithContext:v8];
        [(USBudgetedApplication *)v31 setBundleIdentifier:v30];
        [(USRegisteredDeviceActivityEvent *)v9 addBudgetedApplicationsObject:v31];

        v29 = v29 + 1;
      }

      while (v27 != v29);
      v27 = [v25 countByEnumeratingWithState:&v60 objects:v70 count:16];
    }

    while (v27);
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v32 = v12;
  v33 = [v32 countByEnumeratingWithState:&v56 objects:v69 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v57;
    do
    {
      v36 = 0;
      do
      {
        if (*v57 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v56 + 1) + 8 * v36);
        v38 = [[USExemptApplication alloc] initWithContext:v8];
        [(USExemptApplication *)v38 setBundleIdentifier:v37];
        [(USRegisteredDeviceActivityEvent *)v9 addExemptApplicationsObject:v38];

        v36 = v36 + 1;
      }

      while (v34 != v36);
      v34 = [v32 countByEnumeratingWithState:&v56 objects:v69 count:16];
    }

    while (v34);
  }

  v46 = v25;

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v39 = v47;
  v40 = [v39 countByEnumeratingWithState:&v52 objects:v68 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v53;
    do
    {
      v43 = 0;
      do
      {
        if (*v53 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = *(*(&v52 + 1) + 8 * v43);
        v45 = [[USBudgetedWebDomain alloc] initWithContext:v8, v46];
        [(USBudgetedWebDomain *)v45 setWebDomain:v44];
        [(USRegisteredDeviceActivityEvent *)v9 addBudgetedWebDomainsObject:v45];

        v43 = v43 + 1;
      }

      while (v41 != v43);
      v41 = [v39 countByEnumeratingWithState:&v52 objects:v68 count:16];
    }

    while (v41);
  }

  [v48 addEventsObject:v9];
}

void sub_10000EC0C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (([*(a1 + 32) containsObject:v5] & 1) == 0)
  {
    v8 = *(a1 + 40);
    v7 = *(a1 + 48);
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = [[USRegisteredDeviceActivityEvent alloc] initWithContext:v11];
    [(USRegisteredDeviceActivityEvent *)v12 setName:v9];
    v13 = [v10 threshold];
    [(USRegisteredDeviceActivityEvent *)v12 setThreshold:v13];

    -[USRegisteredDeviceActivityEvent setIncludesPastActivity:](v12, "setIncludesPastActivity:", [v10 includesPastActivity]);
    v57 = v6;
    v58 = v5;
    v55 = v9;
    v56 = v8;
    v54 = v10;
    if ([v10 isUntokenized])
    {
      [(USRegisteredDeviceActivityEvent *)v12 setIsUntokenized:1];
      v14 = [v10 bundleIdentifiers];
      v50 = [v10 exemptBundleIdentifiers];
      v15 = [v10 categoryIdentifiers];
      v52 = [v10 webDomains];
    }

    else
    {
      [(USRegisteredDeviceActivityEvent *)v12 setIsUntokenized:0];
      v16 = objc_opt_new();
      v17 = [v10 applicationTokens];
      v14 = [v16 decodeApplications:v17];

      v18 = [v10 exemptApplicationTokens];
      v50 = [v16 decodeApplications:v18];

      [v10 categoryTokens];
      v20 = v19 = v10;
      v15 = [v16 decodeCategories:v20];

      v21 = [v19 webDomainTokens];
      v52 = [v16 decodeWebDomains:v21];
    }

    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v22 = v15;
    v23 = [v22 countByEnumeratingWithState:&v71 objects:v78 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v72;
      do
      {
        v26 = 0;
        do
        {
          if (*v72 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v71 + 1) + 8 * v26);
          v28 = [[USBudgetedCategory alloc] initWithContext:v11];
          [(USBudgetedCategory *)v28 setCategoryIdentifier:v27];
          [(USRegisteredDeviceActivityEvent *)v12 addBudgetedCategoriesObject:v28];

          v26 = v26 + 1;
        }

        while (v24 != v26);
        v24 = [v22 countByEnumeratingWithState:&v71 objects:v78 count:16];
      }

      while (v24);
    }

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v29 = v14;
    v30 = [v29 countByEnumeratingWithState:&v67 objects:v77 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v68;
      do
      {
        v33 = 0;
        do
        {
          if (*v68 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v67 + 1) + 8 * v33);
          v35 = [[USBudgetedApplication alloc] initWithContext:v11];
          [(USBudgetedApplication *)v35 setBundleIdentifier:v34];
          [(USRegisteredDeviceActivityEvent *)v12 addBudgetedApplicationsObject:v35];

          v33 = v33 + 1;
        }

        while (v31 != v33);
        v31 = [v29 countByEnumeratingWithState:&v67 objects:v77 count:16];
      }

      while (v31);
    }

    v53 = v22;

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v36 = v50;
    v37 = [v36 countByEnumeratingWithState:&v63 objects:v76 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v64;
      do
      {
        v40 = 0;
        do
        {
          if (*v64 != v39)
          {
            objc_enumerationMutation(v36);
          }

          v41 = *(*(&v63 + 1) + 8 * v40);
          v42 = [[USExemptApplication alloc] initWithContext:v11];
          [(USExemptApplication *)v42 setBundleIdentifier:v41];
          [(USRegisteredDeviceActivityEvent *)v12 addExemptApplicationsObject:v42];

          v40 = v40 + 1;
        }

        while (v38 != v40);
        v38 = [v36 countByEnumeratingWithState:&v63 objects:v76 count:16];
      }

      while (v38);
    }

    v51 = v29;

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v43 = v52;
    v44 = [v43 countByEnumeratingWithState:&v59 objects:v75 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v60;
      do
      {
        v47 = 0;
        do
        {
          if (*v60 != v46)
          {
            objc_enumerationMutation(v43);
          }

          v48 = *(*(&v59 + 1) + 8 * v47);
          v49 = [[USBudgetedWebDomain alloc] initWithContext:v11, v51];
          [(USBudgetedWebDomain *)v49 setWebDomain:v48];
          [(USRegisteredDeviceActivityEvent *)v12 addBudgetedWebDomainsObject:v49];

          v47 = v47 + 1;
        }

        while (v45 != v47);
        v45 = [v43 countByEnumeratingWithState:&v59 objects:v75 count:16];
      }

      while (v45);
    }

    [v56 addEventsObject:v12];
    v6 = v57;
    v5 = v58;
  }
}

uint64_t *sub_10000F194@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(v3 - 8) = a3;
  v4 = *result;
  v5 = *(*(*a2 + 8) + 40);
  return result;
}

uint64_t *sub_10000F1D4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void sub_10000F1E0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

uint64_t sub_10000F1F8(uint64_t result, uint64_t a2, float a3)
{
  *result = a3;
  *(result + 4) = a2;
  return result;
}

void sub_10000F248(id a1)
{
  qword_100091C40 = objc_opt_new();

  _objc_release_x1();
}

void sub_10000F414(id a1)
{
  qword_100091C50 = objc_opt_new();

  _objc_release_x1();
}

void sub_10000F788(uint64_t a1, void *a2)
{
  v3 = a2;
  v16 = os_transaction_create();
  string = xpc_dictionary_get_string(v3, _xpc_event_key_name);

  if (!strcmp(string, "com.apple.UsageTrackingAgent.alarm.application"))
  {
    [*(a1 + 32) _applicationAlarmDidFire];
    goto LABEL_23;
  }

  if (!strcmp(string, "com.apple.UsageTrackingAgent.alarm.web-domain"))
  {
    [*(a1 + 32) _webDomainAlarmDidFire];
    goto LABEL_23;
  }

  if (!strcmp(string, "com.apple.UsageTrackingAgent.alarm.now-playing"))
  {
    [*(a1 + 32) _nowPlayingAlarmDidFire];
    goto LABEL_23;
  }

  if (!strcmp(string, "com.apple.UsageTrackingAgent.alarm.video"))
  {
    [*(a1 + 32) _videoAlarmDidFire];
    goto LABEL_23;
  }

  if (!strncmp(string, "com.apple.UsageTrackingAgent.alarm.budgets-reset-", 0x31uLL))
  {
    v10 = *(a1 + 32);
    v11 = [NSString stringWithUTF8String:string];
    [v10 _budgetsResetAlarmDidFire:v11];

    goto LABEL_23;
  }

  if (!strncmp(string, "com.apple.UsageTrackingAgent.alarm.start-warning-", 0x31uLL))
  {
    v12 = *(a1 + 32);
    v13 = string;
    v14 = 1;
  }

  else
  {
    if (strncmp(string, "com.apple.UsageTrackingAgent.alarm.start-", 0x29uLL))
    {
      if (!strncmp(string, "com.apple.UsageTrackingAgent.end-warning-", 0x29uLL))
      {
        v12 = *(a1 + 32);
        v13 = string;
        v14 = 1;
      }

      else
      {
        if (strncmp(string, "com.apple.UsageTrackingAgent.alarm.end-", 0x27uLL))
        {
          v5 = +[NSAssertionHandler currentHandler];
          v8 = a1 + 32;
          v6 = *(a1 + 32);
          v7 = *(v8 + 8);
          v9 = [NSString stringWithUTF8String:string];
          [v5 handleFailureInMethod:v7 object:v6 file:@"USBudgetTracker.m" lineNumber:220 description:{@"Unknown event name: %@", v9}];

          goto LABEL_23;
        }

        v12 = *(a1 + 32);
        v13 = string;
        v14 = 0;
      }

      v15 = 1;
      goto LABEL_22;
    }

    v12 = *(a1 + 32);
    v13 = string;
    v14 = 0;
  }

  v15 = 0;
LABEL_22:
  [v12 _budgetIntervalAlarmDidFire:v13 isWarning:v14 isEndOfInterval:v15];
LABEL_23:
}

void sub_10000F9D4(uint64_t a1, xpc_object_t xdict)
{
  string = xpc_dictionary_get_string(xdict, _xpc_event_key_name);
  if (!strcmp(string, "com.apple.UsageTrackingAgent.distributed-notification.duet-sync-coordinator-did-idle"))
  {
    v9 = *(a1 + 32);

    [v9 _duetSyncCoordinatorDidIdle];
  }

  else if (!strcmp(string, "com.apple.UsageTrackingAgent.distributed-notification.duet-application-usage-did-tombstone") || !strcmp(string, "com.apple.UsageTrackingAgent.distributed-notification.duet-web-domain-usage-did-tombstone") || !strcmp(string, "com.apple.UsageTrackingAgent.distributed-notification.duet-now-playing-usage-did-tombstone") || !strcmp(string, "com.apple.UsageTrackingAgent.distributed-notification.duet-video-usage-did-tombstone"))
  {
    v8 = *(a1 + 32);

    [v8 _tombstoneEventDidFire:?];
  }

  else
  {
    v10 = +[NSAssertionHandler currentHandler];
    v6 = a1 + 32;
    v4 = *(a1 + 32);
    v5 = *(v6 + 8);
    v7 = [NSString stringWithUTF8String:string];
    [v10 handleFailureInMethod:v5 object:v4 file:@"USBudgetTracker.m" lineNumber:237 description:{@"Unknown event name: %@", v7}];
  }
}

void sub_10000FB44(uint64_t a1, xpc_object_t xdict)
{
  string = xpc_dictionary_get_string(xdict, _xpc_event_key_name);
  if (strcmp(string, "SignificantTimeChangeNotification"))
  {
    if (!strcmp(string, "com.apple.mobile.keybagd.first_unlock"))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Received first-unlock notification; registering for usage and handling missed significant time change.", v7, 2u);
      }

      [*(a1 + 32) _registerForAllUsage];
      [*(a1 + 32) _systemTimeDidChange];
      xpc_set_event();
    }

    return;
  }

  v4 = MKBUserUnlockedSinceBoot();
  if (v4 < 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100064438();
    }
  }

  else if (v4 == 1)
  {
    v5 = *(a1 + 32);

    [v5 _systemTimeDidChange];
    return;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Received significant time change notification prior to first-unlock. Pending all work until after the device is unlocked.", buf, 2u);
  }

  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v6, "Notification", "com.apple.mobile.keybagd.first_unlock");
  xpc_set_event();
}

void sub_10000FCF4(id a1, NSString *a2, NSSet *a3)
{
  v3 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(NSSet *)v3 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    v7 = MOEffectiveSettingsGroupDeviceActivity;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v13 + 1) + 8 * v8) isEqualToString:v7])
        {
          v9 = +[_TtC18UsageTrackingAgent29USDeviceActivityAuthorization authorizedClientIdentifiers];
          if (_os_feature_enabled_impl())
          {
            if ([v9 count])
            {
              if (!+[_TtC18UsageTrackingAgent29USDeviceActivityAuthorization sharingEnabled])
              {
                v12 = 0;
                [_TtC18UsageTrackingAgent15SyncCoordinator deleteLocalDataAndReturnError:&v12];
                v10 = v12;
                if (v10 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  sub_1000644B4(buf, v10, &v18);
                }
              }

              [_TtC18UsageTrackingAgent23DeviceActivityCollector collectLocalActivityWithOptions:1 shouldSync:1 completionHandler:&stru_100086278];
            }

            else
            {
              [_TtC18UsageTrackingAgent23DeviceActivityCollector deleteLocalActivityWithCompletionHandler:&stru_100086298];
            }

            +[_TtC18UsageTrackingAgent15SyncCoordinator resetSharingPermissions];
          }

          v11 = +[USBudgetRegistration sharedRegistration];
          [v11 removeDeviceActivityBudgetsNotMatchingClients:v9 completionHandler:&stru_1000862D8];
        }

        v8 = v8 + 1;
      }

      while (v5 != v8);
      v5 = [(NSSet *)v3 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v5);
  }
}

void sub_10000FF0C(id a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Finished refreshing local device activity due to effective settings change.", v1, 2u);
  }
}

void sub_10000FF68(id a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Finished deleting local activity because there are no more allowed clients.", v1, 2u);
  }
}

void sub_10000FFC4(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100064500();
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Successfully removed all Device Activity budgets because Device Activity is no longer authorized", v3, 2u);
  }
}

void sub_100010058(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Resetting all Device Activity alarms.", v4, 2u);
  }

  [*(a1 + 32) _resetDeviceActivityAlarms];
  v3[2](v3, 1);
}

void sub_1000103EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10001040C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 events];
  *(*(*(a1 + 48) + 8) + 24) = [v7 count] != 0;

  if (v5)
  {
    v8 = *(a1 + 32);
    v17 = v5;
    v9 = [NSArray arrayWithObjects:&v17 count:1];
    v10 = (*(a1 + 56) & 1) == 0;
    v11 = [v8 _setAlarmsOrNotifyExtensionsForDeviceActivityBudgets:v9 notifyForIntervalEnd:v10 isEndOfInterval:v10];

    if (*(a1 + 56) == 1 && *(*(*(a1 + 48) + 8) + 24) == 1 && [v5 intervalDidStart])
    {
      v12 = [*(a1 + 32) _cacheThresholdAdjustmentTimeForBudget:v5];
      v13 = *(a1 + 32);
      v14 = [v5 events];
      v15 = [v14 allObjects];
      v11 = (v11 | v12 | [v13 _notifyForBudgets:&__NSArray0__struct events:v15 nextNotificationEventName:0 syncForImpendingBudgets:0]);
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100064578(a1);
    }

    v11 = 0;
  }

  return v11;
}

id sub_1000109FC(uint64_t a1)
{
  [*(a1 + 32) _subscribeForApplicationUsage];
  [*(a1 + 32) _subscribeForWebDomainUsage];
  [*(a1 + 32) _subscribeForNowPlayingUsage];
  v2 = *(a1 + 32);

  return [v2 _subscribeForVideoUsage];
}

id sub_100011590(uint64_t a1, void *a2)
{
  if (([a2 isEqualToString:@"com.apple.UsageTrackingAgent.registration.application"] & 1) == 0)
  {
    sub_1000647D4(a1);
  }

  v3 = *(a1 + 32);

  return [v3 _applicationRegistrationDidFire];
}

id sub_100011F38(uint64_t a1, void *a2)
{
  if (([a2 isEqualToString:@"com.apple.UsageTrackingAgent.registration.web-domain"] & 1) == 0)
  {
    sub_100064A28(a1);
  }

  v3 = *(a1 + 32);

  return [v3 _webDomainRegistrationDidFire];
}

id sub_100012598(uint64_t a1, void *a2)
{
  if (([a2 isEqualToString:@"com.apple.UsageTrackingAgent.registration.now-playing"] & 1) == 0)
  {
    sub_100064B8C(a1);
  }

  v3 = *(a1 + 32);

  return [v3 _nowPlayingRegistrationDidFire];
}

id sub_100013304(uint64_t a1, void *a2)
{
  if (([a2 isEqualToString:@"com.apple.UsageTrackingAgent.registration.video"] & 1) == 0)
  {
    sub_100064ED0(a1);
  }

  v3 = *(a1 + 32);

  return [v3 _videoRegistrationDidFire];
}

id sub_1000150A4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v10 = [*(a1 + 32) _notifyForBudgets:v7 events:v8 nextNotificationEventName:0 syncForImpendingBudgets:0];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100064FEC();
    }

    v10 = 0;
  }

  return v10;
}

void sub_1000152E4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v30 = v6;
    v31 = a1;
    v8 = objc_opt_new();
    v9 = objc_opt_new();
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v32 = v5;
    obj = v5;
    v10 = [obj countByEnumeratingWithState:&v38 objects:v47 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v39;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v39 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = [*(*(&v38 + 1) + 8 * i) budget];
          [v9 addObject:v14];
          v15 = v8;
          v16 = [v14 darwinNotificationName];
          if ([v15 containsObject:v16])
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
            {
              *buf = 138543362;
              v43 = v16;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Already posted darwin notification %{public}@, skipping", buf, 0xCu);
            }
          }

          else
          {
            v17 = notify_post([v16 UTF8String]);
            if (v17)
            {
              v18 = v17;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543618;
                v43 = v16;
                v44 = 1024;
                LODWORD(v45) = v18;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to post darwin notification %{public}@: %u", buf, 0x12u);
              }
            }

            else
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v43 = v16;
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Posted darwin notification %{public}@", buf, 0xCu);
              }

              [v15 addObject:v16];
            }
          }
        }

        v11 = [obj countByEnumeratingWithState:&v38 objects:v47 count:16];
      }

      while (v11);
    }

    v19 = objc_opt_new();
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v20 = v9;
    v21 = [v20 countByEnumeratingWithState:&v34 objects:v46 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v35;
      v24 = @"%@/%@";
      do
      {
        for (j = 0; j != v22; j = j + 1)
        {
          if (*v35 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v26 = *(*(&v34 + 1) + 8 * j);
          v27 = [v26 clientIdentifier];
          v28 = [v26 identifier];
          [v19 appendFormat:v24, v27, v28];

          v24 = @", %@/%@";
        }

        v22 = [v20 countByEnumeratingWithState:&v34 objects:v46 count:16];
        v24 = @", %@/%@";
      }

      while (v22);
    }

    a1 = v31;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v29 = *(v31 + 32);
      *buf = 138543618;
      v43 = v29;
      v44 = 2114;
      v45 = v19;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Unregistered alarm for today in %{public}@ and reset budgets: %{public}@", buf, 0x16u);
    }

    v5 = v32;
    v7 = v30;
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100065064(a1);
  }

  [*(a1 + 40) UTF8String];
  xpc_set_event();
  xpc_set_event();
  xpc_set_event();
  xpc_set_event();
  xpc_set_event();
  [*(a1 + 48) _checkBudgetStatusForAllCurrentUsage];
}

void sub_100015A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100015A30(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    if (*(a1 + 56) == 1)
    {
      v7 = *(a1 + 57) ^ 1;
    }

    else
    {
      v7 = 0;
    }

    v9 = *(a1 + 32);
    v13 = v5;
    v10 = [NSArray arrayWithObjects:&v13 count:1];
    v8 = [v9 _setAlarmsOrNotifyExtensionsForDeviceActivityBudgets:v10 notifyForIntervalEnd:v7 & 1 isEndOfInterval:v7 & 1];

    v11 = [v5 events];
    *(*(*(a1 + 40) + 8) + 24) = [v11 count] != 0;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10006516C(a1);
    }

    v8 = 0;
  }

  return v8;
}

id sub_100015CB0(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Finished refreshing local device activity due to Duet tombstone event.", v3, 2u);
  }

  return [*(a1 + 32) _calculateDeletedTimeForBudgetsAndEventsAfterUsageDataDeletion:*(a1 + 40)];
}

BOOL sub_100015DD8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = objc_opt_class();
  v9 = *(a1 + 40);
  v55 = 0;
  v43 = v5;
  v10 = [v8 _getRemainingTimeForBudgets:v5 referenceDate:v9 error:&v55];
  v44 = v55;
  v45 = v6;
  v42 = v10;
  if (v10)
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v51 objects:v61 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v52;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v52 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v51 + 1) + 8 * i);
          v17 = [v11 objectForKey:v16];
          [v17 doubleValue];
          v19 = v18;

          [v16 setTimeRemainingBeforeUsageDeletion:v19];
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v20 = [v16 identifier];
            *buf = 138543618;
            v58 = v20;
            v59 = 2048;
            v60 = v19;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Caching time remaining for budget %{public}@: %g", buf, 0x16u);
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v51 objects:v61 count:16];
      }

      while (v13);
    }

    v6 = v45;
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000651EC();
  }

  v21 = *(a1 + 32);
  v22 = objc_opt_class();
  v23 = *(a1 + 40);
  v50 = 0;
  v24 = [v22 _getRemainingTimeForEvents:v6 referenceDate:v23 error:&v50];
  v25 = v50;
  v26 = v25;
  if (v24)
  {
    v40 = v25;
    v41 = v24;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v27 = v24;
    v28 = [v27 countByEnumeratingWithState:&v46 objects:v56 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v47;
      do
      {
        for (j = 0; j != v29; j = j + 1)
        {
          if (*v47 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v46 + 1) + 8 * j);
          v33 = [v27 objectForKey:{v32, v40}];
          [v33 doubleValue];
          v35 = v34;

          [v32 setTimeRemainingBeforeUsageDeletion:v35];
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v36 = [v32 budget];
            v37 = [v36 name];
            *buf = 138543618;
            v58 = v37;
            v59 = 2048;
            v60 = v35;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Caching time remaining for event %{public}@: %g", buf, 0x16u);
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v46 objects:v56 count:16];
      }

      while (v29);
    }

    v6 = v45;
    v26 = v40;
    v24 = v41;
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100065264();
  }

  if ([v42 count])
  {
    v38 = 1;
  }

  else
  {
    v38 = [v24 count] != 0;
  }

  return v38;
}

BOOL sub_1000162A8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = objc_opt_class();
  v9 = *(a1 + 40);
  v61 = 0;
  v50 = v5;
  v10 = [v8 _getRemainingTimeForBudgets:v5 referenceDate:v9 error:&v61];
  v51 = v61;
  v49 = v10;
  if (v10)
  {
    v47 = a1;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v57 objects:v67 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v58;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v58 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v57 + 1) + 8 * i);
          [v16 timeRemainingBeforeUsageDeletion];
          v18 = v17;
          v19 = [v11 objectForKey:v16];
          [v19 doubleValue];
          v21 = v20;

          v22 = fmax(v21 - v18, 0.0);
          [v16 setDeletedTime:v22];
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v23 = [v16 identifier];
            *buf = 138543618;
            v64 = v23;
            v65 = 2048;
            v66 = v22;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Calculated deleted time for budget %{public}@: %g", buf, 0x16u);
          }

          [v16 setTimeRemainingBeforeUsageDeletion:0.0];
        }

        v13 = [v11 countByEnumeratingWithState:&v57 objects:v67 count:16];
      }

      while (v13);
    }

    a1 = v47;
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000651EC();
  }

  v24 = *(a1 + 32);
  v25 = objc_opt_class();
  v26 = *(a1 + 40);
  v56 = 0;
  v27 = [v25 _getRemainingTimeForEvents:v6 referenceDate:v26 error:&v56];
  v28 = v56;
  v29 = v28;
  if (v27)
  {
    v46 = v28;
    v48 = v27;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v30 = v27;
    v31 = [v30 countByEnumeratingWithState:&v52 objects:v62 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v53;
      do
      {
        for (j = 0; j != v32; j = j + 1)
        {
          if (*v53 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v52 + 1) + 8 * j);
          [v35 timeRemainingBeforeUsageDeletion];
          v37 = v36;
          v38 = [v30 objectForKey:v35];
          [v38 doubleValue];
          v40 = v39;

          v41 = fmax(v40 - v37, 0.0);
          [v35 setDeletedTime:v41];
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v42 = [v35 budget];
            v43 = [v42 name];
            *buf = 138543618;
            v64 = v43;
            v65 = 2048;
            v66 = v41;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Calculated deleted time for event %{public}@: %g", buf, 0x16u);
          }

          [v35 setTimeRemainingBeforeUsageDeletion:0.0];
        }

        v32 = [v30 countByEnumeratingWithState:&v52 objects:v62 count:16];
      }

      while (v32);
    }

    v29 = v46;
    v27 = v48;
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100065264();
  }

  if ([v49 count])
  {
    v44 = 1;
  }

  else
  {
    v44 = [v27 count] != 0;
  }

  return v44;
}

uint64_t sub_1000167A4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v76 = objc_opt_new();
  if (v6 && v7)
  {
    v9 = objc_opt_new();
    v10 = *(a1 + 32);
    v90 = 0;
    v11 = [objc_opt_class() _getRemainingTimeForBudgets:v6 referenceDate:v9 error:&v90];
    v62 = v90;
    v63 = v11;
    v66 = v7;
    v67 = v6;
    v64 = v9;
    v65 = v8;
    if (v11)
    {
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v12 = v11;
      v13 = [v12 countByEnumeratingWithState:&v86 objects:v101 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v87;
        v68 = *v87;
        v69 = v12;
        do
        {
          v16 = 0;
          v71 = v14;
          do
          {
            if (*v87 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v86 + 1) + 8 * v16);
            v18 = [v12 objectForKey:v17];
            [v18 doubleValue];
            v20 = v19;

            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              v21 = [v17 clientIdentifier];
              v22 = [v17 identifier];
              *buf = 138543874;
              v92 = v21;
              v93 = 2114;
              v94 = v22;
              v95 = 2048;
              v96 = v20;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}@/%{public}@ has %g seconds remaining", buf, 0x20u);
            }

            if (v20 > 0.0)
            {
              v72 = v16;
              v84 = 0u;
              v85 = 0u;
              v82 = 0u;
              v83 = 0u;
              v23 = [v17 notificationTimes];
              v24 = [v23 countByEnumeratingWithState:&v82 objects:v100 count:16];
              if (v24)
              {
                v25 = v24;
                v26 = *v83;
                do
                {
                  for (i = 0; i != v25; i = i + 1)
                  {
                    if (*v83 != v26)
                    {
                      objc_enumerationMutation(v23);
                    }

                    v28 = *(*(&v82 + 1) + 8 * i);
                    if ([v28 notificationWasPosted])
                    {
                      [v28 remainingTime];
                      if (v20 > v29)
                      {
                        v30 = v29;
                        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                        {
                          v31 = [v17 clientIdentifier];
                          v32 = [v17 identifier];
                          *buf = 138543874;
                          v92 = v31;
                          v93 = 2114;
                          v94 = v32;
                          v95 = 2048;
                          v96 = v30;
                          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}@/%{public}@ cleared posted notification for %g seconds", buf, 0x20u);
                        }

                        v33 = v17;
                        v34 = v76;
                        v35 = [v33 darwinNotificationName];
                        if ([v34 containsObject:v35])
                        {
                          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
                          {
                            *buf = 138543362;
                            v92 = v35;
                            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Already posted darwin notification %{public}@, skipping", buf, 0xCu);
                          }
                        }

                        else
                        {
                          v36 = notify_post([v35 UTF8String]);
                          if (v36)
                          {
                            v37 = v36;
                            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                            {
                              *buf = 138543618;
                              v92 = v35;
                              v93 = 1024;
                              LODWORD(v94) = v37;
                              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to post darwin notification %{public}@: %u", buf, 0x12u);
                            }
                          }

                          else
                          {
                            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                            {
                              *buf = 138543362;
                              v92 = v35;
                              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Posted darwin notification %{public}@", buf, 0xCu);
                            }

                            [v34 addObject:v35];
                          }
                        }

                        [v28 setNotificationWasPosted:0];
                      }
                    }
                  }

                  v25 = [v23 countByEnumeratingWithState:&v82 objects:v100 count:16];
                }

                while (v25);
              }

              v15 = v68;
              v12 = v69;
              v14 = v71;
              v16 = v72;
            }

            v16 = v16 + 1;
          }

          while (v16 != v14);
          v14 = [v12 countByEnumeratingWithState:&v86 objects:v101 count:16];
        }

        while (v14);
      }

      v7 = v66;
      v6 = v67;
      v9 = v64;
      v8 = v65;
      v11 = v63;
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000651EC();
    }

    v39 = *(a1 + 32);
    v81 = 0;
    v40 = [objc_opt_class() _getRemainingTimeForEvents:v7 referenceDate:v9 error:&v81];
    v41 = v81;
    v42 = v41;
    if (v40)
    {
      v73 = v41;
      v74 = v40;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v43 = v40;
      v44 = [v43 countByEnumeratingWithState:&v77 objects:v99 count:16];
      if (v44)
      {
        v45 = v44;
        v38 = 0;
        v46 = *v78;
        v75 = v43;
        do
        {
          for (j = 0; j != v45; j = j + 1)
          {
            if (*v78 != v46)
            {
              objc_enumerationMutation(v43);
            }

            v48 = *(*(&v77 + 1) + 8 * j);
            v49 = [v43 objectForKey:v48];
            [v49 doubleValue];
            v51 = v50;

            v52 = [v48 name];
            v53 = [v48 budget];
            v54 = [v53 name];
            v55 = [v53 clientIdentifier];
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138544130;
              v92 = v52;
              v93 = 2114;
              v94 = v54;
              v95 = 2114;
              v96 = *&v55;
              v97 = 2048;
              v98 = v51;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}@/%{public}@/%{public}@ has %g seconds remaining", buf, 0x2Au);
            }

            if (v51 > 0.0)
            {
              v56 = v46;
              v57 = *(a1 + 32);
              [v53 extensionIdentifier];
              v59 = v58 = v45;
              LODWORD(v57) = [v57 _notifyExtensionThatEventDidUnreachThreshold:v52 activity:v54 clientIdentifier:v55 extensionIdentifier:v59];

              v45 = v58;
              v38 |= v57;
              v46 = v56;
              v43 = v75;
            }
          }

          v45 = [v43 countByEnumeratingWithState:&v77 objects:v99 count:16];
        }

        while (v45);
      }

      else
      {
        v38 = 0;
      }

      v7 = v66;
      v6 = v67;
      v9 = v64;
      v8 = v65;
      v11 = v63;
      v42 = v73;
      v40 = v74;
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100065264();
      }

      v38 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000652DC();
    }

    v38 = 0;
  }

  xpc_set_event();
  xpc_set_event();
  xpc_set_event();
  xpc_set_event();
  v60 = [v76 count] != 0;

  return (v60 | v38) & 1;
}

id sub_100017194(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) _setAlarmsOrNotifyExtensionsForDeviceActivityBudgets:v5 notifyForIntervalEnd:1 isEndOfInterval:0];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100065354();
    }

    v7 = 0;
  }

  return v7;
}

id sub_100017940(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v10 = [*(a1 + 32) _notifyForBudgets:v7 events:v8 nextNotificationEventName:"com.apple.UsageTrackingAgent.alarm.application" syncForImpendingBudgets:1];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000653CC(a1);
    }

    v10 = 0;
  }

  return v10;
}

id sub_100017B54(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v10 = [*(a1 + 32) _notifyForBudgets:v7 events:v8 nextNotificationEventName:"com.apple.UsageTrackingAgent.alarm.web-domain" syncForImpendingBudgets:1];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100065448(a1);
    }

    v10 = 0;
  }

  return v10;
}

id sub_100017D68(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v10 = [*(a1 + 32) _notifyForBudgets:v7 events:v8 nextNotificationEventName:"com.apple.UsageTrackingAgent.alarm.now-playing" syncForImpendingBudgets:1];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000654C4(a1);
    }

    v10 = 0;
  }

  return v10;
}

id sub_100017F7C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v10 = [*(a1 + 32) _notifyForBudgets:v7 events:v8 nextNotificationEventName:"com.apple.UsageTrackingAgent.alarm.video" syncForImpendingBudgets:1];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100065540(a1);
    }

    v10 = 0;
  }

  return v10;
}

id sub_100018190(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v10 = [*(a1 + 32) _notifyForBudgets:v7 events:v8 nextNotificationEventName:"com.apple.UsageTrackingAgent.alarm.video" syncForImpendingBudgets:1];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000655BC(a1);
    }

    v10 = 0;
  }

  return v10;
}

void sub_10001A5C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v4)
    {
      v7 = 138543362;
      v8 = v3;
      v5 = "Failed to upload DeviceActivity data %{public}@";
LABEL_6:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v5, &v7, 0xCu);
    }
  }

  else if (v4)
  {
    v6 = *(a1 + 32);
    v7 = 138543362;
    v8 = v6;
    v5 = "Successfully uploaded DeviceActivity data for budgets and events %{public}@";
    goto LABEL_6;
  }
}

void sub_10001A6A8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000656B4();
    }

    [*(a1 + 32) setLastSyncDate:0];
  }
}

void sub_10001B960(void *a1, void *a2)
{
  v3 = a2;
  if (v3 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100065970(a1);
  }
}

void sub_10001B9B0(void *a1, void *a2)
{
  v3 = a2;
  if (v3 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000659EC(a1);
  }
}

void sub_10001BCDC(void *a1, void *a2)
{
  v3 = a2;
  if (v3 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100065A68(a1);
  }
}

void sub_10001BD2C(void *a1, void *a2)
{
  v3 = a2;
  if (v3 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100065AE4(a1);
  }
}

void sub_10001C0A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001C0C8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100065B60(a1);
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

void sub_10001C12C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100065BE0(a1);
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

void sub_10001C3C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001C3E4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100065C60(a1);
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

void *sub_10001C63C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = result[4];
  v4 = result[5];
  v5 = result[6];
  return result;
}

uint64_t sub_10001C65C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 40);
  return result;
}

void sub_10001D0D8(id a1)
{
  qword_100091C60 = objc_opt_new();

  _objc_release_x1();
}

void sub_10001D214(id a1, id a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v4 = [[NSDate alloc] initWithTimeInterval:v3 sinceDate:-86400.0];
  v5 = [[NSDateInterval alloc] initWithStartDate:v4 endDate:v3];
  v6 = objc_opt_new();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001D324;
  v8[3] = &unk_1000865B8;
  v9 = v2;
  v7 = v2;
  [v6 queryForUncategorizedLocalWebUsageDuringInterval:v5 completionHandler:v8];
}

void sub_10001D324(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x2020000000;
    v15[3] = 0x404E000000000000;
    v12 = 0;
    v13[0] = &v12;
    v13[1] = 0x3032000000;
    v13[2] = sub_10001D564;
    v13[3] = sub_10001D574;
    v14 = 0;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10001D57C;
    v11[3] = &unk_100086590;
    v11[4] = v15;
    v11[5] = &v12;
    [v5 enumerateKeysAndObjectsUsingBlock:v11];
    v7 = *(v13[0] + 40);
    v8 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
    if (v7)
    {
      if (v8)
      {
        sub_100065F28(v13);
      }

      v9 = [[_DPStringRecorder alloc] initWithKey:@"com.apple.screentime.usagetracking.UnknownDomain"];
      v16 = *(v13[0] + 40);
      v10 = [NSArray arrayWithObjects:&v16 count:1];
      [v9 record:v10];
    }

    else if (v8)
    {
      sub_100065FB0();
    }

    _Block_object_dispose(&v12, 8);

    _Block_object_dispose(v15, 8);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100065FF8(v6);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10001D534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001D564(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001D57C(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  [a3 doubleValue];
  v7 = *(*(a1 + 32) + 8);
  if (v6 >= *(v7 + 24))
  {
    *(v7 + 24) = v6;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

uint64_t sub_10001EC30(uint64_t a1)
{
  *(a1 + 8) = sub_10001ECB4(&qword_100090D68, &type metadata accessor for _DeviceActivityData.ActivitySegment);
  result = sub_10001ECB4(&qword_100090D70, &type metadata accessor for _DeviceActivityData.ActivitySegment);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10001ECB4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001ED24(uint64_t a1)
{
  v2 = sub_10001ECB4(&qword_100090DF8, type metadata accessor for CKError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10001ED90(uint64_t a1)
{
  v2 = sub_10001ECB4(&qword_100090DF8, type metadata accessor for CKError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10001EE00(uint64_t a1)
{
  v2 = sub_10001ECB4(&qword_100090E30, type metadata accessor for CKError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_10001EE80(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_10001EEFC(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10001EF80@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_10001EFC8()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_10001F008()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_10001F060()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_10001F0E4(uint64_t a1)
{
  v2 = sub_10001ECB4(&qword_100090E30, type metadata accessor for CKError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_10001F150(uint64_t a1)
{
  v2 = sub_10001ECB4(&qword_100090E30, type metadata accessor for CKError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10001F1BC(void *a1, uint64_t a2)
{
  v4 = sub_10001ECB4(&qword_100090E30, type metadata accessor for CKError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_10001F270(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001ECB4(&qword_100090E30, type metadata accessor for CKError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_10001F2EC()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void *sub_10001F34C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10001F36C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_10001F3F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001ECB4(&qword_100090E30, type metadata accessor for CKError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

unint64_t sub_10001F688()
{
  result = qword_100090E20;
  if (!qword_100090E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100090E20);
  }

  return result;
}

uint64_t sub_10001F780(uint64_t a1)
{
  v2 = sub_10001ECB4(&qword_100090EB0, type metadata accessor for Identifier);
  v3 = sub_10001ECB4(&qword_100090EB8, type metadata accessor for Identifier);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10001F918@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_10001F960@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

void sub_10001F9DC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_10001FA28(uint64_t a1)
{
  v2 = sub_10001ECB4(&qword_100090F00, type metadata accessor for URLResourceKey);
  v3 = sub_10001ECB4(&qword_100090F08, type metadata accessor for URLResourceKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

id sub_10001FBF0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithIdentifier:v1];

  return v2;
}

uint64_t sub_10001FC78(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v8[4] = sub_10001FD8C;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10004ED48;
  v8[3] = &unk_100086858;
  v6 = _Block_copy(v8);

  [v2 scheduleWithBlock:v6];
  _Block_release(v6);
}

uint64_t sub_10001FD54()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001FD8C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10001FDB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001FDD8(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 152) = a1;
  *(v2 + 160) = v3;
  return _swift_task_switch(sub_10001FDFC, 0, 0);
}

uint64_t sub_10001FDFC()
{
  v1 = v0[19];
  v2 = v0[20];
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[21] = isa;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10001FF38;
  v4 = swift_continuation_init();
  v0[17] = sub_100020818(&qword_100090FC0, qword_10006D398);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10002009C;
  v0[13] = &unk_100086948;
  v0[14] = v4;
  [v2 categoriesForBundleIDs:isa completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10001FF38()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *v0;
  v4 = *(*v0 + 168);
  if (*(v1 + 48))
  {
    v5 = *(v1 + 48);
    swift_willThrow();

    v6 = *(v3 + 8);

    return v6();
  }

  else
  {
    v8 = *(v2 + 144);

    v9 = *(v3 + 8);

    return v9(v8);
  }
}

uint64_t sub_10002009C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_100020908((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100020818(&qword_100091370, &qword_10006D390);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_1000207CC();
    **(*(v4 + 64) + 40) = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_10002018C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 152) = a1;
  *(v2 + 160) = v3;
  return _swift_task_switch(sub_1000201B0, 0, 0);
}

uint64_t sub_1000201B0()
{
  v1 = v0[19];
  v2 = v0[20];
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[21] = isa;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100020978;
  v4 = swift_continuation_init();
  v0[17] = sub_100020818(&qword_100090FC0, qword_10006D398);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10002009C;
  v0[13] = &unk_100086920;
  v0[14] = v4;
  [v2 categoriesForDomainNames:isa completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000202EC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 152) = a1;
  *(v2 + 160) = v3;
  return _swift_task_switch(sub_100020310, 0, 0);
}

uint64_t sub_100020310()
{
  v1 = v0[19];
  v2 = v0[20];
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[21] = isa;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100020978;
  v4 = swift_continuation_init();
  v0[17] = sub_100020818(&qword_100090FB8, &qword_10006D388);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10002044C;
  v0[13] = &unk_1000868F8;
  v0[14] = v4;
  [v2 unCategorizedDomainsFromDomains:isa withCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10002044C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_100020908((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100020818(&qword_100091370, &qword_10006D390);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    **(*(v4 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_10002053C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_1000207CC();
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_1000205F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  v12 = *v7;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v16[4] = a2;
  v16[5] = a3;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_10002053C;
  v16[3] = a6;
  v14 = _Block_copy(v16);

  [v12 *a7];
  _Block_release(v14);
}

uint64_t sub_1000206EC(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v6;
}

uint64_t sub_10002075C(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v6;
}

uint64_t sub_1000207B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000207CC()
{
  result = qword_100090FB0;
  if (!qword_100090FB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100090FB0);
  }

  return result;
}

uint64_t sub_100020818(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100020860(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000208BC(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *sub_100020908(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

id sub_100020980(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    return 0;
  }

  v10 = v2;
  v11 = v3;
  v7 = objc_allocWithZone(NSKeyedUnarchiver);
  sub_100020CC4(a1, a2);
  v8 = sub_100020C04();
  [v8 setRequiresSecureCoding:1];
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder:v8];
  sub_100020D64(a1, a2);
  sub_100020D64(a1, a2);

  if (!v9)
  {
    return 0;
  }

  return v9;
}

id sub_100020C04()
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = 0;
  v2 = [v0 initForReadingFromData:isa error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_100020CC4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100020CD8(a1, a2);
  }

  return a1;
}

uint64_t sub_100020CD8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100020D2C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100020D64(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100020D78(a1, a2);
  }

  return a1;
}

uint64_t sub_100020D78(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100020DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v13[-v9 - 8];
  sub_100020F40(a1, v13);
  sub_100020818(&qword_100091018, qword_10006D470);
  swift_dynamicCast();
  (*(a3 + 64))(v10, a2, a3);
  return (*(v7 + 8))(v10, AssociatedTypeWitness);
}

uint64_t sub_100020F40(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100020FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v13[-v9 - 8];
  sub_100020F40(a1, v13);
  sub_100020818(&qword_100091018, qword_10006D470);
  swift_dynamicCast();
  (*(a3 + 32))(v10, a2, a3);
  return (*(v7 + 8))(v10, AssociatedTypeWitness);
}

uint64_t sub_1000210EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v8[4] = a2;
  v8[5] = a3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10004EBCC;
  v8[3] = &unk_100086998;
  v6 = _Block_copy(v8);

  [v5 saveRecordZone:a1 completionHandler:v6];
  _Block_release(v6);
}

uint64_t sub_1000211A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v8[4] = a2;
  v8[5] = a3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10004EBCC;
  v8[3] = &unk_100086970;
  v6 = _Block_copy(v8);

  [v5 deleteRecordWithID:a1 completionHandler:v6];
  _Block_release(v6);
}

uint64_t sub_100021264(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100021290@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = related decl 'e' for CKErrorCode.clientRecord.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000212BC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = related decl 'e' for CKErrorCode.serverRecord.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000212E8()
{
  sub_100021388(&qword_100090E30);
  _BridgedStoredNSError.code.getter();
  return v1;
}

uint64_t sub_100021344(uint64_t a1)
{
  result = sub_100021388(&qword_100090DF0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100021388(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CKError(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1000213E0@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

uint64_t sub_10002141C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  v6 = *v2;
  return CKModifyRecordsOperation.perRecordSaveBlock.setter();
}

void sub_10002148C(uint64_t a1)
{
  v2 = *v1;
  if (a1)
  {
    sub_100021848(0, &qword_1000917B0, CKRecord_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    isa = 0;
  }

  [v2 setRecordsToSave:isa];
}

uint64_t sub_10002154C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  v6 = *v2;
  return CKFetchShareParticipantsOperation.perShareParticipantResultBlock.setter();
}

void sub_1000215E0(void *a1@<X8>)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for URL();
  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_100021848(0, &qword_100091150, CKDeviceToDeviceShareInvitationToken_ptr);
  sub_1000217AC();
  v4 = Dictionary._bridgeToObjectiveC()().super.isa;

  v5 = [v2 initWithShareURLs:isa invitationTokensByShareURL:v4];

  *a1 = v5;
}

void sub_1000216F4(unint64_t *a1@<X3>, uint64_t *a2@<X4>, SEL *a3@<X5>, void *a4@<X8>)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_100021848(0, a1, a2);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = [v8 *a3];

  *a4 = v10;
}

unint64_t sub_1000217AC()
{
  result = qword_100091158;
  if (!qword_100091158)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100091158);
  }

  return result;
}

uint64_t sub_100021804()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100021848(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id sub_100021894()
{
  v1 = [*v0 recordID];

  return v1;
}

uint64_t sub_1000218CC()
{
  v1 = [*v0 participants];
  sub_100021A44();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t sub_100021924@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 URL];
  if (v3)
  {
    v4 = v3;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for URL();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

void sub_1000219C8(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRecordZoneID:a1];

  *a2 = v4;
}

unint64_t sub_100021A44()
{
  result = qword_100091860;
  if (!qword_100091860)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100091860);
  }

  return result;
}

id sub_100021A90()
{
  v1 = [*v0 lookupInfo];

  return v1;
}

id sub_100021AE4@<X0>(void *a1@<X8>)
{
  result = [*v1 userIdentity];
  *a1 = result;
  return result;
}

id sub_100021B20()
{
  v1 = [*v0 invitationToken];

  return v1;
}

id sub_100021B68()
{
  v1 = *v0;
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 BOOLForKey:v2];

  return v3;
}

uint64_t sub_100021BB0()
{
  v1 = *v0;
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 dataForKey:v2];

  if (!v3)
  {
    return 0;
  }

  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

double sub_100021C30@<D0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

id sub_100021E78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for USDeviceActivityAuthorization();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100021ED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = type metadata accessor for Calendar.Component();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = __chkstk_darwin(v9, v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v16);
  v18 = &v32 - v17;
  v19 = type metadata accessor for Calendar();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v23 = __chkstk_darwin(v19, v22);
  v25 = &v32 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 - 1) >= 2)
  {
    v33 = v23;
    if (a1)
    {
      v35[0] = a1;
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
    }

    else
    {
      static Calendar.current.getter();
      static Date.now.getter();
      Calendar.startOfDay(for:)();
      v31 = *(v10 + 8);
      v31(v15, v9);
      (*(v4 + 104))(v8, enum case for Calendar.Component.day(_:), v3);
      Calendar.date(byAdding:value:to:wrappingComponents:)();
      (*(v4 + 8))(v8, v3);
      v31(v18, v9);
      return (*(v20 + 8))(v25, v33);
    }
  }

  else
  {
    if (qword_100090CB8 != -1)
    {
      swift_once();
    }

    sub_100020F40(&qword_100092D88, v35);
    v26 = v36;
    v27 = v37;
    sub_100020908(v35, v36);
    (*(v27 + 24))(v38, 0x726665527473616CLL, 0xEF65746144687365, v26, v27);
    if (v38[3])
    {
      v28 = v34;
      v29 = swift_dynamicCast();
      (*(v10 + 56))(v28, v29 ^ 1u, 1, v9);
      return sub_1000208BC(v35);
    }

    else
    {
      sub_1000208BC(v35);
      sub_100028FF4(v38, &qword_100091360, &unk_10006D960);
      return (*(v10 + 56))(v34, 1, 1, v9);
    }
  }

  return result;
}

Swift::Int sub_1000222C0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100022334()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t *sub_100022378@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

id sub_100022394()
{
  result = [objc_allocWithZone(type metadata accessor for DeviceActivityCollector()) init];
  qword_100091210 = result;
  return result;
}

uint64_t sub_1000223C4()
{
  result = sub_100021848(0, &qword_1000913E0, NSBackgroundActivityScheduler_ptr);
  qword_100092D70 = result;
  *algn_100092D78 = &off_100086800;
  return result;
}

id sub_100022404()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC18UsageTrackingAgent23DeviceActivityCollector_backgroundActivity];
  if (qword_100090CA8 != -1)
  {
    swift_once();
  }

  v3 = *algn_100092D78;
  *v2 = (*(*algn_100092D78 + 8))(0xD000000000000040, 0x800000010006FAC0);
  *(v2 + 1) = v3;
  v4 = OBJC_IVAR____TtC18UsageTrackingAgent23DeviceActivityCollector_collector;
  type metadata accessor for _DeviceActivityCollector();
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  if (qword_100090CC0 != -1)
  {
    swift_once();
  }

  v6 = qword_100092DB0;
  v7 = *algn_100092DB8;
  v8 = *(*algn_100092DB8 + 16);
  v5[17] = qword_100092DB0;
  v5[18] = v7;
  sub_1000283C4(v5 + 14);
  v8(v6, v7);
  v5[19] = 0;
  *&v1[v4] = v5;
  v14.receiver = v1;
  v14.super_class = type metadata accessor for DeviceActivityCollector();
  v9 = objc_msgSendSuper2(&v14, "init");
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 defaultCenter];
  [v12 addObserver:v11 selector:"localeDidChangeWithNotification:" name:NSCurrentLocaleDidChangeNotification object:0];
  [v12 addObserver:v11 selector:"timeZoneDidChangeWithNotification:" name:NSSystemTimeZoneDidChangeNotification object:0];

  return v11;
}

uint64_t sub_10002266C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC18UsageTrackingAgent23DeviceActivityCollector_collector);
  *(v0 + 24) = v1;
  return _swift_task_switch(sub_100022698, v1, 0);
}

uint64_t sub_100022698()
{
  sub_100024088(1, *(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100022748(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  v8 = sub_100020818(&qword_1000913B8, &qword_10006DC30);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v12 = &v21 - v11;
  if (qword_100090D10 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100020D2C(v13, qword_100092E98);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, a2, v16, 2u);
  }

  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v7;
  v19 = v7;
  sub_100035B98(0, 0, v12, a4, v18);
}

uint64_t sub_100022928()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC18UsageTrackingAgent23DeviceActivityCollector_collector);
  *(v0 + 24) = v1;
  return _swift_task_switch(sub_100022954, v1, 0);
}

uint64_t sub_100022954()
{
  sub_100024740(2, *(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000229DC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = type metadata accessor for Notification();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a1;
  a4();

  return (*(v7 + 8))(v11, v6);
}

uint64_t sub_100022AC8()
{
  v1 = v0;
  v2 = sub_100020818(&qword_1000913B8, &qword_10006DC30);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v20 - v5;
  if (qword_100090CA0 != -1)
  {
    swift_once();
  }

  v7 = (qword_100091210 + OBJC_IVAR____TtC18UsageTrackingAgent23DeviceActivityCollector_backgroundActivity);
  v8 = *(qword_100091210 + OBJC_IVAR____TtC18UsageTrackingAgent23DeviceActivityCollector_backgroundActivity);
  v9 = *(qword_100091210 + OBJC_IVAR____TtC18UsageTrackingAgent23DeviceActivityCollector_backgroundActivity + 8);
  ObjectType = swift_getObjectType();
  v11 = *(v9 + 24);
  swift_unknownObjectRetain();
  v11(1, ObjectType, v9);
  swift_unknownObjectRelease();
  v12 = *v7;
  v13 = v7[1];
  v14 = swift_getObjectType();
  v15 = swift_allocObject();
  *(v15 + 16) = v1;
  v16 = *(v13 + 40);
  swift_unknownObjectRetain();
  v16(sub_10002C574, v15, v14, v13);
  swift_unknownObjectRelease();

  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v1;
  sub_100035B98(0, 0, v6, &unk_10006DA30, v18);
}

uint64_t sub_100022CD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100020818(&qword_1000913B8, &qword_10006DC30);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v18 - v9;
  if (qword_100090D10 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100020D2C(v11, qword_100092E98);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Starting background activity to collect device activity.", v14, 2u);
  }

  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a3;
  v16[5] = a1;
  v16[6] = a2;

  sub_100035B98(0, 0, v10, &unk_10006DA50, v16);
}

uint64_t sub_100022EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a5;
  *(v6 + 24) = a6;
  return _swift_task_switch(sub_100022ED0, 0, 0);
}

uint64_t sub_100022ED0()
{
  if (qword_100090CA0 != -1)
  {
    swift_once();
  }

  v1 = qword_100091210;
  v2 = OBJC_IVAR____TtC18UsageTrackingAgent23DeviceActivityCollector_collector;
  v0[4] = qword_100091210;
  v0[5] = v2;
  v3 = *(v1 + v2);
  v0[6] = v3;

  return _swift_task_switch(sub_100022F88, v3, 0);
}

uint64_t sub_100022F88()
{
  v1 = *(v0 + 48);
  sub_100029F04();

  return _swift_task_switch(sub_100022FF8, 0, 0);
}

uint64_t sub_100022FF8()
{
  v1 = v0[3];
  v2 = *(v0[4] + v0[5]);
  v0[7] = v2;

  v0[8] = static _SegmentInterval.allCases.getter();

  return _swift_task_switch(sub_10002307C, v2, 0);
}

uint64_t sub_10002307C()
{
  sub_10002A72C(1, *(v0 + 64), 1, *(v0 + 56), *(v0 + 16), *(v0 + 24));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100023114(uint64_t (*a1)(uint64_t))
{
  if (qword_100090D10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100020D2C(v2, qword_100092E98);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Finished background activity to collect device activity.", v5, 2u);
  }

  return a1(1);
}

uint64_t sub_100023228()
{
  if (qword_100090CA0 != -1)
  {
    swift_once();
  }

  v1 = qword_100091210;
  v2 = OBJC_IVAR____TtC18UsageTrackingAgent23DeviceActivityCollector_collector;
  v0[2] = qword_100091210;
  v0[3] = v2;
  v3 = *(v1 + v2);
  v0[4] = v3;

  return _swift_task_switch(sub_1000232E0, v3, 0);
}

uint64_t sub_1000232E0()
{
  v1 = *(v0 + 32);
  sub_100029F04();

  return _swift_task_switch(sub_100023350, 0, 0);
}

uint64_t sub_100023350()
{
  v1 = *(v0[2] + v0[3]);
  v0[5] = v1;

  return _swift_task_switch(sub_1000233C8, v1, 0);
}

uint64_t sub_1000233C8()
{
  sub_100024DF8(3, *(v0 + 40));

  v1 = *(v0 + 8);

  return v1();
}

void sub_100023444(const char *a1)
{
  if (qword_100090D10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100020D2C(v2, qword_100092E98);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, a1, v4, 2u);
  }
}

uint64_t sub_10002355C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_100020818(&qword_1000913B8, &qword_10006DC30);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v14 = &v23 - v13;
  v15 = os_transaction_create();
  if (qword_100090D10 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100020D2C(v16, qword_100092E98);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Collecting local device activity data", v19, 2u);
  }

  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v14, 1, 1, v20);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = v5;
  *(v21 + 40) = a1;
  *(v21 + 48) = a2 & 1;
  *(v21 + 56) = a3;
  *(v21 + 64) = a4;
  *(v21 + 72) = v15;
  sub_100029DB4(a3);
  sub_100035B98(0, 0, v14, &unk_10006DA18, v21);
}

uint64_t sub_100023768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 32) = a8;
  *(v8 + 40) = v10;
  *(v8 + 64) = a6;
  *(v8 + 16) = a5;
  *(v8 + 24) = a7;
  return _swift_task_switch(sub_100023798, 0, 0);
}

uint64_t sub_100023798()
{
  if (qword_100090CA0 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  v4 = *(qword_100091210 + OBJC_IVAR____TtC18UsageTrackingAgent23DeviceActivityCollector_collector);
  v0[6] = v4;
  sub_100029DB4(v3);
  swift_unknownObjectRetain();

  v0[7] = static _SegmentInterval.allCases.getter();

  return _swift_task_switch(sub_100023864, v4, 0);
}

uint64_t sub_100023864()
{
  v1 = *(v0 + 24);
  sub_10002B694(*(v0 + 16), *(v0 + 56), *(v0 + 64), *(v0 + 48), v1, *(v0 + 32), *(v0 + 40));

  sub_100029B58(v1);
  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000239D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100020818(&qword_1000913B8, &qword_10006DC30);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v18 - v9;
  if (qword_100090D10 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100020D2C(v11, qword_100092E98);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Deleting local device activity data", v14, 2u);
  }

  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v3;
  v16[5] = a1;
  v16[6] = a2;
  sub_100029DB4(a1);
  sub_100035B98(0, 0, v10, &unk_10006DA00, v16);
}

uint64_t sub_100023BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a5;
  *(v6 + 24) = a6;
  return _swift_task_switch(sub_100023BD4, 0, 0);
}

uint64_t sub_100023BD4()
{
  if (qword_100090CA0 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100091210 + OBJC_IVAR____TtC18UsageTrackingAgent23DeviceActivityCollector_collector);
  *(v0 + 32) = v1;

  *(v0 + 40) = static _SegmentInterval.allCases.getter();

  return _swift_task_switch(sub_100023C8C, v1, 0);
}

uint64_t sub_100023C8C()
{
  v1 = *(v0 + 32);
  sub_100028A0C(1, *(v0 + 40));

  return _swift_task_switch(sub_100023D0C, 0, 0);
}

uint64_t sub_100023D0C()
{
  if (qword_100090D10 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100020D2C(v1, qword_100092E98);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Finished deleting local device activity data", v4, 2u);
  }

  v5 = v0[2];

  if (v5)
  {
    v6 = v0[3];
    (v0[2])();
  }

  v7 = v0[1];

  return v7();
}

id sub_100023ED8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceActivityCollector();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100023F7C()
{
  result = type metadata accessor for DeviceActivityAuthorization();
  qword_100092D80 = result;
  return result;
}

uint64_t sub_100023FA0()
{
  v0 = [objc_opt_self() standardUserDefaults];
  result = sub_100021848(0, &qword_100091380, NSUserDefaults_ptr);
  qword_100092DA0 = result;
  unk_100092DA8 = &off_100086AB0;
  qword_100092D88 = v0;
  return result;
}

uint64_t sub_100024010()
{
  result = type metadata accessor for DeviceActivityDataSource();
  qword_100092DB0 = result;
  *algn_100092DB8 = &off_100086DA8;
  return result;
}

double sub_100024040()
{
  qword_100092DE0 = 0;
  result = 0.0;
  xmmword_100092DC0 = 0u;
  *algn_100092DD0 = 0u;
  return result;
}

uint64_t sub_100024058()
{
  result = type metadata accessor for SyncCoordinator();
  qword_100092DE8 = result;
  unk_100092DF0 = &off_100087198;
  return result;
}

void sub_100024088(char a1, uint64_t a2)
{
  v60 = a2;
  v3 = type metadata accessor for Date();
  v58 = *(v3 - 8);
  v59 = v3;
  v4 = *(v58 + 64);
  __chkstk_darwin(v3, v5);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TimeZone();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100020818(&qword_1000913C0, &qword_10006D9B0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8, v16);
  v18 = &v55 - v17;
  v19 = sub_100020818(&qword_1000913A0, &unk_10006D990);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v23 = __chkstk_darwin(v19, v22);
  v25 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23, v26);
  v28 = &v55 - v27;
  if (a1)
  {
    v57 = v13;
    v30 = sub_100028540();
    v29 = v30;
    if ((a1 & 2) == 0)
    {
      if (v30)
      {
LABEL_12:
        sub_100020818(&qword_1000913C8, &qword_10006D9B8);
        v38 = type metadata accessor for _SegmentInterval();
        v39 = *(v38 - 8);
        v40 = *(v39 + 72);
        v41 = (*(v39 + 80) + 32) & ~*(v39 + 80);
        v42 = swift_allocObject();
        *(v42 + 16) = xmmword_10006D8A0;
        (*(v39 + 104))(v42 + v41, enum case for _SegmentInterval.weekly(_:), v38);
LABEL_13:
        sub_100028A0C(0, v42);
        sub_100026020(0, v42, 1, v60, &unk_100086B90, sub_1000226FC, &unk_10006D9F0, sub_1000226FC);

        return;
      }

      goto LABEL_19;
    }
  }

  else
  {
    if ((a1 & 2) == 0)
    {
      goto LABEL_19;
    }

    v57 = v13;
    v29 = 0;
  }

  sub_1000254B0(v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    v31 = &qword_1000913C0;
    v32 = &qword_10006D9B0;
    v33 = v18;
    goto LABEL_11;
  }

  sub_100029830(v18, v28, &qword_1000913A0, &unk_10006D990);
  sub_1000297C4(v28, v25, &qword_1000913A0, &unk_10006D990);
  v34 = *(v19 + 48);
  v35 = v9;
  v36 = *(v9 + 48);
  v37 = v8;
  if (v36(v25, 1, v8) == 1)
  {
    sub_100028FF4(v28, &qword_1000913A0, &unk_10006D990);
    (*(v35 + 8))(&v25[v34], v8);
    v31 = &qword_100091390;
    v32 = &unk_10006D980;
    v33 = v25;
LABEL_11:
    sub_100028FF4(v33, v31, v32);
    if (v29)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

  v43 = v57;
  (*(v35 + 32))(v57, v25, v37);
  v56 = *(v35 + 8);
  v56(&v25[v34], v37);
  Date.init()();
  v57 = v43;
  v44 = TimeZone.secondsFromGMT(for:)();
  v45 = v59;
  v46 = *(v58 + 8);
  v46(v7, v59);
  v47 = *(v19 + 48);
  Date.init()();
  v48 = TimeZone.secondsFromGMT(for:)();
  v46(v7, v45);
  v49 = v44 - v48;
  if (__OFSUB__(v44, v48))
  {
    __break(1u);
    return;
  }

  if (v49)
  {
    if (__ROR8__(0xFEDCBA987654321 * v49 + 0x91A2B3C4D5E6F0, 4) < 0x123456789ABCDFuLL)
    {
      sub_100020818(&qword_1000913C8, &qword_10006D9B8);
      v50 = type metadata accessor for _SegmentInterval();
      v51 = *(v50 - 8);
      v52 = *(v51 + 72);
      v53 = (*(v51 + 80) + 32) & ~*(v51 + 80);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_10006D890;
      v54 = *(v51 + 104);
      v54(v42 + v53, enum case for _SegmentInterval.daily(_:), v50);
      v54(v42 + v53 + v52, enum case for _SegmentInterval.weekly(_:), v50);
    }

    else
    {
      v42 = static _SegmentInterval.allCases.getter();
    }

    v56(v57, v37);
    sub_100028FF4(v28, &qword_1000913A0, &unk_10006D990);
    goto LABEL_13;
  }

  v56(v57, v37);
  sub_100028FF4(v28, &qword_1000913A0, &unk_10006D990);
LABEL_19:
  sub_1000226FC();
}

void sub_100024740(char a1, uint64_t a2)
{
  v60 = a2;
  v3 = type metadata accessor for Date();
  v58 = *(v3 - 8);
  v59 = v3;
  v4 = *(v58 + 64);
  __chkstk_darwin(v3, v5);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TimeZone();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100020818(&qword_1000913C0, &qword_10006D9B0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8, v16);
  v18 = &v55 - v17;
  v19 = sub_100020818(&qword_1000913A0, &unk_10006D990);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v23 = __chkstk_darwin(v19, v22);
  v25 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23, v26);
  v28 = &v55 - v27;
  if (a1)
  {
    v57 = v13;
    v30 = sub_100028540();
    v29 = v30;
    if ((a1 & 2) == 0)
    {
      if (v30)
      {
LABEL_12:
        sub_100020818(&qword_1000913C8, &qword_10006D9B8);
        v38 = type metadata accessor for _SegmentInterval();
        v39 = *(v38 - 8);
        v40 = *(v39 + 72);
        v41 = (*(v39 + 80) + 32) & ~*(v39 + 80);
        v42 = swift_allocObject();
        *(v42 + 16) = xmmword_10006D8A0;
        (*(v39 + 104))(v42 + v41, enum case for _SegmentInterval.weekly(_:), v38);
LABEL_13:
        sub_100028A0C(0, v42);
        sub_100026020(0, v42, 1, v60, &unk_100086B40, sub_1000229B8, &unk_10006D9D0, sub_1000229B8);

        return;
      }

      goto LABEL_19;
    }
  }

  else
  {
    if ((a1 & 2) == 0)
    {
      goto LABEL_19;
    }

    v57 = v13;
    v29 = 0;
  }

  sub_1000254B0(v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    v31 = &qword_1000913C0;
    v32 = &qword_10006D9B0;
    v33 = v18;
    goto LABEL_11;
  }

  sub_100029830(v18, v28, &qword_1000913A0, &unk_10006D990);
  sub_1000297C4(v28, v25, &qword_1000913A0, &unk_10006D990);
  v34 = *(v19 + 48);
  v35 = v9;
  v36 = *(v9 + 48);
  v37 = v8;
  if (v36(v25, 1, v8) == 1)
  {
    sub_100028FF4(v28, &qword_1000913A0, &unk_10006D990);
    (*(v35 + 8))(&v25[v34], v8);
    v31 = &qword_100091390;
    v32 = &unk_10006D980;
    v33 = v25;
LABEL_11:
    sub_100028FF4(v33, v31, v32);
    if (v29)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

  v43 = v57;
  (*(v35 + 32))(v57, v25, v37);
  v56 = *(v35 + 8);
  v56(&v25[v34], v37);
  Date.init()();
  v57 = v43;
  v44 = TimeZone.secondsFromGMT(for:)();
  v45 = v59;
  v46 = *(v58 + 8);
  v46(v7, v59);
  v47 = *(v19 + 48);
  Date.init()();
  v48 = TimeZone.secondsFromGMT(for:)();
  v46(v7, v45);
  v49 = v44 - v48;
  if (__OFSUB__(v44, v48))
  {
    __break(1u);
    return;
  }

  if (v49)
  {
    if (__ROR8__(0xFEDCBA987654321 * v49 + 0x91A2B3C4D5E6F0, 4) < 0x123456789ABCDFuLL)
    {
      sub_100020818(&qword_1000913C8, &qword_10006D9B8);
      v50 = type metadata accessor for _SegmentInterval();
      v51 = *(v50 - 8);
      v52 = *(v51 + 72);
      v53 = (*(v51 + 80) + 32) & ~*(v51 + 80);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_10006D890;
      v54 = *(v51 + 104);
      v54(v42 + v53, enum case for _SegmentInterval.daily(_:), v50);
      v54(v42 + v53 + v52, enum case for _SegmentInterval.weekly(_:), v50);
    }

    else
    {
      v42 = static _SegmentInterval.allCases.getter();
    }

    v56(v57, v37);
    sub_100028FF4(v28, &qword_1000913A0, &unk_10006D990);
    goto LABEL_13;
  }

  v56(v57, v37);
  sub_100028FF4(v28, &qword_1000913A0, &unk_10006D990);
LABEL_19:
  sub_1000229B8();
}

void sub_100024DF8(char a1, uint64_t a2)
{
  v60 = a2;
  v3 = type metadata accessor for Date();
  v58 = *(v3 - 8);
  v59 = v3;
  v4 = *(v58 + 64);
  __chkstk_darwin(v3, v5);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TimeZone();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100020818(&qword_1000913C0, &qword_10006D9B0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8, v16);
  v18 = &v55 - v17;
  v19 = sub_100020818(&qword_1000913A0, &unk_10006D990);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v23 = __chkstk_darwin(v19, v22);
  v25 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23, v26);
  v28 = &v55 - v27;
  if (a1)
  {
    v57 = v13;
    v30 = sub_100028540();
    v29 = v30;
    if ((a1 & 2) == 0)
    {
      if (v30)
      {
LABEL_12:
        sub_100020818(&qword_1000913C8, &qword_10006D9B8);
        v38 = type metadata accessor for _SegmentInterval();
        v39 = *(v38 - 8);
        v40 = *(v39 + 72);
        v41 = (*(v39 + 80) + 32) & ~*(v39 + 80);
        v42 = swift_allocObject();
        *(v42 + 16) = xmmword_10006D8A0;
        (*(v39 + 104))(v42 + v41, enum case for _SegmentInterval.weekly(_:), v38);
LABEL_13:
        sub_100028A0C(0, v42);
        sub_100026020(0, v42, 1, v60, &unk_100086CF8, sub_100023438, &unk_10006DA38, sub_100023438);

        return;
      }

      goto LABEL_19;
    }
  }

  else
  {
    if ((a1 & 2) == 0)
    {
      goto LABEL_19;
    }

    v57 = v13;
    v29 = 0;
  }

  sub_1000254B0(v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    v31 = &qword_1000913C0;
    v32 = &qword_10006D9B0;
    v33 = v18;
    goto LABEL_11;
  }

  sub_100029830(v18, v28, &qword_1000913A0, &unk_10006D990);
  sub_1000297C4(v28, v25, &qword_1000913A0, &unk_10006D990);
  v34 = *(v19 + 48);
  v35 = v9;
  v36 = *(v9 + 48);
  v37 = v8;
  if (v36(v25, 1, v8) == 1)
  {
    sub_100028FF4(v28, &qword_1000913A0, &unk_10006D990);
    (*(v35 + 8))(&v25[v34], v8);
    v31 = &qword_100091390;
    v32 = &unk_10006D980;
    v33 = v25;
LABEL_11:
    sub_100028FF4(v33, v31, v32);
    if (v29)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

  v43 = v57;
  (*(v35 + 32))(v57, v25, v37);
  v56 = *(v35 + 8);
  v56(&v25[v34], v37);
  Date.init()();
  v57 = v43;
  v44 = TimeZone.secondsFromGMT(for:)();
  v45 = v59;
  v46 = *(v58 + 8);
  v46(v7, v59);
  v47 = *(v19 + 48);
  Date.init()();
  v48 = TimeZone.secondsFromGMT(for:)();
  v46(v7, v45);
  v49 = v44 - v48;
  if (__OFSUB__(v44, v48))
  {
    __break(1u);
    return;
  }

  if (v49)
  {
    if (__ROR8__(0xFEDCBA987654321 * v49 + 0x91A2B3C4D5E6F0, 4) < 0x123456789ABCDFuLL)
    {
      sub_100020818(&qword_1000913C8, &qword_10006D9B8);
      v50 = type metadata accessor for _SegmentInterval();
      v51 = *(v50 - 8);
      v52 = *(v51 + 72);
      v53 = (*(v51 + 80) + 32) & ~*(v51 + 80);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_10006D890;
      v54 = *(v51 + 104);
      v54(v42 + v53, enum case for _SegmentInterval.daily(_:), v50);
      v54(v42 + v53 + v52, enum case for _SegmentInterval.weekly(_:), v50);
    }

    else
    {
      v42 = static _SegmentInterval.allCases.getter();
    }

    v56(v57, v37);
    sub_100028FF4(v28, &qword_1000913A0, &unk_10006D990);
    goto LABEL_13;
  }

  v56(v57, v37);
  sub_100028FF4(v28, &qword_1000913A0, &unk_10006D990);
LABEL_19:
  sub_100023438();
}

uint64_t sub_1000254B0@<X0>(uint64_t a1@<X8>)
{
  v78 = a1;
  v1 = sub_100020818(&qword_100091388, &qword_10006D978);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1, v3);
  v5 = &v68[-v4];
  v74 = sub_100020818(&qword_100091390, &unk_10006D980);
  v6 = *(*(v74 - 8) + 64);
  v8 = __chkstk_darwin(v74, v7);
  v73 = &v68[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v8, v10);
  v13 = &v68[-v12];
  v15 = __chkstk_darwin(v11, v14);
  v17 = &v68[-v16];
  v19 = __chkstk_darwin(v15, v18);
  v21 = &v68[-v20];
  __chkstk_darwin(v19, v22);
  v24 = &v68[-v23];
  v25 = type metadata accessor for TimeZone();
  v79 = *(v25 - 8);
  v26 = *(v79 + 64);
  v28 = __chkstk_darwin(v25, v27);
  v30 = &v68[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = __chkstk_darwin(v28, v31);
  v34 = &v68[-v33];
  __chkstk_darwin(v32, v35);
  v80 = &v68[-v36];
  static TimeZone.current.getter();
  if (qword_100090CC8 != -1)
  {
    swift_once();
  }

  sub_1000297C4(&xmmword_100092DC0, &v81, &qword_100091398, &unk_10006DC00);
  v75 = v30;
  v76 = v13;
  v77 = v17;
  if (v82)
  {
    sub_100028428(&v81, v83);
  }

  else
  {
    v84 = type metadata accessor for DeviceActivityDataStore();
    v85 = &protocol witness table for DeviceActivityDataStore;
    sub_1000283C4(v83);
    DeviceActivityDataStore.init()();
    if (v82)
    {
      sub_100028FF4(&v81, &qword_100091398, &unk_10006DC00);
    }
  }

  sub_100020908(v83, v84);
  dispatch thunk of DeviceActivityDataStoring.localTimeZone()();
  sub_1000208BC(v83);
  v37 = v79;
  v38 = *(v79 + 16);
  v71 = v79 + 16;
  v70 = v38;
  v38(v21, v80, v25);
  (*(v37 + 56))(v21, 0, 1, v25);
  v39 = *(v1 + 48);
  sub_1000297C4(v21, v5, &qword_100091390, &unk_10006D980);
  v72 = v24;
  sub_1000297C4(v24, &v5[v39], &qword_100091390, &unk_10006D980);
  v40 = *(v37 + 48);
  if (v40(v5, 1, v25) == 1)
  {
    sub_100028FF4(v21, &qword_100091390, &unk_10006D980);
    v41 = v40(&v5[v39], 1, v25);
    v42 = v79;
    if (v41 == 1)
    {
      sub_100028FF4(v5, &qword_100091390, &unk_10006D980);
LABEL_16:
      sub_100028FF4(v72, &qword_100091390, &unk_10006D980);
      (*(v42 + 8))(v80, v25);
      v47 = sub_100020818(&qword_1000913A0, &unk_10006D990);
      return (*(*(v47 - 8) + 56))(v78, 1, 1, v47);
    }

    goto LABEL_12;
  }

  v43 = v77;
  sub_1000297C4(v5, v77, &qword_100091390, &unk_10006D980);
  if (v40(&v5[v39], 1, v25) == 1)
  {
    sub_100028FF4(v21, &qword_100091390, &unk_10006D980);
    v42 = v79;
    (*(v79 + 8))(v43, v25);
LABEL_12:
    sub_100028FF4(v5, &qword_100091388, &qword_10006D978);
    goto LABEL_13;
  }

  v44 = v79;
  (*(v79 + 32))(v34, &v5[v39], v25);
  sub_100028440(&qword_1000913B0, 255, &type metadata accessor for TimeZone);
  v69 = dispatch thunk of static Equatable.== infix(_:_:)();
  v45 = *(v44 + 8);
  v45(v34, v25);
  v46 = v21;
  v42 = v44;
  sub_100028FF4(v46, &qword_100091390, &unk_10006D980);
  v45(v43, v25);
  sub_100028FF4(v5, &qword_100091390, &unk_10006D980);
  if (v69)
  {
    goto LABEL_16;
  }

LABEL_13:
  sub_1000297C4(&xmmword_100092DC0, &v81, &qword_100091398, &unk_10006DC00);
  if (v82)
  {
    sub_100028428(&v81, v83);
  }

  else
  {
    v84 = type metadata accessor for DeviceActivityDataStore();
    v85 = &protocol witness table for DeviceActivityDataStore;
    sub_1000283C4(v83);
    DeviceActivityDataStore.init()();
    if (v82)
    {
      sub_100028FF4(&v81, &qword_100091398, &unk_10006DC00);
    }
  }

  sub_100020908(v83, v84);
  dispatch thunk of DeviceActivityDataStoring.write(localTimeZone:)();
  sub_1000208BC(v83);
  if (qword_100090D10 != -1)
  {
    swift_once();
  }

  v49 = type metadata accessor for Logger();
  sub_100020D2C(v49, qword_100092E98);
  v50 = v72;
  v51 = v76;
  sub_1000297C4(v72, v76, &qword_100091390, &unk_10006D980);
  v52 = v75;
  v70(v75, v80, v25);
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v83[0] = v79;
    *v55 = 136446466;
    LODWORD(v77) = v54;
    sub_1000297C4(v51, v73, &qword_100091390, &unk_10006D980);
    v56 = String.init<A>(describing:)();
    v58 = v57;
    sub_100028FF4(v51, &qword_100091390, &unk_10006D980);
    v59 = sub_100033140(v56, v58, v83);

    *(v55 + 4) = v59;
    *(v55 + 12) = 2082;
    sub_100028440(&qword_1000913A8, 255, &type metadata accessor for TimeZone);
    v60 = dispatch thunk of CustomStringConvertible.description.getter();
    v62 = v61;
    (*(v42 + 8))(v52, v25);
    v63 = sub_100033140(v60, v62, v83);

    *(v55 + 14) = v63;
    _os_log_impl(&_mh_execute_header, v53, v77, "Local time zone changed from %{public}s to %{public}s", v55, 0x16u);
    swift_arrayDestroy();

    v50 = v72;
  }

  else
  {

    (*(v42 + 8))(v52, v25);
    sub_100028FF4(v51, &qword_100091390, &unk_10006D980);
  }

  v64 = sub_100020818(&qword_1000913A0, &unk_10006D990);
  v65 = *(v64 + 48);
  v66 = v50;
  v67 = v78;
  sub_100029830(v66, v78, &qword_100091390, &unk_10006D980);
  (*(v42 + 32))(v67 + v65, v80, v25);
  return (*(*(v64 - 8) + 56))(v67, 0, 1, v64);
}

uint64_t sub_100026020(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void))
{
  v107 = a8;
  v108 = a1;
  v102 = a6;
  v103 = a7;
  v100 = a5;
  v101 = a3;
  v104 = a2;
  v9 = sub_100020818(&qword_1000913B8, &qword_10006DC30);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v105 = &v91 - v12;
  v13 = sub_100020818(&qword_1000913D0, &qword_10006D9C0);
  v98 = *(v13 - 8);
  v14 = *(v98 + 64);
  v16 = __chkstk_darwin(v13 - 8, v15);
  v17 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16, v18);
  v99 = &v91 - v20;
  v22 = __chkstk_darwin(v19, v21);
  v24 = &v91 - v23;
  __chkstk_darwin(v22, v25);
  v27 = &v91 - v26;
  v28 = type metadata accessor for Date();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v32 = __chkstk_darwin(v28, v31);
  v97 = &v91 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32, v33);
  v106 = &v91 - v35;
  v37 = __chkstk_darwin(v34, v36);
  v39 = &v91 - v38;
  __chkstk_darwin(v37, v40);
  v42 = &v91 - v41;
  if (qword_100090CB0 != -1)
  {
    swift_once();
  }

  if (![swift_getObjCClassFromMetadata() isAuthorized])
  {
    if (qword_100090D10 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_100020D2C(v43, qword_100092E98);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v44, v45))
    {
      goto LABEL_17;
    }

    v46 = swift_slowAlloc();
    *v46 = 0;
    v47 = "Device Activity is not authorized, skipping device activity collection";
    goto LABEL_16;
  }

  if (v108 != 2)
  {
    goto LABEL_8;
  }

  if (qword_100090D00 != -1)
  {
    swift_once();
  }

  if (byte_100092E70)
  {
LABEL_8:
    if (qword_100090CC8 != -1)
    {
      swift_once();
    }

    sub_1000297C4(&xmmword_100092DC0, &v109, &qword_100091398, &unk_10006DC00);
    v96 = v28;
    v94 = v29;
    v95 = v24;
    v93 = a4;
    if (v110)
    {
      sub_100028428(&v109, v111);
    }

    else
    {
      v112 = type metadata accessor for DeviceActivityDataStore();
      v113 = &protocol witness table for DeviceActivityDataStore;
      sub_1000283C4(v111);
      DeviceActivityDataStore.init()();
      if (v110)
      {
        sub_100028FF4(&v109, &qword_100091398, &unk_10006DC00);
      }
    }

    sub_100020908(v111, v112);
    dispatch thunk of DeviceActivityDataStoring.localStartDate()();
    v50 = v94;
    v51 = v96;
    if ((*(v94 + 48))(v27, 1, v96) == 1)
    {
      sub_100028FF4(v27, &qword_1000913D0, &qword_10006D9C0);
      sub_1000208BC(v111);
      if (qword_100090D10 != -1)
      {
        swift_once();
      }

      v52 = type metadata accessor for Logger();
      sub_100020D2C(v52, qword_100092E98);
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.default.getter();
      v55 = os_log_type_enabled(v53, v54);
      v56 = v106;
      if (v55)
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&_mh_execute_header, v53, v54, "Saving device activity collection start date", v57, 2u);
      }

      sub_1000297C4(&xmmword_100092DC0, &v109, &qword_100091398, &unk_10006DC00);
      if (v110)
      {
        sub_100028428(&v109, v111);
      }

      else
      {
        v112 = type metadata accessor for DeviceActivityDataStore();
        v113 = &protocol witness table for DeviceActivityDataStore;
        sub_1000283C4(v111);
        DeviceActivityDataStore.init()();
        if (v110)
        {
          sub_100028FF4(&v109, &qword_100091398, &unk_10006DC00);
        }
      }

      sub_100020908(v111, v112);
      static Date.now.getter();
      (*(v50 + 56))(v17, 0, 1, v96);
      dispatch thunk of DeviceActivityDataStoring.write(localStartDate:)();
      sub_100028FF4(v17, &qword_1000913D0, &qword_10006D9C0);
      sub_1000208BC(v111);
      v90 = v95;
    }

    else
    {
      (*(v50 + 32))(v42, v27, v51);
      sub_1000208BC(v111);
      if (qword_100090D10 != -1)
      {
        swift_once();
      }

      v81 = type metadata accessor for Logger();
      sub_100020D2C(v81, qword_100092E98);
      (*(v50 + 16))(v39, v42, v51);
      v82 = Logger.logObject.getter();
      v83 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v111[0] = v91;
        *v84 = 136446210;
        v85 = Date.debugDescription.getter();
        v87 = v86;
        v92 = *(v94 + 8);
        v92(v39);
        v88 = sub_100033140(v85, v87, v111);
        v50 = v94;

        *(v84 + 4) = v88;
        _os_log_impl(&_mh_execute_header, v82, v83, "Device activity collection has already started on %{public}s", v84, 0xCu);
        sub_1000208BC(v91);

        (v92)(v42, v51);
      }

      else
      {

        v89 = *(v50 + 8);
        v89(v39, v51);
        v89(v42, v51);
      }

      v90 = v95;
      v56 = v106;
    }

    v58 = v108;
    sub_100021ED0(v108, v90);
    static Date.now.getter();
    v59 = sub_100029054(v58, v104, v90, v56);
    if (v59)
    {
      v108 = v59;
      v60 = type metadata accessor for TaskPriority();
      (*(*(v60 - 8) + 56))(v105, 1, 1, v60);
      v61 = v93;
      v107 = *(v93 + 152);
      v62 = v99;
      sub_1000297C4(v90, v99, &qword_1000913D0, &qword_10006D9C0);
      v63 = v97;
      (*(v50 + 16))(v97, v56, v96);
      v65 = sub_100028440(&qword_100091368, v64, type metadata accessor for _DeviceActivityCollector);
      v66 = v50;
      v67 = (*(v98 + 80) + 48) & ~*(v98 + 80);
      v68 = (v14 + *(v66 + 80) + v67) & ~*(v66 + 80);
      v69 = swift_allocObject();
      *(v69 + 2) = v61;
      *(v69 + 3) = v65;
      *(v69 + 4) = v107;
      *(v69 + 5) = v61;
      sub_100029830(v62, &v69[v67], &qword_1000913D0, &qword_10006D9C0);
      v70 = v63;
      v71 = v96;
      (*(v66 + 32))(&v69[v68], v70, v96);
      v72 = &v69[(v68 + v30 + 7) & 0xFFFFFFFFFFFFFFF8];
      *v72 = v108;
      v72[8] = v101 & 1;
      v73 = &v69[(v68 + v30 + 23) & 0xFFFFFFFFFFFFFFF8];
      *v73 = v102;
      *(v73 + 1) = 0;

      swift_retain_n();
      v74 = sub_100035B98(0, 0, v105, v103, v69);
      (*(v66 + 8))(v106, v71);
      sub_100028FF4(v95, &qword_1000913D0, &qword_10006D9C0);
      v75 = *(v61 + 152);
      *(v61 + 152) = v74;
    }

    else
    {
      if (qword_100090D10 != -1)
      {
        swift_once();
      }

      v76 = type metadata accessor for Logger();
      sub_100020D2C(v76, qword_100092E98);
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        *v79 = 0;
        _os_log_impl(&_mh_execute_header, v77, v78, "No segment intervals need to be refreshed.", v79, 2u);
      }

      v107();
      (*(v50 + 8))(v56, v96);
      return sub_100028FF4(v90, &qword_1000913D0, &qword_10006D9C0);
    }
  }

  if (qword_100090D10 != -1)
  {
    swift_once();
  }

  v80 = type metadata accessor for Logger();
  sub_100020D2C(v80, qword_100092E98);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    v47 = "Not refreshing local device activity data for budget tracking";
LABEL_16:
    _os_log_impl(&_mh_execute_header, v44, v45, v47, v46, 2u);
  }

LABEL_17:

  v48 = v107;

  return v48();
}

uint64_t sub_100026E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 48) = v20;
  *(v8 + 56) = v21;
  *(v8 + 88) = v19;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 16) = a5;
  *(v8 + 24) = a6;
  if (a4)
  {
    v9 = async function pointer to Task<>.value.getter[1];
    v10 = swift_task_alloc();
    *(v8 + 64) = v10;
    *v10 = v8;
    v10[1] = sub_100026FAC;

    return (Task<>.value.getter)();
  }

  else
  {
    *(v8 + 72) = a5;
    v11 = swift_task_alloc();
    *(v8 + 80) = v11;
    *v11 = v8;
    v11[1] = sub_100027160;
    v12 = *(v8 + 88);
    v13 = *(v8 + 32);
    v14 = *(v8 + 40);
    v16 = *(v8 + 16);
    v15 = *(v8 + 24);

    return sub_1000272D4(v15, v13, v14, v12);
  }
}

uint64_t sub_100026FAC()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return _swift_task_switch(sub_1000270BC, v2, 0);
}

uint64_t sub_1000270BC()
{
  *(v0 + 72) = *(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_100027160;
  v2 = *(v0 + 88);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);

  return sub_1000272D4(v5, v3, v4, v2);
}

uint64_t sub_100027160()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v5 = *v0;

  v3 = *(v1 + 72);

  return _swift_task_switch(sub_100027270, v3, 0);
}

uint64_t sub_100027270()
{
  v1 = *(v0 + 56);
  (*(v0 + 48))();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000272D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 152) = a4;
  *(v5 + 112) = a3;
  *(v5 + 120) = v4;
  *(v5 + 96) = a1;
  *(v5 + 104) = a2;
  return _swift_task_switch(sub_1000272FC, v4, 0);
}

uint64_t sub_1000272FC()
{
  sub_100020908((v0[15] + 112), *(v0[15] + 136));
  v1 = async function pointer to DeviceActivityDataSource.refreshLocalActivity(since:segmentIntervals:)[1];
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_1000273AC;
  v3 = v0[14];
  v4 = v0[12];

  return DeviceActivityDataSource.refreshLocalActivity(since:segmentIntervals:)(v4, v3);
}

uint64_t sub_1000273AC()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 120);
  if (v0)
  {
    v6 = sub_100027898;
  }

  else
  {
    v6 = sub_1000274D8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000274D8()
{
  if (qword_100090CB8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  sub_100020F40(&qword_100092D88, v0 + 16);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  sub_100020908((v0 + 16), v2);
  v4 = type metadata accessor for Date();
  *(v0 + 80) = v4;
  v5 = sub_1000283C4((v0 + 56));
  (*(*(v4 - 8) + 16))(v5, v1, v4);
  (*(v3 + 40))(v0 + 56, 0x726665527473616CLL, 0xEF65746144687365, v2, v3);
  sub_100028FF4(v0 + 56, &qword_100091360, &unk_10006D960);
  sub_1000208BC((v0 + 16));
  type metadata accessor for Feature();
  if ((static Feature.isDeviceActivityUIEnabled.getter() & 1) == 0)
  {
    if (qword_100090D10 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100020D2C(v10, qword_100092E98);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_17;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "Device Activity UI is not enabled, skipping sync";
    goto LABEL_16;
  }

  if (*(v0 + 152) == 1)
  {
    v7 = *(v0 + 120);
    sub_100028440(&qword_100091368, v6, type metadata accessor for _DeviceActivityCollector);
    v8 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v9 = swift_task_alloc();
    *(v0 + 144) = v9;
    *v9 = v0;
    v9[1] = sub_100027DC4;

    return withCheckedContinuation<A>(isolation:function:_:)();
  }

  if (qword_100090D10 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100020D2C(v15, qword_100092E98);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "Skipping sync after device activity collection.";
LABEL_16:
    _os_log_impl(&_mh_execute_header, v11, v12, v14, v13, 2u);
  }

LABEL_17:

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_100027898()
{
  v28 = v0;
  if (qword_100090D10 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = type metadata accessor for Logger();
  sub_100020D2C(v2, qword_100092E98);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 136);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v27 = v8;
    *v7 = 136446210;
    *(v0 + 88) = v6;
    swift_errorRetain();
    sub_100020818(&qword_100091370, &qword_10006D390);
    v9 = String.init<A>(describing:)();
    v11 = sub_100033140(v9, v10, &v27);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to refresh local activity: %{public}s", v7, 0xCu);
    sub_1000208BC(v8);
  }

  else
  {
  }

  if (qword_100090CB8 != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 104);
  sub_100020F40(&qword_100092D88, v0 + 16);
  v13 = *(v0 + 40);
  v14 = *(v0 + 48);
  sub_100020908((v0 + 16), v13);
  v15 = type metadata accessor for Date();
  *(v0 + 80) = v15;
  v16 = sub_1000283C4((v0 + 56));
  (*(*(v15 - 8) + 16))(v16, v12, v15);
  (*(v14 + 40))(v0 + 56, 0x726665527473616CLL, 0xEF65746144687365, v13, v14);
  sub_100028FF4(v0 + 56, &qword_100091360, &unk_10006D960);
  sub_1000208BC((v0 + 16));
  type metadata accessor for Feature();
  if ((static Feature.isDeviceActivityUIEnabled.getter() & 1) == 0)
  {
    if (qword_100090D10 != -1)
    {
      swift_once();
    }

    sub_100020D2C(v2, qword_100092E98);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_22;
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = "Device Activity UI is not enabled, skipping sync";
    goto LABEL_21;
  }

  if (*(v0 + 152) == 1)
  {
    v18 = *(v0 + 120);
    sub_100028440(&qword_100091368, v17, type metadata accessor for _DeviceActivityCollector);
    v19 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v20 = swift_task_alloc();
    *(v0 + 144) = v20;
    *v20 = v0;
    v20[1] = sub_100027DC4;

    return withCheckedContinuation<A>(isolation:function:_:)();
  }

  if (qword_100090D10 != -1)
  {
    swift_once();
  }

  sub_100020D2C(v2, qword_100092E98);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = "Skipping sync after device activity collection.";
LABEL_21:
    _os_log_impl(&_mh_execute_header, v21, v22, v24, v23, 2u);
  }

LABEL_22:

  v25 = *(v0 + 8);

  return v25();
}