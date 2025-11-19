@interface AEAConcreteNetworkPrimitives
- (id)machOUUIDsForBundleIdentifier:(id)a3;
- (id)machOUUIDsForExecutableURL:(id)a3;
- (id)restrictNetworkExcludingProcessesWithIdentifiers:(id)a3 machOUUIDs:(id)a4;
- (void)fetchNetworkContentFilterBundleIdentifiersWithCompletion:(id)a3;
@end

@implementation AEAConcreteNetworkPrimitives

- (void)fetchNetworkContentFilterBundleIdentifiersWithCompletion:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000022D8;
  v4[3] = &unk_1000A6000;
  v5 = a3;
  v3 = v5;
  [NEFilterManager loadAllFromPreferencesWithCompletionHandler:v4];
}

- (id)machOUUIDsForExecutableURL:(id)a3
{
  v3 = [a3 path];
  v4 = [NEProcessInfo copyUUIDsForExecutable:v3];

  return v4;
}

- (id)machOUUIDsForBundleIdentifier:(id)a3
{
  v3 = [NEProcessInfo copyUUIDsForBundleID:a3 uid:0];

  return v3;
}

- (id)restrictNetworkExcludingProcessesWithIdentifiers:(id)a3 machOUUIDs:(id)a4
{
  v5 = a3;
  v161 = a4;
  v164 = objc_opt_new();
  v201 = 0u;
  v202 = 0u;
  v203 = 0u;
  v204 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v201 objects:v227 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v202;
    v9 = 10;
    do
    {
      v10 = 0;
      v11 = v9;
      do
      {
        if (*v202 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v201 + 1) + 8 * v10);
        v13 = [NEPolicy alloc];
        v9 = (v11 + 1);
        v14 = [NEPolicyResult skipWithOrder:0];
        v15 = +[NEPolicyCondition allInterfaces];
        v226[0] = v15;
        v16 = +[NEPolicyCondition effectivePID:](NEPolicyCondition, "effectivePID:", [v12 intValue]);
        v226[1] = v16;
        v17 = [NSArray arrayWithObjects:v226 count:2];
        v18 = [v13 initWithOrder:v11 result:v14 conditions:v17];

        [v164 addPolicy:v18];
        v10 = v10 + 1;
        v11 = v9;
      }

      while (v7 != v10);
      v7 = [obj countByEnumeratingWithState:&v201 objects:v227 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = 10;
  }

  v199 = 0u;
  v200 = 0u;
  v197 = 0u;
  v198 = 0u;
  v162 = v161;
  v19 = [v162 countByEnumeratingWithState:&v197 objects:v225 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v198;
    do
    {
      v22 = 0;
      v23 = v9;
      do
      {
        if (*v198 != v21)
        {
          objc_enumerationMutation(v162);
        }

        v24 = *(*(&v197 + 1) + 8 * v22);
        v25 = [NEPolicy alloc];
        v9 = (v23 + 1);
        v26 = [NEPolicyResult skipWithOrder:0];
        v27 = +[NEPolicyCondition allInterfaces];
        v224[0] = v27;
        v28 = [NEPolicyCondition effectiveApplication:v24];
        v224[1] = v28;
        v29 = [NSArray arrayWithObjects:v224 count:2];
        v30 = [v25 initWithOrder:v23 result:v26 conditions:v29];

        [v164 addPolicy:v30];
        v22 = v22 + 1;
        v23 = v9;
      }

      while (v20 != v22);
      v20 = [v162 countByEnumeratingWithState:&v197 objects:v225 count:16];
    }

    while (v20);
  }

  v193 = 0u;
  v194 = 0u;
  v195 = 0u;
  v196 = 0u;
  v160 = [NEProcessInfo copyUUIDsForBundleID:@"com.apple.mDNSResponder" uid:0];
  v31 = [v160 countByEnumeratingWithState:&v193 objects:v223 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v194;
    do
    {
      v34 = 0;
      v35 = v9;
      do
      {
        if (*v194 != v33)
        {
          objc_enumerationMutation(v160);
        }

        v36 = *(*(&v193 + 1) + 8 * v34);
        v37 = [NEPolicy alloc];
        v9 = (v35 + 1);
        v38 = [NEPolicyResult skipWithOrder:0];
        v39 = +[NEPolicyCondition allInterfaces];
        v222[0] = v39;
        v40 = [NEPolicyCondition effectiveApplication:v36];
        v222[1] = v40;
        v41 = [NSArray arrayWithObjects:v222 count:2];
        v42 = [v37 initWithOrder:v35 result:v38 conditions:v41];

        [v164 addPolicy:v42];
        v34 = v34 + 1;
        v35 = v9;
      }

      while (v32 != v34);
      v32 = [v160 countByEnumeratingWithState:&v193 objects:v223 count:16];
    }

    while (v32);
  }

  v43 = [NWAddressEndpoint endpointWithHostname:@"0.0.0.0" port:@"53"];
  v152 = [NWAddressEndpoint endpointWithHostname:@"::" port:@"53"];
  v44 = [NEPolicy alloc];
  v45 = [NEPolicyResult skipWithOrder:0];
  v46 = +[NEPolicyCondition allInterfaces];
  v221[0] = v46;
  v150 = v43;
  v47 = [NEPolicyCondition remoteAddress:v43 prefix:0];
  v221[1] = v47;
  v48 = [NEPolicyCondition ipProtocol:17];
  v221[2] = v48;
  v49 = [NSArray arrayWithObjects:v221 count:3];
  v151 = [v44 initWithOrder:v9 result:v45 conditions:v49];

  v50 = [NEPolicy alloc];
  v51 = (v9 + 2);
  v52 = [NEPolicyResult skipWithOrder:0];
  v53 = +[NEPolicyCondition allInterfaces];
  v220[0] = v53;
  v54 = [NEPolicyCondition remoteAddress:v152 prefix:0];
  v220[1] = v54;
  v55 = [NEPolicyCondition ipProtocol:17];
  v220[2] = v55;
  v56 = [NSArray arrayWithObjects:v220 count:3];
  v57 = [v50 initWithOrder:(v9 + 1) result:v52 conditions:v56];

  [v164 addPolicy:v151];
  v149 = v57;
  [v164 addPolicy:v57];
  v189 = 0u;
  v190 = 0u;
  v191 = 0u;
  v192 = 0u;
  v159 = [NEProcessInfo copyUUIDsForBundleID:@"com.apple.configd" uid:0];
  v58 = [v159 countByEnumeratingWithState:&v189 objects:v219 count:16];
  if (v58)
  {
    v59 = v58;
    v60 = *v190;
    do
    {
      v61 = 0;
      v62 = v51;
      do
      {
        if (*v190 != v60)
        {
          objc_enumerationMutation(v159);
        }

        v63 = *(*(&v189 + 1) + 8 * v61);
        v64 = [NEPolicy alloc];
        v51 = (v62 + 1);
        v65 = [NEPolicyResult skipWithOrder:0];
        v66 = +[NEPolicyCondition allInterfaces];
        v218[0] = v66;
        v67 = [NEPolicyCondition effectiveApplication:v63];
        v218[1] = v67;
        v68 = [NSArray arrayWithObjects:v218 count:2];
        v69 = [v64 initWithOrder:v62 result:v65 conditions:v68];

        [v164 addPolicy:v69];
        v61 = v61 + 1;
        v62 = v51;
      }

      while (v59 != v61);
      v59 = [v159 countByEnumeratingWithState:&v189 objects:v219 count:16];
    }

    while (v59);
  }

  v185 = 0u;
  v186 = 0u;
  v187 = 0u;
  v188 = 0u;
  v158 = [NEProcessInfo copyUUIDsForExecutable:@"/usr/libexec/mdmd"];
  v70 = [v158 countByEnumeratingWithState:&v185 objects:v217 count:16];
  if (v70)
  {
    v71 = v70;
    v72 = *v186;
    do
    {
      v73 = 0;
      v74 = v51;
      do
      {
        if (*v186 != v72)
        {
          objc_enumerationMutation(v158);
        }

        v75 = *(*(&v185 + 1) + 8 * v73);
        v76 = [NEPolicy alloc];
        v51 = (v74 + 1);
        v77 = [NEPolicyResult skipWithOrder:0];
        v78 = +[NEPolicyCondition allInterfaces];
        v216[0] = v78;
        v79 = [NEPolicyCondition effectiveApplication:v75];
        v216[1] = v79;
        v80 = [NSArray arrayWithObjects:v216 count:2];
        v81 = [v76 initWithOrder:v74 result:v77 conditions:v80];

        [v164 addPolicy:v81];
        v73 = v73 + 1;
        v74 = v51;
      }

      while (v71 != v73);
      v71 = [v158 countByEnumeratingWithState:&v185 objects:v217 count:16];
    }

    while (v71);
  }

  v181 = 0u;
  v182 = 0u;
  v183 = 0u;
  v184 = 0u;
  v157 = [NEProcessInfo copyUUIDsForExecutable:@"/usr/libexec/mdmuserd"];
  v82 = [v157 countByEnumeratingWithState:&v181 objects:v215 count:16];
  if (v82)
  {
    v83 = v82;
    v84 = *v182;
    do
    {
      v85 = 0;
      v86 = v51;
      do
      {
        if (*v182 != v84)
        {
          objc_enumerationMutation(v157);
        }

        v87 = *(*(&v181 + 1) + 8 * v85);
        v88 = [NEPolicy alloc];
        v51 = (v86 + 1);
        v89 = [NEPolicyResult skipWithOrder:0];
        v90 = +[NEPolicyCondition allInterfaces];
        v214[0] = v90;
        v91 = [NEPolicyCondition effectiveApplication:v87];
        v214[1] = v91;
        v92 = [NSArray arrayWithObjects:v214 count:2];
        v93 = [v88 initWithOrder:v86 result:v89 conditions:v92];

        [v164 addPolicy:v93];
        v85 = v85 + 1;
        v86 = v51;
      }

      while (v83 != v85);
      v83 = [v157 countByEnumeratingWithState:&v181 objects:v215 count:16];
    }

    while (v83);
  }

  v177 = 0u;
  v178 = 0u;
  v179 = 0u;
  v180 = 0u;
  v156 = [NEProcessInfo copyUUIDsForBundleID:@"com.apple.apsd" uid:0];
  v94 = [v156 countByEnumeratingWithState:&v177 objects:v213 count:16];
  if (v94)
  {
    v95 = v94;
    v96 = *v178;
    do
    {
      v97 = 0;
      v98 = v51;
      do
      {
        if (*v178 != v96)
        {
          objc_enumerationMutation(v156);
        }

        v99 = *(*(&v177 + 1) + 8 * v97);
        v100 = [NEPolicy alloc];
        v51 = (v98 + 1);
        v101 = [NEPolicyResult skipWithOrder:0];
        v102 = +[NEPolicyCondition allInterfaces];
        v212[0] = v102;
        v103 = [NEPolicyCondition effectiveApplication:v99];
        v212[1] = v103;
        v104 = [NSArray arrayWithObjects:v212 count:2];
        v105 = [v100 initWithOrder:v98 result:v101 conditions:v104];

        [v164 addPolicy:v105];
        v97 = v97 + 1;
        v98 = v51;
      }

      while (v95 != v97);
      v95 = [v156 countByEnumeratingWithState:&v177 objects:v213 count:16];
    }

    while (v95);
  }

  v173 = 0u;
  v174 = 0u;
  v175 = 0u;
  v176 = 0u;
  v155 = [NEProcessInfo copyUUIDsForBundleID:@"com.apple.WebKit.Networking" uid:0];
  v106 = [v155 countByEnumeratingWithState:&v173 objects:v211 count:16];
  if (v106)
  {
    v107 = v106;
    v108 = *v174;
    do
    {
      v109 = 0;
      v110 = v51;
      do
      {
        if (*v174 != v108)
        {
          objc_enumerationMutation(v155);
        }

        v111 = *(*(&v173 + 1) + 8 * v109);
        v112 = [NEPolicy alloc];
        v51 = (v110 + 1);
        v113 = [NEPolicyResult skipWithOrder:0];
        v114 = +[NEPolicyCondition allInterfaces];
        v210[0] = v114;
        v115 = [NEPolicyCondition effectiveApplication:v111];
        v210[1] = v115;
        v116 = [NSArray arrayWithObjects:v210 count:2];
        v117 = [v112 initWithOrder:v110 result:v113 conditions:v116];

        [v164 addPolicy:v117];
        v109 = v109 + 1;
        v110 = v51;
      }

      while (v107 != v109);
      v107 = [v155 countByEnumeratingWithState:&v173 objects:v211 count:16];
    }

    while (v107);
  }

  v169 = 0u;
  v170 = 0u;
  v171 = 0u;
  v172 = 0u;
  v154 = [NEProcessInfo copyUUIDsForExecutable:@"/System/Library/PrivateFrameworks/WebContentAnalysis.framework/Versions/A/Resources/webfilterDNSd"];
  v118 = [v154 countByEnumeratingWithState:&v169 objects:v209 count:16];
  if (v118)
  {
    v119 = v118;
    v120 = *v170;
    do
    {
      v121 = 0;
      v122 = v51;
      do
      {
        if (*v170 != v120)
        {
          objc_enumerationMutation(v154);
        }

        v123 = *(*(&v169 + 1) + 8 * v121);
        v124 = [NEPolicy alloc];
        v51 = (v122 + 1);
        v125 = [NEPolicyResult skipWithOrder:0];
        v126 = +[NEPolicyCondition allInterfaces];
        v208[0] = v126;
        v127 = [NEPolicyCondition effectiveApplication:v123];
        v208[1] = v127;
        v128 = [NSArray arrayWithObjects:v208 count:2];
        v129 = [v124 initWithOrder:v122 result:v125 conditions:v128];

        [v164 addPolicy:v129];
        v121 = v121 + 1;
        v122 = v51;
      }

      while (v119 != v121);
      v119 = [v154 countByEnumeratingWithState:&v169 objects:v209 count:16];
    }

    while (v119);
  }

  v165 = 0u;
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  v153 = [NEProcessInfo copyUUIDsForExecutable:@"/System/Library/PrivateFrameworks/WebContentAnalysis.framework/Versions/A/Resources/webfilterproxyd"];
  v130 = [v153 countByEnumeratingWithState:&v165 objects:v207 count:16];
  if (v130)
  {
    v131 = v130;
    v132 = *v166;
    do
    {
      v133 = 0;
      v134 = v51;
      do
      {
        if (*v166 != v132)
        {
          objc_enumerationMutation(v153);
        }

        v135 = *(*(&v165 + 1) + 8 * v133);
        v136 = [NEPolicy alloc];
        v51 = (v134 + 1);
        v137 = [NEPolicyResult skipWithOrder:0];
        v138 = +[NEPolicyCondition allInterfaces];
        v206[0] = v138;
        v139 = [NEPolicyCondition effectiveApplication:v135];
        v206[1] = v139;
        v140 = [NSArray arrayWithObjects:v206 count:2];
        v141 = [v136 initWithOrder:v134 result:v137 conditions:v140];

        [v164 addPolicy:v141];
        v133 = v133 + 1;
        v134 = v51;
      }

      while (v131 != v133);
      v131 = [v153 countByEnumeratingWithState:&v165 objects:v207 count:16];
    }

    while (v131);
  }

  v142 = [NEPolicy alloc];
  v143 = +[NEPolicyResult drop];
  v144 = +[NEPolicyCondition allInterfaces];
  v205 = v144;
  v145 = [NSArray arrayWithObjects:&v205 count:1];
  v146 = [v142 initWithOrder:v51 result:v143 conditions:v145];
  [v164 addPolicy:v146];

  if ([v164 apply])
  {
    v147 = sub_10007C458([AEAConcreteRestrictedNetworkToken alloc], v164);
  }

  else
  {
    v147 = 0;
  }

  return v147;
}

@end