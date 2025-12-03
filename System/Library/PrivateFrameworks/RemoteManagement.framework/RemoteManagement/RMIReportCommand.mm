@interface RMIReportCommand
- (BOOL)runWithOptions:(id)options;
- (id)_getDeclarationStatusWithContext:(id)context scope:(int64_t)scope;
- (id)_getReportWithContext:(id)context;
- (id)_reportInScope:(int64_t)scope overrideUserScopeHomePath:(id)path;
- (id)options;
@end

@implementation RMIReportCommand

- (id)options
{
  v2 = objc_opt_new();
  [v2 setLongName:@"scope"];
  [v2 setShortName:@"s"];
  [v2 setShortEnglishDescription:@"Scope to use (default: system)."];
  [v2 setParameterCount:1];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (BOOL)runWithOptions:(id)options
{
  optionsCopy = options;
  dictionaryWithOptionsAndValues = [optionsCopy dictionaryWithOptionsAndValues];
  v6 = [dictionaryWithOptionsAndValues objectForKeyedSubscript:@"scope"];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = @"system";
  }

  v9 = v8;

  if ([(__CFString *)v9 isEqualToString:@"system"])
  {
    [(RMIReportCommand *)self _switchToRMDUserIfNeeded];
    v10 = 1;
  }

  else
  {
    if (![(__CFString *)v9 isEqualToString:@"user"])
    {
      sub_10000F860(@"You must specify a valid scope.", v11, v12, v13, v14, v15, v16, v17, v30);
      sub_10000FA18(self);
    }

    v18 = +[RMManagedDevice currentManagedDevice];
    isSharediPad = [v18 isSharediPad];

    if ((isSharediPad & 1) == 0)
    {
      sub_10000FA6C(@"Device is not in Shared iPad mode", v20, v21, v22, v23, v24, v25, v26, v30);
      goto LABEL_11;
    }

    v10 = 0;
  }

  v27 = [(RMIReportCommand *)self _reportInScope:v10 overrideUserScopeHomePath:0];
  v28 = [RMJSONSerialization serializeValue:v27];
  sub_100002E4C(0, @"Remote Management Report", v28, 0);

LABEL_11:
  return 1;
}

- (id)_reportInScope:(int64_t)scope overrideUserScopeHomePath:(id)path
{
  [RMBundle setManagementScope:scope, path];
  v5 = sub_1000035A4(1);
  v6 = v5;
  if (v5)
  {
    v92 = v5;
    selfCopy = self;
    newBackgroundContext = [v5 newBackgroundContext];
    v7 = [(RMIReportCommand *)self _getReportWithContext:?];
    v93 = objc_alloc_init(NSMutableDictionary);
    v182 = 0u;
    v183 = 0u;
    v184 = 0u;
    v185 = 0u;
    obj = v7;
    v8 = [obj countByEnumeratingWithState:&v182 objects:v210 count:16];
    if (v8)
    {
      v89 = *v183;
      v9 = @"inactiveReasons";
      do
      {
        v95 = 0;
        do
        {
          v90 = v8;
          if (*v183 != v89)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v182 + 1) + 8 * v95);
          if ([v10 isEqual:@"Management Sources"])
          {
            v103 = +[NSMutableArray array];
            v11 = [obj objectForKeyedSubscript:v10];
            v178 = 0u;
            v179 = 0u;
            v180 = 0u;
            v181 = 0u;
            v99 = v11;
            v101 = [v11 countByEnumeratingWithState:&v178 objects:v209 count:16];
            if (v101)
            {
              v97 = *v179;
              do
              {
                v12 = 0;
                v142 = v10;
                do
                {
                  if (*v179 != v97)
                  {
                    objc_enumerationMutation(v99);
                  }

                  v106 = v12;
                  v13 = *(*(&v178 + 1) + 8 * v12);
                  v110 = objc_alloc_init(NSMutableDictionary);
                  v174 = 0u;
                  v175 = 0u;
                  v176 = 0u;
                  v177 = 0u;
                  v114 = v13;
                  v112 = [v114 countByEnumeratingWithState:&v174 objects:v208 count:16];
                  if (v112)
                  {
                    v108 = *v175;
                    do
                    {
                      v14 = 0;
                      do
                      {
                        if (*v175 != v108)
                        {
                          v15 = v14;
                          objc_enumerationMutation(v114);
                          v14 = v15;
                        }

                        v116 = v14;
                        v16 = *(*(&v174 + 1) + 8 * v14);
                        if ([v16 isEqual:@"activations"])
                        {
                          v17 = +[NSMutableArray array];
                          v18 = [v114 objectForKeyedSubscript:v16];
                          v170 = 0u;
                          v171 = 0u;
                          v172 = 0u;
                          v173 = 0u;
                          v118 = v18;
                          v122 = [v18 countByEnumeratingWithState:&v170 objects:v207 count:16];
                          if (v122)
                          {
                            v120 = *v171;
                            v138 = v17;
                            v140 = v16;
                            do
                            {
                              v19 = 0;
                              do
                              {
                                if (*v171 != v120)
                                {
                                  objc_enumerationMutation(v118);
                                }

                                v124 = v19;
                                v20 = *(*(&v170 + 1) + 8 * v19);
                                v132 = objc_alloc_init(NSMutableDictionary);
                                v166 = 0u;
                                v167 = 0u;
                                v168 = 0u;
                                v169 = 0u;
                                v21 = v20;
                                v134 = [v21 countByEnumeratingWithState:&v166 objects:v206 count:16];
                                if (v134)
                                {
                                  v128 = v21;
                                  v130 = *v167;
                                  do
                                  {
                                    v22 = 0;
                                    do
                                    {
                                      if (*v167 != v130)
                                      {
                                        v23 = v22;
                                        objc_enumerationMutation(v21);
                                        v22 = v23;
                                      }

                                      v136 = v22;
                                      v24 = *(*(&v166 + 1) + 8 * v22);
                                      if ([v24 isEqual:@"predicateDescription"])
                                      {
                                        [v132 setObject:@"YES" forKeyedSubscript:v24];
                                      }

                                      else
                                      {
                                        if ([v24 isEqual:@"state"])
                                        {
                                          v126 = v24;
                                          v25 = [v21 objectForKeyedSubscript:v24];
                                          v148 = objc_alloc_init(NSMutableDictionary);
                                          v162 = 0u;
                                          v163 = 0u;
                                          v164 = 0u;
                                          v165 = 0u;
                                          v26 = v25;
                                          v150 = [v26 countByEnumeratingWithState:&v162 objects:v205 count:16];
                                          if (v150)
                                          {
                                            v27 = *v163;
                                            v144 = *v163;
                                            v146 = v26;
                                            do
                                            {
                                              v28 = 0;
                                              do
                                              {
                                                if (*v163 != v27)
                                                {
                                                  v29 = v9;
                                                  v30 = v17;
                                                  v31 = v16;
                                                  v32 = v10;
                                                  v33 = v28;
                                                  objc_enumerationMutation(v26);
                                                  v28 = v33;
                                                  v10 = v32;
                                                  v16 = v31;
                                                  v17 = v30;
                                                  v9 = v29;
                                                }

                                                v152 = v28;
                                                v34 = *(*(&v162 + 1) + 8 * v28);
                                                if ([v34 isEqual:v9])
                                                {
                                                  v35 = [v26 objectForKeyedSubscript:v34];
                                                  v36 = +[NSMutableArray array];
                                                  v200 = 0u;
                                                  v201 = 0u;
                                                  v202 = 0u;
                                                  v203 = 0u;
                                                  v37 = v35;
                                                  v158 = [v37 countByEnumeratingWithState:&v200 objects:v204 count:16];
                                                  if (v158)
                                                  {
                                                    v154 = *v201;
                                                    v156 = v37;
                                                    do
                                                    {
                                                      v38 = 0;
                                                      do
                                                      {
                                                        if (*v201 != v154)
                                                        {
                                                          objc_enumerationMutation(v37);
                                                        }

                                                        v160 = v38;
                                                        v39 = *(*(&v200 + 1) + 8 * v38);
                                                        v196 = 0u;
                                                        v197 = 0u;
                                                        v198 = 0u;
                                                        v199 = 0u;
                                                        v40 = v39;
                                                        v41 = [v40 countByEnumeratingWithState:&v196 objects:&v192 count:16];
                                                        if (v41)
                                                        {
                                                          v42 = v41;
                                                          v43 = *v197;
                                                          do
                                                          {
                                                            for (i = 0; i != v42; i = i + 1)
                                                            {
                                                              if (*v197 != v43)
                                                              {
                                                                objc_enumerationMutation(v40);
                                                              }

                                                              if ([*(*(&v196 + 1) + 8 * i) isEqual:@"code"])
                                                              {
                                                                v190 = @"code";
                                                                [v40 objectForKeyedSubscript:@"code"];
                                                                v46 = v45 = v34;
                                                                v191 = v46;
                                                                v47 = [NSDictionary dictionaryWithObjects:&v191 forKeys:&v190 count:1];
                                                                [v36 addObject:v47];

                                                                v34 = v45;
                                                              }
                                                            }

                                                            v42 = [v40 countByEnumeratingWithState:&v196 objects:&v192 count:16];
                                                          }

                                                          while (v42);
                                                        }

                                                        v38 = v160 + 1;
                                                        v37 = v156;
                                                      }

                                                      while ((v160 + 1) != v158);
                                                      v158 = [v156 countByEnumeratingWithState:&v200 objects:v204 count:16];
                                                    }

                                                    while (v158);
                                                  }

                                                  [v148 setObject:v36 forKey:v34];
                                                  v9 = @"inactiveReasons";
                                                  v16 = v140;
                                                  v10 = v142;
                                                  v17 = v138;
                                                  v27 = v144;
                                                  v26 = v146;
                                                }

                                                else
                                                {
                                                  v37 = [v26 objectForKey:v34];
                                                  [v148 setObject:v37 forKey:v34];
                                                }

                                                v28 = v152 + 1;
                                              }

                                              while ((v152 + 1) != v150);
                                              v150 = [v26 countByEnumeratingWithState:&v162 objects:v205 count:16];
                                            }

                                            while (v150);
                                          }

                                          [v132 setObject:v148 forKey:v126];
                                        }

                                        else
                                        {
                                          v48 = [v21 objectForKey:v24];
                                          [v132 setObject:v48 forKey:v24];
                                        }

                                        v21 = v128;
                                      }

                                      v22 = v136 + 1;
                                    }

                                    while (v136 + 1 != v134);
                                    v134 = [v21 countByEnumeratingWithState:&v166 objects:v206 count:16];
                                  }

                                  while (v134);
                                }

                                [v17 addObject:v132];
                                v19 = v124 + 1;
                              }

                              while ((v124 + 1) != v122);
                              v122 = [v118 countByEnumeratingWithState:&v170 objects:v207 count:16];
                            }

                            while (v122);
                          }

                          [v110 setObject:v17 forKeyedSubscript:v16];
                        }

                        else
                        {
                          v17 = [v114 objectForKey:v16];
                          [v110 setObject:v17 forKeyedSubscript:v16];
                        }

                        v14 = v116 + 1;
                      }

                      while ((v116 + 1) != v112);
                      v112 = [v114 countByEnumeratingWithState:&v174 objects:v208 count:16];
                    }

                    while (v112);
                  }

                  [v103 addObject:v110];
                  v12 = v106 + 1;
                }

                while ((v106 + 1) != v101);
                v101 = [v99 countByEnumeratingWithState:&v178 objects:v209 count:16];
              }

              while (v101);
            }

            [v93 setObject:v103 forKeyedSubscript:v10];
          }

          v8 = v90;
          v95 = v95 + 1;
        }

        while (v95 != v90);
        v8 = [obj countByEnumeratingWithState:&v182 objects:v210 count:16];
      }

      while (v8);
    }

    v49 = [(RMIReportCommand *)selfCopy _getDeclarationStatusWithContext:newBackgroundContext scope:scope];
    v104 = +[NSMutableArray array];
    v192 = 0u;
    v193 = 0u;
    v194 = 0u;
    v195 = 0u;
    v50 = v49;
    v51 = [v50 countByEnumeratingWithState:&v192 objects:v210 count:16];
    if (v51)
    {
      v100 = *v193;
      do
      {
        v107 = 0;
        do
        {
          v98 = v51;
          if (*v193 != v100)
          {
            objc_enumerationMutation(v50);
          }

          v102 = v50;
          v52 = *(*(&v192 + 1) + 8 * v107);
          v113 = objc_alloc_init(NSMutableDictionary);
          v182 = 0u;
          v183 = 0u;
          v184 = 0u;
          v185 = 0u;
          v115 = v52;
          v111 = [v115 countByEnumeratingWithState:&v182 objects:v209 count:16];
          if (v111)
          {
            v109 = *v183;
            do
            {
              v53 = 0;
              do
              {
                if (*v183 != v109)
                {
                  objc_enumerationMutation(v115);
                }

                v117 = v53;
                v54 = *(*(&v182 + 1) + 8 * v53);
                v55 = [v54 isEqual:@"Status"];
                v56 = [v115 objectForKeyedSubscript:v54];
                v57 = v56;
                if (v55)
                {
                  v58 = [v56 objectForKeyedSubscript:@"management"];

                  v125 = objc_alloc_init(NSMutableDictionary);
                  v178 = 0u;
                  v179 = 0u;
                  v180 = 0u;
                  v181 = 0u;
                  v57 = v58;
                  v59 = [v57 countByEnumeratingWithState:&v178 objects:v208 count:16];
                  if (v59)
                  {
                    v60 = v59;
                    v61 = *v179;
                    v121 = v57;
                    v123 = v54;
                    v119 = *v179;
                    do
                    {
                      v62 = 0;
                      v127 = v60;
                      do
                      {
                        if (*v179 != v61)
                        {
                          objc_enumerationMutation(v57);
                        }

                        v63 = *(*(&v178 + 1) + 8 * v62);
                        if ([v63 isEqual:@"declarations"])
                        {
                          v129 = v62;
                          v64 = [v57 objectForKeyedSubscript:v63];
                          v133 = objc_alloc_init(NSMutableDictionary);
                          v174 = 0u;
                          v175 = 0u;
                          v176 = 0u;
                          v177 = 0u;
                          v137 = v64;
                          v135 = [v137 countByEnumeratingWithState:&v174 objects:v207 count:16];
                          if (v135)
                          {
                            v131 = *v175;
                            v153 = v63;
                            do
                            {
                              v65 = 0;
                              do
                              {
                                if (*v175 != v131)
                                {
                                  objc_enumerationMutation(v137);
                                }

                                v139 = *(*(&v174 + 1) + 8 * v65);
                                v141 = v65;
                                v66 = [v137 objectForKeyedSubscript:?];
                                v147 = +[NSMutableArray array];
                                v170 = 0u;
                                v171 = 0u;
                                v172 = 0u;
                                v173 = 0u;
                                v143 = v66;
                                v149 = [v143 countByEnumeratingWithState:&v170 objects:v206 count:16];
                                if (v149)
                                {
                                  v145 = *v171;
                                  do
                                  {
                                    v67 = 0;
                                    do
                                    {
                                      if (*v171 != v145)
                                      {
                                        objc_enumerationMutation(v143);
                                      }

                                      v151 = v67;
                                      v68 = *(*(&v170 + 1) + 8 * v67);
                                      v69 = +[NSMutableArray array];
                                      v70 = objc_alloc_init(NSMutableDictionary);
                                      v166 = 0u;
                                      v167 = 0u;
                                      v168 = 0u;
                                      v169 = 0u;
                                      v71 = v68;
                                      v161 = [v71 countByEnumeratingWithState:&v166 objects:v205 count:16];
                                      if (v161)
                                      {
                                        v157 = v70;
                                        v159 = *v167;
                                        v155 = v71;
                                        do
                                        {
                                          for (j = 0; j != v161; j = j + 1)
                                          {
                                            if (*v167 != v159)
                                            {
                                              objc_enumerationMutation(v71);
                                            }

                                            v73 = *(*(&v166 + 1) + 8 * j);
                                            if ([v73 isEqual:@"reasons"])
                                            {
                                              v74 = [v71 objectForKeyedSubscript:@"reasons"];
                                              v75 = v74;
                                              if (v74)
                                              {
                                                v164 = 0u;
                                                v165 = 0u;
                                                v162 = 0u;
                                                v163 = 0u;
                                                v76 = [v74 countByEnumeratingWithState:&v162 objects:v204 count:16];
                                                if (v76)
                                                {
                                                  v77 = v76;
                                                  v78 = *v163;
                                                  do
                                                  {
                                                    for (k = 0; k != v77; k = k + 1)
                                                    {
                                                      if (*v163 != v78)
                                                      {
                                                        objc_enumerationMutation(v75);
                                                      }

                                                      v80 = *(*(&v162 + 1) + 8 * k);
                                                      *&v196 = @"code";
                                                      v81 = [v80 objectForKeyedSubscript:@"code"];
                                                      *&v200 = v81;
                                                      v82 = [NSDictionary dictionaryWithObjects:&v200 forKeys:&v196 count:1];
                                                      [v69 addObject:v82];
                                                    }

                                                    v77 = [v75 countByEnumeratingWithState:&v162 objects:v204 count:16];
                                                  }

                                                  while (v77);
                                                }

                                                v70 = v157;
                                                [v157 setObject:v69 forKey:@"reasons"];
                                                v63 = v153;
                                                v71 = v155;
                                              }
                                            }

                                            else
                                            {
                                              v75 = [v71 objectForKey:v73];
                                              [v70 setObject:v75 forKey:v73];
                                            }
                                          }

                                          v161 = [v71 countByEnumeratingWithState:&v166 objects:v205 count:16];
                                        }

                                        while (v161);
                                      }

                                      [v147 addObject:v70];
                                      v67 = v151 + 1;
                                    }

                                    while ((v151 + 1) != v149);
                                    v149 = [v143 countByEnumeratingWithState:&v170 objects:v206 count:16];
                                  }

                                  while (v149);
                                }

                                [v133 setObject:v147 forKey:v139];
                                v65 = v141 + 1;
                              }

                              while ((v141 + 1) != v135);
                              v135 = [v137 countByEnumeratingWithState:&v174 objects:v207 count:16];
                            }

                            while (v135);
                          }

                          [v125 setObject:v133 forKey:v63];
                          v57 = v121;
                          v54 = v123;
                          v61 = v119;
                          v60 = v127;
                          v62 = v129;
                        }

                        v62 = v62 + 1;
                      }

                      while (v62 != v60);
                      v60 = [v57 countByEnumeratingWithState:&v178 objects:v208 count:16];
                    }

                    while (v60);
                  }

                  v83 = objc_alloc_init(NSMutableDictionary);
                  [v83 setObject:v125 forKey:@"management"];
                  [v113 setObject:v83 forKey:v54];
                }

                else
                {
                  [v113 setValue:v56 forKey:v54];
                }

                v53 = v117 + 1;
              }

              while ((v117 + 1) != v111);
              v111 = [v115 countByEnumeratingWithState:&v182 objects:v209 count:16];
            }

            while (v111);
          }

          [v104 addObject:v113];
          v51 = v98;
          v107 = v107 + 1;
          v50 = v102;
        }

        while (v107 != v98);
        v51 = [v102 countByEnumeratingWithState:&v192 objects:v210 count:16];
      }

      while (v51);
    }

    v84 = @"user";
    if (scope == 1)
    {
      v84 = @"system";
    }

    v188[0] = @"Scope";
    v188[1] = @"Report";
    v189[0] = v84;
    v189[1] = v93;
    v188[2] = @"Status";
    v189[2] = v104;
    [NSDictionary dictionaryWithObjects:v189 forKeys:v188 count:3];
    v86 = v85 = v50;

    v6 = v92;
  }

  else
  {
    v186[0] = @"Error";
    v186[1] = @"Scope";
    if (scope == 1)
    {
      v87 = @"system";
    }

    else
    {
      v87 = @"user";
    }

    v187[0] = @"Missing or invalid container";
    v187[1] = v87;
    v86 = [NSDictionary dictionaryWithObjects:v187 forKeys:v186 count:2];
  }

  return v86;
}

- (id)_getReportWithContext:(id)context
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_1000058E8;
  v13 = sub_1000058F8;
  v14 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100005900;
  v6[3] = &unk_10001C5B8;
  v8 = &v9;
  contextCopy = context;
  v7 = contextCopy;
  [contextCopy performBlockAndWait:v6];
  v4 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v4;
}

- (id)_getDeclarationStatusWithContext:(id)context scope:(int64_t)scope
{
  v30 = _NSConcreteStackBlock;
  v31 = 3221225472;
  v32 = sub_100005D0C;
  v33 = &unk_10001C5E0;
  contextCopy = context;
  v15 = objc_opt_new();
  v34 = v15;
  [contextCopy performBlockAndWait:&v30];

  if ([v15 count])
  {
    v18 = [RMXPCProxy newConnectionWithScope:scope];
    [v18 resume];
    v19 = objc_opt_new();
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = v15;
    v5 = [obj countByEnumeratingWithState:&v20 objects:v36 count:16];
    if (v5)
    {
      v17 = *v21;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v21 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v20 + 1) + 8 * i);
          v8 = v18;
          v9 = v7;
          v30 = 0;
          v31 = &v30;
          v32 = 0x3032000000;
          v33 = sub_1000058E8;
          v34 = sub_1000058F8;
          v35 = objc_opt_new();
          [*(v31 + 40) setObject:v9 forKeyedSubscript:@"Channel"];
          v27[0] = _NSConcreteStackBlock;
          v27[1] = 3221225472;
          v27[2] = sub_100005E68;
          v27[3] = &unk_10001C608;
          v28 = &off_10001E950;
          v29 = &v30;
          v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v27];
          v24[0] = _NSConcreteStackBlock;
          v24[1] = 3221225472;
          v24[2] = sub_10000603C;
          v24[3] = &unk_10001C630;
          v25 = &off_10001E950;
          v26 = &v30;
          [v10 queryForStatusAndErrorsWithKeyPaths:&off_10001E950 fromManagementSourceWithIdentifier:v9 completionHandler:v24];
          v11 = v25;
          v12 = *(v31 + 40);

          _Block_object_dispose(&v30, 8);
          [v19 addObject:v12];
        }

        v5 = [obj countByEnumeratingWithState:&v20 objects:v36 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v19 = &__NSArray0__struct;
  }

  return v19;
}

@end