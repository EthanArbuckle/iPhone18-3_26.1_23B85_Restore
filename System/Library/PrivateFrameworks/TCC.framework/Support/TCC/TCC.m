void sub_1000016F0(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = objc_autoreleasePoolPush();
  if (xpc_get_type(v2) == &_xpc_type_error)
  {
    v4 = qword_1000C1060;
    if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_ERROR))
    {
      sub_1000647FC(v4, v2);
    }
  }

  else
  {
    xpc_connection_set_event_handler(v2, &stru_1000A5800);
    xpc_connection_resume(v2);
  }

  objc_autoreleasePoolPop(v3);
}

id sub_1000017D0(void *a1)
{
  v5 = a1;
  v616 = 0;
  v617 = &v616;
  v618 = 0x2020000000;
  v619 = 0;
  v596 = objc_opt_new();
  [v596 setPromptType:1];
  v6 = v596;
  if (!v596)
  {
    goto LABEL_44;
  }

  [v596 setAuthorizationValue:1];
  [v596 setAuthorizationReason:0];
  v7 = [v5 service];
  [v596 setAuthorizationVersion:{objc_msgSend(v7, "authorizationVersionNumber")}];

  v8 = [v5 service];
  v9 = [v8 upgradeV1AuthorizationValue];

  if (v9 && ([v5 spiVersion] == 1 || objc_msgSend(v5, "spiVersion") == 2 && objc_msgSend(v5, "recordUpgradePolicy") == 1 && objc_msgSend(v5, "promptRightsMask") == 5))
  {
    [v596 setAuthorizationVersion:1];
  }

  [v596 setDatabaseAction:0];
  v10 = [v5 service];
  v11 = [v10 name];
  v12 = [v11 isEqualToString:@"kTCCServiceExposureNotification"];
  if (v12)
  {
    v13 = 0;
    v14 = 1;
  }

  else
  {
    v1 = [v5 service];
    v2 = [v1 name];
    if ([v2 isEqualToString:@"kTCCServiceCrashDetection"])
    {
      v13 = 0;
      v14 = 1;
    }

    else
    {
      v3 = [v5 service];
      v4 = [v3 name];
      v14 = [v4 isEqualToString:@"kTCCServicePasteboard"];
      v13 = 1;
    }
  }

  [v596 setReplyNoCacheAuthorization:v14];
  if (v13)
  {
  }

  if ((v12 & 1) == 0)
  {
  }

  v15 = [qword_1000C1300 platform];
  if (![v15 isChinaSKUDevice])
  {
    goto LABEL_31;
  }

  v16 = [v5 service];
  v17 = [v16 ios_allowRegionalPrompt];

  if (v17)
  {
    v18 = [[TCCDAccessIdentity alloc] initAssumedIdentityWithRequestContext:v5];
    v15 = v18;
    if (v18)
    {
      if ([v18 client_type])
      {
        v19 = qword_1000C1060;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          sub_100064B0C();
        }
      }

      else
      {
        [v5 setSubjectIdentity:v15];
        [v5 setPromptingPolicy:1];
        v20 = [v5 attributionChain];
        v19 = [v20 accessingProcess];

        if ([v19 BOOLValueForEntitlement:@"com.apple.private.tcc.kill-on-assumed-identity-authorization-change"])
        {
          v21 = [qword_1000C1300 assumedIdentityMonitor];
          [v21 startMonitoringProcess:v19 assumingIdentity:v15];
        }

        v22 = qword_1000C1060;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = [v5 explicitlyAssumedIdentity];
          v24 = "explicitly";
          *buf = 138543874;
          *&buf[4] = v19;
          if (!v23)
          {
            v24 = "implicitly";
          }

          *&buf[12] = 2082;
          *&buf[14] = v24;
          *&buf[22] = 2114;
          *&buf[24] = v15;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Accessing process %{public}@ %{public}s assumed identity: %{public}@", buf, 0x20u);
        }
      }
    }

LABEL_31:
  }

  v25 = qword_1000C1060;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = [v5 messageIdentifier];
    v27 = [v5 functionName];
    v28 = [v5 service];
    v29 = [v28 name];
    if ([v5 isPreflight])
    {
      v30 = "yes";
    }

    else
    {
      v30 = "no";
    }

    v31 = [v5 queryCount];
    v32 = [v5 clientDict];
    v33 = [v5 daemonDict];
    *buf = 138544898;
    *&buf[4] = v26;
    *&buf[12] = 2112;
    *&buf[14] = v27;
    *&buf[22] = 2112;
    *&buf[24] = v29;
    *&buf[32] = 2082;
    *&buf[34] = v30;
    v625 = 2048;
    v626 = v31;
    v627 = 2112;
    v628 = v32;
    v629 = 2112;
    v630 = v33;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "AUTHREQ_CTX: msgID=%{public}@, function=%@, service=%@, preflight=%{public}s, query=%llu, client_dict=%@, daemon_dict=%@", buf, 0x48u);
  }

  v34 = [v5 subjectIdentity];
  v35 = v34 == 0;

  if (!v35)
  {
LABEL_38:
    v614[0] = _NSConcreteStackBlock;
    v614[1] = 3221225472;
    v614[2] = sub_100008064;
    v614[3] = &unk_1000A5188;
    v36 = v5;
    v615 = v36;
    v613[0] = _NSConcreteStackBlock;
    v613[1] = 3221225472;
    v613[2] = sub_100021198;
    v613[3] = &unk_1000A52A8;
    v613[4] = &v616;
    if (db_eval("SELECT NULL FROM access_overrides WHERE service = ?", v614, v613))
    {
      v37 = [v36 service];
      v38 = [v37 name];
      v39 = [v36 attributionChain];
      v40 = [v39 requestingProcess];
      v41 = [v40 description];
      [v596 denyAuthorizationWithErrorCode:4 format:{@"Checking for Service Override on %@: Requestor: %@", v38, v41}];

LABEL_40:
      v42 = v596;
LABEL_41:
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v47 = 0;
      v48 = 0;
LABEL_42:

LABEL_43:
      v6 = v596;
      goto LABEL_44;
    }

    v81 = [v36 subjectIdentity];
    v82 = v81 == 0;

    if (!v82)
    {
      goto LABEL_65;
    }

    v105 = [v36 attributionChain];
    v106 = [v105 accessingProcess];
    v107 = [v36 service];
    v108 = [v106 hasEntitlement:@"com.apple.private.tcc.allow.overridable" containsService:v107 options:1];

    v109 = [v36 service];
    v110 = [v36 attributionChain];
    LODWORD(v106) = accessingProcessHasAllowOrRegionalPromptEntitlement(v109, v110, 1);

    if (v106)
    {
      v111 = [qword_1000C1300 platform];
      v112 = [v111 isChinaSKUDevice];

      if ((v112 & 1) == 0)
      {
LABEL_76:
        if (*(v617 + 24) != 1)
        {
          [v596 setAuthorizationValue:2];
          [v596 setAuthorizationReason:11];
          v177 = qword_1000C1060;
          if (os_log_type_enabled(v177, OS_LOG_TYPE_DEFAULT))
          {
            v178 = [v36 attributionChain];
            v179 = [v178 accessingProcess];
            v180 = [v179 description];
            v181 = [v36 service];
            v182 = [v181 name];
            *buf = 138543618;
            *&buf[4] = v180;
            *&buf[12] = 2114;
            *&buf[14] = v182;
            _os_log_impl(&_mh_execute_header, v177, OS_LOG_TYPE_DEFAULT, "Overridable entitlement policy: %{public}@ is Allow access to %{public}@", buf, 0x16u);
          }

          goto LABEL_40;
        }

        v113 = qword_1000C1060;
        if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
        {
          v114 = [v36 attributionChain];
          v115 = [v114 accessingProcess];
          v116 = [v115 description];
          v117 = [v36 service];
          v118 = [v117 name];
          *buf = 138543618;
          *&buf[4] = v116;
          *&buf[12] = 2114;
          *&buf[14] = v118;
          _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_DEFAULT, "Overridable entitlement policy: %{public}@ is Denied/Restricted access to %{public}@", buf, 0x16u);
        }

        goto LABEL_79;
      }
    }

    else if (v108)
    {
      goto LABEL_76;
    }

    v151 = [TCCDAccessIdentity alloc];
    v152 = [v36 attributionChain];
    v153 = [v36 service];
    v154 = -[TCCDAccessIdentity initWithAttributionChain:preferMostSpecificIdentifier:](v151, "initWithAttributionChain:preferMostSpecificIdentifier:", v152, [v153 hasParanoidSecurityPolicy]);
    [v36 setSubjectIdentity:v154];

    v155 = [v36 subjectIdentity];
    v156 = v155 == 0;

    if (v156)
    {
      v188 = [v36 service];
      v189 = [v188 name];
      v190 = [v36 identityDescription];
      [v596 denyAuthorizationWithErrorCode:2 format:{@"Unable to construct an identity to %@, %@", v189, v190}];

      goto LABEL_40;
    }

    v157 = qword_1000C1060;
    if (os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
    {
      v158 = [v36 messageIdentifier];
      v159 = [v36 subjectIdentity];
      v160 = [v159 identifier];
      *buf = 138543618;
      *&buf[4] = v158;
      *&buf[12] = 2114;
      *&buf[14] = v160;
      _os_log_impl(&_mh_execute_header, v157, OS_LOG_TYPE_DEFAULT, "AUTHREQ_SUBJECT: msgID=%{public}@, subject=%{public}@,", buf, 0x16u);
    }

    v161 = [qword_1000C1300 platform];
    v162 = [v36 subjectIdentity];
    v163 = [v36 attributionChain];
    [v161 registerWithApplicationResolverSubjectIdentity:v162 processChain:v163];

LABEL_65:
    v83 = [v36 service];
    v84 = [v83 name];
    if ([v84 isEqualToString:@"kTCCServiceUserTracking"])
    {
      v85 = [v36 attributionChain];
      v86 = [v85 accessingProcess];
      v87 = [v86 BOOLValueForEntitlement:@"com.apple.developer.web-browser"];

      if (v87)
      {
        v88 = qword_1000C1060;
        if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
        {
          v89 = [v36 functionName];
          v90 = v89;
          v91 = [v89 UTF8String];
          v92 = [v36 service];
          v93 = [v92 name];
          v94 = [v36 identityDescription];
          *buf = 136446722;
          *&buf[4] = v91;
          *&buf[12] = 2114;
          *&buf[14] = v93;
          *&buf[22] = 2114;
          *&buf[24] = v94;
          _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "Refusing %{public}s for service %{public}@ from %{public}@ due to security policy", buf, 0x20u);
        }

        [v596 setAuthorizationValue:0];
        [v596 setAuthorizationReason:14];
      }
    }

    else
    {
    }

    v119 = [v36 subjectIdentity];
    v120 = [v119 pluginBundleIdentifier];
    v121 = v120 == 0;

    if (!v121)
    {
      v122 = [v36 subjectIdentity];
      v123 = [v122 pluginTargetsSystemExtensionPoint];

      if ((v123 & 1) == 0)
      {
        v140 = qword_1000C1060;
        if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
        {
          v236 = [v36 functionName];
          v237 = v236;
          v238 = [v236 UTF8String];
          v239 = [v36 service];
          v240 = [v239 name];
          v241 = [v36 identityDescription];
          *buf = 136446722;
          *&buf[4] = v238;
          *&buf[12] = 2114;
          *&buf[14] = v240;
          *&buf[22] = 2114;
          *&buf[24] = v241;
          _os_log_error_impl(&_mh_execute_header, v140, OS_LOG_TYPE_ERROR, "Refusing %{public}s for service %{public}@ from extension %{public}@ targeting 3rd party extension point", buf, 0x20u);
        }

        goto LABEL_119;
      }

      v124 = [v36 subjectIdentity];
      v125 = [v124 pluginPromptPolicy] == 0;

      if (v125)
      {
        v140 = qword_1000C1060;
        if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
        {
          v253 = [v36 functionName];
          v254 = v253;
          v255 = [v253 UTF8String];
          v256 = [v36 service];
          v257 = [v256 name];
          v258 = [v36 identityDescription];
          *buf = 136446722;
          *&buf[4] = v255;
          *&buf[12] = 2114;
          *&buf[14] = v257;
          *&buf[22] = 2114;
          *&buf[24] = v258;
          _os_log_error_impl(&_mh_execute_header, v140, OS_LOG_TYPE_ERROR, "Refusing %{public}s for service %{public}@ from extension %{public}@, extension point disallows prompting", buf, 0x20u);
        }

        goto LABEL_119;
      }
    }

    if (*(v617 + 24) == 1)
    {
      v113 = qword_1000C1060;
      if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
      {
        v126 = [v36 identityDescription];
        v127 = [v36 service];
        v128 = [v127 name];
        *buf = 138412546;
        *&buf[4] = v126;
        *&buf[12] = 2114;
        *&buf[14] = v128;
        _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_DEFAULT, "Restricted %@ access to %{public}@", buf, 0x16u);
      }

LABEL_79:

      [v596 setAuthorizationValue:0];
      [v596 setAuthorizationReason:7];
      goto LABEL_40;
    }

    v141 = [v36 attributionChain];
    v142 = [v141 accessingProcess];
    if ([v142 isAppClip])
    {
      v143 = [v36 service];
      v144 = [v143 ios_allowPromptFromAppClip];

      if ((v144 & 1) == 0)
      {
        v145 = qword_1000C1060;
        if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
        {
          v146 = [v36 attributionChain];
          v147 = [v146 accessingProcess];
          v148 = [v147 description];
          v149 = [v36 service];
          v150 = [v149 name];
          *buf = 138543618;
          *&buf[4] = v148;
          *&buf[12] = 2114;
          *&buf[14] = v150;
          _os_log_impl(&_mh_execute_header, v145, OS_LOG_TYPE_DEFAULT, "Denying App Clip %{public}@ access to prohibited service %{public}@", buf, 0x16u);
        }

LABEL_100:

        [v596 setAuthorizationValue:0];
        [v596 setAuthorizationReason:5];
        goto LABEL_40;
      }
    }

    else
    {
    }

    v164 = [v36 subjectIdentity];
    if ([v164 isAvocadoWidget])
    {
      v165 = [v36 service];
      v166 = [v165 allowedForAvocadoWidget];

      if ((v166 & 1) == 0)
      {
        v140 = qword_1000C1060;
        if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
        {
          v167 = [v36 attributionChain];
          v168 = [v167 accessingProcess];
          v169 = [v168 description];
          v170 = [v36 service];
          v171 = [v170 name];
          *buf = 138543618;
          *&buf[4] = v169;
          *&buf[12] = 2114;
          *&buf[14] = v171;
          _os_log_impl(&_mh_execute_header, v140, OS_LOG_TYPE_DEFAULT, "Denying Avocado widget %{public}@ access to prohibited service %{public}@", buf, 0x16u);
        }

LABEL_119:

        [v596 setAuthorizationValue:0];
        [v596 setAuthorizationReason:12];
        goto LABEL_40;
      }
    }

    else
    {
    }

    v183 = [v36 service];
    v184 = sub_100008390(v183);

    if (v184)
    {
      v145 = qword_1000C1060;
      if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
      {
        v185 = [v36 identityDescription];
        v186 = [v36 service];
        v187 = [v186 name];
        *buf = 138543618;
        *&buf[4] = v185;
        *&buf[12] = 2114;
        *&buf[14] = v187;
        _os_log_impl(&_mh_execute_header, v145, OS_LOG_TYPE_DEFAULT, "Denying %{public}@ access to %{public}@ because is_service_disallowed_on_this_platform() is true", buf, 0x16u);
      }

      goto LABEL_100;
    }

    v191 = [v36 attributionChain];

    if (!v191)
    {
LABEL_136:
      v584 = sub_10000834C(v36);
      v610[0] = _NSConcreteStackBlock;
      v610[1] = 3221225472;
      v610[2] = sub_1000211AC;
      v610[3] = &unk_1000A5318;
      v595 = v596;
      v611 = v595;
      v209 = v36;
      v612 = v209;
      v588 = objc_retainBlock(v610);
      v586 = qword_1000C1300;
      v593 = [v209 service];
      v589 = [v593 name];
      v591 = [v209 subjectIdentity];
      v210 = [v591 identifier];
      v211 = [v209 subjectIdentity];
      v212 = [v211 client_type];
      v213 = [v209 attributionChain];
      v214 = [v213 requestingProcess];
      v215 = [v209 functionName];
      v216 = [v209 attributionChain];
      v217 = [v586 translateAllFilesToEndpointSecurity:v589 withClient:v210 clientType:v212 requestingProcess:v214 function:v215 attributionChain:v216 executablePath:0];

      v607[0] = _NSConcreteStackBlock;
      v607[1] = 3221225472;
      v607[2] = sub_1000212CC;
      v607[3] = &unk_1000A5318;
      v594 = v217;
      v608 = v594;
      v218 = v209;
      v609 = v218;
      if (db_eval("SELECT auth_value, auth_reason, csreq, strftime('%s','now') - last_modified AS age, flags, auth_version, pid, pid_version, boot_uuid, last_reminded FROM access WHERE service = ? AND client = ? AND client_type = ?", v607, v588))
      {
        v219 = [v218 service];
        v220 = [v219 name];
        v221 = [v218 identityDescription];
        [v595 denyAuthorizationWithErrorCode:4 format:{@"Query for current DB state for %@: Requestor: %@", v220, v221}];

LABEL_138:
        v222 = v595;
LABEL_139:
        v43 = 0;
        v44 = 0;
        v45 = 0;
        v46 = 0;
        v47 = 0;
        v48 = 0;
LABEL_140:

        goto LABEL_42;
      }

      v223 = [v218 service];
      v224 = [v223 upgradeV1AuthorizationValue];

      if (v224)
      {
        v225 = qword_1000C1060;
        if (os_log_type_enabled(v225, OS_LOG_TYPE_INFO))
        {
          v226 = [v595 authorizationValue];
          v227 = [v218 spiVersion];
          v228 = [v595 authorizationVersion];
          v229 = [v218 recordUpgradePolicy];
          *buf = 134218752;
          *&buf[4] = v226;
          *&buf[12] = 2048;
          *&buf[14] = v227;
          *&buf[22] = 2048;
          *&buf[24] = v228;
          *&buf[32] = 2048;
          *&buf[34] = v229;
          _os_log_impl(&_mh_execute_header, v225, OS_LOG_TYPE_INFO, "upgradeV1AuthorizationValue: authValue:%llu, spiVersion: %llu, authVersion: %llu, upgrade policy: %llu", buf, 0x2Au);
        }
      }

      v230 = [v595 authorizationVersion];
      v231 = [v218 service];
      if (v230 < [v231 authorizationVersionNumber])
      {
        v232 = [v218 service];
        if ([v232 upgradeV1AuthorizationValue] && !objc_msgSend(v218, "recordUpgradePolicy"))
        {
          v284 = [v595 authorizationValue] == 1;

          if (!v284)
          {
            [v595 setV1AuthorizationUpgrade:1];
            [v595 setV1AuthorizationValue:{objc_msgSend(v595, "authorizationValue")}];
            [v595 setV1AuthorizationReason:{objc_msgSend(v595, "authorizationReason")}];
            if (![v595 authorizationValue])
            {
              [v595 setAuthorizationVersion:2];
              [v595 setDatabaseAction:1];
              v346 = qword_1000C1060;
              if (os_log_type_enabled(v346, OS_LOG_TYPE_INFO))
              {
                v347 = [v218 service];
                v348 = [v347 name];
                v349 = [v218 identityDescription];
                *buf = 138543618;
                *&buf[4] = v348;
                *&buf[12] = 2114;
                *&buf[14] = v349;
                _os_log_impl(&_mh_execute_header, v346, OS_LOG_TYPE_INFO, "Upgrading to V2 Denied: for %{public}@, %{public}@", buf, 0x16u);
              }

              [v595 setPromptType:0];
              v350 = [qword_1000C1300 platform];
              v351 = [v218 service];
              v352 = [v218 subjectIdentity];
              [v350 sendAnalyticsForAction:6 service:v351 subjectIdentity:v352 indirectObjectIdentity:0 authValue:objc_msgSend(v595 includeV1AuthValue:"authorizationValue") v1AuthValue:1 desiredAuth:objc_msgSend(v595 domainReason:"v1AuthorizationValue") promptType:objc_msgSend(v218 macBuddyStatus:{"desiredAuth"), 0, objc_msgSend(v595, "promptType"), 0}];

              goto LABEL_138;
            }

            [v595 setAuthorizationValue:1];
            [v595 setAuthorizationReason:5];
            [v595 setAuthorizationVersion:2];
          }

LABEL_150:
          if (v584 && [v595 authorizationValue] == 1)
          {
            [v595 setAuthorizationValue:2];
            [v595 setAuthorizationReason:5];
            v233 = [v218 service];
            v234 = [v233 doNotStoreDefaultAllowAccess];

            if (v234)
            {
              v235 = qword_1000C1060;
              if (os_log_type_enabled(v235, OS_LOG_TYPE_DEBUG))
              {
                v389 = [v218 subjectIdentity];
                v390 = [v389 identifier];
                v391 = [v218 service];
                v392 = [v391 name];
                *buf = 138543618;
                *&buf[4] = v390;
                *&buf[12] = 2114;
                *&buf[14] = v392;
                _os_log_debug_impl(&_mh_execute_header, v235, OS_LOG_TYPE_DEBUG, "Default Allow for: Client %{public}@ to %{public}@ will not be stored in database.", buf, 0x16u);
              }
            }

            else
            {
              [v595 setDatabaseAction:1];
            }

            goto LABEL_138;
          }

          if ([v595 authorizationValue] == 1)
          {
            v242 = [v218 attributionChain];
            if (v242)
            {
              v243 = [v218 attributionChain];
              v244 = [v243 accessingProcess];
              v245 = [v218 service];
              v246 = [v244 hasEntitlement:@"com.apple.private.tcc.system" containsService:v245 options:0];

              if (v246)
              {
                v247 = qword_1000C1060;
                if (os_log_type_enabled(v247, OS_LOG_TYPE_DEFAULT))
                {
                  v248 = [v218 identityDescription];
                  v249 = [v218 service];
                  v250 = [v249 name];
                  *buf = 138543618;
                  *&buf[4] = v248;
                  *&buf[12] = 2114;
                  *&buf[14] = v250;
                  _os_log_impl(&_mh_execute_header, v247, OS_LOG_TYPE_DEFAULT, "Subject %{public}@ Allowed access to %{public}@ via entitlement 'com.apple.private.tcc.system'", buf, 0x16u);
                }

                [v595 setAuthorizationValue:2];
                [v595 setAuthorizationReason:11];
                [v595 setDatabaseAction:1];
                goto LABEL_138;
              }
            }
          }

          if ([v595 authorizationValue] == 1)
          {
            v251 = [v218 service];
            if (![v251 isAccessDeniedByDefault])
            {
LABEL_186:

              goto LABEL_187;
            }

            v252 = [v218 service];
            if ([v252 alertStyle] == 1)
            {
            }

            else
            {
              v285 = [v218 service];
              v286 = [v285 alertStyle] == 3;

              if (!v286)
              {
                goto LABEL_187;
              }
            }

            [v595 setAuthorizationValue:0];
            [v595 setAuthorizationReason:5];
            [v595 setDatabaseAction:{objc_msgSend(v218, "isPreflight") ^ 1}];
            if ([v595 databaseAction] == 1)
            {
              v251 = qword_1000C1060;
              if (os_log_type_enabled(v251, OS_LOG_TYPE_DEFAULT))
              {
                v287 = [v218 service];
                v288 = [v287 name];
                *buf = 138543362;
                *&buf[4] = v288;
                _os_log_impl(&_mh_execute_header, v251, OS_LOG_TYPE_DEFAULT, "Service %{public}@ does not allow prompting; recording denied.", buf, 0xCu);
              }

              goto LABEL_186;
            }
          }

LABEL_187:
          if ([v595 authorizationValue] == 1)
          {
            v289 = [v218 service];
            v290 = [v289 applyDevelopmentAuthorizationPolicy];

            if (v290)
            {
              v291 = [v218 service];
              v292 = [v291 developmentAuthorizationValue];

              if (v292)
              {
                if (v292 == 2)
                {
                  [v595 setAuthorizationValue:0];
                  [v595 setAuthorizationReason:5];
                  [v595 setDatabaseAction:0];
                  v293 = "Denied:No Record";
                }

                else if (v292 == 1)
                {
                  [v595 setAuthorizationValue:2];
                  [v595 setAuthorizationReason:5];
                  [v595 setDatabaseAction:0];
                  v293 = "Allowed:No Record";
                }

                else
                {
                  v293 = "unexpected!";
                }

                v294 = qword_1000C1060;
                if (os_log_type_enabled(v294, OS_LOG_TYPE_INFO))
                {
                  v295 = [v218 service];
                  v296 = [v295 name];
                  *buf = 138543618;
                  *&buf[4] = v296;
                  *&buf[12] = 2082;
                  *&buf[14] = v293;
                  _os_log_impl(&_mh_execute_header, v294, OS_LOG_TYPE_INFO, " %{public}@ has Development Auth value: %{public}s", buf, 0x16u);
                }
              }
            }
          }

          v297 = [v218 subjectIdentity];
          if ([v297 isAvocadoWidget])
          {
            v298 = [v595 authorizationValue] == 1;

            if (v298)
            {
              v299 = qword_1000C1060;
              if (os_log_type_enabled(v299, OS_LOG_TYPE_DEFAULT))
              {
                v300 = [v218 attributionChain];
                v301 = [v300 accessingProcess];
                v302 = [v301 description];
                v303 = [v218 service];
                v304 = [v303 name];
                *buf = 138543618;
                *&buf[4] = v302;
                *&buf[12] = 2114;
                *&buf[14] = v304;
                _os_log_impl(&_mh_execute_header, v299, OS_LOG_TYPE_DEFAULT, "Preventing prompt from Avocado widget %{public}@ for service %{public}@", buf, 0x16u);
              }

              [v595 setAuthorizationValue:0];
              [v595 setAuthorizationReason:12];
              [v595 setDatabaseAction:0];
              goto LABEL_138;
            }
          }

          else
          {
          }

          v305 = [v218 subjectIdentity];
          if ([v305 isCaptureExtension])
          {
            v306 = [v595 authorizationValue] == 1;

            if (v306)
            {
              v307 = qword_1000C1060;
              if (os_log_type_enabled(v307, OS_LOG_TYPE_DEFAULT))
              {
                v308 = [v218 attributionChain];
                v309 = [v308 accessingProcess];
                v310 = [v309 description];
                v311 = [v218 service];
                v312 = [v311 name];
                *buf = 138543618;
                *&buf[4] = v310;
                *&buf[12] = 2114;
                *&buf[14] = v312;
                _os_log_impl(&_mh_execute_header, v307, OS_LOG_TYPE_DEFAULT, "Preventing prompt from Capture Extension %{public}@ for service %{public}@", buf, 0x16u);
              }

              [v595 setAuthorizationValue:1];
              [v595 setAuthorizationReason:12];
              [v595 setDatabaseAction:0];
              goto LABEL_138;
            }
          }

          else
          {
          }

          v313 = qword_1000C1060;
          if (os_log_type_enabled(v313, OS_LOG_TYPE_INFO))
          {
            v314 = [v218 service];
            v315 = [v314 name];
            v316 = [v218 identityDescription];
            v317 = [v218 service];
            v318 = [v595 descriptionWithRespectToService:v317];
            *buf = 138543874;
            *&buf[4] = v315;
            *&buf[12] = 2114;
            *&buf[14] = v316;
            *&buf[22] = 2114;
            *&buf[24] = v318;
            _os_log_impl(&_mh_execute_header, v313, OS_LOG_TYPE_INFO, "Handling access request to %{public}@, from %{public}@, %{public}@", buf, 0x20u);
          }

          v319 = [v218 service];
          v320 = [v319 supportsStagedPrompting];

          if (v320)
          {
            if (![v218 desiredAuth])
            {
              v321 = [v218 service];
              [v218 setDesiredAuth:{objc_msgSend(v321, "defaultDesiredAuth")}];
            }

            v322 = [v218 service];
            v323 = [v322 name];
            if ([v323 isEqualToString:@"kTCCServicePhotos"] && objc_msgSend(v595, "authorizationValue") == 1)
            {
              v324 = [v218 isPreflight];

              if ((v324 & 1) == 0)
              {
                *v623 = 1;
                v606 = 0;
                LODWORD(v605) = 0;
                v325 = [qword_1000C1300 platform];
                v326 = [v325 serviceByName:@"kTCCServicePhotosAdd"];

                v327 = qword_1000C1300;
                v328 = [v326 isAccessAllowedByDefault];
                v329 = [v218 subjectIdentity];
                LOBYTE(v328) = [v327 evaluateAccessToService:v326 defaultAccessAllowed:v328 by:v329 checkCodeRequirements:1 authorizationResult:v623 authorizationReason:&v606 flags:&v605 subjectCodeIdentityDataResult:0];

                v330 = qword_1000C1060;
                v331 = v330;
                if (v328)
                {
                  if (os_log_type_enabled(v330, OS_LOG_TYPE_DEFAULT))
                  {
                    v332 = *v623;
                    v333 = [v218 identityDescription];
                    *buf = 134218498;
                    *&buf[4] = v332;
                    *&buf[12] = 2112;
                    *&buf[14] = v333;
                    *&buf[22] = 1024;
                    *&buf[24] = v605;
                    _os_log_impl(&_mh_execute_header, v331, OS_LOG_TYPE_DEFAULT, "Got %llu auth from db for client: %@ flags: %d", buf, 0x1Cu);
                  }

                  if ((v605 & 0x10) != 0)
                  {
                    v393 = qword_1000C1060;
                    if (os_log_type_enabled(v393, OS_LOG_TYPE_ERROR))
                    {
                      v394 = [v218 identityDescription];
                      sub_100064BCC(v394, buf, v393);
                    }

                    [v595 setAuthorizationValue:0];
                    [v595 setAuthorizationReason:5];
                    [v595 setDatabaseAction:0];
                    v395 = v595;

                    goto LABEL_139;
                  }

                  if (*v623 == 2)
                  {
                    [v595 setAuthorizationValue:4];
                  }
                }

                else
                {
                  if (os_log_type_enabled(v330, OS_LOG_TYPE_ERROR))
                  {
                    v355 = [v218 identityDescription];
                    sub_100064B7C(v355, v622, v331);
                  }
                }
              }
            }

            else
            {
            }

            [v595 setPreviousAuthorization:{objc_msgSend(v595, "authorizationValue")}];
            if ([v595 authorizationValue] != 1)
            {
              v334 = [v595 authorizationValue];
              if (v334 != [v218 desiredAuth])
              {
                v335 = qword_1000C1060;
                if (os_log_type_enabled(v335, OS_LOG_TYPE_DEFAULT))
                {
                  v336 = [v595 authorizationValue];
                  v337 = [v218 desiredAuth];
                  *buf = 134218240;
                  *&buf[4] = v336;
                  *&buf[12] = 2048;
                  *&buf[14] = v337;
                  _os_log_impl(&_mh_execute_header, v335, OS_LOG_TYPE_DEFAULT, "got existing auth right: %llu with requested upgrade auth: %llu", buf, 0x16u);
                }

                if ([v218 desiredAuth] == 2 && (objc_msgSend(v595, "databaseFlags") & 0x10) != 0)
                {
                  v341 = qword_1000C1060;
                  if (os_log_type_enabled(v341, OS_LOG_TYPE_ERROR))
                  {
                    sub_100064C1C(v623, [v595 databaseFlags], v341);
                  }

                  goto LABEL_247;
                }

                v338 = [v218 service];
                v339 = [v338 authorizationChoicesForCurrentAuth:objc_msgSend(v595 desiredAuth:"authorizationValue") aButtonAuth:objc_msgSend(v218 bButtonAuth:"desiredAuth") cButtonAuth:{0, 0, 0}];

                v340 = qword_1000C1060;
                v341 = v340;
                if (v339)
                {
                  if (os_log_type_enabled(v340, OS_LOG_TYPE_ERROR))
                  {
                    v342 = [v218 service];
                    v343 = [v342 name];
                    v344 = [v595 authorizationValue];
                    v345 = [v218 desiredAuth];
                    *buf = 138412802;
                    *&buf[4] = v343;
                    *&buf[12] = 2048;
                    *&buf[14] = v344;
                    *&buf[22] = 2048;
                    *&buf[24] = v345;
                    _os_log_error_impl(&_mh_execute_header, v341, OS_LOG_TYPE_ERROR, "Staged prompting request is invalid for %@: currentAuth: %llu desiredAuth: %llu", buf, 0x20u);
                  }

LABEL_247:

                  [v595 setAuthorizationValue:{objc_msgSend(v595, "authorizationValue")}];
                  [v595 setAuthorizationReason:5];
                  [v595 setDatabaseAction:0];
                  goto LABEL_248;
                }

                if (os_log_type_enabled(v340, OS_LOG_TYPE_DEFAULT))
                {
                  v353 = [v595 authorizationValue];
                  v354 = [v218 desiredAuth];
                  *buf = 134218240;
                  *&buf[4] = v353;
                  *&buf[12] = 2048;
                  *&buf[14] = v354;
                  _os_log_impl(&_mh_execute_header, v341, OS_LOG_TYPE_DEFAULT, "attempting upgrade: currentAuth: %llu desiredAuth: %llu", buf, 0x16u);
                }

                if (([v218 isPreflight] & 1) == 0)
                {
                  [v595 setAuthorizationValue:1];
                  [v595 setPromptType:2];
                }
              }
            }
          }

LABEL_248:
          if ([v595 authorizationValue] != 1 && objc_msgSend(v595, "authorizationValue") != 6)
          {
            if (([v218 isPreflight] & 1) == 0 && objc_msgSend(v595, "doUpdateOfSubjectVerifierData"))
            {
              [v595 setDatabaseAction:1];
            }

            goto LABEL_138;
          }

          +[NSUserDefaults resetStandardUserDefaults];
          v356 = +[NSUserDefaults standardUserDefaults];
          v357 = [v356 persistentDomainForName:@"com.apple.springboard"];
          v358 = [v357 objectForKeyedSubscript:@"SBParentalControlsCapabilities"];
          v359 = [v218 service];
          v360 = [v359 name];
          v361 = [v358 containsObject:v360];

          if (v361)
          {
            [v595 setAuthorizationValue:0];
            [v595 setAuthorizationReason:7];
            [v595 setDatabaseAction:0];
            v362 = qword_1000C1060;
            if (os_log_type_enabled(v362, OS_LOG_TYPE_DEFAULT))
            {
              v363 = [v218 service];
              v364 = [v363 name];
              *buf = 138543362;
              *&buf[4] = v364;
              _os_log_impl(&_mh_execute_header, v362, OS_LOG_TYPE_DEFAULT, "%{public}@ is restricted by Parental Controls.", buf, 0xCu);
            }

LABEL_271:

            goto LABEL_138;
          }

          v365 = [v218 service];
          v366 = [v365 alertStyle] == 2;

          if (v366)
          {
            v367 = [v218 attributionChain];
            v368 = [v367 responsibleProcess];
            v369 = [v368 BOOLValueForEntitlement:@"com.apple.private.packagekit.userconsent"];

            v370 = v369 ^ 1;
          }

          else
          {
            v370 = 0;
          }

          v371 = [v218 service];
          v372 = [v371 name];
          v373 = [v372 isEqualToString:@"kTCCServiceAccessibility"];

          if (v373)
          {
            [v595 setAuthorizationValue:1];
            [v595 setAuthorizationReason:5];
            [v595 setDatabaseAction:0];
            v362 = qword_1000C1060;
            if (os_log_type_enabled(v362, OS_LOG_TYPE_DEFAULT))
            {
              v374 = [v218 service];
              v375 = [v374 name];
              *buf = 138543362;
              *&buf[4] = v375;
              _os_log_impl(&_mh_execute_header, v362, OS_LOG_TYPE_DEFAULT, "Service %{public}@ does not allow prompting; returning Unknown", buf, 0xCu);
            }

            goto LABEL_271;
          }

          v376 = [v218 service];
          v377 = [v376 alertStyle] == 1;

          if (v377)
          {
            [v595 setAuthorizationValue:0];
            [v595 setAuthorizationReason:5];
            [v595 setDatabaseAction:0];
            v362 = qword_1000C1060;
            if (os_log_type_enabled(v362, OS_LOG_TYPE_DEFAULT))
            {
              v378 = [v218 service];
              v379 = [v378 name];
              *buf = 138543362;
              *&buf[4] = v379;
              _os_log_impl(&_mh_execute_header, v362, OS_LOG_TYPE_DEFAULT, "Service %{public}@ does not allow prompting; returning denied.", buf, 0xCu);
            }

            goto LABEL_271;
          }

          v380 = [v218 service];
          v381 = [v380 alertStyle] == 3;

          if (v381)
          {
            [v595 setAuthorizationValue:0];
            [v595 setAuthorizationReason:5];
            [v595 setDatabaseAction:0];
            v362 = qword_1000C1060;
            if (os_log_type_enabled(v362, OS_LOG_TYPE_DEFAULT))
            {
              v382 = [v218 service];
              v383 = [v382 name];
              *buf = 138543362;
              *&buf[4] = v383;
              _os_log_impl(&_mh_execute_header, v362, OS_LOG_TYPE_DEFAULT, "Service %{public}@ does not allow prompting; returning denied.", buf, 0xCu);
            }

            goto LABEL_271;
          }

          if ([v218 isPreflight])
          {
            if ([v218 promptingPolicy] == 1)
            {
              [v595 setAuthorizationValue:0];
              [v595 setAuthorizationReason:10];
              [v595 setDatabaseAction:0];
            }

            v362 = [v218 service];
            if ([v362 supportsStagedPrompting])
            {
              v384 = [v595 authorizationValue] == 6;

              if (v384)
              {
                [v218 setDesiredAuth:6];
              }

              goto LABEL_138;
            }

            goto LABEL_271;
          }

          if (v370)
          {
            v385 = qword_1000C1060;
            if (os_log_type_enabled(v385, OS_LOG_TYPE_DEFAULT))
            {
              v386 = [v218 service];
              v387 = [v386 name];
              *buf = 138543362;
              *&buf[4] = v387;
              _os_log_impl(&_mh_execute_header, v385, OS_LOG_TYPE_DEFAULT, "Service %{public}@ does not allow prompting for unentitled binaries; returning denied.", buf, 0xCu);
            }

            v388 = [v218 service];
            [v218 presentAsynchronousDenialNotificationForService:v388];

            [v595 setAuthorizationValue:0];
            [v595 setAuthorizationReason:2];
            [v595 setDatabaseAction:1];
            goto LABEL_138;
          }

          v396 = [v218 subjectIdentity];
          v48 = [v396 displayName];

          if (!v48)
          {
            v412 = [v218 identityDescription];
            [v595 denyAuthorizationWithErrorCode:2 format:{@"Unable to prompt for client without display name (%{public}@)", v412}];

            goto LABEL_138;
          }

          if (_os_feature_enabled_impl())
          {
            if (([v218 watchInitiatedPrompt] & 1) == 0)
            {
              v397 = [qword_1000C1300 platform];
              v398 = [v397 protectedAppManager];
              v399 = [v218 service];
              v400 = [v399 name];
              v401 = [v398 authenticateForAccessToService:v400];

              if ((v401 & 1) == 0)
              {
                v519 = qword_1000C1060;
                if (os_log_type_enabled(v519, OS_LOG_TYPE_DEFAULT))
                {
                  v520 = [v218 service];
                  v521 = [v520 name];
                  *buf = 138412290;
                  *&buf[4] = v521;
                  _os_log_impl(&_mh_execute_header, v519, OS_LOG_TYPE_DEFAULT, "service: %@ is locked and authentication failed", buf, 0xCu);
                }

                [v595 setAuthorizationValue:0];
                [v595 setAuthorizationReason:15];
                [v595 setDatabaseAction:0];
                v522 = v595;
                v43 = 0;
                v44 = 0;
                v45 = 0;
                v46 = 0;
                v47 = 0;
                goto LABEL_140;
              }
            }
          }

          v402 = qword_1000C1060;
          if (os_log_type_enabled(v402, OS_LOG_TYPE_DEFAULT))
          {
            v403 = [v218 messageIdentifier];
            v404 = [v218 service];
            v405 = [v404 name];
            v406 = [v218 identityDescription];
            *buf = 138543874;
            *&buf[4] = v403;
            *&buf[12] = 2114;
            *&buf[14] = v405;
            *&buf[22] = 2114;
            *&buf[24] = v406;
            _os_log_impl(&_mh_execute_header, v402, OS_LOG_TYPE_DEFAULT, "AUTHREQ_PROMPTING: msgID=%{public}@, service=%{public}@, subject=%{public}@, ", buf, 0x20u);
          }

          v407 = [v218 service];
          v47 = [v407 requestTitleTextLocalizationKey];

          v408 = [v218 service];
          v43 = [v408 requestAdditionalTextLocalizationKey];

          v409 = [v218 service];
          v410 = [v409 supportsStagedPrompting];

          if (v410)
          {
            if ([v595 promptType] == 2)
            {
              v411 = [v218 service];
              [v411 requestUpgradeTitleTextLocalizationKey];
            }

            else
            {
              v411 = [v218 service];
              [v411 requestTitleTextLocalizationKeyForAuthorization:{objc_msgSend(v218, "desiredAuth")}];
            }
            v590 = ;
          }

          else
          {
            v590 = 0;
          }

          v413 = [v218 service];
          v583 = [v413 alternatePromptTitleEntitlement];

          if (v583)
          {
            v414 = [v218 attributionChain];
            v415 = [v414 accessingProcess];
            v416 = [v415 BOOLValueForEntitlement:v583];

            if (v416)
            {
              v417 = qword_1000C1060;
              if (os_log_type_enabled(v417, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v417, OS_LOG_TYPE_DEFAULT, "using alternate header text due to entitlement", buf, 2u);
              }

              v418 = [v218 service];
              v419 = [v418 requestEntitlementTitleTextLocalizationKey];

              v590 = v419;
            }
          }

          if (v590)
          {
            v420 = v590;

            v47 = v420;
          }

          if ([v218 promptRightsMask])
          {
            v421 = [v218 promptRightsMask];
          }

          else
          {
            v422 = [v218 service];
            v421 = [v422 authorizationPromptRightsMask];
          }

          v423 = [v218 spiVersion];
          v424 = [v218 service];
          v587 = [v424 allowAuthorizationButtonTitleLocalizationKey];

          v606 = 2;
          v425 = [v218 service];
          v585 = [v425 denyAuthorizationButtonTitleLocalizationKey];

          v592 = 0;
          v604 = 1;
          v605 = 0;
          if ((v421 & 8) != 0 && v423 >= 2)
          {
            v427 = [v218 service];
            v592 = [v427 limitedAuthorizationButtonTitleLocalizationKey];

            v604 = 3;
            if ([v595 v1AuthorizationValue] == 2)
            {
              v428 = [v218 service];
              v429 = [v428 requestTitleTextAfterV2UpgradeLocalizationKey];
              v430 = v429 == 0;

              if (!v430)
              {
                v431 = [v218 service];
                v432 = [v431 requestTitleTextAfterV2UpgradeLocalizationKey];

                v47 = v432;
              }

              v433 = [v218 service];
              v434 = [v433 requestAdditionalTextAfterV2UpgradeLocalizationKey];
              v435 = v434 == 0;

              if (!v435)
              {
                v436 = [v218 service];
                v437 = [v436 requestAdditionalTextAfterV2UpgradeLocalizationKey];

                v43 = v437;
              }
            }

            v438 = [v218 service];
            v439 = [v438 alertManager];

            if (v439)
            {
              [v439 displayAlertForCondition:1 withCustomUserInfo:0];
            }
          }

          v440 = [v218 service];
          if ([v440 supportsStagedPrompting])
          {
            v441 = [v218 service];
            v442 = [v441 name];
            if ([v442 isEqualToString:@"kTCCServicePhotos"])
            {
              v443 = [v218 spiVersion] == 1;

              if (v443)
              {
                v579 = v585;
                v581 = v587;
                v577 = v592;
                goto LABEL_327;
              }
            }

            else
            {
            }

            v461 = [v218 desiredAuth];
            v462 = [v218 service];
            v463 = [v462 authorizationChoicesForCurrentAuth:objc_msgSend(v595 desiredAuth:"previousAuthorization") aButtonAuth:objc_msgSend(v218 bButtonAuth:"desiredAuth") cButtonAuth:{&v606, &v605, &v604}];

            if ((v463 & 0x80000000) != 0)
            {
              v523 = qword_1000C1060;
              if (os_log_type_enabled(v523, OS_LOG_TYPE_ERROR))
              {
                v552 = [v595 previousAuthorization];
                v553 = [v218 desiredAuth];
                *buf = 67109632;
                *&buf[4] = v461 == 0;
                *&buf[8] = 2048;
                *&buf[10] = v552;
                *&buf[18] = 2048;
                *&buf[20] = v553;
                _os_log_error_impl(&_mh_execute_header, v523, OS_LOG_TYPE_ERROR, "Staged prompting request is invalid: legacySPI: %d currentAuth: %llu desiredAuth: %llu", buf, 0x1Cu);
              }

              [v595 setAuthorizationValue:{objc_msgSend(v595, "previousAuthorization")}];
              [v595 setAuthorizationReason:5];
              [v595 setDatabaseAction:0];
              v524 = v595;
              goto LABEL_384;
            }

            if ([v595 previousAuthorization] == 6 && objc_msgSend(v218, "desiredAuth") == 6)
            {
              v464 = qword_1000C1060;
              if (os_log_type_enabled(v464, OS_LOG_TYPE_DEBUG))
              {
                sub_100064C64();
              }

              [v218 setDesiredAuth:2];
            }

            v465 = [v218 service];
            v581 = [v465 buttonTitleLocalizationKeyForAuthorization:v606 desiredAuth:{objc_msgSend(v218, "desiredAuth")}];

            v466 = [v218 service];
            v579 = [v466 buttonTitleLocalizationKeyForAuthorization:v605 desiredAuth:{objc_msgSend(v218, "desiredAuth")}];

            v467 = [v218 service];
            v577 = [v467 buttonTitleLocalizationKeyForAuthorization:v604 desiredAuth:{objc_msgSend(v218, "desiredAuth")}];

            v468 = qword_1000C1060;
            if (os_log_type_enabled(v468, OS_LOG_TYPE_DEFAULT))
            {
              v469 = [v218 service];
              v470 = [v595 previousAuthorization];
              v471 = [v218 desiredAuth];
              *buf = 67109890;
              *&buf[4] = v461 == 0;
              *&buf[8] = 2112;
              *&buf[10] = v469;
              *&buf[18] = 2048;
              *&buf[20] = v470;
              *&buf[28] = 2048;
              *&buf[30] = v471;
              _os_log_impl(&_mh_execute_header, v468, OS_LOG_TYPE_DEFAULT, "got authorization choices for staged prompting request: legacy SPI: %d service: %@ currentAuth: %llu desiredAuth: %llu", buf, 0x26u);
            }

            v440 = qword_1000C1060;
            if (os_log_type_enabled(v440, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218496;
              *&buf[4] = v606;
              *&buf[12] = 2048;
              *&buf[14] = v605;
              *&buf[22] = 2048;
              *&buf[24] = v604;
              _os_log_impl(&_mh_execute_header, v440, OS_LOG_TYPE_DEFAULT, "aButtonAuth: %llu bButtonAuth: %llu cButtonAuth: %llu", buf, 0x20u);
            }
          }

          else
          {
            v579 = v585;
            v581 = v587;
            v577 = v592;
          }

LABEL_327:
          v444 = [v218 service];
          v445 = [v444 requestTitleTextForSubsequentRequestsKey];
          v446 = v445 == 0;

          if (!v446)
          {
            v447 = qword_1000C1300;
            v448 = [v218 service];
            v449 = [v447 numberOfRecordsForService:v448];

            if (v449)
            {
              v450 = qword_1000C1060;
              if (os_log_type_enabled(v450, OS_LOG_TYPE_DEFAULT))
              {
                v451 = [v218 service];
                v452 = [v451 name];
                *buf = 138543618;
                *&buf[4] = v452;
                *&buf[12] = 2048;
                *&buf[14] = v449;
                _os_log_impl(&_mh_execute_header, v450, OS_LOG_TYPE_DEFAULT, "Using subsequent request strings for %{public}@ with %llu records.", buf, 0x16u);
              }

LABEL_331:

              v453 = [v218 service];
              v454 = [v453 requestTitleTextForSubsequentRequestsKey];

              v455 = [v218 service];
              v456 = [v455 requestAdditionalTextForSubsequentRequestsLocalizationKey];

              v457 = [v218 service];
              v587 = [v457 subsequentRequestAllowAuthorizationButtonTitleLocalizationKey];

              v606 = 2;
              v458 = [v218 service];
              v585 = [v458 subsequentRequestDenyAuthorizationButtonTitleLocalizationKey];

              v605 = 0;
              v459 = [v218 service];
              v592 = [v459 subsequentRequestLimitedAuthorizationButtonTitleLocalizationKey];

              v604 = 3;
              v460 = qword_1000C1060;
              if (os_log_type_enabled(v460, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412802;
                *&buf[4] = v587;
                *&buf[12] = 2112;
                *&buf[14] = v585;
                *&buf[22] = 2112;
                *&buf[24] = v592;
                _os_log_debug_impl(&_mh_execute_header, v460, OS_LOG_TYPE_DEBUG, "Loc Keys: allow %@, deny: %@, limited: %@", buf, 0x20u);
              }

              v43 = v456;
              v47 = v454;
              goto LABEL_350;
            }

            v472 = [v218 service];
            v473 = [v472 subsequentRequestStringsRelatedService];
            v474 = v473 == 0;

            if (!v474)
            {
              v475 = qword_1000C1300;
              v476 = [v218 service];
              v477 = [v476 subsequentRequestStringsRelatedService];
              v478 = [v475 numberOfRecordsForService:v477 withAuthorizationValue:2];

              if (v478)
              {
                v450 = qword_1000C1060;
                if (os_log_type_enabled(v450, OS_LOG_TYPE_DEFAULT))
                {
                  v479 = [v218 service];
                  v480 = [v479 subsequentRequestStringsRelatedService];
                  v481 = [v480 name];
                  *buf = 138543618;
                  *&buf[4] = v481;
                  *&buf[12] = 2048;
                  *&buf[14] = v478;
                  _os_log_impl(&_mh_execute_header, v450, OS_LOG_TYPE_DEFAULT, "Using subsequent request strings for related service %{public}@ with %llu records.", buf, 0x16u);
                }

                goto LABEL_331;
              }
            }
          }

          v585 = v579;
          v587 = v581;
          v592 = v577;
LABEL_350:
          if (![v218 promptStringType])
          {
            v580 = v43;
            v582 = v47;
            goto LABEL_356;
          }

          v482 = [v218 service];
          v602 = 0;
          v603 = 0;
          v483 = [v482 choicesForCurrentPromptStringType:objc_msgSend(v218 title:"promptStringType") info:{&v603, &v602}];
          v484 = v603;
          v485 = v602;

          if ((v483 & 0x80000000) == 0)
          {
            v582 = v484;

            v580 = v485;
            v486 = qword_1000C1060;
            if (os_log_type_enabled(v486, OS_LOG_TYPE_INFO))
            {
              v487 = [v218 promptStringType];
              v488 = [v218 service];
              v489 = [v488 name];
              *buf = 134218242;
              *&buf[4] = v487;
              *&buf[12] = 2112;
              *&buf[14] = v489;
              _os_log_impl(&_mh_execute_header, v486, OS_LOG_TYPE_INFO, "Successfully set prompt string type:%llu for the prompt for service: %@", buf, 0x16u);
            }

LABEL_356:
            v490 = [v218 service];
            v491 = [v490 localizedResourcesBundle];
            v492 = v491 == 0;

            if (v492)
            {
              v496 = [v218 service];
              v497 = [v496 name];
              [v595 denyAuthorizationWithErrorCode:2 format:{@"Failed to load localizedResourcesBundle for service %{public}@", v497}];

              v498 = v595;
              v44 = 0;
              v45 = 0;
              v46 = 0;
LABEL_418:
              v43 = v580;
              v47 = v582;
              goto LABEL_419;
            }

            v493 = [v218 service];
            v578 = [v493 localizedTextWithKey:v587];

            v494 = [v218 service];
            v576 = [v494 localizedTextWithKey:v585];

            if (v592)
            {
              v495 = [v218 service];
              v575 = [v495 localizedTextWithKey:v592];
            }

            else
            {
              v575 = 0;
            }

            v503 = [v218 service];
            v46 = [v503 localizedTextWithKey:v582];

            if (v46)
            {
              v45 = [NSString stringWithValidatedFormat:v46 validFormatSpecifiers:@"%@" error:0, v48];
              if (v45)
              {
                v601 = 0;
                v504 = [v218 service];
                v572 = [v218 subjectIdentity];
                v505 = [v218 service];
                v506 = [v505 localizedResourcesBundle];
                v600 = 0;
                v507 = sub_1000213CC(v504, v572, v506, &v600, &v601, [v218 desiredAuth]);
                v44 = v600;

                if ((v507 & 1) == 0)
                {
                  v529 = [v218 service];
                  v530 = [v529 name];
                  v531 = [v218 identityDescription];
                  [v595 denyAuthorizationWithErrorCode:2 format:{@"Failure client_usage_string_for_service() service %{public}@ and subject %{public}@", v530, v531}];

                  v532 = v595;
                  goto LABEL_417;
                }

                if (!v44 && v601)
                {
                  v508 = qword_1000C1060;
                  if (os_log_type_enabled(v508, OS_LOG_TYPE_ERROR))
                  {
                    v562 = [v218 service];
                    v574 = [v562 name];
                    v563 = [v218 identityDescription];
                    v564 = [v218 service];
                    v565 = [v564 usageDescriptionKeyName];
                    *buf = 138543874;
                    *&buf[4] = v574;
                    *&buf[12] = 2114;
                    *&buf[14] = v563;
                    *&buf[22] = 2114;
                    *&buf[24] = v565;
                    _os_log_error_impl(&_mh_execute_header, v508, OS_LOG_TYPE_ERROR, "Refusing authorization request for service %{public}@ and subject %{public}@ without %{public}@ key", buf, 0x20u);
                  }

                  [v595 setAuthorizationValue:0];
                  [v595 setAuthorizationReason:8];
                  [v595 setDatabaseAction:0];
                  v509 = [v218 attributionChain];
                  if (!v509)
                  {
                    goto LABEL_376;
                  }

                  v510 = [v218 attributionChain];
                  if (([v510 accessingProcessSpecified] & 1) == 0)
                  {
                    v511 = [v218 service];
                    v512 = [v511 pardonMissingUsage];

                    if (v512)
                    {
LABEL_376:
                      v516 = v595;
                      v44 = 0;
LABEL_417:

                      goto LABEL_418;
                    }

                    v513 = [v218 service];
                    v514 = [v513 usageDescriptionKeyName];
                    v509 = [NSString stringWithFormat:@"This app has crashed because it attempted to access privacy-sensitive data without a usage description.  The app's Info.plist must contain an %@ key with a string value explaining to the user how the app uses this data.", v514];

                    [v595 setServicePolicyAction:1];
                    [v595 setServicePolicyActionDescription:v509];
                    v510 = [v218 service];
                    v515 = [v510 usageDescriptionKeyName];
                    [v595 setServicePolicyActionKeyName:v515];
                  }

                  goto LABEL_376;
                }

                if (v580)
                {
                  v533 = [v218 service];
                  v534 = [v533 localizedResourcesBundle];
                  v573 = [v534 localizedStringForKey:v580 value:&stru_1000A7240 table:0];
                  if (v573)
                  {
                    v571 = [NSString stringWithValidatedFormat:v573 validFormatSpecifiers:@"%@" error:0, v48];

                    if (v571)
                    {
                      if (v44)
                      {
                        v535 = [NSString stringWithFormat:@"%@\n\n%@", v571, v44];

                        v44 = v535;
                      }

                      else
                      {
                        v44 = v571;
                        v571 = v44;
                      }
                    }

                    else
                    {
                      v571 = 0;
                    }

LABEL_395:
                    v536 = [v218 service];
                    if ([v536 usesTwoStagePrompting])
                    {
                      v537 = [v218 desiredAuth] == 2;

                      if (v537)
                      {
                        v620[0] = @"BundleRequestingSecondaryPrompt";
                        v538 = [v218 subjectIdentity];
                        v539 = [v538 identifier];
                        v620[1] = @"ResponsiblePID";
                        v621[0] = v539;
                        v540 = [v218 subjectIdentity];
                        v541 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v540 responsiblePID]);
                        v621[1] = v541;
                        v569 = [NSDictionary dictionaryWithObjects:v621 forKeys:v620 count:2];

                        v542 = [v218 service];
                        v543 = [v542 alertManager];
                        [v543 displayAlertForCondition:2 withCustomUserInfo:v569];

                        v598 = 0;
                        v599 = 1;
                        v597 = 0;
                        v567 = qword_1000C1300;
                        v544 = [v218 service];
                        v545 = [v218 service];
                        v546 = [v545 isAccessAllowedByDefault];
                        v547 = [v218 subjectIdentity];
                        LOBYTE(v546) = [v567 evaluateAccessToService:v544 defaultAccessAllowed:v546 by:v547 checkCodeRequirements:1 authorizationResult:&v599 authorizationReason:&v598 flags:&v597 subjectCodeIdentityDataResult:0];

                        v548 = qword_1000C1060;
                        v549 = v548;
                        if (v546)
                        {
                          if (os_log_type_enabled(v548, OS_LOG_TYPE_DEFAULT))
                          {
                            v550 = v599;
                            v551 = [v218 identityDescription];
                            *buf = 134218498;
                            *&buf[4] = v550;
                            *&buf[12] = 2112;
                            *&buf[14] = v551;
                            *&buf[22] = 1024;
                            *&buf[24] = v597;
                            _os_log_impl(&_mh_execute_header, v549, OS_LOG_TYPE_DEFAULT, "AUTHREQ_RESULT: Got %llu auth from db for client: %@ flags: %d", buf, 0x1Cu);
                          }

                          [v595 setAuthorizationValue:v599];
                          [v595 setAuthorizationReason:v598];
                          [v595 setDatabaseAction:0];
                        }

                        else
                        {
                          if (os_log_type_enabled(v548, OS_LOG_TYPE_ERROR))
                          {
                            v554 = [v218 service];
                            v555 = [v218 identityDescription];
                            sub_100064CF8(v554, v555, buf, v549);
                          }
                        }

                        goto LABEL_408;
                      }
                    }

                    else
                    {
                    }

                    LODWORD(v566) = 0;
                    [v218 presentSynchronousPromptWithHeader:v45 message:v44 aButtonTitle:v578 aButtonAuth:v606 bButtonTitle:v576 bButtonAuth:v605 cButtonTitle:v575 cButtonAuth:v604 currentAuth:objc_msgSend(v595 withTimeoutInSeconds:"previousAuthorization") updatingResult:{v566, v595}];
LABEL_408:
                    v556 = [v218 service];
                    if ([v556 supportsStagedPrompting] && (v606 == 2 || v605 == 2 || v604 == 2) && objc_msgSend(v595, "authorizationReason") != 9)
                    {
                      v561 = [v595 authorizationReason] == 13;

                      if (!v561)
                      {
                        [v595 setDatabaseFlags:{objc_msgSend(v595, "databaseFlags") | 0x10}];
                      }
                    }

                    else
                    {
                    }

                    v557 = [v218 clientDict];
                    v558 = [v557 objectForKeyedSubscript:kTCCNotificationExtensionClientDataPromptReasonKey];

                    if ([v595 authorizationReason] == 2)
                    {
                      v570 = [qword_1000C1300 platform];
                      v568 = [v218 service];
                      v559 = [v218 subjectIdentity];
                      [v570 sendAnalyticsForAction:4 service:v568 subjectIdentity:v559 indirectObjectIdentity:0 authValue:objc_msgSend(v595 includeV1AuthValue:"authorizationValue") v1AuthValue:objc_msgSend(v595 desiredAuth:"v1AuthorizationUpgrade") != 0 domainReason:objc_msgSend(v595 promptType:"v1AuthorizationValue") macBuddyStatus:{objc_msgSend(v218, "desiredAuth"), v558, objc_msgSend(v595, "promptType"), 0}];
                    }

                    v560 = v595;

                    goto LABEL_417;
                  }
                }

                v571 = 0;
                v573 = 0;
                goto LABEL_395;
              }

              v525 = [v218 service];
              v526 = [v525 name];
              v527 = [v218 identityDescription];
              [v595 denyAuthorizationWithErrorCode:2 format:{@"Failed to construct localized request string for service %{public}@ and subject %{public}@", v526, v527}];
            }

            else
            {
              v517 = [v218 service];
              v518 = [v517 name];
              [v595 denyAuthorizationWithErrorCode:2 format:{@"Could not find localized string for service %{public}: request_key=%{public}", v518, v582, 0}];
            }

            v528 = v595;
            v44 = 0;
            v45 = 0;
            goto LABEL_417;
          }

          v499 = qword_1000C1060;
          if (os_log_type_enabled(v499, OS_LOG_TYPE_ERROR))
          {
            v500 = [v218 service];
            v501 = [v500 name];
            sub_100064CA0(v501, buf, v499, v500);
          }

          [v595 setAuthorizationValue:0];
          [v595 setAuthorizationReason:1];
          [v595 setDatabaseAction:0];
          v502 = v595;

LABEL_384:
          v44 = 0;
          v45 = 0;
          v46 = 0;
LABEL_419:

          goto LABEL_140;
        }
      }

      goto LABEL_150;
    }

    v192 = [v36 attributionChain];
    v193 = [v192 accessingProcess];
    v194 = [v193 arrayValueForEntitlement:@"com.apple.tcc.delegated-services"];

    v195 = [v36 service];
    v196 = [v195 name];
    if ([v194 containsObject:v196])
    {
      v197 = [v36 service];
      v198 = [v197 sandboxOperationForDelegation];
      v199 = v198 == 0;

      if (v199)
      {
LABEL_135:

        goto LABEL_136;
      }

      v200 = qword_1000C1060;
      if (os_log_type_enabled(v200, OS_LOG_TYPE_INFO))
      {
        v201 = [v36 identityDescription];
        v202 = [v36 service];
        v203 = [v202 name];
        v204 = [v36 service];
        v205 = [v204 sandboxOperationForDelegation];
        *buf = 138412802;
        *&buf[4] = v201;
        *&buf[12] = 2112;
        *&buf[14] = v203;
        *&buf[22] = 2112;
        *&buf[24] = v205;
        _os_log_impl(&_mh_execute_header, v200, OS_LOG_TYPE_INFO, "Checking %@ for delegated service: %@: operation: %@", buf, 0x20u);
      }

      v206 = [v36 attributionChain];
      v207 = [v206 accessingProcess];
      v208 = v207;
      if (v207)
      {
        [v207 auditToken];
      }

      else
      {
        memset(buf, 0, 32);
      }

      v259 = sandbox_check_by_audit_token() == 0;

      if (!v259)
      {
        v260 = [v36 attributionChain];
        v261 = [v260 accessingProcess];
        v262 = v261;
        if (v261)
        {
          [v261 auditToken];
        }

        else
        {
          memset(buf, 0, 32);
        }

        v268 = [v36 service];
        v269 = [v268 sandboxOperationForDelegation];
        v270 = v269;
        [v269 UTF8String];
        v271 = sandbox_check_by_audit_token();

        if (v271 < 0)
        {
          v272 = [v36 service];
          v279 = [v272 name];
          v280 = [v36 identityDescription];
          v281 = [v36 service];
          v282 = [v281 sandboxOperationForDelegation];
          [v596 denyAuthorizationWithErrorCode:3 format:{@"delegated service: %@: %@ sandbox_check_by_audit_token(%@) fails: %d", v279, v280, v282, *__error()}];
        }

        else
        {
          [v596 setAuthorizationValue:2 * (v271 == 0)];
          [v596 setAuthorizationReason:5];
          [v596 setReplyNoCacheAuthorization:1];
          v272 = qword_1000C1060;
          if (os_log_type_enabled(v272, OS_LOG_TYPE_INFO))
          {
            v273 = [v36 identityDescription];
            v274 = [v36 service];
            v275 = [v274 name];
            v276 = [v36 service];
            v277 = [v276 sandboxOperationForDelegation];
            v278 = [v596 authorizationValue];
            *buf = 138413058;
            *&buf[4] = v273;
            *&buf[12] = 2112;
            *&buf[14] = v275;
            *&buf[22] = 2112;
            *&buf[24] = v277;
            *&buf[32] = 2048;
            *&buf[34] = v278;
            _os_log_impl(&_mh_execute_header, v272, OS_LOG_TYPE_INFO, "%@ for delegated service: %@: operation: %@ is %lld", buf, 0x2Au);
          }
        }

        v283 = v596;
        goto LABEL_41;
      }

      v195 = qword_1000C1060;
      if (os_log_type_enabled(v195, OS_LOG_TYPE_INFO))
      {
        v263 = [v36 identityDescription];
        v264 = [v36 service];
        v265 = [v264 name];
        v266 = [v36 service];
        v267 = [v266 sandboxOperationForDelegation];
        *buf = 138412802;
        *&buf[4] = v263;
        *&buf[12] = 2112;
        *&buf[14] = v265;
        *&buf[22] = 2112;
        *&buf[24] = v267;
        _os_log_impl(&_mh_execute_header, v195, OS_LOG_TYPE_INFO, "%@ for delegated service: %@: operation: %@ is not sandboxed. Ignoring delegation", buf, 0x20u);
      }
    }

    else
    {
    }

    goto LABEL_135;
  }

  v50 = [v5 attributionChain];
  v51 = v50 == 0;

  if (!v51)
  {
    v52 = qword_1000C1060;
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      v53 = [v5 messageIdentifier];
      v54 = [v5 attributionChain];
      v55 = [v54 description];
      *buf = 138543618;
      *&buf[4] = v53;
      *&buf[12] = 2114;
      *&buf[14] = v55;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "AUTHREQ_ATTRIBUTION: msgID=%{public}@, attribution={%{public}@},", buf, 0x16u);
    }
  }

  v56 = [v5 attributionChain];
  v57 = [v56 accessingProcessSpecified];

  if (v57)
  {
    v58 = [v5 attributionChain];
    v59 = [v58 requestingProcess];

    if ([v59 euid])
    {
      v60 = [v5 service];
      v61 = [v60 shouldAllowUnrestrictedCheckAuditToken];

      if ((v61 & 1) == 0)
      {
        v62 = qword_1000C1300;
        v63 = [v5 functionName];
        v64 = [v5 service];
        LODWORD(v62) = [v62 canProcess:v59 callFunction:v63 forService:v64 withAccessIdentity:0];

        if (!v62)
        {
          v172 = [v59 description];
          v173 = [v5 attributionChain];
          v174 = [v173 accessingProcess];
          v175 = [v174 description];
          [v596 denyAuthorizationWithErrorCode:3 format:{@"Requestor: %@ is not entitled to check access for accessor %@", v172, v175}];

          v176 = v596;
          goto LABEL_43;
        }

        v65 = qword_1000C1060;
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
        {
          v66 = [v59 description];
          v67 = [v5 attributionChain];
          v68 = [v67 accessingProcess];
          v69 = [v68 description];
          *buf = 138543618;
          *&buf[4] = v66;
          *&buf[12] = 2114;
          *&buf[14] = v69;
          _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "requestor: %{public}@ is checking access for accessor %{public}@", buf, 0x16u);
        }
      }
    }
  }

  v70 = [v5 service];
  v71 = [v5 attributionChain];
  v72 = accessingProcessHasAllowOrRegionalPromptEntitlement(v70, v71, 0);

  if (v72)
  {
    v73 = [qword_1000C1300 platform];
    v74 = [v73 isChinaSKUDevice];

    if (v74)
    {
      goto LABEL_38;
    }

    v75 = qword_1000C1060;
    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
    {
      v76 = [v5 attributionChain];
      v77 = [v76 accessingProcess];
      v78 = [v77 description];
      v79 = [v5 service];
      v80 = [v79 name];
      *buf = 138543618;
      *&buf[4] = v78;
      *&buf[12] = 2114;
      *&buf[14] = v80;
      _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "Granting %{public}@ access to %{public}@ via entitlement 'com.apple.private.tcc.allow-or-regional-prompt'", buf, 0x16u);
    }
  }

  else
  {
    v95 = [v5 attributionChain];
    v96 = [v95 accessingProcess];
    v97 = [v5 service];
    v98 = [v96 hasEntitlement:@"com.apple.private.tcc.allow" containsService:v97 options:1];

    if (v98)
    {
      v75 = qword_1000C1060;
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
      {
        v99 = [v5 attributionChain];
        v100 = [v99 accessingProcess];
        v101 = [v100 description];
        v102 = [v5 service];
        v103 = [v102 name];
        *buf = 138543618;
        *&buf[4] = v101;
        *&buf[12] = 2114;
        *&buf[14] = v103;
        _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "Granting %{public}@ access to %{public}@ via entitlement 'com.apple.private.tcc.allow'", buf, 0x16u);
      }
    }

    else
    {
      v129 = [v5 service];
      v130 = [v129 name];
      if (([v130 isEqualToString:@"kTCCServiceBluetoothAlways"] & 1) == 0)
      {

        goto LABEL_38;
      }

      v131 = [v5 attributionChain];
      v132 = [v131 accessingProcess];
      v133 = [v5 service];
      v134 = [v132 hasEntitlement:@"com.apple.private.tcc.ifdreader" containsService:v133 options:1];

      if (!v134)
      {
        goto LABEL_38;
      }

      v75 = qword_1000C1060;
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
      {
        v135 = [v5 attributionChain];
        v136 = [v135 accessingProcess];
        v137 = [v136 description];
        v138 = [v5 service];
        v139 = [v138 name];
        *buf = 138543618;
        *&buf[4] = v137;
        *&buf[12] = 2114;
        *&buf[14] = v139;
        _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "Granting %{public}@ access to %{public}@ via entitlement 'com.apple.private.tcc.ifdreader'", buf, 0x16u);
      }
    }
  }

  [v596 setAuthorizationValue:2];
  [v596 setAuthorizationReason:11];
  v6 = v596;
  v104 = v596;
LABEL_44:
  _Block_object_dispose(&v616, 8);

  return v596;
}

void handle_TCCAccessCopyInformationForBundle(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [[TCCDAttributionChain alloc] initWithMessage:v4];
  handle_TCCAccessCopyInformationForBundle_with_attribution_chain(v4, v3, v5);
}

void sub_100006DBC(uint64_t a1)
{
  v2 = db;
  if (!db)
  {
    if (db_open())
    {
LABEL_8:
      *(*(*(a1 + 48) + 8) + 24) = 1;
      return;
    }

    v2 = db;
  }

  ppStmt = 0;
  if (sqlite3_prepare_v2(v2, *(a1 + 56), -1, &ppStmt, 0))
  {
LABEL_7:
    _db_error(0);
    goto LABEL_8;
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v4 = sqlite3_step(ppStmt);
    if (v4 != 100)
    {
      break;
    }

    v3 = *(a1 + 40);
LABEL_9:
    (*(v3 + 16))(v3, ppStmt);
  }

  v5 = v4;
  if (v4 != 101)
  {
    v6 = sqlite3_expanded_sql(ppStmt);
    v7 = +[TCCDPlatform currentPlatform];
    v8 = [v7 server];
    v9 = [v8 logHandle];

    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (v6)
    {
      if (v10)
      {
        sub_100034290(v6, v5);
      }

      sqlite3_free(v6);
      _db_error(0);
    }

    else
    {
      if (v10)
      {
        sub_100060608();
      }
    }

    sqlite3_finalize(ppStmt);
    goto LABEL_7;
  }

  sqlite3_finalize(ppStmt);
}

void handle_TCCAccessCopyInformationForBundle_with_attribution_chain(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v7 requestingProcess];
  v9 = [NSString stringWithUTF8String:xpc_dictionary_get_string(v5, "function")];
  string = xpc_dictionary_get_string(v5, "client");
  v11 = +[TCCDPlatform currentPlatform];
  v12 = [v11 server];
  v13 = +[TCCDService serviceAll];
  v14 = [v12 canProcess:v8 callFunction:v9 forService:v13 withAccessIdentity:0];

  if (v14 && string)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = sub_100007550;
    v23 = sub_1000075A8;
    v24 = xpc_array_create(0, 0);
    if (v20[5])
    {
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1000071C8;
      v18[3] = &unk_1000A59D8;
      v18[4] = string;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10000723C;
      v15[3] = &unk_1000A5A28;
      v16 = v11;
      v17 = &v19;
      if (!db_eval("SELECT service, auth_value, last_modified, csreq, strftime('%s','now') - last_modified AS age, indirect_object_identifier, indirect_object_identifier_type, indirect_object_code_identity, auth_reason, auth_version, flags FROM access WHERE client = ? AND client_type = ?", v18, v15))
      {
        xpc_dictionary_set_value(v6, "services", v20[5]);
      }
    }

    _Block_object_dispose(&v19, 8);
  }
}

void sub_1000071B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000071C8(uint64_t a1, sqlite3_stmt *a2)
{
  if (sqlite3_bind_text(a2, 1, *(a1 + 32), -1, 0xFFFFFFFFFFFFFFFFLL) || sqlite3_bind_int(a2, 2, 0))
  {

    _db_error(1);
  }
}

void sub_10000723C(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = [NSString stringWithUTF8String:sqlite3_column_text(a2, 0)];
  if (v5)
  {
    v6 = sqlite3_column_int64(a2, 1);
    v7 = sqlite3_column_int64(a2, 8);
    value = sqlite3_column_int64(a2, 9);
    v8 = sqlite3_column_int64(a2, 10);
    v9 = +[TCCDPlatform currentPlatform];
    v10 = [v9 serviceByName:v5];

    if (v10)
    {
      v11 = [*(a1 + 32) server];
      v12 = [v11 isAccessEntryWithAge:sqlite3_column_int(a2 authorizationValue:4) expiredForService:{v6, v10}];

      if ((v12 & 1) == 0)
      {
        v13 = xpc_dictionary_create(0, 0, 0);
        if (v13)
        {
          xpc_dictionary_set_string(v13, "service", [v5 UTF8String]);
          xpc_dictionary_set_BOOL(v13, "granted", v6 != 0);
          xpc_dictionary_set_uint64(v13, "auth_value", v6);
          xpc_dictionary_set_uint64(v13, "auth_reason", v7);
          xpc_dictionary_set_uint64(v13, "auth_version", value);
          xpc_dictionary_set_BOOL(v13, "has_prompted_for_allow", (v8 & 0x10) != 0);
          v14 = sqlite3_column_int64(a2, 2);
          xpc_dictionary_set_int64(v13, "last_modified", v14);
          if (sqlite3_column_type(a2, 3) != 5)
          {
            v15 = sqlite3_column_blob(a2, 3);
            v16 = sqlite3_column_bytes(a2, 3);
            xpc_dictionary_set_data(v13, "code_requirement", v15, v16);
          }

          xpc_array_append_value(*(*(*(a1 + 40) + 8) + 40), v13);
        }

        else
        {
          v17 = tcc_access_log();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            sub_10004F980();
          }
        }
      }
    }
  }

  objc_autoreleasePoolPop(v4);
}

uint64_t sub_1000074C0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000074D0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000074E0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000074F0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100007500(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100007510(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100007520(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100007530(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100007540(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100007550(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100007608(uint64_t a1, void *a2, void *a3, int a4)
{
  v7 = a2;
  v8 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  if (!a1)
  {
    __assert_rtn("_db_eval", "TCCDDatabase.m", 917, "sql != NULL");
  }

  v9 = v8;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100006DBC;
  v16[3] = &unk_1000A5F48;
  v19 = &v22;
  v20 = a1;
  v21 = 0;
  v10 = v7;
  v17 = v10;
  v11 = v9;
  v18 = v11;
  v12 = objc_retainBlock(v16);
  v13 = v12;
  if (a4)
  {
    (v12[2])(v12);
  }

  else
  {
    dispatch_sync(db_queue, v12);
  }

  v14 = *(v23 + 6);

  _Block_object_dispose(&v22, 8);
  return v14;
}

void handle_TCCAccessCopyBundleIdentifiersForService(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [[TCCDAttributionChain alloc] initWithMessage:v4];
  handle_TCCAccessCopyBundleIdentifiersForService_with_attribution_chain(v4, v3, v5);
}

id accessingProcessHasAllowOrRegionalPromptEntitlement(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  if ([v5 ios_allowRegionalPrompt])
  {
    if (a3)
    {
      v7 = [@"com.apple.private.tcc.allow-or-regional-prompt" stringByAppendingString:@".overridable"];
    }

    else
    {
      v7 = @"com.apple.private.tcc.allow-or-regional-prompt";
    }

    v9 = [v6 accessingProcess];
    v8 = [v9 hasEntitlement:v7 containsService:v5 options:1];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id sub_100007B54(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = 0;
  do
  {
    v5 = v4;
    [v3 setQueryCount:{objc_msgSend(v3, "queryCount") + 1}];
    v6 = objc_autoreleasePoolPush();
    v4 = sub_1000017D0(v3);

    objc_autoreleasePoolPop(v6);
    if (!v4)
    {
      v27 = qword_1000C1060;
      if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_ERROR))
      {
        sub_100063E34(v27);
      }

      goto LABEL_23;
    }
  }

  while ([v4 databaseAction] == 2);
  v7 = [v4 error];

  if (!v7 && [v4 databaseAction] == 1 && (objc_msgSend(qword_1000C1300, "updateAuthorizationRecordFromContext:forResult:syncedUpdate:", v3, v4, a2) & 1) == 0)
  {
    v8 = [v3 service];
    v9 = [v3 identityDescription];
    [v4 denyAuthorizationWithErrorCode:4 format:{@"Failed to update database %@ from %@", v8, v9}];
  }

  v10 = qword_1000C1060;
  if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v12 = [v3 messageIdentifier];
    v13 = [v4 authorizationValue];
    v14 = [v4 authorizationReason];
    v15 = a2;
    v16 = [v4 authorizationVersion];
    v17 = [v3 desiredAuth];
    v18 = [v4 error];
    *buf = 138544642;
    v34 = v12;
    v35 = 2048;
    v36 = v13;
    v37 = 2048;
    v38 = v14;
    v39 = 2048;
    v40 = v16;
    a2 = v15;
    v41 = 2048;
    v42 = v17;
    v43 = 2114;
    v44 = v18;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "AUTHREQ_RESULT: msgID=%{public}@, authValue=%llu, authReason=%llu, authVersion=%llu, desired_auth=%llu, error=%{public}@,", buf, 0x3Eu);
  }

  v19 = [v3 service];
  if (![v19 usesTwoStagePrompting] || objc_msgSend(v4, "authorizationValue") != 6 || objc_msgSend(v3, "desiredAuth") != 6)
  {

    goto LABEL_20;
  }

  v20 = [v3 isPreflight];

  if (v20)
  {
LABEL_20:
    if ([v4 authorizationValue] == 6)
    {
      v28 = [v3 service];
      v29 = [v28 name];
      v30 = [v29 isEqualToString:@"kTCCServiceAddressBook"];

      if (v30)
      {
        [v4 setReplyNoCacheAuthorization:1];
        [v4 setAuthorizationValue:1];
        [v4 setAuthorizationReason:5];
      }
    }

LABEL_23:
    v26 = v4;
    goto LABEL_24;
  }

  v21 = qword_1000C1060;
  if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_DEFAULT))
  {
    v22 = v21;
    v23 = [v3 messageIdentifier];
    v24 = [v3 service];
    v25 = [v24 name];
    *buf = 138543618;
    v34 = v23;
    v35 = 2114;
    v36 = v25;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "AUTHREQ_RESULT: msgID=%{public}@, service=%{public}@, user wants to learn more, redoing prompt with secondary stage", buf, 0x16u);
  }

  [v3 setDesiredAuth:2];
  v26 = sub_100007B54(v3, a2);
LABEL_24:
  v31 = v26;

  return v31;
}

void sub_100008064(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) service];
  v4 = [v3 name];
  LODWORD(a2) = sqlite3_bind_text(a2, 1, [v4 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

  if (a2)
  {

    _db_error(1);
  }
}

id sub_10000834C(void *a1)
{
  v1 = [a1 service];
  v2 = [v1 isAccessAllowedByDefault];

  return v2;
}

uint64_t sub_100008390(void *a1)
{
  v1 = [a1 disallowedOnPlatformSubtypeNameList];
  v2 = [v1 containsObject:@"iphoneos-ephemeral-user"];

  if (!v2)
  {
    return 0;
  }

  if (qword_1000C1080 != -1)
  {
    sub_100064D68();
  }

  return dword_1000C1078;
}

void handle_TCCAccessCopyBundleIdentifiersForService_with_attribution_chain(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = +[TCCDPlatform currentPlatform];
  v9 = [v7 requestingProcess];
  v10 = [NSString stringWithUTF8String:xpc_dictionary_get_string(v5, "function")];
  v11 = [v8 server];
  v44[0] = 0;
  v12 = [v11 serviceFromMessage:v5 error:v44];
  v13 = v44[0];

  if (v12)
  {
    v14 = [v8 server];
    v15 = [v14 canProcess:v9 callFunction:v10 forService:v12 withAccessIdentity:0];

    if (v15)
    {
      xdict = v6;
      v38 = 0;
      v39 = &v38;
      v40 = 0x3032000000;
      v41 = sub_100007550;
      v42 = sub_1000075A8;
      v43 = xpc_array_create(0, 0);
      if (v39[5])
      {
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_100008B0C;
        v33[3] = &unk_1000A68D8;
        v16 = v8;
        v34 = v16;
        v27 = v12;
        v35 = v27;
        v17 = v9;
        v36 = v17;
        v37 = &v38;
        v28 = objc_retainBlock(v33);
        v18 = [v16 server];
        LODWORD(v17) = [v18 canProcess:v17 manageESClientServiceWith:v10];

        if (v17)
        {
          v19 = v32;
          v32[0] = _NSConcreteStackBlock;
          v32[1] = 3221225472;
          v32[2] = sub_10004E780;
          v32[3] = &unk_1000A5188;
          v32[4] = v27;
          v20 = db_eval("SELECT client, strftime('%s','now') - last_modified AS age, auth_value FROM access WHERE (service = ? OR service = ?) AND client_type = ? AND auth_value != 0", v32, v28);
        }

        else
        {
          v19 = v31;
          v31[0] = _NSConcreteStackBlock;
          v31[1] = 3221225472;
          v31[2] = sub_100008A70;
          v31[3] = &unk_1000A5188;
          v31[4] = v27;
          v20 = db_eval("SELECT client, strftime('%s','now') - last_modified AS age, auth_value FROM access WHERE service = ? AND client_type = ? AND auth_value != 0", v31, v28);
        }

        v26 = v20;

        if (!v26)
        {
          xpc_dictionary_set_value(xdict, "clients", v39[5]);
        }
      }

      _Block_object_dispose(&v38, 8);

      v6 = xdict;
    }
  }

  else
  {
    xdicta = v9;
    v21 = v6;
    v22 = objc_opt_new();
    v23 = [v8 server];
    [v23 buildErrorString:v22 forError:v13 contextString:0];

    v24 = [v8 server];
    v25 = [v24 logHandle];

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_10004F904();
    }

    v6 = v21;
    v9 = xdicta;
  }
}

void sub_100008A70(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) name];
  if (sqlite3_bind_text(a2, 1, [v3 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL))
  {
  }

  else
  {
    v4 = sqlite3_bind_int(a2, 2, 0);

    if (!v4)
    {
      return;
    }
  }

  _db_error(1);
}

void sub_100008B0C(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_column_int64(a2, 2);
  v5 = [*(a1 + 32) server];
  LOBYTE(v4) = [v5 isAccessEntryWithAge:sqlite3_column_int(a2 authorizationValue:1) expiredForService:{v4, *(a1 + 40)}];

  if (v4)
  {
    return;
  }

  v6 = sqlite3_column_text(a2, 0);
  if (!v6)
  {
    return;
  }

  v7 = v6;
  v8 = xpc_string_create(v6);
  if (!v8)
  {
    return;
  }

  value = v8;
  if ([*(a1 + 40) ios_allowRegionalPrompt] && objc_msgSend(*(a1 + 48), "isSystemPreferencesApp"))
  {
    v9 = [LSApplicationRecord alloc];
    v10 = [NSString stringWithUTF8String:v7];
    v11 = [v9 initWithBundleIdentifier:v10 allowPlaceholder:0 error:0];

    if (v11 && !showBundleForService(v11, *(a1 + 40)))
    {

      goto LABEL_10;
    }
  }

  xpc_array_append_value(*(*(*(a1 + 56) + 8) + 40), value);
LABEL_10:
}

void sub_100008FE4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

void sub_10000904C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100009120(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_1000091A8(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

void sub_1000091E4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_100009228(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (has_private_tcc_entitlement(v3, @"com.apple.private.tcc.manager.get-identity-for-credential", 1))
  {
    v5 = xpc_dictionary_get_value(v3, "TCC_MSG_REQUEST_AUTHORIZATION_SUBJECT_CREDENTIAL_DICTIONARY_KEY");
    v6 = v5;
    if (!v5 || xpc_get_type(v5) != &_xpc_type_dictionary)
    {
      v17 = 0;
      [qword_1000C1300 makeError:&v17 withCode:7 infoText:0];
      v7 = v17;
      v8 = objc_opt_new();
      [qword_1000C1300 buildErrorString:v8 forError:v7 contextString:0];
      v9 = [qword_1000C1300 logHandle];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100065528();
      }

LABEL_6:

      goto LABEL_9;
    }

    if (xpc_dictionary_get_uint64(v6, "TCCD_MSG_CREDENTIAL_AUTHENTICATOR_TYPE_KEY") != 1)
    {
      v16 = 0;
      [qword_1000C1300 makeError:&v16 withCode:3 infoText:0];
      v7 = v16;
      v8 = objc_opt_new();
      [qword_1000C1300 buildErrorString:v8 forError:v7 contextString:0];
      v9 = [qword_1000C1300 logHandle];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100065528();
      }

      goto LABEL_6;
    }

    length = 0;
    if (!xpc_dictionary_get_data(v6, "TCCD_MSG_CREDENTIAL_AUTHENTICATOR_AUDIT_TOKEN_KEY", &length) || length != 32)
    {
      v14 = 0;
      [qword_1000C1300 makeError:&v14 withCode:4 infoText:0];
      v7 = v14;
      v8 = objc_opt_new();
      [qword_1000C1300 buildErrorString:v8 forError:v7 contextString:0];
      v9 = [qword_1000C1300 logHandle];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100065528();
      }

      goto LABEL_6;
    }

    v8 = [[TCCDAttributionChain alloc] initWithMessage:v3];
    if (v8)
    {
      v10 = [[TCCDAccessIdentity alloc] initWithAttributionChain:v8 preferMostSpecificIdentifier:1];
      v11 = v10;
      if (v10)
      {
        xpc_dictionary_set_uint64(v4, "TCCD_MSG_IDENTITY_TYPE_KEY", [(TCCDAccessIdentity *)v10 client_type]);
        v12 = [(TCCDAccessIdentity *)v11 identifier];
        xpc_dictionary_set_string(v4, "TCCD_MSG_IDENTITY_ID_KEY", [v12 UTF8String]);
      }

      else if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_ERROR))
      {
        sub_1000655A4();
      }
    }

    else
    {
      v13 = qword_1000C1060;
      if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_ERROR))
      {
        sub_100065628(v13);
      }
    }

    v7 = 0;
  }

  else
  {
    v18 = 0;
    [qword_1000C1300 makeError:&v18 withCode:5 infoText:0];
    v7 = v18;
    v6 = objc_opt_new();
    [qword_1000C1300 buildErrorString:v6 forError:v7 contextString:0];
    v8 = [qword_1000C1300 logHandle];
    if (os_log_type_enabled(&v8->super, OS_LOG_TYPE_ERROR))
    {
      sub_100065528();
    }
  }

LABEL_9:
}

BOOL has_private_tcc_entitlement(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  xpc_dictionary_get_audit_token();
  memset(&token, 0, sizeof(token));
  v7 = SecTaskCreateWithAuditToken(0, &token);
  if (!v7)
  {
    v14 = 0;
LABEL_13:
    if (a3)
    {
      v15 = v5;
      v16 = v6;
      memset(&token, 0, sizeof(token));
      pidp = 0;
      xpc_dictionary_get_audit_token();
      atoken = token;
      audit_token_to_au32(&atoken, 0, 0, 0, 0, 0, &pidp, 0, 0);
      v17 = +[TCCDPlatform currentPlatform];
      v18 = [v17 server];
      v19 = [v18 logHandle];

      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v21 = pidp;
        string = xpc_dictionary_get_string(v15, "function");
        atoken.val[0] = 67109634;
        atoken.val[1] = v21;
        LOWORD(atoken.val[2]) = 2082;
        *(&atoken.val[2] + 2) = string;
        HIWORD(atoken.val[4]) = 2114;
        *&atoken.val[5] = v16;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "pid %d attempted to call %{public}s without the %{public}@ entitlement", &atoken, 0x1Cu);
      }
    }

    goto LABEL_17;
  }

  v8 = v7;
  if (!v6)
  {
    goto LABEL_9;
  }

  if (([(__CFString *)v6 hasPrefix:@"com.apple.private.tcc."]& 1) == 0)
  {
    v9 = +[TCCDPlatform currentPlatform];
    v10 = [v9 server];
    v11 = [v10 logHandle];

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10004F888();
    }
  }

  v12 = SecTaskCopyValueForEntitlement(v8, v6, 0);
  if (v12)
  {
    v13 = v12;
    v14 = CFEqual(v12, kCFBooleanTrue) != 0;
    CFRelease(v13);
  }

  else
  {
LABEL_9:
    v14 = 0;
  }

  CFRelease(v8);
  if (!v14)
  {
    goto LABEL_13;
  }

LABEL_17:

  return v14;
}

void handle_TCCAccessCopyInformation(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [[TCCDAttributionChain alloc] initWithMessage:v4];
  handle_TCCAccessCopyInformation_with_attribution_chain(v4, v3, v5);
}

void handle_TCCAccessCopyInformation_with_attribution_chain(void *a1, void *a2, void *a3)
{
  v5 = a1;
  xdict = a2;
  v6 = a3;
  v7 = [v6 requestingProcess];
  v8 = [NSString stringWithUTF8String:xpc_dictionary_get_string(v5, "function")];
  v9 = +[TCCDPlatform currentPlatform];
  v10 = [v9 server];
  v54 = 0;
  v11 = [v10 serviceFromMessage:v5 error:&v54];
  v38 = v54;

  if (v11)
  {
    v12 = [v9 server];
    v13 = [v12 canProcess:v7 callFunction:v8 forService:v11 withAccessIdentity:0];

    if (v13)
    {
      v14 = xpc_dictionary_get_value(v5, "TCCD_MSG_SPI_VERSION");

      if (v14)
      {
        uint64 = xpc_dictionary_get_uint64(v5, "TCCD_MSG_SPI_VERSION");
      }

      else
      {
        uint64 = 1;
      }

      v48 = 0;
      v49 = &v48;
      v50 = 0x3032000000;
      v51 = sub_100007550;
      v52 = sub_1000075A8;
      v53 = xpc_array_create(0, 0);
      if (!v49[5])
      {
LABEL_25:
        _Block_object_dispose(&v48, 8);

        goto LABEL_26;
      }

      v43[0] = _NSConcreteStackBlock;
      v43[1] = 3221225472;
      v43[2] = sub_10004E098;
      v43[3] = &unk_1000A6888;
      v20 = v11;
      v44 = v20;
      v45 = 0;
      v46 = &v48;
      v47 = uint64;
      v36 = objc_retainBlock(v43);
      v21 = [v20 name];
      if ([v21 isEqualToString:@"kTCCServiceSystemPolicyAllFiles"])
      {
        v22 = [v9 server];
        v23 = [v22 canProcess:v7 manageESClientServiceWith:v8];

        if (v23)
        {
          v24 = v42;
          v42[0] = _NSConcreteStackBlock;
          v42[1] = 3221225472;
          v42[2] = sub_10004E548;
          v42[3] = &unk_1000A5188;
          v42[4] = v20;
          v25 = objc_retainBlock(v42);
          v26 = db_eval("SELECT client, client_type, auth_value, csreq, last_modified, strftime('%s','now') - last_modified AS age, indirect_object_identifier, indirect_object_identifier_type, indirect_object_code_identity, auth_reason, auth_version, flags, pid, pid_version, boot_uuid FROM access WHERE service = ? OR service = ?", v25, v36);
LABEL_15:
          v27 = v26;

          if (!v27)
          {
            if (([v8 isEqualToString:@"TCCAccessCopyInformationForServices"] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"TCCAccessCopyDatabaseInformationForType"))
            {
              v28 = [v20 name];
              v29 = v28;
              v30 = [v28 UTF8String];
              xpc_dictionary_set_value(xdict, v30, v49[5]);
            }

            else
            {
              v31 = tcc_access_log();
              v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG);

              if (v32)
              {
                v33 = tcc_access_log();
                if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
                {
                  count = xpc_array_get_count(v49[5]);
                  sub_10004F55C(buf, count, v33);
                }

                v35 = v49[5];
                applier[0] = _NSConcreteStackBlock;
                applier[1] = 3221225472;
                applier[2] = sub_10004E5F0;
                applier[3] = &unk_1000A68B0;
                v40 = v9;
                xpc_array_apply(v35, applier);
              }

              xpc_dictionary_set_value(xdict, "clients", v49[5]);
            }
          }

          goto LABEL_25;
        }
      }

      else
      {
      }

      v24 = v41;
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_100009EAC;
      v41[3] = &unk_1000A5188;
      v41[4] = v20;
      v25 = objc_retainBlock(v41);
      v26 = db_eval("SELECT client, client_type, auth_value, csreq, last_modified, strftime('%s','now') - last_modified AS age, indirect_object_identifier, indirect_object_identifier_type, indirect_object_code_identity, auth_reason, auth_version, flags, pid, pid_version, boot_uuid FROM access WHERE service = ? OR service = ?", v25, v36);
      goto LABEL_15;
    }
  }

  else
  {
    v16 = objc_opt_new();
    v17 = [v9 server];
    [v17 buildErrorString:v16 forError:v38 contextString:0];

    v18 = [v9 server];
    v19 = [v18 logHandle];

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10004F5B8();
    }
  }

LABEL_26:
}

void sub_100009EAC(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) name];
  LODWORD(a2) = sqlite3_bind_text(a2, 1, [v3 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

  if (a2)
  {

    _db_error(1);
  }
}

id tcc_access_log()
{
  if (qword_1000C10B0 != -1)
  {
    sub_100028CC4();
  }

  v1 = qword_1000C10A8;

  return v1;
}

uint64_t TCCDServerHasPolicyOverride(void *a1, id *a2, void **a3, id *a4)
{
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_100007550;
  v37 = sub_1000075A8;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_100007550;
  v31 = sub_1000075A8;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100007550;
  v25 = sub_1000075A8;
  v26 = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10000A49C;
  v19[3] = &unk_1000A5188;
  v7 = a1;
  v20 = v7;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10004E684;
  v18[3] = &unk_1000A5730;
  v18[4] = &v33;
  v18[5] = &v27;
  v18[6] = &v21;
  v18[7] = &v39;
  db_eval("SELECT    id, uuid, display FROM    policies JOIN active_policy ON (policies.id = active_policy.policy_id) WHERE    active_policy.client_type = ? AND active_policy.client = ?", v19, v18);
  if (*(v40 + 24) == 1)
  {
    objc_storeStrong(a2, v34[5]);
    v8 = [NSString stringWithFormat:@"%@:%@", v7, v28[5]];
    v9 = *a3;
    *a3 = v8;

    objc_storeStrong(a4, v22[5]);
    v10 = +[TCCDPlatform currentPlatform];
    v11 = [v10 server];
    v12 = [v11 logHandle];

    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = v34[5];
      v14 = *a3;
      v15 = v22[5];
      *buf = 138544130;
      v44 = v7;
      v45 = 2114;
      v46 = v13;
      v47 = 2114;
      v48 = v14;
      v49 = 2114;
      v50 = v15;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "PolicyOverride: For %{public}@: policy_id:%{public}@, policy_client: %{public}@, display_name: %{public}@", buf, 0x2Au);
    }

    v16 = *(v40 + 24);
  }

  else
  {
    v16 = 0;
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v39, 8);

  return v16 & 1;
}

void sub_10000A450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_10000A49C(uint64_t a1, sqlite3_stmt *a2)
{
  if (sqlite3_bind_int(a2, 1, 0) || sqlite3_bind_text(a2, 2, [*(a1 + 32) UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL))
  {

    _db_error(1);
  }
}

void handle_TCCAccessCopyBundleIdentifiersDisabledForService(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [[TCCDAttributionChain alloc] initWithMessage:v4];
  handle_TCCAccessCopyBundleIdentifiersDisabledForService_with_attribution_chain(v4, v3, v5);
}

void handle_TCCAccessCopyBundleIdentifiersDisabledForService_with_attribution_chain(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v7 requestingProcess];
  v9 = [NSString stringWithUTF8String:xpc_dictionary_get_string(v5, "function")];
  v10 = +[TCCDPlatform currentPlatform];
  v11 = [v10 server];
  v44[0] = 0;
  v12 = [v11 serviceFromMessage:v5 error:v44];
  v13 = v44[0];

  if (v12)
  {
    v14 = [v10 server];
    v15 = [v14 canProcess:v8 callFunction:v9 forService:v12 withAccessIdentity:0];

    if (v15)
    {
      xdict = v6;
      v38 = 0;
      v39 = &v38;
      v40 = 0x3032000000;
      v41 = sub_100007550;
      v42 = sub_1000075A8;
      v43 = xpc_array_create(0, 0);
      if (v39[5])
      {
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_10000AC4C;
        v33[3] = &unk_1000A68D8;
        v16 = v10;
        v34 = v16;
        v27 = v12;
        v35 = v27;
        v17 = v8;
        v36 = v17;
        v37 = &v38;
        v28 = objc_retainBlock(v33);
        v18 = [v16 server];
        LODWORD(v17) = [v18 canProcess:v17 manageESClientServiceWith:v9];

        if (v17)
        {
          v19 = v32;
          v32[0] = _NSConcreteStackBlock;
          v32[1] = 3221225472;
          v32[2] = sub_10004E838;
          v32[3] = &unk_1000A5188;
          v32[4] = v27;
          v20 = db_eval("SELECT client, strftime('%s','now') - last_modified AS age, auth_value FROM access WHERE (service = ? OR service = ?) AND client_type = ? AND auth_value = 0", v32, v28);
        }

        else
        {
          v19 = v31;
          v31[0] = _NSConcreteStackBlock;
          v31[1] = 3221225472;
          v31[2] = sub_10000ABB0;
          v31[3] = &unk_1000A5188;
          v31[4] = v27;
          v20 = db_eval("SELECT client, strftime('%s','now') - last_modified AS age, auth_value FROM access WHERE service = ? AND client_type = ? AND auth_value = 0", v31, v28);
        }

        v26 = v20;

        if (!v26)
        {
          xpc_dictionary_set_value(xdict, "clients", v39[5]);
        }
      }

      _Block_object_dispose(&v38, 8);

      v6 = xdict;
    }
  }

  else
  {
    xdicta = v8;
    v21 = v6;
    v22 = objc_opt_new();
    v23 = [v10 server];
    [v23 buildErrorString:v22 forError:v13 contextString:0];

    v24 = [v10 server];
    v25 = [v24 logHandle];

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_10004FA00();
    }

    v6 = v21;
    v8 = xdicta;
  }
}

void sub_10000ABB0(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) name];
  if (sqlite3_bind_text(a2, 1, [v3 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL))
  {
  }

  else
  {
    v4 = sqlite3_bind_int(a2, 2, 0);

    if (!v4)
    {
      return;
    }
  }

  _db_error(1);
}

void sub_10000AC4C(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_column_int64(a2, 2);
  v5 = [*(a1 + 32) server];
  LOBYTE(v4) = [v5 isAccessEntryWithAge:sqlite3_column_int(a2 authorizationValue:1) expiredForService:{v4, *(a1 + 40)}];

  if (v4)
  {
    return;
  }

  v6 = sqlite3_column_text(a2, 0);
  if (!v6)
  {
    return;
  }

  v7 = v6;
  v8 = xpc_string_create(v6);
  if (!v8)
  {
    return;
  }

  value = v8;
  if ([*(a1 + 40) ios_allowRegionalPrompt] && objc_msgSend(*(a1 + 48), "isSystemPreferencesApp"))
  {
    v9 = [LSApplicationRecord alloc];
    v10 = [NSString stringWithUTF8String:v7];
    v11 = [v9 initWithBundleIdentifier:v10 allowPlaceholder:0 error:0];

    if (v11 && !showBundleForService(v11, *(a1 + 40)))
    {

      goto LABEL_10;
    }
  }

  xpc_array_append_value(*(*(*(a1 + 56) + 8) + 40), value);
LABEL_10:
}

void sub_10000ADA4(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) name];
  LODWORD(a2) = sqlite3_bind_text(a2, 1, [v3 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

  if (a2)
  {

    _db_error(1);
  }
}

void sub_10000AE24(uint64_t a1, void *a2)
{
  v3 = a2;
  v13 = 0;
  v4 = [qword_1000C1300 serviceFromMessage:a1 error:&v13];
  v5 = v13;
  if (v4)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000ADA4;
    v11[3] = &unk_1000A5188;
    v12 = v4;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100025A34;
    v9[3] = &unk_1000A5188;
    v6 = v3;
    v10 = v6;
    if (!db_eval("SELECT NULL FROM access_overrides WHERE service = ?", v11, v9))
    {
      xpc_dictionary_set_BOOL(v6, "result", 1);
    }

    v7 = v12;
  }

  else
  {
    v7 = objc_opt_new();
    [qword_1000C1300 buildErrorString:v7 forError:v5 contextString:0];
    v8 = [qword_1000C1300 logHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100064DF8();
    }
  }
}

const char *TCCAuthGetReasonDescription(uint64_t a1)
{
  if (a1 > 5)
  {
    if (a1 <= 1001)
    {
      switch(a1)
      {
        case 6:
          return "Set";
        case 1000:
          return "Error";
        case 1001:
          return "Service Override";
      }
    }

    else
    {
      if (a1 <= 1003)
      {
        if (a1 == 1002)
        {
          return "Missing Usage String";
        }

        else
        {
          return "Prompt Timeout";
        }
      }

      if (a1 == 1004)
      {
        return "Preflight Unknown";
      }

      if (a1 == 2000)
      {
        return "Entitled";
      }
    }

    return "<Unknown Reason>";
  }

  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return "None";
      case 1:
        return "Recorded";
      case 2:
        return "Service Default";
    }

    return "<Unknown Reason>";
  }

  if (a1 == 3)
  {
    return "Service Policy";
  }

  if (a1 == 4)
  {
    return "Compatibility Policy";
  }

  return "Override Policy";
}

char *TCCAuthCopyDescription(uint64_t a1)
{
  v2 = 0;
  if ((a1 & 0x100000000000000) != 0)
  {
    if ((a1 & 0x200000000000000) != 0)
    {
      asprintf(&v2, "Auth:{Access:Unknown}");
    }

    else
    {
      TCCAuthGetReasonDescription(WORD2(a1));
      asprintf(&v2, "{Access:%s, reason:%s}");
    }
  }

  else
  {
    asprintf(&v2, "Auth:{Invalid}");
  }

  return v2;
}

void sub_10000B288(id a1)
{
  qword_1000C0F68 = [[TCCDMainSyncController alloc] initWithAsyncSyncEngineInitialization];

  _objc_release_x1();
}

void sub_10000B30C(id a1)
{
  v1 = [NSSet alloc];
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  qword_1000C0F78 = [v1 initWithObjects:{v2, v3, v4, v5, objc_opt_class(), 0}];

  _objc_release_x1();
}

void sub_10000B738(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = [a3 objectForKeyedSubscript:@"companionAppBundleId"];
  v10 = *(a1 + 32);
  v9 = (a1 + 32);
  v11 = [v10 perDeviceMainIdentiferToReplicaIdentifier];
  [v11 setObject:v7 forKeyedSubscript:v8];

  v12 = qword_1000C12F8;
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
  {
    sub_10005F0F4(v8, v9, v12);
  }

  *a4 = 0;
}

void sub_10000C670(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = [a3 objectForKeyedSubscript:@"companionAppBundleId"];
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
  {
    sub_10005F65C();
  }

  v9 = [*(a1 + 32) perDeviceReplicaIdentiferToWatchAppInfo];
  [v9 removeObjectForKey:v7];

  v10 = [*(a1 + 32) perDeviceMainIdentiferToReplicaIdentifier];
  [v10 removeObjectForKey:v8];

  *a4 = 0;
}

void sub_10000C73C(id *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [a1[4] perDeviceReplicaIdentiferToWatchAppInfo];
  v8 = [v7 objectForKeyedSubscript:v6];
  v9 = [v8 objectForKeyedSubscript:@"companionAppBundleId"];

  v10 = [(TCCDSyncClientAccessAction *)[TCCDSyncUpdateAccessAction alloc] initWithServiceIdentifier:@"kTCCServiceAll" mainClientIdentifier:v9 replicaClientIdentifier:v6 clientType:0];
  [(TCCDSyncUpdateAccessAction *)v10 setUpdateAccessActionStatus:1];
  [(TCCDSyncAccessAction *)v10 setSyncChangeType:3];
  [a1[5] addObject:v10];
  [a1[6] addObject:v6];
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
  {
    sub_10005F6D8();
  }

  *a4 = 0;
}

BOOL sub_10000CC64(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = off_1000C0918();
    v8 = qword_1000C12F8;
    if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
    {
      sub_10005F748(v8);
    }

    v9 = [v6 domain];
    if ([v9 isEqualToString:NSCocoaErrorDomain])
    {
      v10 = [v6 code];

      if (v10 == 4099)
      {
        v11 = dispatch_time(0, 5000000000);
        v12 = [*(a1 + 32) syncControllerQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10000D03C;
        block[3] = &unk_1000A4F30;
        block[4] = *(a1 + 32);
        v32 = *(a1 + 48);
        v33 = *(a1 + 64);
        dispatch_after(v11, v12, block);

LABEL_25:
        goto LABEL_26;
      }
    }

    else
    {
    }

    v13 = [v6 domain];
    if ([v13 isEqualToString:v7])
    {
      v14 = [v6 code];

      if (v14 == 43)
      {
        if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
        {
          sub_10005F820();
        }

        v15 = *(a1 + 32);
        v16 = 1;
        goto LABEL_19;
      }
    }

    else
    {
    }

    v17 = [v6 domain];
    if ([v17 isEqualToString:v7])
    {
      v18 = [v6 code];

      if (v18 == 44)
      {
        *(*(*(a1 + 56) + 8) + 24) = 1;
        v15 = *(a1 + 32);
        v16 = 0;
LABEL_19:
        [v15 setWaitingForACXResync:v16];
        goto LABEL_25;
      }
    }

    else
    {
    }

    [*(a1 + 32) setWaitingForACXResync:0];
    v19 = [*(a1 + 32) syncCoordinator];
    v20 = [v19 activeSyncSession];

    if (v20)
    {
      if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
      {
        sub_10005F7E4();
      }

      v21 = [*(a1 + 32) syncControllerQueue];
      v22 = *(a1 + 32);
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_10000D0B4;
      v30[3] = &unk_1000A4F58;
      v30[4] = v22;
      sub_100014EEC(v21, v22, v30);
    }

    goto LABEL_25;
  }

  if (v5)
  {
    [*(a1 + 40) addObject:v5];
  }

  else
  {
    [*(a1 + 32) setWaitingForACXResync:0];
    v24 = [*(a1 + 32) syncControllerQueue];
    v25 = *(a1 + 32);
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10000D0C4;
    v26[3] = &unk_1000A4F80;
    v26[4] = v25;
    v27 = *(a1 + 40);
    v28 = *(a1 + 48);
    v29 = *(a1 + 64);
    sub_100014F74(v24, v25, v26);
  }

LABEL_26:

  return v6 == 0;
}

id sub_10000D03C(uint64_t a1)
{
  v2 = qword_1000C12F8;
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "retrying fetch of installed WatchKit apps after delay.", v4, 2u);
  }

  return [*(a1 + 32) _getInstalledWatchKitAppsWithContinuation:*(a1 + 40) pairingType:*(a1 + 48)];
}

uint64_t sub_10000D0D8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    [*(a1 + 32) setWaitingForACXResync:0];
    v7 = qword_1000C12F8;
    if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
    {
      sub_10005F85C(v7);
    }

    v8 = [*(a1 + 32) syncCoordinator];
    v9 = [v8 activeSyncSession];

    if (v9)
    {
      if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
      {
        sub_10005F8F8();
      }

      v10 = [*(a1 + 32) syncControllerQueue];
      v11 = *(a1 + 32);
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10000D2E0;
      v19[3] = &unk_1000A4F58;
      v19[4] = v11;
      sub_100014EEC(v10, v11, v19);
    }
  }

  else if (v5)
  {
    [*(a1 + 40) addObject:v5];
  }

  else
  {
    [*(a1 + 32) setWaitingForACXResync:0];
    v12 = [*(a1 + 32) syncControllerQueue];
    v13 = *(a1 + 32);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10000D2F0;
    v15[3] = &unk_1000A4F80;
    v15[4] = v13;
    v16 = *(a1 + 40);
    v17 = *(a1 + 48);
    v18 = *(a1 + 56);
    sub_100014F74(v12, v13, v15);
  }

  return 1;
}

void sub_10000D480(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000D4A4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleAccessRequestMessageFromReplica:v3];
}

void sub_10000D5E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10000D604(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      (*(v4 + 16))(v4, v5);
    }

    [WeakRetained setPendingPostPairingContinuation:0];
  }
}

void sub_10000E42C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000E444(uint64_t a1)
{
  v2 = [*(a1 + 32) perDeviceMainIdentiferToReplicaIdentifier];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(*(a1 + 48) + 8) + 40) && [*(a1 + 40) isEqualToString:@"kTCCClientAll"])
  {
    v6 = *(a1 + 40);
    v7 = (*(*(a1 + 48) + 8) + 40);

    objc_storeStrong(v7, v6);
  }
}

void sub_10000E644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000E65C(uint64_t a1)
{
  v2 = [*(a1 + 32) perDeviceReplicaIdentiferToWatchAppInfo];
  v6 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  v3 = [v6 objectForKeyedSubscript:@"companionAppBundleId"];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(*(a1 + 48) + 8) + 40) && [*(a1 + 40) isEqualToString:@"kTCCClientAll"])
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(a1 + 40));
  }
}

void sub_10000E7F4(uint64_t a1)
{
  v2 = [*(a1 + 32) perDeviceReplicaIdentiferToWatchAppInfo];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    v4 = [v3 objectForKeyedSubscript:@"companionAppBundleId"];
    if (v4)
    {
      v5 = v4;
      v6 = *(a1 + 48);
LABEL_9:
      if (([v5 isEqualToString:v6] & 1) == 0)
      {
        v15 = qword_1000C12F8;
        if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
        {
          v17 = *(a1 + 40);
          v16 = *(a1 + 48);
          v18 = 138543874;
          v19 = v16;
          v20 = 2114;
          v21 = v17;
          v22 = 2114;
          v23 = v5;
          _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "registerMainClientIdentifier %{public}@ for replicaClientIdentifier: %{public}@: found existing: %{public}@", &v18, 0x20u);
        }
      }

      goto LABEL_12;
    }
  }

  v7 = *(a1 + 48);
  if (!v7)
  {
    v6 = 0;
    v5 = 0;
    goto LABEL_9;
  }

  v24 = @"companionAppBundleId";
  v25 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  v9 = [*(a1 + 32) perDeviceReplicaIdentiferToWatchAppInfo];
  [v9 setObject:v8 forKeyedSubscript:*(a1 + 40)];

  v10 = *(a1 + 40);
  v11 = [*(a1 + 32) perDeviceMainIdentiferToReplicaIdentifier];
  [v11 setObject:v10 forKeyedSubscript:*(a1 + 48)];

  v12 = qword_1000C12F8;
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 40);
    v13 = *(a1 + 48);
    v18 = 138543618;
    v19 = v13;
    v20 = 2114;
    v21 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Registering newMainClientIdentifier %{public}@ for replicaClientIdentifier: %{public}@.", &v18, 0x16u);
  }

  [*(a1 + 32) _writeSavedWatchKitAppInfo];

  v5 = 0;
LABEL_12:
}

void sub_10000ECB4(uint64_t a1)
{
  v2 = [*(a1 + 32) pairedDevice];

  if (!v2)
  {
    v5 = [NSString stringWithFormat:@"PairedSync beginSyncSession but the device is not paired!"];
    if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
    {
      sub_100060090();
    }

    v16 = NSLocalizedDescriptionKey;
    v17 = v5;
    v6 = &v17;
    v7 = &v16;
    goto LABEL_10;
  }

  if ([*(a1 + 32) hostDeviceUnlocked])
  {
    v3 = [*(a1 + 32) syncService];
    v4 = [v3 currentSession];

    if (v4)
    {
      v5 = [NSString stringWithFormat:@"PairedSync beginSyncSession there is an active SYService session!"];
      if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
      {
        sub_100060090();
      }

      v14 = NSLocalizedDescriptionKey;
      v15 = v5;
      v6 = &v15;
      v7 = &v14;
LABEL_10:
      v8 = [NSDictionary dictionaryWithObjects:v6 forKeys:v7 count:1];
      v9 = [*(a1 + 40) activeSyncSession];
      v10 = [NSError errorWithDomain:@"com.apple.tccd.TCCDSyncControllerErrorDomain" code:999 userInfo:v8];
      [v9 syncDidFailWithError:v10];

      return;
    }

    v12 = *(a1 + 32);

    [v12 _handlePairingSession];
  }

  else
  {
    v11 = qword_1000C12F8;
    if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO))
    {
      v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "PairedSync syncCoordinator:beginSyncSession: but the host device is locked; wait until unlock", &v13, 2u);
    }
  }
}

uint64_t sub_10000F0DC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 beginBatchingDeltaChanges];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000F198;
  v6[3] = &unk_1000A50E8;
  v6[4] = *(a1 + 32);
  [v4 enumerateObjectsUsingBlock:v6];

  [*(a1 + 32) endBatchingDeltaChanges];
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

id sub_10000F198(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) _addDeltaSyncChange:a2];
  *a4 = 0;
  return result;
}

void sub_10000F844(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
    do
    {
      v5 = 0;
      do
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v9 + 1) + 8 * v5);
        v7 = [TCCDSyncUpdateAccessAction alloc];
        v8 = [(TCCDSyncClientAccessAction *)v7 initWithServiceIdentifier:@"kTCCServiceAll" mainClientIdentifier:v6 replicaClientIdentifier:v6 clientType:0, v9];
        sub_10001CC5C(v8);

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }
}

void sub_10000FBC8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 pendingPostPairingContinuation];
  [v1 _getInstalledWatchKitAppsWithContinuation:v2 pairingType:3];
}

id sub_10000FE9C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) appendFormat:@"    %@ -> %@\n", a2, a3];
  *a4 = 0;
  return result;
}

void sub_10000FF68(uint64_t a1)
{
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
  {
    sub_100060348();
  }

  if ([*(a1 + 32) isSyncingEnabled])
  {
    [*(a1 + 32) _initiateResetSync];
  }

  else if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
  {
    sub_100060384();
  }
}

Class sub_100010190()
{
  if (!qword_1000C0FA8)
  {
    qword_1000C0FA8 = dlopen("/System/Library/PrivateFrameworks/PairedSync.framework/PairedSync", 2);
  }

  result = objc_getClass("PSYSyncCoordinator");
  qword_1000C0FA0 = result;
  off_1000C0908 = sub_1000101F4;
  return result;
}

Class sub_100010200()
{
  if (!qword_1000C0FB8)
  {
    qword_1000C0FB8 = dlopen("/System/Library/PrivateFrameworks/AppConduit.framework/AppConduit", 2);
  }

  result = objc_getClass("ACXDeviceConnection");
  qword_1000C0FB0 = result;
  off_1000C0910 = sub_100010264;
  return result;
}

id sub_100010270()
{
  v0 = qword_1000C0FB8;
  if (!qword_1000C0FB8)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/AppConduit.framework/AppConduit", 2);
    qword_1000C0FB8 = v0;
  }

  v1 = dlsym(v0, "ACXErrorDomain");
  objc_storeStrong(&qword_1000C0F98, *v1);
  off_1000C0918 = sub_1000102F4;
  v2 = qword_1000C0F98;

  return v2;
}

id sub_100010300()
{
  v0 = qword_1000C0FC0;
  if (!qword_1000C0FC0)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/NanoRegistry.framework/NanoRegistry", 2);
    qword_1000C0FC0 = v0;
  }

  v1 = dlsym(v0, "NRDevicePropertyName");
  objc_storeStrong(&qword_1000C0F88, *v1);
  off_1000C0A50 = sub_100010384;
  v2 = qword_1000C0F88;

  return v2;
}

uint64_t sub_100010390(uint64_t a1)
{
  v2 = qword_1000C0FA8;
  if (!qword_1000C0FA8)
  {
    v2 = dlopen("/System/Library/PrivateFrameworks/PairedSync.framework/PairedSync", 2);
    qword_1000C0FA8 = v2;
  }

  v3 = dlsym(v2, "NSStringfromPSYSyncSessionType");
  off_1000C0A58 = v3;

  return (v3)(a1);
}

uint64_t sub_1000103FC(void *a1)
{
  v1 = a1;
  v2 = qword_1000C0FC0;
  if (!qword_1000C0FC0)
  {
    v2 = dlopen("/System/Library/PrivateFrameworks/NanoRegistry.framework/NanoRegistry", 2);
    qword_1000C0FC0 = v2;
  }

  off_1000C0A48 = dlsym(v2, "NRWatchOSVersionForRemoteDevice");
  v3 = (off_1000C0A48)(v1);

  return v3;
}

void sub_10001046C(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [NSString stringWithUTF8String:sqlite3_column_text(a2, 0)];
  v3 = [(TCCDSyncAccessAction *)[TCCDSyncOverrideAccessAction alloc] initWithServiceIdentifier:v4];
  [*(a1 + 32) addObject:v3];
}

id sub_1000104F8()
{
  v0 = qword_1000C0FC0;
  if (!qword_1000C0FC0)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/NanoRegistry.framework/NanoRegistry", 2);
    qword_1000C0FC0 = v0;
  }

  v1 = dlsym(v0, "NRDevicePropertyPairingID");
  objc_storeStrong(&qword_1000C0F90, *v1);
  off_1000C0920 = sub_10001057C;
  v2 = qword_1000C0F90;

  return v2;
}

void sub_100010588(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

id sub_1000105C8(uint64_t a1, void *a2)
{

  return a2;
}

void sub_100010608(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_debug_impl(a1, v5, OS_LOG_TYPE_DEBUG, a4, v4, 0xCu);
}

void sub_1000120E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000120FC(uint64_t a1)
{
  if (![*(a1 + 32) registryDBHandle])
  {
    result = [*(a1 + 32) setupDB];
    if (result)
    {
      goto LABEL_6;
    }
  }

  ppStmt = 0;
  if (sqlite3_prepare_v2([*(a1 + 32) registryDBHandle], *(a1 + 64), -1, &ppStmt, 0))
  {
LABEL_7:
    result = [*(a1 + 32) handleDBErrorAndForceCrash:0];
LABEL_6:
    *(*(*(a1 + 56) + 8) + 24) = 1;
    return result;
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v4 = sqlite3_step(ppStmt);
    if (v4 != 100)
    {
      break;
    }

    v2 = *(a1 + 48);
LABEL_8:
    (*(v2 + 16))(v2, ppStmt);
  }

  v5 = v4;
  if (v4 != 101)
  {
    v6 = sqlite3_expanded_sql(ppStmt);
    v7 = +[TCCDPlatform currentPlatform];
    v8 = [v7 server];
    v9 = [v8 logHandle];

    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (v6)
    {
      if (v10)
      {
        sub_100060550(v6, v5, v9);
      }

      sqlite3_free(v6);
      [*(a1 + 32) handleDBErrorAndForceCrash:0];
    }

    else
    {
      if (v10)
      {
        sub_100060608();
      }
    }

    sqlite3_finalize(ppStmt);
    goto LABEL_7;
  }

  return sqlite3_finalize(ppStmt);
}

uint64_t sub_10001276C(uint64_t result, sqlite3_stmt *a2)
{
  if (a2)
  {
    v3 = result;
    if (sqlite3_bind_text(a2, 1, *(result + 40), -1, 0xFFFFFFFFFFFFFFFFLL) || sqlite3_bind_double(a2, 2, *(v3 + 48)) || sqlite3_bind_double(a2, 3, *(v3 + 48)) || (result = sqlite3_bind_int(a2, 4, 1), result))
    {
      v4 = *(v3 + 32);

      return [v4 handleDBErrorAndForceCrash:1];
    }
  }

  return result;
}

void sub_100012984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000129A0(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_column_text(a2, 0);
  v5 = sqlite3_column_int(a2, 3) != 0;
  v6 = sqlite3_column_double(a2, 1);
  v13 = [NSString stringWithFormat:@"%s firstSeen = %f previouslySeen = %f known? %d", v4, *&v6, sqlite3_column_double(a2, 2), v5];
  v7 = [*(*(*(a1 + 32) + 8) + 40) stringByAppendingString:v13];
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = [*(*(*(a1 + 32) + 8) + 40) stringByAppendingString:@"\n"];
  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

uint64_t sub_100012C14(uint64_t result, sqlite3_stmt *a2)
{
  if (a2)
  {
    v2 = result;
    result = sqlite3_bind_text(a2, 1, *(result + 40), -1, 0xFFFFFFFFFFFFFFFFLL);
    if (result)
    {
      v3 = *(v2 + 32);

      return [v3 handleDBErrorAndForceCrash:1];
    }
  }

  return result;
}

void sub_100012C78(uint64_t a1, sqlite3_stmt *a2)
{
  **(a1 + 32) = sqlite3_column_int(a2, 3) != 0;
  v4 = sqlite3_column_double(a2, 1);
  v5 = sqlite3_column_double(a2, 2);
  v6 = +[TCCDPlatform currentPlatform];
  v7 = [v6 server];
  v8 = [v7 logHandle];

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 40);
    v10 = 136446722;
    v11 = v9;
    v12 = 2050;
    v13 = v4;
    v14 = 2050;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "found database %{public}s in registry -- first seen at %{public}f, last seen at %{public}f", &v10, 0x20u);
  }
}

uint64_t sub_100012EDC(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) registryEntryFromStep:a2];
  if (v3)
  {
    [*(a1 + 40) addObject:v3];
  }

  return _objc_release_x1();
}

uint64_t sub_100013290(uint64_t a1, sqlite3_stmt *a2)
{
  result = sqlite3_column_int(a2, 0);
  *(*(a1 + 32) + 8) = result;
  return result;
}

void sub_1000133AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000133C4(uint64_t a1)
{
  result = [*(a1 + 32) evalDB:"BEGIN" locked:1 bind:0 step:0];
  if (result || (result = (*(*(a1 + 40) + 16))(), result) || (result = [*(a1 + 32) evalDB:"END" locked:1 bind:0 step:0], result))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  return result;
}

void sub_10001357C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100013598(uint64_t a1, sqlite3_stmt *a2)
{
  result = sqlite3_column_int(a2, 0);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1000136FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100013718(uint64_t a1, sqlite3_stmt *a2)
{
  result = sqlite3_column_int(a2, 0);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

id sub_100013814(uint64_t a1)
{
  v2 = +[TCCDPlatform currentPlatform];
  v3 = [v2 server];
  v4 = [v3 logHandle];

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1000609D4();
  }

  sqlite3_close([*(a1 + 32) registryDBHandle]);
  return [*(a1 + 32) setRegistryDBHandle:0];
}

void sub_100013C94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100013CAC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 updateAccessActionStatus];
  if (v4 <= 0x10)
  {
    if (((1 << v4) & 0x14C) != 0)
    {
      v5 = 2;
LABEL_9:
      *(*(*(a1 + 40) + 8) + 24) = v5;
      goto LABEL_10;
    }

    if (((1 << v4) & 0x10002) != 0)
    {
LABEL_8:
      v5 = 1;
      goto LABEL_9;
    }

    if (!v4)
    {
      v6 = qword_1000C12F8;
      if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_FAULT))
      {
        sub_100060B8C(v6, v3);
      }

      goto LABEL_8;
    }
  }

LABEL_10:
  v7 = [*(a1 + 32) syncController];
  [v7 removeAccessDidUpdateHandlerForSession:*(a1 + 32)];

  v8 = [*(a1 + 32) sentMessageSemaphore];
  dispatch_semaphore_signal(v8);
}

void sub_100013D94(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) syncController];
    [v3 removeAccessDidUpdateHandlerForSession:*(a1 + 32)];

    *(*(*(a1 + 40) + 8) + 24) = 1;
    v4 = [*(a1 + 32) sentMessageSemaphore];
    dispatch_semaphore_signal(v4);
  }
}

void sub_100014270(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 48));
  [*(*(a1 + 32) + 32) setObject:v2 forKeyedSubscript:*(a1 + 40)];
}

void sub_100014458(uint64_t a1)
{
  v2 = [*(a1 + 32) messageTypesToHandlers];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    v3[2](v3, *(a1 + 48));
  }

  else if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
  {
    sub_100060DE4();
  }
}

void sub_10001460C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    if (*(a1 + 56))
    {
      v4 = 0;
    }

    else
    {
      v4 = *(a1 + 48);
    }

    (*(v2 + 16))(v2, v4);
    [*(*(a1 + 32) + 32) removeObjectForKey:*(a1 + 40)];
  }

  else if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
  {
    sub_100060F08();
  }
}

void sub_10001478C(id a1)
{
  qword_1000C0FC8 = objc_alloc_init(TCCDIdsMessageController);

  _objc_release_x1();
}

void sub_100014A10(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v5 = objc_retainBlock(v2);
    [*(a1[4] + 8) setObject:v5 forKeyedSubscript:a1[5]];
  }

  else
  {
    v3 = a1[5];
    v4 = *(a1[4] + 8);

    [v4 removeObjectForKey:v3];
  }
}

void sub_100014A94(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100014B24;
  block[3] = &unk_1000A4F58;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

uint64_t sub_100014CBC()
{
  if (qword_1000C0FE0 != -1)
  {
    sub_10006115C();
  }

  return dword_1000C0FE8;
}

void sub_100014CF4(id a1)
{
  if (db_eval("SELECT value FROM admin WHERE key = 'sync_version'", 0, &stru_1000A5498))
  {
    if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
    {
      sub_100061170();
    }

    _db_error(0);
  }
}

void sub_100014D8C(int a1)
{
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
  {
    sub_1000611EC();
  }

  if (dword_1000C0FE8 != a1)
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_100014E90;
    v2[3] = &unk_1000A54B8;
    v3 = a1;
    if (db_eval("INSERT OR REPLACE INTO admin VALUES ('sync_version', ?)", v2, 0))
    {
      if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
      {
        sub_100061274();
      }

      _db_error(0);
    }

    else
    {
      dword_1000C0FE8 = a1;
    }
  }
}

void sub_100014E90(uint64_t a1, sqlite3_stmt *a2)
{
  if (sqlite3_bind_int64(a2, 1, *(a1 + 32)))
  {

    _db_error(1);
  }
}

void sub_100014EEC(NSObject *a1, void *a2, void *a3)
{
  if (dispatch_get_specific(off_1000C0C40) == a2)
  {
    v5 = a3[2];

    v5(a3);
  }

  else
  {

    dispatch_sync(a1, a3);
  }
}

void sub_100014F74(NSObject *a1, void *a2, void *a3)
{
  if (dispatch_get_specific(off_1000C0C40) == a2)
  {
    v5 = a3[2];

    v5(a3);
  }

  else
  {

    dispatch_async(a1, a3);
  }
}

const __CFString *sub_100014FFC(unsigned int a1)
{
  if (a1 > 7)
  {
    return @"<Unknown>";
  }

  else
  {
    return *(&off_1000A56A0 + a1);
  }
}

void sub_100015064(id a1)
{
  qword_1000C0FF0 = [[TCCDSyncController alloc] initWithAsyncSyncEngineInitialization];

  _objc_release_x1();
}

void sub_1000150E8(id a1)
{
  v1 = [NSSet alloc];
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  qword_1000C1000 = [v1 initWithObjects:{v2, v3, v4, v5, v6, v7, v8, objc_opt_class(), 0}];

  _objc_release_x1();
}

void sub_10001522C(id a1)
{
  v1 = [NSSet alloc];
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  qword_1000C1010 = [v1 initWithObjects:{v2, v3, v4, v5, objc_opt_class(), 0}];

  _objc_release_x1();
}

_DWORD *sub_1000155F4(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained _syncStatusDescriptionString];
    v6 = objc_autoreleasePoolPush();
    v7 = [NSPropertyListSerialization dataWithPropertyList:v5 format:200 options:0 error:0];
    v8 = malloc_type_malloc([v7 length] + 200, 0x1000040BEF03554uLL);
    *v8 = 1;
    v8[1] = [v7 length];
    [v7 getBytes:v8 + 50 range:{0, objc_msgSend(v7, "length")}];
    v9 = [v4 _os_state_titleWithPrefix:@"tccd Sync State" withHints:a2];
    v10 = v9;
    if (v9)
    {
      [v9 UTF8String];
      __strlcpy_chk();
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_100015C90(uint64_t a1, int a2)
{
  result = MKBDeviceUnlockedSinceBoot();
  if (result == 1)
  {
    v5 = qword_1000C12F8;
    if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "SyncEngine init: Device became unlocked, continuing with _initializeSyncEngineAfterDeviceUnlock.", v6, 2u);
    }

    [*(a1 + 32) _initializeSyncEngineAfterDeviceUnlock];
    return notify_cancel(a2);
  }

  return result;
}

void sub_100016018(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v1 != *(v2 + 8))
  {
    *(v2 + 8) = v1;
    v4 = *(a1 + 40);
    v5 = qword_1000C12F8;
    v6 = os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO);
    if (v4 == 1)
    {
      if (v6)
      {
        if (*(*(a1 + 32) + 9))
        {
          v7 = "Yes";
        }

        else
        {
          v7 = "No";
        }

        *buf = 136315138;
        v14 = v7;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Enabling syncing; isMain: %s", buf, 0xCu);
      }

      v8 = [*(a1 + 32) syncService];
      v12 = 0;
      v9 = [v8 resume:&v12];
      v10 = v12;

      v11 = qword_1000C12F8;
      if (v9)
      {
        if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
        {
          sub_10006186C();
        }
      }

      else if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
      {
        sub_1000617D4(v11);
      }
    }

    else
    {
      if (v6)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Disabling syncing", buf, 2u);
      }

      [*(a1 + 32) setPendingSyncType:0];
      [*(a1 + 32) setRetryCount:0];
      v10 = [*(a1 + 32) syncService];
      [v10 suspend];
    }
  }
}

void sub_100016298(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _setSyncingEnabled:1];
    if ([v5 pendingSyncType] == 1)
    {
      v6 = qword_1000C12F8;
      if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "postPairingContinuation: requesting a ResetSync.", buf, 2u);
      }

      [v5 _initiateResetSync];
    }

    else
    {
      if ([v3 count])
      {
        v7 = [v5 pendingDeltaSyncChanges];
        [v7 addObjectsFromArray:v3];

        [v5 setPendingSyncType:2];
      }

      if ([v5 pendingSyncType] == 2)
      {
        v8 = qword_1000C12F8;
        if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEFAULT))
        {
          *v10 = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "postPairingContinuation: requesting a DeltaSync.", v10, 2u);
        }

        [v5 _acquireTransaction];
        v9 = [v5 syncService];
        [v9 setHasChangesAvailable];
      }

      else
      {
        [v5 _sendSyncSessionDidFinishWithResult:0 error:0];
      }
    }
  }
}

id sub_100017F5C(uint64_t a1)
{
  v2 = qword_1000C12F8;
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 retryBlock];
    v6 = objc_retainBlock(v5);
    v7 = [*(a1 + 40) identifier];
    v8 = *(a1 + 48);
    v9 = [*(a1 + 32) _syncTypeToString:*(a1 + 56)];
    v11 = 134218754;
    v12 = v6;
    v13 = 2114;
    v14 = v7;
    v15 = 2048;
    v16 = v8;
    v17 = 2082;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Running retry-block(%p) from session:  %{public}@, count: %llu, type: '%{public}s'", &v11, 0x2Au);
  }

  [*(a1 + 32) setRetryBlock:0];
  return [*(a1 + 32) _retrySyncType:*(a1 + 56)];
}

void sub_1000186A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10001875C(uint64_t a1)
{
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
  {
    sub_100062358();
  }

  return [*(a1 + 32) setBatchDeltaChanges:1];
}

id sub_1000188CC(uint64_t a1)
{
  v2 = qword_1000C12F8;
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Begin willShutdown.", v4, 2u);
  }

  return [*(a1 + 32) _sendSyncSessionDidFinishWithResult:7 error:0];
}

void sub_100018A1C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 80);
  v3 = objc_retainBlock(*(a1 + 48));
  [v2 setObject:v3 forKey:*(a1 + 40)];
}

id sub_100018BF8(uint64_t a1)
{
  [*(a1 + 32) setSyncChangeType:{objc_msgSend(*(a1 + 40), "syChangeTypeForUpdateType:", *(a1 + 48))}];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);

  return [v2 _addDeltaSyncChange:v3];
}

void sub_100018CD0(uint64_t a1)
{
  v2 = [*(a1 + 32) eventRetryBlock];

  v3 = qword_1000C12F8;
  v4 = os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "skipping MemoryPressureCritical...", buf, 2u);
    }
  }

  else
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "handling MemoryPressureCritical...", buf, 2u);
    }

    [*(a1 + 32) _writeSyncStateAndAllowTermination];
    v5 = [*(a1 + 32) eventRetryBlock];

    if (v5)
    {
      v6 = [*(a1 + 32) eventRetryBlock];
      dispatch_block_cancel(v6);

      [*(a1 + 32) setEventRetryBlock:0];
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100018E90;
    block[3] = &unk_1000A4F58;
    block[4] = *(a1 + 32);
    v7 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    [*(a1 + 32) setEventRetryBlock:v7];

    v8 = dispatch_time(0, 1000000000 * [*(a1 + 32) eventRetryIntervalSecs]);
    v9 = [*(a1 + 32) syncControllerQueue];
    v10 = [*(a1 + 32) eventRetryBlock];
    dispatch_after(v8, v9, v10);
  }
}

id sub_100018E90(uint64_t a1)
{
  v2 = qword_1000C12F8;
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "EventRetry for MemoryPressureCritical...", v5, 2u);
  }

  [*(a1 + 32) _loadSavedSyncState];
  if ([*(a1 + 32) pendingSyncType] == 1)
  {
    if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
    {
      sub_1000623C0();
    }

    [*(a1 + 32) _initiateResetSync];
  }

  else if ([*(a1 + 32) pendingSyncType] == 2)
  {
    if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
    {
      sub_10006238C();
    }

    [*(a1 + 32) _acquireTransaction];
    v3 = [*(a1 + 32) syncService];
    [v3 setHasChangesAvailable];
  }

  return [*(a1 + 32) setEventRetryBlock:0];
}

void sub_10001909C(uint64_t a1)
{
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v1 = *(*(a1 + 32) + 80);
  v26 = [v1 countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (v26)
  {
    v3 = *v29;
    v4 = &qword_1000C1000;
    *&v2 = 136315650;
    v22 = v2;
    v23 = *v29;
    do
    {
      for (i = 0; i != v26; i = i + 1)
      {
        if (*v29 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v28 + 1) + 8 * i);
        v7 = v4[95];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v19 = v7;
          v20 = [v6 syncRequestAccessAction];
          v21 = *(a1 + 40);
          *buf = v22;
          v33 = "[TCCDSyncController _syncSessionHandlerForUpdateAccessAction:]_block_invoke";
          v34 = 2112;
          v35 = v20;
          v36 = 2112;
          v37 = v21;
          _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "%s: comparing request:%@ to update:%@", buf, 0x20u);
        }

        v8 = [v6 syncRequestAccessAction];
        v9 = [v8 serviceIdentifier];
        v10 = [*(a1 + 40) serviceIdentifier];
        if (([v9 isEqualToString:v10] & 1) == 0)
        {

          goto LABEL_15;
        }

        v11 = [v6 syncRequestAccessAction];
        v12 = [v11 replicaClientIdentifier];
        v13 = [*(a1 + 40) replicaClientIdentifier];
        if (![v12 isEqualToString:v13])
        {

          v4 = &qword_1000C1000;
          goto LABEL_15;
        }

        [v6 syncRequestAccessAction];
        v15 = v14 = v1;
        v25 = [v15 clientType];
        v24 = [*(a1 + 40) clientType];

        v1 = v14;
        v3 = v23;

        v4 = &qword_1000C1000;
        if (v25 != v24)
        {
          continue;
        }

        v16 = [*(*(a1 + 32) + 80) objectForKey:v6];
        v8 = v16;
        if (v16)
        {
          v17 = *(a1 + 48);
          v9 = objc_retainBlock(v16);
          v18 = v17;
          v3 = v23;
          [v18 addObject:v9];
LABEL_15:
        }
      }

      v26 = [v1 countByEnumeratingWithState:&v28 objects:v38 count:16];
    }

    while (v26);
  }
}

id sub_10001A1DC(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [*(a1 + 32) state]);
  [v2 setObject:v3 forKeyedSubscript:@"SessionState"];

  v4 = [*(a1 + 32) error];
  v5 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 code]);
  [v2 setObject:v5 forKeyedSubscript:@"SessionErrorCode"];

  v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) isSending]);
  [v2 setObject:v6 forKeyedSubscript:@"isSending"];

  v7 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) isResetSync]);
  [v2 setObject:v7 forKeyedSubscript:@"isResetSync"];

  v8 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 40) isMain]);
  [v2 setObject:v8 forKeyedSubscript:@"isMain"];

  v9 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*(a1 + 40) retryCount]);
  [v2 setObject:v9 forKeyedSubscript:@"CurrentRetryCount"];

  v10 = qword_1000C12F8;
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_INFO))
  {
    v12 = 138543618;
    v13 = @"com.apple.TCC.authsync";
    v14 = 2114;
    v15 = v2;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Analytics Event sending: %{public}@\n%{public}@", &v12, 0x16u);
  }

  return v2;
}

void sub_10001B808(uint64_t a1)
{
  if (os_log_type_enabled(qword_1000C12F8, 0x90u))
  {
    sub_100063994();
  }

  v2 = qword_1000C12F8;
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 _syncStatusDescriptionString];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@", &v6, 0xCu);
  }
}

void sub_10001B9AC(uint64_t a1)
{
  string = xpc_dictionary_get_string(*(a1 + 32), "arg1");
  if (!strncmp(string, "maxRetry", 8uLL))
  {
    uint64 = xpc_dictionary_get_uint64(*(a1 + 32), "arg2");
    v7 = qword_1000C12F8;
    if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 134217984;
      v21 = uint64;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setting maxRetryCount to %llu", &v20, 0xCu);
    }

    [*(a1 + 40) setMaxRetryCount:uint64];
  }

  else if (!strncmp(string, "retryInterval", 0xDuLL))
  {
    v8 = xpc_dictionary_get_uint64(*(a1 + 32), "arg2");
    v9 = qword_1000C12F8;
    if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 134217984;
      v21 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Setting retryIntervalSecs to %llu", &v20, 0xCu);
    }

    [*(a1 + 40) setRetryIntervalSecs:v8];
  }

  else
  {
    if (strncmp(string, "messageTimeout", 0xEuLL))
    {
      if (!strncmp(string, "inProximity", 0xBuLL))
      {
        v12 = qword_1000C12F8;
        if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v20) = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Calling targetDeviceProximityChanged:YES", &v20, 2u);
        }

        v13 = *(a1 + 40);
        v14 = [v13 syncService];
        v15 = v13;
        v16 = v14;
        v17 = 1;
      }

      else
      {
        if (strncmp(string, "outProximity", 0xCuLL))
        {
          v3 = strncmp(string, "testMaxRetry", 0xCuLL);
          v4 = qword_1000C12F8;
          v5 = os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEFAULT);
          if (v3)
          {
            if (v5)
            {
              v20 = 136315138;
              v21 = string;
              _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "testSyncSet unsupported target: %s", &v20, 0xCu);
            }
          }

          else
          {
            if (v5)
            {
              LOWORD(v20) = 0;
              _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Setting one-shot retryTestMaxRetry", &v20, 2u);
            }

            [*(a1 + 40) setRetryTestMaxRetry:1];
          }

          return;
        }

        v18 = qword_1000C12F8;
        if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v20) = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Calling targetDeviceProximityChanged:NO", &v20, 2u);
        }

        v19 = *(a1 + 40);
        v14 = [v19 syncService];
        v15 = v19;
        v16 = v14;
        v17 = 0;
      }

      [v15 service:v16 targetDeviceProximityChanged:v17];

      return;
    }

    v10 = xpc_dictionary_get_uint64(*(a1 + 32), "arg2");
    v11 = qword_1000C12F8;
    if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 134217984;
      v21 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Setting sessionPerMessageTimeoutSecs to %llu", &v20, 0xCu);
    }

    [*(a1 + 40) setSessionPerMessageTimeoutSecs:v10];
  }
}

id sub_10001BDE0(uint64_t a1)
{
  v2 = qword_1000C12F8;
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Testing handleMemoryPressureCritical", v4, 2u);
  }

  return [*(a1 + 32) handleMemoryPressureCritical];
}

Class sub_10001C24C()
{
  if (!qword_1000C1038)
  {
    qword_1000C1038 = dlopen("/System/Library/PrivateFrameworks/CompanionSync.framework/CompanionSync", 2);
  }

  result = objc_getClass("SYService");
  qword_1000C1030 = result;
  off_1000C0C48 = sub_10001C2B0;
  return result;
}

Class sub_10001C2BC()
{
  if (!qword_1000C1048)
  {
    qword_1000C1048 = dlopen("/System/Library/PrivateFrameworks/NanoRegistry.framework/NanoRegistry", 2);
  }

  result = objc_getClass("NRPairedDeviceRegistry");
  qword_1000C1040 = result;
  off_1000C0C50 = sub_10001C320;
  return result;
}

id sub_10001C32C()
{
  v0 = qword_1000C1048;
  if (!qword_1000C1048)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/NanoRegistry.framework/NanoRegistry", 2);
    qword_1000C1048 = v0;
  }

  v1 = dlsym(v0, "NRDevicePropertyLocalPairingDataStorePath");
  objc_storeStrong(&qword_1000C1028, *v1);
  off_1000C0C58 = sub_10001C3B0;
  v2 = qword_1000C1028;

  return v2;
}

id sub_10001C3BC()
{
  v0 = qword_1000C1048;
  if (!qword_1000C1048)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/NanoRegistry.framework/NanoRegistry", 2);
    qword_1000C1048 = v0;
  }

  v1 = dlsym(v0, "NRDevicePropertyPairingID");
  objc_storeStrong(&qword_1000C1020, *v1);
  off_1000C0C60 = sub_10001C440;
  v2 = qword_1000C1020;

  return v2;
}

void sub_10001C45C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_10001C498(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_10001C4FC(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x20u);
}

const __CFString *sub_10001C558(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"<Unknown>";
  }

  else
  {
    return off_1000A5710[a1];
  }
}

void *sub_10001C57C(const __CFString *a1)
{
  Length = CFStringGetLength(a1);
  maxBufLen = 0;
  v6.location = 0;
  v6.length = Length;
  if (CFStringGetBytes(a1, v6, 0x8000100u, 0, 0, 0, 0, &maxBufLen) != Length)
  {
    v3 = 0;
LABEL_6:
    free(v3);
    return 0;
  }

  v3 = malloc_type_malloc(maxBufLen + 1, 0x85C15591uLL);
  if (!v3)
  {
    goto LABEL_6;
  }

  v7.location = 0;
  v7.length = Length;
  if (CFStringGetBytes(a1, v7, 0x8000100u, 0, 0, v3, maxBufLen, &maxBufLen) != Length)
  {
    goto LABEL_6;
  }

  *(v3 + maxBufLen) = 0;
  return v3;
}

uint64_t sub_10001C660(CFUUIDRef uuid, char **a2)
{
  v3 = CFUUIDCreateString(kCFAllocatorDefault, uuid);
  if (v3)
  {
    v4 = v3;
    Length = CFStringGetLength(v3);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v7 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
    *a2 = v7;
    if (CFStringGetCString(v4, v7, MaximumSizeForEncoding + 1, 0x8000100u))
    {
      v8 = 1;
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000639D4();
      }

      v8 = 0;
    }

    CFRelease(v4);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100063A1C();
    }

    return 0;
  }

  return v8;
}

void sub_10001C74C(void *a1)
{
  v1 = a1;
  v2 = [qword_1000C1300 platform];
  v3 = [v1 serviceIdentifier];
  v4 = [v2 serviceByName:v3];

  if (v4)
  {
    if ([v1 clientType])
    {
      v5 = qword_1000C1060;
      if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_ERROR))
      {
        sub_100063A64(v5);
      }

      goto LABEL_29;
    }

    v7 = [TCCDRequestContext alloc];
    v8 = [v1 mainClientIdentifier];
    v9 = [(TCCDRequestContext *)v7 initForSyncRequestForSubjectBundleIdentifier:v8 service:v4];

    [v9 setDesiredAuth:{objc_msgSend(v1, "desiredAuth")}];
    if (!v9)
    {
      v19 = qword_1000C1060;
      if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_ERROR))
      {
        sub_100063CEC(v19);
      }

      goto LABEL_28;
    }

    if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
    {
      sub_100063B00();
    }

    v10 = [v9 subjectIdentity];
    v11 = [v10 bundle];
    if ([v11 isASKCapable])
    {
      v12 = [v4 name];
      v13 = [v12 isEqualToString:@"kTCCServiceBluetoothAlways"];

      if (v13)
      {
        v14 = qword_1000C12F8;
        if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v37 = "tccd_sync_TCCAccessRequest";
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s: request from watch to prompt for bluetooth when phone app has ASK info plist key", buf, 0xCu);
        }

        v15 = [TCCDSyncUpdateAccessAction accessUpdateStatusForAuthorizationRight:0 forMain:qword_1000C1058 != 0];
        v16 = qword_1000C1050;
        v17 = [v1 serviceIdentifier];
        v18 = [v1 mainClientIdentifier];
        [v16 syncAccessUpdateForServiceIdentifier:v17 clientIdentifier:v18 clientType:objc_msgSend(v1 accessStatus:"clientType") authorizationVersion:v15 flags:objc_msgSend(v4 updateType:{"authorizationVersionNumber"), 0, 0}];

        goto LABEL_28;
      }
    }

    else
    {
    }

    v35 = 0;
    v20 = sub_100007B54(v9, &v35);
    v21 = v20;
    if (v35)
    {
LABEL_27:

LABEL_28:
      goto LABEL_29;
    }

    v22 = [v20 error];

    if (!v22)
    {
      if ([v21 authorizationValue] != 1)
      {
        v28 = [v21 authorizationValue];
        v29 = qword_1000C1050;
        v30 = [v4 name];
        LOBYTE(v29) = [v29 peerSupportsService:v30 authVersion:{objc_msgSend(v4, "authorizationVersionNumber")}];

        if ((v29 & 1) == 0)
        {
          v28 = [v4 translateAuth:v28 versionUpgrade:0];
          v31 = qword_1000C1060;
          if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_DEFAULT))
          {
            v32 = v31;
            v33 = [v4 name];
            *buf = 138412546;
            v37 = v33;
            v38 = 2048;
            v39 = v28;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "downgrading %@ auth to %lu", buf, 0x16u);
          }
        }

        if (v28 || [v21 authorizationReason] != 15)
        {
          v34 = [v9 service];
          v23 = [v34 accessActionStatusForAuthorizationValue:v28];
        }

        else
        {
          v23 = 16;
        }

        goto LABEL_24;
      }

      if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
      {
        sub_100063B84();
      }
    }

    v23 = 0;
LABEL_24:
    v24 = qword_1000C12F8;
    if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
    {
      sub_100063C04(v24, v1);
    }

    v25 = qword_1000C1050;
    v26 = [v1 serviceIdentifier];
    v27 = [v1 mainClientIdentifier];
    [v25 syncAccessUpdateForServiceIdentifier:v26 clientIdentifier:v27 clientType:objc_msgSend(v1 accessStatus:"clientType") authorizationVersion:v23 flags:2 updateType:{objc_msgSend(v21, "databaseFlags"), 0}];

    goto LABEL_27;
  }

  v6 = qword_1000C1060;
  if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_ERROR))
  {
    sub_100063D90(v6);
  }

LABEL_29:
}

void sub_10001CC5C(void *a1)
{
  v1 = a1;
  if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
  {
    sub_100063ECC();
  }

  v2 = [qword_1000C1300 platform];
  v3 = [v1 serviceIdentifier];
  v4 = [v2 serviceByName:v3];

  if (v4)
  {
    v5 = [v1 clientIdentifierForCurrentPlatform];
    v6 = [v1 clientType];
    v7 = db_reset_access_internal(v4, v5, v6, qword_1000C1300, 0, 1, 0);

    if (v7)
    {
      if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
      {
        sub_100063F3C();
      }
    }
  }
}

void sub_10001CD70(void *a1, char a2)
{
  v3 = a1;
  if ([v3 clientType])
  {
    v4 = qword_1000C1060;
    if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_ERROR))
    {
      sub_100063FAC(v4);
    }

    goto LABEL_69;
  }

  v5 = [v3 clientIdentifierForCurrentPlatform];

  if (v5)
  {
    v6 = [qword_1000C1300 platform];
    v7 = [v3 serviceIdentifier];
    v8 = [v6 serviceByName:v7];

    v83[0] = _NSConcreteStackBlock;
    v83[1] = 3221225472;
    v83[2] = sub_10001D954;
    v83[3] = &unk_1000A5188;
    v9 = v3;
    v84 = v9;
    v10 = objc_retainBlock(v83);
    if ([v9 updateAccessActionStatus] == 1)
    {
      sub_10001CC5C(v9);
LABEL_68:

      goto LABEL_69;
    }

    if (![v9 updateAccessActionStatus] || objc_msgSend(v9, "updateAccessActionStatus") == 16)
    {
      goto LABEL_68;
    }

    v57 = [v9 authorizationVersion];
    v11 = [v9 authorizationRightState];
    v58 = [v11 right];

    v56 = [v9 databaseFlags];
    if ([v9 updateAccessActionStatus] == 4 || objc_msgSend(v9, "updateAccessActionStatus") == 5 || objc_msgSend(v9, "updateAccessActionStatus") == 7 || objc_msgSend(v9, "updateAccessActionStatus") == 9)
    {
      v12 = [v9 mainAuthorizationRightState];
      v58 = [v12 right];
    }

    v13 = qword_1000C1050;
    v14 = [v8 name];
    LOBYTE(v13) = [v13 peerSupportsService:v14 authVersion:{objc_msgSend(v8, "authorizationVersionNumber")}];

    if ((v13 & 1) == 0)
    {
      v58 = [v8 translateAuth:v58 versionUpgrade:1];
      v57 = [v8 authorizationVersionNumber];
      v15 = qword_1000C1060;
      if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
        v17 = [v8 name];
        *buf = 138412546;
        v86 = v17;
        v87 = 2048;
        v88 = v58;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "upgrading %@ auth to %lu", buf, 0x16u);
      }
    }

    if ([v9 updateAccessActionStatus] != 2 && objc_msgSend(v9, "updateAccessActionStatus") != 3 && objc_msgSend(v9, "updateAccessActionStatus") != 6 && objc_msgSend(v9, "updateAccessActionStatus") != 8)
    {
      if (!qword_1000C1058)
      {
        v36 = [v9 mainAuthorizationRightState];
        [v36 setRight:v58];
        v55 = qword_1000C12F8;
        if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
        {
          sub_1000640BC(v55, v36);
        }

        goto LABEL_49;
      }

      if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
      {
        sub_10006404C();
      }

      v36 = 0;
LABEL_67:

      goto LABEL_68;
    }

    v79 = 0;
    v80 = &v79;
    v81 = 0x2020000000;
    v82 = 0;
    v75 = 0;
    v76 = &v75;
    v77 = 0x2020000000;
    v78 = 1;
    v71 = 0;
    v72 = &v71;
    v73 = 0x2020000000;
    v74 = 1;
    v67 = 0;
    v68 = &v67;
    v69 = 0x2020000000;
    v70 = 0;
    v66[0] = _NSConcreteStackBlock;
    v66[1] = 3221225472;
    v66[2] = sub_10001DA40;
    v66[3] = &unk_1000A5730;
    v66[4] = &v79;
    v66[5] = &v75;
    v66[6] = &v71;
    v66[7] = &v67;
    db_eval("SELECT auth_value, auth_version, flags FROM access WHERE service = ? AND client = ? AND client_type = ?", v10, v66);
    if ((v80[3] & 1) == 0)
    {
      v18 = [v9 serviceIdentifier];
      v19 = [v18 isEqualToString:@"kTCCServiceBluetoothAlways"];

      if (v19)
      {
        v20 = qword_1000C1060;
        if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "checking for NSAccessorySetupKitSupports info plist key", buf, 2u);
        }

        if ([v9 clientType])
        {
          v21 = qword_1000C1060;
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = [v9 clientIdentifierForCurrentPlatform];
            v23 = [v9 clientType];
            *buf = 138412546;
            v86 = v22;
            v87 = 1024;
            LODWORD(v88) = v23;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Received synced bluetooth auth for client not of type bundle id: %@ type: %d not checking for drop eligibility", buf, 0x12u);
          }
        }

        else
        {
          v24 = [v9 clientIdentifierForCurrentPlatform];
          v21 = [TCCDBundle bundleWithIdentifier:v24];

          if (v21 && [v21 isASKCapable])
          {
            v25 = qword_1000C1060;
            if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "NSAccessorySetupKitSupports array found, not persisting auth to local db", buf, 2u);
            }

            if (([qword_1000C1050 peerSupportsIndependentAuthforService:@"kTCCServiceBluetoothAlways"] & 1) == 0)
            {
              v26 = qword_1000C1060;
              if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "syncing bluetooth deny authorization to peer", buf, 2u);
              }

              v59 = [TCCDSyncUpdateAccessAction accessUpdateStatusForAuthorizationRight:0 forMain:qword_1000C1058 != 0];
              v27 = qword_1000C1050;
              v28 = [v9 serviceIdentifier];
              v29 = [v9 clientIdentifierForCurrentPlatform];
              [v27 syncAccessUpdateForServiceIdentifier:v28 clientIdentifier:v29 clientType:objc_msgSend(v9 accessStatus:"clientType") authorizationVersion:v59 flags:objc_msgSend(v8 updateType:{"authorizationVersionNumber"), 0, 1}];
            }

            goto LABEL_88;
          }
        }
      }
    }

    v30 = qword_1000C12F8;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v80 + 24))
      {
        v31 = "replacing";
      }

      else
      {
        v31 = "inserting new";
      }

      v32 = [v9 description];
      v33 = [v9 serviceIdentifier];
      v34 = [v9 clientIdentifierForCurrentPlatform];
      v35 = v76[3];
      *buf = 136447234;
      v86 = v31;
      v87 = 2114;
      v88 = v32;
      v89 = 2114;
      v90 = v33;
      v91 = 2114;
      v92 = v34;
      v93 = 2048;
      v94 = v35;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Handling sync update access action: %{public}s AccessActionStatus: %{public}@ for (%{public}@, %{public}@): current auth value: %llu", buf, 0x34u);
    }

    if (*(v80 + 24) != 1 || v72[3] < v57)
    {
      goto LABEL_47;
    }

    if (v76[3] == v58)
    {
      v39 = *(v68 + 6);
      v40 = os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG);
      if (v39 == v56)
      {
        if (v40)
        {
          sub_1000641E4();
        }

LABEL_88:
        v36 = 0;
        v37 = 0;
LABEL_48:
        _Block_object_dispose(&v67, 8);
        _Block_object_dispose(&v71, 8);
        _Block_object_dispose(&v75, 8);
        _Block_object_dispose(&v79, 8);
        if (v37)
        {
LABEL_49:
          v60[0] = _NSConcreteStackBlock;
          v60[1] = 3221225472;
          v60[2] = sub_10001DABC;
          v60[3] = &unk_1000A5758;
          v61 = v9;
          v62 = v36;
          v64 = v57;
          v63 = v8;
          v65 = a2;
          v38 = v36;
          db_eval("INSERT OR REPLACE INTO access   (service, client, client_type, auth_value, auth_reason, auth_version, indirect_object_identifier, flags) VALUES (?, ?, ?, ?, ?, ?, ?, ?)", v60, 0);

          goto LABEL_68;
        }

        goto LABEL_67;
      }

      if (v40)
      {
        sub_100064164();
      }

LABEL_47:
      v36 = [v9 authorizationRightState];
      [v36 setRight:v58];
      v37 = 1;
      goto LABEL_48;
    }

    v41 = [v8 name];
    if ([v41 isEqualToString:@"kTCCServiceCalendar"])
    {
      v43 = v76[3] == 4 && v58 == 2;

      if (!v43)
      {
        goto LABEL_85;
      }
    }

    else
    {
      v44 = [v8 name];
      if (([v44 isEqualToString:@"kTCCServiceExternalCameraMedia"] & 1) == 0)
      {

LABEL_85:
        v51 = qword_1000C12F8;
        if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Forcing reset because existing access status conflicts with incoming status; resetting us and our peer.", buf, 2u);
        }

        sub_10001CC5C(v9);
        v52 = qword_1000C1050;
        v53 = [v9 serviceIdentifier];
        v54 = [v9 clientIdentifierForCurrentPlatform];
        [v52 syncAccessUpdateForServiceIdentifier:v53 clientIdentifier:v54 clientType:objc_msgSend(v9 accessStatus:"clientType") authorizationVersion:1 flags:1 updateType:{0, 2}];

        goto LABEL_88;
      }

      v46 = v76[3] == 4 && v58 == 2;

      if (!v46)
      {
        goto LABEL_85;
      }
    }

    v47 = qword_1000C12F8;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v48 = v76[3];
      v49 = [v8 name];
      *buf = 134218498;
      v86 = v58;
      v87 = 2048;
      v88 = v48;
      v89 = 2112;
      v90 = v49;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "incomingAuth: %llu existingAuth: %llu service: %@", buf, 0x20u);
    }

    v50 = qword_1000C12F8;
    if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "no kill auth transition", buf, 2u);
    }

    goto LABEL_47;
  }

  if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_ERROR))
  {
    sub_100064264();
  }

LABEL_69:
}

void sub_10001D8F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose((v38 - 248), 8);
  _Unwind_Resume(a1);
}

void sub_10001D954(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [*(a1 + 32) serviceIdentifier];
  if (!sqlite3_bind_text(a2, 1, [v4 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL))
  {
    v5 = [*(a1 + 32) clientIdentifierForCurrentPlatform];
    if (!sqlite3_bind_text(a2, 2, [v5 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL))
    {
      v6 = sqlite3_bind_int(a2, 3, [*(a1 + 32) clientType]);

      if (!v6)
      {
        return;
      }

      goto LABEL_5;
    }
  }

LABEL_5:

  _db_error(1);
}

uint64_t sub_10001DA40(void *a1, sqlite3_stmt *a2)
{
  *(*(a1[4] + 8) + 24) = 1;
  *(*(a1[5] + 8) + 24) = sqlite3_column_int64(a2, 0);
  *(*(a1[6] + 8) + 24) = sqlite3_column_int64(a2, 1);
  result = sqlite3_column_int(a2, 2);
  *(*(a1[7] + 8) + 24) = result;
  return result;
}

void sub_10001DABC(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [*(a1 + 32) serviceIdentifier];
  if (sqlite3_bind_text(a2, 1, [v4 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_9;
  }

  v5 = [*(a1 + 32) clientIdentifierForCurrentPlatform];
  if (sqlite3_bind_text(a2, 2, [v5 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL) || sqlite3_bind_int(a2, 3, objc_msgSend(*(a1 + 32), "clientType")) || sqlite3_bind_int64(a2, 4, objc_msgSend(*(a1 + 40), "right")) || sqlite3_bind_int64(a2, 5, objc_msgSend(*(a1 + 40), "reason")) || sqlite3_bind_int64(a2, 6, *(a1 + 56)) || sqlite3_bind_text(a2, 7, "UNUSED", -1, 0xFFFFFFFFFFFFFFFFLL))
  {

LABEL_9:
LABEL_10:
    _db_error(1);
    goto LABEL_11;
  }

  v11 = sqlite3_bind_int(a2, 8, [*(a1 + 32) databaseFlags]);

  if (v11)
  {
    goto LABEL_10;
  }

LABEL_11:
  access_changed();
  v6 = *(a1 + 48);
  if (v6)
  {
    v7 = qword_1000C1300;
    v13 = [*(a1 + 32) clientIdentifierForCurrentPlatform];
    v8 = [*(a1 + 32) clientType];
    v9 = [*(a1 + 40) right];
    v10 = [*(a1 + 40) reason];
    LOBYTE(v12) = *(a1 + 64);
    [v7 publishAccessChangedEvent:2 forService:v6 client:v13 clientType:v8 authValue:v9 authReason:v10 andKillClient:v12 attributionChain:0];
  }
}

BOOL sub_10001DCC4(void *a1, char a2)
{
  v2 = [a1 authorizationRightsMask] & (1 << a2);
  if (!v2)
  {
    v7 = 0;
    [qword_1000C1300 makeError:&v7 withCode:9 infoText:0];
    v3 = v7;
    v4 = objc_opt_new();
    [qword_1000C1300 buildErrorString:v4 forError:v3 contextString:0];
    v5 = [qword_1000C1300 logHandle];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000642D4();
    }
  }

  return v2 != 0;
}

void sub_10001DD98(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = [NSString stringWithUTF8String:xpc_dictionary_get_string(v7, "function")];
  if (!_os_feature_enabled_impl() || ([qword_1000C1300 platform], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "protectedAppManager"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "name"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "authenticateForAccessToService:", v14), v14, v13, v12, (v15 & 1) != 0))
  {
    v77 = 0;
    v78 = 0;
    v76 = 0;
    v16 = [qword_1000C1300 recordFromMessage:v7 accessIdentity:&v78 indirectObjectIdentity:&v77 error:&v76];
    v17 = v78;
    v18 = v77;
    v19 = v76;
    xdict = v8;
    if (!v16)
    {
      v40 = v7;
      v41 = v9;
      v42 = v10;
      v43 = v11;
      v44 = v17;
      v45 = v18;
      v73 = objc_opt_new();
      [qword_1000C1300 buildErrorString:? forError:? contextString:?];
      v46 = [qword_1000C1300 logHandle];
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        sub_100064350();
      }

      v18 = v45;
      v17 = v44;
      v11 = v43;
      v10 = v42;
      v9 = v41;
      v7 = v40;
      v16 = 0;
      goto LABEL_33;
    }

    if (sub_10001DCC4(v9, [v16 authorizationValue]))
    {
      v72 = v18;
      v20 = qword_1000C1300;
      v21 = [v10 requestingProcess];
      LOBYTE(v20) = [v20 canProcess:v21 callFunction:v11 forService:v9 withAccessIdentity:v17];

      if ((v20 & 1) == 0)
      {
        v75 = 0;
        [qword_1000C1300 makeError:&v75 withCode:5 infoText:0];
        v50 = v75;
        v51 = objc_opt_new();
        v73 = v50;
        [qword_1000C1300 buildErrorString:v51 forError:v50 contextString:0];
        v52 = [qword_1000C1300 logHandle];
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          sub_100064350();
        }

        goto LABEL_32;
      }

      v22 = [v16 subjectIdentity];
      v23 = [v22 identityType];

      v18 = v72;
      if (!v23)
      {
        v73 = [v16 subjectIdentity];
        v24 = qword_1000C1300;
        v25 = [v10 requestingProcess];
        v66 = [v24 isProcessServiceCompositionManager:v25];

        v27 = qword_1000C1300;
        v26 = [v10 requestingProcess];
        LODWORD(v27) = [v27 updateAccessRecord:v16 replaceOnly:0 doCompositionWithChildService:v66 withRequestingProcess:v26 function:v11 accessIdentity:v17];

        if (v27)
        {
          v64 = v27;
          v28 = [v10 requestingProcess];
          v29 = v28;
          v65 = v28;
          if (!v28 || ([v28 codesignStatus] & 0x4000000) == 0 || (objc_msgSend(v29, "identifier"), v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "isEqualToString:", @"com.apple.tccctl"), v30, v29 = v65, (v31 & 1) == 0))
          {
            v32 = [v29 isSystemPreferencesApp];
            v33 = 5;
            if (v32)
            {
              v33 = 2;
            }

            v67 = v33;
            v34 = [qword_1000C1300 platform];
            v35 = [v73 accessIdentity];
            [v34 sendAnalyticsForAction:v67 service:v9 subjectIdentity:v35 indirectObjectIdentity:v72 authValue:objc_msgSend(v16 includeV1AuthValue:"authorizationValue") v1AuthValue:0 desiredAuth:0 domainReason:0 promptType:0 macBuddyStatus:{0, 0}];
          }

          [qword_1000C1300 scheduleAccessEntryExpiryCheckForService:v9];
          v68 = [v16 authorizationValue];
          v36 = [v16 authorizationVersion];
          v62 = qword_1000C1050;
          v37 = [v9 name];
          v38 = v62;
          v63 = v36;
          LOBYTE(v36) = [v38 peerSupportsService:v37 authVersion:v36];

          if (v36)
          {
            v39 = v68;
          }

          else
          {
            v39 = [v9 translateAuth:v68 versionUpgrade:0];
            v53 = qword_1000C1060;
            if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_DEFAULT))
            {
              v54 = v53;
              [v9 name];
              v55 = v69 = v39;
              *buf = 138412546;
              v80 = v55;
              v81 = 2048;
              v82 = v69;
              _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "downgrading %@ auth to %lu", buf, 0x16u);

              v39 = v69;
            }

            v63 = 1;
          }

          v56 = [TCCDSyncUpdateAccessAction accessUpdateStatusForAuthorizationRight:v39 forMain:qword_1000C1058 != 0];
          if (qword_1000C1050 && [qword_1000C1050 isSyncingEnabled])
          {
            v70 = qword_1000C1050;
            v61 = [v9 name];
            v57 = [v73 identifier];
            [v70 syncAccessUpdateForServiceIdentifier:v61 clientIdentifier:v57 clientType:objc_msgSend(v73 accessStatus:"identifierAuthority") authorizationVersion:v56 flags:v63 updateType:{0, 1}];
          }

          access_changed();
          v58 = qword_1000C1300;
          v27 = [v73 identifier];
          v71 = [v73 identifierAuthority];
          v59 = [v16 authorizationValue];
          LOBYTE(v60) = !xpc_dictionary_get_BOOL(v7, "noKill");
          [v58 publishAccessChangedEvent:2 forService:v9 client:v27 clientType:v71 authValue:v59 authReason:3 andKillClient:v60 attributionChain:v10];

          LOBYTE(v27) = v64;
        }

        xpc_dictionary_set_BOOL(xdict, "result", v27);
LABEL_32:
        v18 = v72;
LABEL_33:
      }
    }

    v8 = xdict;
    goto LABEL_35;
  }

  v47 = qword_1000C1060;
  if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_DEFAULT))
  {
    v48 = v47;
    v49 = [v9 name];
    *buf = 138412290;
    v80 = v49;
    _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "service: %@ is locked and authentication failed", buf, 0xCu);
  }

LABEL_35:
}

void sub_10001E4CC(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [[TCCDAttributionChain alloc] initWithMessage:v3];
  if (v5)
  {
    v10 = 0;
    v6 = [qword_1000C1300 serviceFromMessage:v3 error:&v10];
    v7 = v10;
    if (v6)
    {
      sub_10001DD98(v3, v4, v6, v5);
    }

    else
    {
      v8 = objc_opt_new();
      [qword_1000C1300 buildErrorString:v8 forError:v7 contextString:0];
      v9 = [qword_1000C1300 logHandle];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000643CC();
      }
    }
  }

  else
  {
    v7 = objc_opt_new();
    [qword_1000C1300 buildErrorString:v7 forError:0 contextString:0];
    v6 = [qword_1000C1300 logHandle];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000643CC();
    }
  }
}

void sub_10001E640(void *a1, unint64_t a2)
{
  v3 = a1;
  v4 = [qword_1000C1300 platform];
  v5 = [v3 serviceIdentifier];
  v6 = [v4 serviceByName:v5];

  if (v6)
  {
    v7 = qword_1000C12F8;
    if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
    {
      sub_100064448(v7, v6);
    }

    db_set_access_override(v6, a2 < 2, qword_1000C1300, 0);
  }

  else
  {
    v8 = qword_1000C12F8;
    if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
    {
      sub_100064528(v8);
    }
  }
}

id sub_10001E738()
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10001E7E8;
  v2[3] = &unk_1000A5188;
  v0 = objc_alloc_init(NSMutableArray);
  v3 = v0;
  db_eval("SELECT service, client, client_type, auth_value, strftime('%s','now') - last_modified AS age, auth_version FROM access", 0, v2);

  return v0;
}

void sub_10001E7E8(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_column_int64(a2, 3);
  v5 = sqlite3_column_int64(a2, 5);
  v6 = [NSString stringWithUTF8String:sqlite3_column_text(a2, 0)];
  if (v6)
  {
    v11 = v6;
    v7 = +[TCCDPlatform currentPlatform];
    v8 = [v7 serviceByName:v11];

    if (v8 && ([qword_1000C1300 isAccessEntryWithAge:sqlite3_column_int(a2 authorizationValue:4) expiredForService:{v4, v8}] & 1) == 0)
    {
      v9 = [NSString stringWithUTF8String:sqlite3_column_text(a2, 1)];
      v10 = [(TCCDSyncClientAccessAction *)[TCCDSyncUpdateAccessAction alloc] initWithServiceIdentifier:v11 mainClientIdentifier:v9 replicaClientIdentifier:0 clientType:sqlite3_column_int(a2, 2)];
      [(TCCDSyncUpdateAccessAction *)v10 setUpdateAccessActionStatus:[TCCDSyncUpdateAccessAction accessUpdateStatusForAuthorizationRight:v4 forMain:0]];
      [(TCCDSyncUpdateAccessAction *)v10 setAuthorizationVersion:v5];
      [*(a1 + 32) addObject:v10];
    }

    v6 = v11;
  }
}

void sub_10001E97C()
{
  v0 = [qword_1000C1300 fetchAllOverriddenServiceNames];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v1 = [v0 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v29;
    do
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v29 != v3)
        {
          objc_enumerationMutation(v0);
        }

        v5 = qword_1000C12F8;
        if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEFAULT))
        {
          v6 = *(*(&v28 + 1) + 8 * i);
          *buf = 136315394;
          v34 = "tccd_replica_sync_delete_all_synced_state";
          v35 = 2112;
          v36 = v6;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: deleting %@ from access_overrides.", buf, 0x16u);
        }
      }

      v2 = [v0 countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v2);
  }

  v16 = v0;
  db_eval("DELETE FROM access_overrides", 0, 0);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10001EDA8;
  v26[3] = &unk_1000A5188;
  v7 = objc_alloc_init(NSMutableSet);
  v27 = v7;
  db_eval("SELECT client, client_type FROM access", 0, v26);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      v11 = 0;
      do
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v22 + 1) + 8 * v11);
        v13 = qword_1000C12F8;
        if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v34 = "tccd_replica_sync_delete_all_synced_state";
          v35 = 2112;
          v36 = v12;
          _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s: deleting state for client: %@", buf, 0x16u);
        }

        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_10001EF48;
        v21[3] = &unk_1000A5188;
        v21[4] = v12;
        v14 = objc_retainBlock(v21);
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_10001EFC8;
        v20[3] = &unk_1000A5188;
        v20[4] = v12;
        db_eval("SELECT service FROM access WHERE client = ? AND client_type = ?", v14, v20);
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_10001F0A4;
        v18[3] = &unk_1000A5780;
        v19 = v14;
        v15 = v14;
        db_transaction(v18);

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v9);
  }

  if ([obj count])
  {
    access_changed();
  }
}

void sub_10001EDA8(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = sqlite3_column_text(a2, 0);
  v6 = sqlite3_column_int(a2, 1);
  if (v6 == 1)
  {
    if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
    {
      sub_1000645C0();
    }
  }

  else if (v6)
  {
    if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
    {
      sub_10006474C();
    }
  }

  else
  {
    v7 = [NSString stringWithUTF8String:v5];
    if (v7)
    {
      v8 = [LSApplicationProxy applicationProxyForIdentifier:v7];
      v9 = v8;
      if (v8)
      {
        if (([v8 isWatchKitApp] & 1) != 0 || (objc_msgSend(v9, "counterpartIdentifiers"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "count"), v10, v11))
        {
          if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_DEBUG))
          {
            sub_100064644();
          }

          [*(a1 + 32) addObject:v7];
        }
      }
    }

    else if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
    {
      sub_1000646C8();
    }
  }

  objc_autoreleasePoolPop(v4);
}

void sub_10001EF48(uint64_t a1, sqlite3_stmt *a2)
{
  if (sqlite3_bind_text(a2, 1, [*(a1 + 32) UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL) || sqlite3_bind_int(a2, 2, 0))
  {

    _db_error(1);
  }
}

void sub_10001EFC8(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [qword_1000C1300 platform];
  v5 = [NSString stringWithUTF8String:sqlite3_column_text(a2, 0)];
  v8 = [v4 serviceByName:v5];

  v6 = v8;
  if (v8)
  {
    LOBYTE(v7) = 1;
    [qword_1000C1300 publishAccessChangedEvent:3 forService:v8 client:*(a1 + 32) clientType:0 authValue:1 authReason:4 andKillClient:v7 attributionChain:0];
    v6 = v8;
  }
}

void sub_10001F0B8(const char **a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      goto LABEL_8;
    }
  }

  while (1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      v5 = "_with_parameters";
      if (!a1)
      {
        v5 = "";
      }

      *buf = 136446466;
      v10 = v5;
      v11 = 2082;
      v12 = a2;
      _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "FAIL: sandbox_init%{public}s() : %{public}s", buf, 0x16u);
    }

    abort_with_reason();
LABEL_8:
    v6 = a1 + 2;
    do
    {
      v7 = *(v6 - 1);
      if (v7)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v10 = v2;
          v11 = 2082;
          v12 = v7;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "sandbox parameter: %{public}s = %{public}s", buf, 0x16u);
        }
      }

      v8 = *v6;
      v6 += 2;
      v2 = v8;
    }

    while (v8);
  }
}

void sub_10001F204()
{
  v0 = dispatch_get_global_queue(0, 0);
  dispatch_async(v0, &stru_1000A57A0);
}

uint64_t sub_10001F258()
{
  v0 = qword_1000C1060;
  if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "shutting down tccd...", buf, 2u);
  }

  if (qword_1000C1050)
  {
    [qword_1000C1050 willShutdown];
  }

  db_close();
  v1 = qword_1000C1060;
  if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "...exiting when clean.", v3, 2u);
  }

  return xpc_transaction_exit_clean();
}

uint64_t start()
{
  v0 = os_log_create("com.apple.TCC", "access");
  v1 = qword_1000C1060;
  qword_1000C1060 = v0;

  v2 = objc_autoreleasePoolPush();
  v3 = os_transaction_create();
  db_setup_queue();
  v4 = objc_alloc_init(TCCDServer);
  v5 = qword_1000C1300;
  qword_1000C1300 = v4;

  [qword_1000C1300 setLogHandle:qword_1000C1060];
  [qword_1000C1300 setAllowsInternalSecurityPolicies:os_variant_allows_internal_security_policies()];
  v6 = +[TCCDPlatform currentPlatform];
  [qword_1000C1300 setPlatform:v6];

  v7 = [qword_1000C1300 platform];
  [v7 loadConfigurationDictionary];

  v8 = [qword_1000C1300 cacheDirectory];
  [v8 UTF8String];
  v9 = [qword_1000C1300 temporaryDirectory];
  [v9 UTF8String];
  *errorbuf = 0;
  if (sandbox_init("com.apple.tccd", 1uLL, errorbuf))
  {
    sub_10001F0B8(0, *errorbuf);
  }

  v10 = qword_1000C1060;
  if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    v12 = geteuid();
    *errorbuf = 136315394;
    *&errorbuf[4] = "com.apple.tccd";
    v37 = 1024;
    v38 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "starting as: %s; UID: %d", errorbuf, 0x12u);
  }

  v13 = +[TCCDMainSyncController sharedSyncController];
  v14 = qword_1000C1058;
  qword_1000C1058 = v13;

  objc_storeStrong(&qword_1000C1050, qword_1000C1058);
  v15 = qword_1000C1058;
  v16 = [qword_1000C1300 platform];
  [v16 setMainSyncController:v15];

  v17 = qword_1000C1058;
  v18 = [qword_1000C1300 platform];
  [v18 setSyncController:v17];

  v19 = +[TCCDEventPublisher sharedPublisher];
  [qword_1000C1300 setEventPublisher:v19];

  if (_os_feature_enabled_impl())
  {
    v20 = objc_alloc_init(TCCDProtectedServiceManager);
    v21 = [qword_1000C1300 platform];
    [v21 setProtectedAppManager:v20];
  }

  v22 = [TCCDAssumedIdentityMonitor alloc];
  v23 = [qword_1000C1300 stateDirectory];
  v24 = [(TCCDAssumedIdentityMonitor *)v22 initWithStateDirectoryPath:v23];
  [qword_1000C1300 setAssumedIdentityMonitor:v24];

  mach_service = xpc_connection_create_mach_service("com.apple.tccd", 0, 1uLL);
  v26 = qword_1000C1068;
  qword_1000C1068 = mach_service;

  if (!mach_service)
  {
    sub_1000647E0();
  }

  xpc_connection_set_event_handler(qword_1000C1068, &stru_1000A57E0);
  xpc_connection_resume(qword_1000C1068);
  xpc_activity_register("com.apple.tccd.gc", XPC_ACTIVITY_CHECK_IN, &stru_1000A5820);
  xpc_set_event_stream_handler("com.apple.distnoted.matching", &_dispatch_main_q, &stru_1000A5840);
  xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, &stru_1000A5860);

  signal(15, 1);
  v27 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, &_dispatch_main_q);
  v28 = qword_1000C1070;
  qword_1000C1070 = v27;

  if (qword_1000C1070)
  {
    dispatch_source_set_event_handler(qword_1000C1070, &stru_1000A5880);
    dispatch_resume(qword_1000C1070);
  }

  *errorbuf = 0;
  v29 = dispatch_get_global_queue(0, 0);
  notify_register_dispatch("com.apple.language.changed", errorbuf, v29, &stru_1000A58C0);

  [qword_1000C1300 purgeAllExpiredAccessEntries];
  v30 = dispatch_time(0, 60000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = nullsub_1;
  block[3] = &unk_1000A4F58;
  v35 = v3;
  v31 = v3;
  dispatch_after(v30, &_dispatch_main_q, block);

  objc_autoreleasePoolPop(v2);
  v32 = +[NSRunLoop mainRunLoop];
  [v32 run];

  return 0;
}

void sub_10001F80C(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = objc_autoreleasePoolPush();
  if (xpc_get_type(v2) != &_xpc_type_error)
  {
    v4 = v2;
    v5 = xpc_dictionary_get_string(v4, "function");
    v6 = xpc_dictionary_get_remote_connection(v4);
    reply = xpc_dictionary_create_reply(v4);
    v8 = os_transaction_create();
    if (!reply)
    {
      v26 = xpc_copy_description(v4);
      v27 = [qword_1000C1300 logHandle];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_1000649F4();
      }

      free(v26);
      xpc_connection_cancel(v6);
      goto LABEL_107;
    }

    v9 = &qword_1000C1000;
    if (!v5)
    {
      v28 = [qword_1000C1300 descriptionForMessage:v4];
      if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_ERROR))
      {
        sub_100064984();
      }

      goto LABEL_106;
    }

    v10 = xpc_dictionary_get_string(v4, "TCCD_MSG_ID");
    xpc_connection_get_audit_token();
    v11 = qword_1000C1060;
    if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_DEFAULT))
    {
      loga = v11;
      v72 = geteuid();
      memset(atoken, 0, 32);
      v12 = v4;
      v13 = v2;
      v14 = reply;
      v15 = v6;
      v16 = v5;
      v17 = v3;
      v18 = v8;
      v19 = audit_token_to_pid(atoken);
      memset(atoken, 0, 32);
      v20 = v10;
      v21 = audit_token_to_euid(atoken);
      memset(atoken, 0, 32);
      v22 = audit_token_to_auid(atoken);
      *atoken = 67110402;
      *&atoken[4] = v72;
      *&atoken[8] = 1024;
      *&atoken[10] = v19;
      v8 = v18;
      v3 = v17;
      v5 = v16;
      v6 = v15;
      reply = v14;
      v2 = v13;
      v4 = v12;
      *&atoken[14] = 1024;
      *&atoken[16] = v21;
      v10 = v20;
      v9 = &qword_1000C1000;
      *&atoken[20] = 1024;
      *&atoken[22] = v22;
      *&atoken[26] = 2082;
      *&atoken[28] = v5;
      v78 = 2082;
      v79 = v10;
      _os_log_impl(&_mh_execute_header, loga, OS_LOG_TYPE_DEFAULT, "REQUEST: tccd_uid=%d, sender_pid=%d, sender_uid=%d, sender_auid=%d, function=%{public}s, msgID=%{public}s", atoken, 0x2Eu);

      v11 = qword_1000C1060;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v23 = [qword_1000C1300 descriptionForMessage:v4];
      v24 = qword_1000C1060;
      if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_INFO))
      {
        *atoken = 136446466;
        *&atoken[4] = v10;
        *&atoken[12] = 2114;
        *&atoken[14] = v23;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "REQUEST_MSG: msgID=%{public}s, msg=%{public}@", atoken, 0x16u);
      }

      v9 = &qword_1000C1000;
    }

    if (strcmp(v5, "TCCAccessRequest"))
    {
      if (!strcmp(v5, "TCCAccessCopyInformation"))
      {
        handle_TCCAccessCopyInformation(v4, reply);
      }

      else if (!strcmp(v5, "TCCAccessCopyInformationForBundle"))
      {
        handle_TCCAccessCopyInformationForBundle(v4, reply);
      }

      else if (!strcmp(v5, "TCCAccessCopyInformationForServices"))
      {
        handle_TCCAccessCopyInformationForServices(v4, reply);
      }

      else if (!strcmp(v5, "TCCAccessCopyBundleIdentifiersForService"))
      {
        handle_TCCAccessCopyBundleIdentifiersForService(v4, reply);
      }

      else if (!strcmp(v5, "TCCAccessCopyBundleIdentifiersDisabledForService"))
      {
        handle_TCCAccessCopyBundleIdentifiersDisabledForService(v4, reply);
      }

      else if (!strcmp(v5, "TCCAccessSetInternal"))
      {
        sub_10001E4CC(v4, reply);
      }

      else if (!strcmp(v5, "TCCAccessSetOverride"))
      {
        sub_1000220F0(v4, reply);
      }

      else if (!strcmp(v5, "TCCAccessGetOverride"))
      {
        sub_10000AE24(v4, reply);
      }

      else if (!strcmp(v5, "TCCAccessGetOverrides"))
      {
        sub_1000223FC(reply);
      }

      else if (!strcmp(v5, "TCCAccessResetInternal"))
      {
        handle_TCCAccessResetInternal(v4, reply);
      }

      else if (!strcmp(v5, "TCCAccessResetAll"))
      {
        handle_TCCAccessResetAll(v4, reply);
      }

      else if (!strcmp(v5, "TCCAccessDeclarePolicy"))
      {
        sub_10002250C(v4, reply);
      }

      else if (!strcmp(v5, "TCCAccessSelectPolicyForExtensionWithIdentifier"))
      {
        sub_1000227A0(v4, reply);
      }

      else if (!strcmp(v5, "TCCAccessResetPoliciesExcept"))
      {
        sub_100022A70(v4, reply);
      }

      else if (!strcmp(v5, "TCCCopyIconResourcePathForService"))
      {
        handle_TCCCopyIconResourcePathForService(v4, reply);
      }

      else if (!strcmp(v5, "TCCExpirationCopyInformationForService"))
      {
        sub_100022CAC(v4, reply);
      }

      else
      {
        if (!strcmp(v5, "TCCExpirationReset"))
        {
          sub_100022F74(v4, reply);
        }

        else if (!strcmp(v5, "TCCServiceCopyDescriptions"))
        {
          sub_1000233AC(v4, reply);
        }

        else if (!strcmp(v5, "TCCTestInternal"))
        {
          sub_100023640(v4, reply);
        }

        else if (!strcmp(v5, "TCCGetIdentityForCredential"))
        {
          sub_100009228(v4, reply);
        }

        else if (!strcmp(v5, "TCCReportUse"))
        {
          sub_100024518(v4, reply);
        }

        else if (!strcmp(v5, "TCCAccessSetWithPrompt"))
        {
          sub_100024AD4(v4, reply);
        }

        else if (!strcmp(v5, "TCCExternalMetrics"))
        {
          handle_TCCExternalMetrics(v4, reply);
        }

        else if (!strcmp(v5, "TCCIntegrityFlagCheck"))
        {
          handle_TCCIntegrityFlagCheck(v4, reply);
        }

        else
        {
          if (strcmp(v5, "TCCIntegrityFlagReset"))
          {
            v9 = &qword_1000C1000;
            if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_ERROR))
            {
              sub_1000648A4();
            }

            goto LABEL_100;
          }

          handle_TCCIntegrityFlagReset(v4, reply);
        }

        v9 = &qword_1000C1000;
      }

LABEL_100:
      v57 = v9[12];
      if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
      {
        v58 = [qword_1000C1300 descriptionForMessage:reply];
        v59 = v9[12];
        if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
        {
          *atoken = 138543362;
          *&atoken[4] = v58;
          _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_INFO, "REPLY_MSG: msg=%{public}@", atoken, 0xCu);
        }

        v57 = qword_1000C1060;
      }

      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        v60 = v57;
        v61 = v10;
        v62 = v60;
        v63 = geteuid();
        *atoken = 67109634;
        *&atoken[4] = v63;
        *&atoken[8] = 2082;
        *&atoken[10] = v5;
        *&atoken[18] = 2082;
        *&atoken[20] = v61;
        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "REPLY: (%d) function=%{public}s, msgID=%{public}s", atoken, 0x1Cu);
      }

LABEL_106:
      xpc_connection_send_message(v6, reply);
LABEL_107:

      goto LABEL_108;
    }

    v70 = v10;
    v71 = v8;
    log = reply;
    v29 = v4;
    v30 = [TCCDRequestContext alloc];
    v76 = 0;
    v31 = [(TCCDRequestContext *)v30 initWithRequestMessage:v29 forServer:qword_1000C1300 error:&v76];

    v32 = v76;
    v33 = v32;
    v73 = v31;
    if (!v31)
    {
      if (!v32)
      {
        v33 = [TCCDServer newErrorWithCode:6 format:@"Failed to create Request Context."];
      }

      v47 = log;
      [TCCDRequestResult populateReplyMessageToDeny:log withError:v33];
      v10 = v70;
      goto LABEL_99;
    }

    v34 = sub_100007B54(v31, 0);
    if (!v34)
    {
      v48 = [TCCDServer newErrorWithCode:5 format:@"Failed to create a Result from do_TCCAccessRequest()."];

      [TCCDRequestResult populateReplyMessageToDeny:log withError:v48];
      v33 = v48;
LABEL_98:

      v10 = v70;
      v47 = log;
LABEL_99:

      v8 = v71;
      goto LABEL_100;
    }

    v35 = [(TCCDRequestContext *)v31 attributionChain];
    if (v35)
    {
      v36 = v35;
      v37 = [(TCCDRequestContext *)v31 attributionChain];
      if ([v37 accessingProcessSpecified])
      {
LABEL_96:

        goto LABEL_97;
      }

      v38 = [v34 authorizationValue];
      v39 = v37;
      v40 = v38;

      if (v40 == 2)
      {
        v37 = [(TCCDRequestContext *)v73 service];
        v41 = log;
        if (([v37 shouldIssueSandboxExtension] & 1) == 0)
        {

LABEL_70:
          v36 = v37;
          goto LABEL_96;
        }

        xdict = v41;
        [v37 name];
        v66 = v69 = v37;
        v42 = [@"com.apple.tcc." stringByAppendingString:v66];
        v43 = [v42 UTF8String];

        v67 = v43;
        if (!v43)
        {

          goto LABEL_95;
        }

        v44 = &qword_1000C1000;
        if ([v69 ios_issueBothSandboxExtension])
        {
          v45 = qword_1000C1060;
          if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_INFO))
          {
            *atoken = 0;
            _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "issuing both generic and file extension due to policy", atoken, 2u);
          }

          string = sandbox_extension_issue_generic();
          v46 = sandbox_extension_issue_file();
          v44 = &qword_1000C1000;
        }

        else
        {
          if ([v69 ios_useGenericSandboxExtension])
          {
            v46 = sandbox_extension_issue_generic();
          }

          else
          {
            v46 = sandbox_extension_issue_file();
          }

          string = 0;
        }

        if (v46)
        {
          v49 = v46;
          v50 = xpc_string_create(v46);
          if (v50)
          {
            xpc_dictionary_set_value(xdict, "extension", v50);
          }

          free(v49);

          v51 = string;
          v52 = v50 != 0;
        }

        else
        {
          if (os_log_type_enabled(v44[12], OS_LOG_TYPE_ERROR))
          {
            sub_100064914();
          }

          v52 = 0;
          v51 = string;
        }

        if (!v51)
        {
          v56 = qword_1000C1060;
          if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_ERROR))
          {
            *atoken = 136446210;
            *&atoken[4] = v67;
            _os_log_error_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "Failed to issue generic sandbox extension for class: %{public}s", atoken, 0xCu);
          }

          if (v52)
          {
            goto LABEL_97;
          }

          goto LABEL_95;
        }

        v65 = v52;
        v53 = v51;
        v54 = xpc_string_create(v51);
        if (v54)
        {
          v55 = v54;
          xpc_dictionary_set_value(xdict, "generic_extension", v54);
          free(v53);

          v37 = v69;
          goto LABEL_70;
        }

        free(v53);

        if (!v65)
        {
LABEL_95:
          v36 = [(TCCDRequestContext *)v73 service];
          v37 = [(TCCDRequestContext *)v73 identityDescription];
          [v34 denyAuthorizationWithErrorCode:6 format:{@"Failed to issue Sandbox Extension for %@ from %@", v36, v37}];
          goto LABEL_96;
        }
      }
    }

LABEL_97:
    [v34 populateReplyMessage:log];
    v9 = &qword_1000C1000;
    goto LABEL_98;
  }

  if (v2 != &_xpc_error_connection_invalid)
  {
    v25 = qword_1000C1060;
    if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_ERROR))
    {
      sub_100064A64(v25, v2);
    }
  }

LABEL_108:
  objc_autoreleasePoolPop(v3);
}

void sub_1000204C0(id a1, OS_xpc_object *a2)
{
  if (xpc_activity_get_state(a2) == 2)
  {

    sub_1000204FC();
  }
}

void sub_1000204FC()
{
  v0 = objc_opt_new();
  v1 = objc_opt_new();
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_1000269C8;
  v54[3] = &unk_1000A5318;
  v2 = v0;
  v55 = v2;
  v3 = v1;
  v56 = v3;
  db_eval("SELECT DISTINCT client, client_type FROM access", 0, v54);
  if (![v2 count])
  {
    goto LABEL_39;
  }

  v40 = 0;
  v4 = 0;
  v5 = &qword_1000C1000;
  v37 = v3;
  v38 = v2;
  do
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [v2 objectAtIndexedSubscript:v4];
    v8 = [v3 objectAtIndexedSubscript:v4];
    v9 = [v8 intValue];

    v10 = [v7 UTF8String];
    if (v9 == 1)
    {
      if (access(v10, 0) == -1 && *__error() == 2)
      {
        v17 = 1;
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    if (v9)
    {
      goto LABEL_12;
    }

    v11 = [NSString stringWithUTF8String:v10];
    if (!v11)
    {
      goto LABEL_12;
    }

    v12 = v11;
    v41 = v7;
    v43 = v6;
    v13 = [LSApplicationProxy applicationProxyForIdentifier:v11];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 appState];
      v16 = [v15 isInstalled];

      if (v16)
      {

        v5 = &qword_1000C1000;
        v7 = v41;
        v6 = v43;
LABEL_12:
        v17 = 0;
        goto LABEL_13;
      }
    }

    if (qword_1000C1058 && [qword_1000C1058 isSyncingEnabled] && (objc_msgSend(qword_1000C1058, "replicaClientIdentifierForMainClientIdentifier:", v12), v32 = objc_claimAutoreleasedReturnValue(), v32, v32))
    {
      v17 = 0;
    }

    else
    {
      v33 = [qword_1000C1300 platform];
      v34 = [v33 isNonAppBundleIdentifierValid:v12];

      v17 = v34 ^ 1;
    }

    v5 = &qword_1000C1000;
    v7 = v41;
    v6 = v43;
LABEL_13:
    v18 = v5[12];
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      if (!v17)
      {
        goto LABEL_25;
      }

LABEL_15:
      v42 = v7;
      v44 = v6;
      v51[0] = _NSConcreteStackBlock;
      v51[1] = 3221225472;
      v51[2] = sub_100026A9C;
      v51[3] = &unk_1000A5A90;
      v19 = v7;
      v52 = v19;
      v53 = v9;
      v20 = objc_retainBlock(v51);
      v21 = objc_opt_new();
      v49[0] = _NSConcreteStackBlock;
      v49[1] = 3221225472;
      v49[2] = sub_100026B20;
      v49[3] = &unk_1000A5188;
      v22 = v21;
      v50 = v22;
      db_eval("SELECT DISTINCT service FROM access WHERE client = ? AND client_type = ?", v20, v49);
      v39 = v20;
      db_eval("DELETE FROM access WHERE client = ? AND client_type = ?", v20, 0);
      v23 = v5[12];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v59 = v19;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Pruned entries for %{public}@", buf, 0xCu);
      }

      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v24 = v22;
      v25 = [v24 countByEnumeratingWithState:&v45 objects:v57 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v46;
        do
        {
          for (i = 0; i != v26; i = i + 1)
          {
            if (*v46 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v45 + 1) + 8 * i);
            v30 = [qword_1000C1300 platform];
            v31 = [v30 serviceByName:v29];

            LOBYTE(v36) = 0;
            [qword_1000C1300 publishAccessChangedEvent:3 forService:v31 client:v19 clientType:v9 authValue:1 authReason:4 andKillClient:v36 attributionChain:0];
          }

          v26 = [v24 countByEnumeratingWithState:&v45 objects:v57 count:16];
        }

        while (v26);
      }

      ++v40;

      v3 = v37;
      v2 = v38;
      v5 = &qword_1000C1000;
      v7 = v42;
      v6 = v44;
      goto LABEL_25;
    }

    *buf = 138543618;
    v35 = "Valid";
    if (v17)
    {
      v35 = "Invalid";
    }

    v59 = v7;
    v60 = 2082;
    v61 = v35;
    _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "prune_database() %{public}@ : %{public}s", buf, 0x16u);
    if (v17)
    {
      goto LABEL_15;
    }

LABEL_25:

    objc_autoreleasePoolPop(v6);
    ++v4;
  }

  while (v4 < [v2 count]);
  if (v40)
  {
    access_changed();
  }

LABEL_39:
}

void sub_100020AA0(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  string = xpc_dictionary_get_string(v2, _xpc_event_key_name);
  if (string && !strcmp(string, "Application Uninstalled"))
  {
    v4 = xpc_dictionary_get_value(v2, "UserInfo");
    if (xpc_get_type(v4) == &_xpc_type_dictionary)
    {
      v5 = _CFXPCCreateCFObjectFromXPCObject();
    }

    else
    {
      v5 = 0;
    }

    v6 = &qword_1000C1000;
    v7 = qword_1000C1060;
    if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v61 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Handling Application Uninstalled event for %{public}@.", buf, 0xCu);
    }

    if (v5)
    {
      v8 = [v5 objectForKeyedSubscript:@"bundleIDs"];
      v9 = v8;
      if (v8)
      {
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v10 = [v8 countByEnumeratingWithState:&v51 objects:buf count:16];
        if (v10)
        {
          v11 = v10;
          v37 = v4;
          v38 = v2;
          v12 = 0;
          v13 = *v52;
          v40 = v9;
          v39 = *v52;
          do
          {
            v14 = 0;
            v41 = v11;
            do
            {
              if (*v52 != v13)
              {
                objc_enumerationMutation(v9);
              }

              v15 = *(*(&v51 + 1) + 8 * v14);
              if (qword_1000C1058 && [qword_1000C1058 isSyncingEnabled] && (objc_msgSend(qword_1000C1058, "replicaClientIdentifierForMainClientIdentifier:", v15), (v16 = objc_claimAutoreleasedReturnValue()) != 0))
              {
                v17 = v16;
                v18 = v6[12];
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  *v56 = 138543618;
                  v57 = v15;
                  v58 = 2114;
                  v59 = v17;
                  _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Postponing removal of %{public}@ because it has an associated WatchKit app: %{public}@", v56, 0x16u);
                }
              }

              else
              {
                v19 = +[LSApplicationWorkspace defaultWorkspace];
                v20 = [v19 applicationIsInstalled:v15];

                if (v20)
                {
                  v21 = v6[12];
                  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                  {
                    *v56 = 138543362;
                    v57 = v15;
                    _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "LS says %{public}@ was uninstalled but now we have found it is still installed.", v56, 0xCu);
                  }
                }

                else
                {
                  v42 = v12;
                  v49[0] = _NSConcreteStackBlock;
                  v49[1] = 3221225472;
                  v49[2] = sub_100026BA4;
                  v49[3] = &unk_1000A5A90;
                  v49[4] = v15;
                  v50 = 0;
                  v22 = objc_retainBlock(v49);
                  v23 = objc_opt_new();
                  v47[0] = _NSConcreteStackBlock;
                  v47[1] = 3221225472;
                  v47[2] = sub_100026C28;
                  v47[3] = &unk_1000A5188;
                  v24 = v23;
                  v48 = v24;
                  db_eval("SELECT DISTINCT service FROM access WHERE client = ? AND client_type = ?", v22, v47);
                  db_eval("DELETE FROM access WHERE client = ? AND client_type = ?", v22, 0);
                  db_eval("VACUUM access", 0, 0);
                  v25 = v6[12];
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                  {
                    *v56 = 138543362;
                    v57 = v15;
                    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Deleted entries for %{public}@", v56, 0xCu);
                  }

                  v45 = 0u;
                  v46 = 0u;
                  v43 = 0u;
                  v44 = 0u;
                  v26 = v24;
                  v27 = [v26 countByEnumeratingWithState:&v43 objects:v55 count:16];
                  if (v27)
                  {
                    v28 = v27;
                    v29 = *v44;
                    do
                    {
                      for (i = 0; i != v28; i = i + 1)
                      {
                        if (*v44 != v29)
                        {
                          objc_enumerationMutation(v26);
                        }

                        v31 = *(*(&v43 + 1) + 8 * i);
                        v32 = [qword_1000C1300 platform];
                        v33 = [v32 serviceByName:v31];

                        LOBYTE(v36) = 0;
                        [qword_1000C1300 publishAccessChangedEvent:3 forService:v33 client:v15 clientType:0 authValue:1 authReason:4 andKillClient:v36 attributionChain:0];
                      }

                      v28 = [v26 countByEnumeratingWithState:&v43 objects:v55 count:16];
                    }

                    while (v28);
                  }

                  v34 = [qword_1000C1300 platform];
                  v35 = [v34 removalOfAppBundleIdentifierRequiresPruning:v15];

                  if (v35)
                  {
                    sub_1000204FC();
                  }

                  v12 = v42 + 1;

                  v6 = &qword_1000C1000;
                  v9 = v40;
                  v11 = v41;
                  v13 = v39;
                }
              }

              v14 = v14 + 1;
            }

            while (v14 != v11);
            v11 = [v9 countByEnumeratingWithState:&v51 objects:buf count:16];
          }

          while (v11);
          v4 = v37;
          v2 = v38;
          if (v12)
          {
            access_changed();
          }
        }
      }
    }

    else
    {
      sub_1000204FC();
    }
  }
}

void sub_100021038(id a1, OS_xpc_object *a2)
{
  string = xpc_dictionary_get_string(a2, _xpc_event_key_name);
  if (string && !strcmp(string, "com.apple.sockpuppet.applications.updated"))
  {
    v3 = qword_1000C1060;
    if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Notification event: WatchKit applications updated.", v4, 2u);
    }
  }
}

void sub_1000210C4(id a1)
{
  v1 = qword_1000C1060;
  if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Handling SIGTERM...", v2, 2u);
  }

  sub_10001F258();
}

void sub_10002112C(id a1, int a2)
{
  v2 = qword_1000C1060;
  if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Handling language change...", v3, 2u);
  }

  sub_10001F258();
}

void sub_1000211AC(uint64_t a1, sqlite3_stmt *a2)
{
  [*(a1 + 32) setAuthorizationValue:{sqlite3_column_int64(a2, 0)}];
  [*(a1 + 32) setAuthorizationReason:{sqlite3_column_int64(a2, 1)}];
  [*(a1 + 32) setAuthorizationVersion:{sqlite3_column_int64(a2, 5)}];
  [*(a1 + 32) setDatabaseFlags:{sqlite3_column_int(a2, 4)}];
  v4 = qword_1000C1300;
  v5 = sqlite3_column_int(a2, 3);
  v6 = [*(a1 + 32) authorizationValue];
  v7 = [*(a1 + 40) service];
  LOBYTE(v4) = [v4 isAccessEntryWithAge:v5 authorizationValue:v6 expiredForService:v7];

  if ((v4 & 1) == 0)
  {
    v8 = sqlite3_column_int(a2, 9);
    v9 = *(a1 + 32);

    [v9 setLastReminderTime:v8];
  }
}

void sub_1000212CC(uint64_t a1, sqlite3_stmt *a2)
{
  if (!sqlite3_bind_text(a2, 1, [*(a1 + 32) UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL))
  {
    v4 = [*(a1 + 40) subjectIdentity];
    v5 = [v4 identifier];
    if (sqlite3_bind_text(a2, 2, [v5 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL))
    {
    }

    else
    {
      v6 = [*(a1 + 40) subjectIdentity];
      v7 = sqlite3_bind_int(a2, 3, [v6 client_type]);

      if (!v7)
      {
        return;
      }
    }
  }

  _db_error(1);
}

uint64_t sub_1000213CC(void *a1, void *a2, void *a3, os_log_t *a4, BOOL *a5, uint64_t a6)
{
  v11 = a1;
  v12 = a2;
  v111 = a3;
  *a5 = 0;
  if (a6)
  {
    v13 = a6;
  }

  else
  {
    v13 = 2;
  }

  v14 = [v11 usageDescriptionKeyName];
  v15 = [v11 usageDescriptionKeyForAuthorization:v13];
  if (v15)
  {
    v16 = qword_1000C1060;
    if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *v114 = v15;
      *&v114[8] = 2048;
      *v115 = v13;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "found auth specifc usage key: %@ for desired auth: %llu", buf, 0x16u);
    }
  }

  v17 = [v12 bundle];
  if (v17)
  {

    if (v14 | v15)
    {
      *a4 = 0;
      if (v15)
      {
        v19 = [v12 bundle];
        v20 = [v19 localizedUsageDescriptionForKey:v15];

        if (v20)
        {
          v21 = v20;
          *a4 = v20;
          v22 = qword_1000C1060;
          if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_DEFAULT))
          {
            v23 = *a4;
            *buf = 138412290;
            *v114 = v23;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "found auth specifc usage string: %@", buf, 0xCu);
          }
        }
      }

      else
      {
        v20 = 0;
      }

      v24 = [v12 bundle];
      v25 = [v24 localizedUsageDescriptionForKey:v14];

      v26 = qword_1000C1060;
      if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v114 = v25;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "found general usage key: %@", buf, 0xCu);
      }

      if (v15 || !v25)
      {
        if (!*a4)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v27 = qword_1000C1060;
        if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v114 = v25;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "using general usage key: %@", buf, 0xCu);
        }

        v28 = v25;
        *a4 = v25;
      }

      v29 = qword_1000C1060;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        if (v20)
        {
          v62 = v15;
        }

        else
        {
          v62 = v14;
        }

        v106 = [v62 UTF8String];
        v103 = [v12 responsiblePID];
        v108 = [v12 bundle];
        v110 = [v108 bundleURL];
        v63 = v110;
        v64 = [v110 fileSystemRepresentation];
        v65 = *a4;
        *buf = 136315906;
        *v114 = v106;
        *&v114[8] = 1024;
        *v115 = v103;
        *&v115[4] = 2080;
        *&v115[6] = v64;
        *&v115[14] = 2112;
        *&v115[16] = v65;
        _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "Usage key:%s, client[%d](%s), usage string: '%@'", buf, 0x26u);
      }

      if (*a4)
      {
        goto LABEL_25;
      }

LABEL_28:
      v112 = 0;
      v18 = [v12 getSDKVersion:&v112 platformType:&v112 + 4];
      if (!v18 && v25)
      {
        v31 = v25;
        *a4 = v25;
        v32 = qword_1000C1060;
        if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "falling back to general usage description because there was an error parsing client sdk version", buf, 2u);
        }

LABEL_25:
        v18 = 1;
LABEL_26:

        goto LABEL_27;
      }

      v102 = v25;
      v107 = v20;
      v33 = [v11 iOS_minimumSDKVersionNumber];
      v34 = [v11 iOS_minimumSDKVersionNumberAuthSpecific];
      v35 = [NSNumber numberWithUnsignedLongLong:v13];
      v109 = [v34 objectForKeyedSubscript:v35];

      v105 = v33;
      if (v33)
      {
        v99 = [v33 unsignedIntValue];
      }

      else
      {
        v99 = 655360;
      }

      v36 = [v11 name];
      v37 = [v36 isEqualToString:@"kTCCServiceBluetoothAlways"];

      v25 = v102;
      if (v37)
      {
        active_platform = dyld_get_active_platform();
        v38 = [v12 bundle];
        v39 = [v38 isASKCapable];

        if (v39)
        {
          if (active_platform == 11 || active_platform == 1)
          {
            v40 = qword_1000C1060;
            if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "binCompat ASK app found, using default usage description", buf, 2u);
            }

            v41 = [NSNumber numberWithUnsignedLong:-1];
            v99 = [v41 unsignedIntValue];
          }
        }
      }

      v42 = qword_1000C1060;
      if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_INFO))
      {
        v43 = v14;
        v44 = v42;
        log = [v14 UTF8String];
        v90 = [v12 responsiblePID];
        v96 = [v12 bundle];
        v45 = [v96 bundleURL];
        v46 = [v45 fileSystemRepresentation];
        *buf = 136315650;
        *v114 = log;
        *&v114[8] = 1024;
        *v115 = v90;
        *&v115[4] = 2080;
        *&v115[6] = v46;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "No usage string found (key:%s) for client[%d] in bundle:%s", buf, 0x1Cu);
      }

      v20 = v107;
      if (v18)
      {
        v47 = qword_1000C1060;
        if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_DEBUG))
        {
          v80 = v14;
          v81 = v47;
          loga = [v14 UTF8String];
          v91 = [v12 responsiblePID];
          v98 = [v12 bundle];
          v82 = [v98 bundleURL];
          v83 = [v82 fileSystemRepresentation];
          *buf = 136316162;
          *v114 = loga;
          *&v114[8] = 1024;
          *v115 = v99;
          *&v115[4] = 1024;
          *&v115[6] = v91;
          *&v115[10] = 2080;
          *&v115[12] = v83;
          *&v115[20] = 1024;
          *&v115[22] = v112;
          _os_log_debug_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEBUG, "Usage key:%s service sdk version: 0x%x;  client[%d](%s) sdk version: 0x%x", buf, 0x28u);

          v20 = v107;
        }

        v48 = qword_1000C1060;
        if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_DEFAULT))
        {
          v49 = v48;
          v50 = [v109 unsignedIntValue];
          *buf = 138412802;
          *v114 = v102;
          *&v114[8] = 1024;
          *v115 = v50;
          *&v115[4] = 1024;
          *&v115[6] = v112;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "usage description: %@, minSDKVersionAuthSpecific: 0x%x, client_sdk_verison: 0x%x", buf, 0x18u);

          v20 = v107;
        }

        if (v102)
        {
          if (![v109 unsignedIntValue] || (v51 = v112, v52 = v51 >= objc_msgSend(v109, "unsignedIntValue"), v20 = v107, !v52))
          {
            v53 = qword_1000C1060;
            if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "No auth specific usage string, falling back to general usage string", buf, 2u);
            }

            v54 = qword_1000C1060;
            if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_DEFAULT))
            {
              v55 = v54;
              v56 = [v109 unsignedIntValue];
              *buf = 67109376;
              *v114 = v56;
              *&v114[4] = 1024;
              *&v114[6] = v112;
              _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "minSDKVersionAuthSpecific: 0x%x, client_sdk_version: 0x%x", buf, 0xEu);

              v20 = v107;
            }

            v57 = v102;
            *a4 = v102;

            goto LABEL_25;
          }
        }

        v52 = v112 >= v99;
        *a5 = v112 >= v99;
        if (!v52)
        {
          v58 = [v11 secondaryUsageDescriptionKeyName];

          if (v58)
          {
            v59 = [v12 bundle];
            v60 = [v59 localizedUsageDescriptionForKey:v58];

            if (v60)
            {
              v61 = v60;
              *a4 = v60;
            }

            else
            {
              *a5 = v112 >> 17 > 4;
            }

            v20 = v107;
            v79 = qword_1000C1060;
            if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_DEBUG))
            {
              v84 = v58;
              v104 = v79;
              v85 = [v58 UTF8String];
              v86 = [v12 responsiblePID];
              v101 = [v12 bundle];
              v87 = [v101 bundleURL];
              v88 = [v87 fileSystemRepresentation];
              v89 = *a4;
              *buf = 136316418;
              *v114 = v85;
              v20 = v107;
              *&v114[8] = 1024;
              *v115 = 655360;
              *&v115[4] = 1024;
              *&v115[6] = v86;
              *&v115[10] = 2080;
              *&v115[12] = v88;
              *&v115[20] = 1024;
              *&v115[22] = v112;
              *&v115[26] = 2112;
              *&v115[28] = v89;
              _os_log_debug_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEBUG, "Secondary Usage key:%s service sdk version: 0x%x;  client[%d](%s) sdk version: 0x%x: usage string: '%@'", buf, 0x32u);
            }

            v25 = v60;
            v14 = v58;
          }

          else if ([v11 shouldUseADefaultDescriptionString])
          {
            v66 = [v11 name];
            v67 = [NSString stringWithFormat:@"REQUEST_DEFAULT_PURPOSE_STRING_SERVICE_%@", v66];

            v68 = &stru_1000A7240;
            v100 = v67;
            v69 = [v111 localizedStringForKey:v67 value:&stru_1000A7240 table:0];
            if (&_MGGetStringAnswer)
            {
              v70 = MGGetStringAnswer();
              v71 = @"device";
              if (v70)
              {
                v71 = v70;
              }

              v68 = v71;
            }

            v72 = [v12 displayName];
            v73 = v69;
            *a4 = [NSString stringWithValidatedFormat:v69 validFormatSpecifiers:@"%@ %@" error:0, v72, v68];

            v74 = qword_1000C1060;
            if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_INFO))
            {
              logb = v74;
              v75 = [v12 responsiblePID];
              v97 = [v12 bundle];
              v76 = [v97 bundleURL];
              v77 = [v76 fileSystemRepresentation];
              v78 = *a4;
              *buf = 138544386;
              *v114 = v100;
              *&v114[8] = 1024;
              *v115 = v75;
              v73 = v69;
              *&v115[4] = 2082;
              *&v115[6] = v77;
              *&v115[14] = 1024;
              *&v115[16] = v112;
              *&v115[20] = 2114;
              *&v115[22] = v78;
              _os_log_impl(&_mh_execute_header, logb, OS_LOG_TYPE_INFO, "Per-App Default Purpose String key: %{public}@, client[%d](%{public}s) sdk version: 0x%x: usage string: '%{public}@'", buf, 0x2Cu);
            }

            v14 = 0;
            v20 = v107;
          }

          else
          {
            v14 = 0;
          }
        }
      }

      goto LABEL_26;
    }
  }

  *a4 = 0;
  v18 = 1;
LABEL_27:

  return v18;
}

void sub_100021FF4(id a1)
{
  v1 = off_1000C0DE0();
  if (v1)
  {
    v2 = [(objc_class *)v1 sharedManager];
    if (v2)
    {
      v4 = v2;
      v3 = [v2 currentUser];
      dword_1000C1078 = [v3 userType] == 1;
    }
  }
}

Class sub_100022080()
{
  if (!qword_1000C1090)
  {
    qword_1000C1090 = dlopen("/System/Library/PrivateFrameworks/UserManagement.framework/UserManagement", 2);
  }

  result = objc_getClass("UMUserManager");
  qword_1000C1088 = result;
  off_1000C0DE0 = sub_1000220E4;
  return result;
}

void sub_1000220F0(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [[TCCDAttributionChain alloc] initWithMessage:v3];
  v6 = [(TCCDAttributionChain *)v5 requestingProcess];
  v7 = [NSString stringWithUTF8String:xpc_dictionary_get_string(v3, "function")];
  v23 = 0;
  v8 = [qword_1000C1300 serviceFromMessage:v3 error:&v23];
  v9 = v23;
  if (v8)
  {
    if ([qword_1000C1300 canProcess:v6 callFunction:v7 forService:v8 withAccessIdentity:0])
    {
      v10 = xpc_dictionary_get_BOOL(v3, "override");
      v19 = 0;
      v20 = &v19;
      v21 = 0x2020000000;
      v22 = 0;
      if (v10 && qword_1000C1058 && [qword_1000C1058 isSyncingEnabled])
      {
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_1000259A0;
        v17[3] = &unk_1000A5188;
        v18 = v8;
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_100025A20;
        v16[3] = &unk_1000A52A8;
        v16[4] = &v19;
        db_eval("SELECT NULL FROM access_overrides WHERE service = ?", v17, v16);
      }

      if (!db_set_access_override(v8, v10, qword_1000C1300, v5))
      {
        xpc_dictionary_set_BOOL(v4, "result", 1);
        if (qword_1000C1058)
        {
          if ([qword_1000C1058 isSyncingEnabled])
          {
            if (v10)
            {
              v13 = *(v20 + 24);
            }

            else
            {
              v13 = 2;
            }

            v14 = qword_1000C1058;
            v15 = [v8 name];
            [v14 syncOverrideUpdateForServiceIdentifier:v15 updateType:v13];
          }
        }
      }

      _Block_object_dispose(&v19, 8);
    }
  }

  else
  {
    v11 = objc_opt_new();
    [qword_1000C1300 buildErrorString:v11 forError:v9 contextString:0];
    v12 = [qword_1000C1300 logHandle];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100064D7C();
    }
  }
}

void sub_1000223DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000223FC(void *a1)
{
  v1 = a1;
  +[NSMutableArray array];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100025A48;
  v2 = v4[3] = &unk_1000A5188;
  v5 = v2;
  if (!db_eval("SELECT service FROM access_overrides", 0, v4))
  {
    v3 = _CFXPCCreateXPCObjectFromCFObject();
    if (v3)
    {
      xpc_dictionary_set_value(v1, "overrides", v3);
    }

    else if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_ERROR))
    {
      sub_100064E74();
    }
  }
}

void sub_10002250C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  uuid = xpc_dictionary_get_uuid(v3, "policy");
  string = xpc_dictionary_get_string(v3, "display");
  if (uuid)
  {
    v7 = string;
    if (string)
    {
      v18 = 0u;
      v19 = 0u;
      xpc_dictionary_get_audit_token();
      pidp = 0;
      memset(atoken, 0, 32);
      audit_token_to_au32(atoken, 0, 0, 0, 0, 0, &pidp, 0, 0);
      *atoken = v18;
      *&atoken[16] = v19;
      if (sub_100025AB8(atoken))
      {
        v8 = [[TCCDAttributionChain alloc] initWithMessage:v3];
        v9 = [[TCCDAccessIdentity alloc] initWithAttributionChain:v8 preferMostSpecificIdentifier:1];
        v10 = qword_1000C1060;
        if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_INFO))
        {
          v11 = v10;
          v12 = [(TCCDAccessIdentity *)v9 identifier];
          *atoken = 138544130;
          *&atoken[4] = v12;
          *&atoken[12] = 1040;
          *&atoken[14] = 16;
          *&atoken[18] = 2096;
          *&atoken[20] = uuid;
          *&atoken[28] = 2082;
          *&atoken[30] = v7;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "AccessDeclarePolicy() for %{public}@ policy: %{uuid_t}.16P; display: '%{public}s'", atoken, 0x26u);
        }

        v13 = [(TCCDAccessIdentity *)v9 bundle];
        v14 = [v13 bundleIdentifier];
        v15 = [v14 UTF8String];

        if (v15)
        {
          v16[0] = _NSConcreteStackBlock;
          v16[1] = 3221225472;
          v16[2] = sub_100025B54;
          v16[3] = &unk_1000A5900;
          v16[4] = uuid;
          v16[5] = v15;
          v16[6] = v7;
          if (!db_eval("INSERT OR REPLACE INTO policies (bundle_id, uuid, display) VALUES (?, ?, ?)", v16, 0))
          {
            xpc_dictionary_set_BOOL(v4, "result", 1);
          }
        }
      }
    }
  }
}

void sub_1000227A0(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  uuid = xpc_dictionary_get_uuid(v3, "policy");
  string = xpc_dictionary_get_string(v3, "bundle_id");
  if (uuid)
  {
    v7 = string;
    if (string)
    {
      v19 = 0u;
      v20 = 0u;
      xpc_dictionary_get_audit_token();
      memset(buf, 0, 32);
      if (sub_100025AB8(buf))
      {
        v8 = [[TCCDAttributionChain alloc] initWithMessage:v3];
        v9 = [[TCCDAccessIdentity alloc] initWithAttributionChain:v8 preferMostSpecificIdentifier:1];
        v10 = qword_1000C1060;
        if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_INFO))
        {
          v11 = v10;
          v12 = [(TCCDAccessIdentity *)v9 identifier];
          *buf = 138544130;
          *&buf[4] = v12;
          *&buf[12] = 1040;
          *&buf[14] = 16;
          *&buf[18] = 2096;
          *&buf[20] = uuid;
          *&buf[28] = 2082;
          *&buf[30] = v7;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "SelectPolicyForExtensionWithIdentifier() for %{public}@ policy: %{uuid_t}.16P; bundle_id: '%{public}s", buf, 0x26u);
        }

        v13 = [(TCCDAccessIdentity *)v9 bundle];
        v14 = [v13 bundleIdentifier];
        v15 = v14;
        v16 = [v14 UTF8String];

        if (v16)
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2020000000;
          buf[24] = 0;
          v18[0] = 0;
          v18[1] = v18;
          v18[2] = 0x2020000000;
          v18[3] = 0;
          v17[0] = _NSConcreteStackBlock;
          v17[1] = 3221225472;
          v17[2] = sub_100025C24;
          v17[3] = &unk_1000A5978;
          v17[6] = uuid;
          v17[7] = v16;
          v17[4] = v18;
          v17[5] = buf;
          v17[8] = v7;
          if (!db_transaction(v17))
          {
            xpc_dictionary_set_BOOL(v4, "result", *(*&buf[8] + 24));
          }

          _Block_object_dispose(v18, 8);
          _Block_object_dispose(buf, 8);
        }
      }
    }
  }
}

void sub_100022A44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_100022A70(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = xpc_dictionary_get_value(v3, "exceptions");
  v6 = v5;
  if (v5)
  {
    if (xpc_get_type(v5) == &_xpc_type_array)
    {
      v19 = 0u;
      v20 = 0u;
      xpc_dictionary_get_audit_token();
      *buf = 0u;
      v22 = 0u;
      if (sub_100025AB8(buf))
      {
        v7 = [[TCCDAttributionChain alloc] initWithMessage:v3];
        v8 = [[TCCDAccessIdentity alloc] initWithAttributionChain:v7 preferMostSpecificIdentifier:1];
        v9 = qword_1000C1060;
        if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_INFO))
        {
          v10 = v9;
          v11 = [(TCCDAccessIdentity *)v8 identifier];
          *buf = 138543362;
          *&buf[4] = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "ResetPoliciesExcept() for %{public}@", buf, 0xCu);
        }

        v12 = [(TCCDAccessIdentity *)v8 bundle];
        v13 = [v12 bundleIdentifier];
        v14 = [v13 UTF8String];

        if (v14)
        {
          v16[0] = _NSConcreteStackBlock;
          v16[1] = 3221225472;
          v16[2] = sub_100025F00;
          v16[3] = &unk_1000A5A00;
          v17 = v6;
          v18 = v14;
          v15 = db_transaction(v16);
          access_changed();
          if (!v15)
          {
            xpc_dictionary_set_BOOL(v4, "result", 1);
          }
        }
      }
    }
  }
}

void sub_100022CAC(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [[TCCDAttributionChain alloc] initWithMessage:v3];
  v6 = [(TCCDAttributionChain *)v5 requestingProcess];
  v7 = [NSString stringWithUTF8String:xpc_dictionary_get_string(v3, "function")];
  v23 = 0;
  v8 = [qword_1000C1300 serviceFromMessage:v3 error:&v23];
  v9 = v23;
  if (v8)
  {
    if ([qword_1000C1300 canProcess:v6 callFunction:v7 forService:v8 withAccessIdentity:0])
    {
      v17 = 0;
      v18 = &v17;
      v19 = 0x3032000000;
      v20 = sub_1000074E0;
      v21 = sub_100007570;
      v22 = xpc_array_create(0, 0);
      if (v18[5])
      {
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_100026170;
        v15[3] = &unk_1000A5188;
        v16 = v8;
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_1000261F0;
        v12[3] = &unk_1000A5A28;
        v13 = v16;
        v14 = &v17;
        if (!db_eval("SELECT client, client_type, csreq, last_modified, expired_at FROM expired WHERE service = ?", v15, v12))
        {
          xpc_dictionary_set_value(v4, "clients", v18[5]);
        }
      }

      _Block_object_dispose(&v17, 8);
    }
  }

  else
  {
    v10 = objc_opt_new();
    [qword_1000C1300 buildErrorString:v10 forError:v9 contextString:0];
    v11 = [qword_1000C1300 logHandle];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100064EE4();
    }
  }
}