@interface STReactorDirectiveProcessor
- (STReactorDirectiveProcessor)initWithQueue:(id)a3 transportEnvoy:(id)a4 transportEnvoyQueue:(id)a5 configurationStore:(id)a6 deviceStateStore:(id)a7 biomeEventWriter:(id)a8 backgroundActivityScheduler:(id)a9 familyProvider:(id)a10 eyeReliefStateWriter:(id)a11 userSafetyPolicyWriter:(id)a12 transportPrimitives:(id)a13;
- (id)_sendRepairConfigurationChangeRelatedToChange:(id)a3;
- (id)processDirective:(id)a3;
@end

@implementation STReactorDirectiveProcessor

- (STReactorDirectiveProcessor)initWithQueue:(id)a3 transportEnvoy:(id)a4 transportEnvoyQueue:(id)a5 configurationStore:(id)a6 deviceStateStore:(id)a7 biomeEventWriter:(id)a8 backgroundActivityScheduler:(id)a9 familyProvider:(id)a10 eyeReliefStateWriter:(id)a11 userSafetyPolicyWriter:(id)a12 transportPrimitives:(id)a13
{
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  v24 = a8;
  v25 = a9;
  v47 = a10;
  v26 = a11;
  v48 = a12;
  v49 = a13;
  processingQueue = self->_processingQueue;
  self->_processingQueue = v19;
  v51 = v19;

  transportEnvoy = self->_transportEnvoy;
  self->_transportEnvoy = v20;
  v50 = v20;

  transportEnvoyQueue = self->_transportEnvoyQueue;
  self->_transportEnvoyQueue = v21;
  v30 = v21;

  configurationStore = self->_configurationStore;
  self->_configurationStore = v22;
  v32 = v22;

  deviceStateStore = self->_deviceStateStore;
  self->_deviceStateStore = v23;
  v34 = v23;

  biomeEventWriter = self->_biomeEventWriter;
  self->_biomeEventWriter = v24;
  v36 = v24;

  backgroundActivityScheduler = self->_backgroundActivityScheduler;
  self->_backgroundActivityScheduler = v25;
  v38 = v25;

  familyProvider = self->_familyProvider;
  self->_familyProvider = v47;
  v40 = v47;

  eyeReliefStateWriter = self->_eyeReliefStateWriter;
  self->_eyeReliefStateWriter = v26;
  v42 = v26;

  userSafetyPolicyWriter = self->_userSafetyPolicyWriter;
  self->_userSafetyPolicyWriter = v48;
  v44 = v48;

  transportPrimitives = self->_transportPrimitives;
  self->_transportPrimitives = v49;

  return self;
}

- (id)processDirective:(id)a3
{
  v138 = a3;
  v137 = [v138 data];
  switch([v138 type])
  {
    case 0uLL:
      v4 = +[STLog reactorDirectiveProcessor];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "processing do nothing directive", &buf, 2u);
      }

      v5 = [[STReactorDirectiveProcessorResult alloc] initWithOutput:0 processedDirective:v138];
      obj = [STResult success:v5];

      v6 = [STPromise resolvedWith:obj];
      goto LABEL_117;
    case 1uLL:
      v49 = +[STLog reactorDirectiveProcessor];
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "processing compound directive", &buf, 2u);
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        sub_10011B808();
      }

      v50 = v137;
      v51 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v50 count]);
      v169 = 0u;
      v170 = 0u;
      v167 = 0u;
      v168 = 0u;
      obj = v50;
      v52 = [obj countByEnumeratingWithState:&v167 objects:v247 count:16];
      if (v52)
      {
        v53 = *v168;
        do
        {
          for (i = 0; i != v52; i = i + 1)
          {
            if (*v168 != v53)
            {
              objc_enumerationMutation(obj);
            }

            v55 = [(STReactorDirectiveProcessor *)self processDirective:*(*(&v167 + 1) + 8 * i)];
            [v51 addObject:v55];
          }

          v52 = [obj countByEnumeratingWithState:&v167 objects:v247 count:16];
        }

        while (v52);
      }

      v56 = [(STReactorDirectiveProcessor *)self processingQueue];
      v57 = [STPromise onQueue:v56 all:v51];
      v58 = [v57 then];
      v165[0] = _NSConcreteStackBlock;
      v165[1] = 3221225472;
      v165[2] = sub_10006B588;
      v165[3] = &unk_1001A41E8;
      v166 = v138;
      v3 = (v58)[2](v58, v165);

      goto LABEL_120;
    case 2uLL:
      v38 = +[STLog reactorDirectiveProcessor];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "processing send message directive", &buf, 2u);
      }

      objd = [(STReactorDirectiveProcessor *)self transportEnvoyQueue];
      v245[0] = _NSConcreteStackBlock;
      v245[1] = 3221225472;
      v245[2] = sub_10006AA1C;
      v245[3] = &unk_1001A4F20;
      v245[4] = self;
      v246 = v137;
      v39 = [STPromise onQueue:objd do:v245];
      v40 = [v39 then];
      v243[0] = _NSConcreteStackBlock;
      v243[1] = 3221225472;
      v243[2] = sub_10006AAAC;
      v243[3] = &unk_1001A4438;
      v244 = v138;
      v3 = (v40)[2](v40, v243);

      goto LABEL_121;
    case 3uLL:
      v90 = +[STLog reactorDirectiveProcessor];
      if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "processing read configuration directive", &buf, 2u);
      }

      v91 = [(STReactorDirectiveProcessor *)self configurationStore];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        sub_10011BDB8();
      }

      obji = [v91 readConfigurationRelatedToConfiguration:v137];

      v241[0] = _NSConcreteStackBlock;
      v241[1] = 3221225472;
      v241[2] = sub_10006AAF4;
      v241[3] = &unk_1001A5390;
      v242 = v138;
      v92 = [obji map:v241];
      v3 = [STPromise resolvedWith:v92];

      goto LABEL_121;
    case 4uLL:
      v93 = +[STLog reactorDirectiveProcessor];
      if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "processing write configuration directive", &buf, 2u);
      }

      v94 = [(STReactorDirectiveProcessor *)self configurationStore];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        sub_10011BD08();
      }

      objj = [v94 writeConfigurationChange:v137];

      v239[0] = _NSConcreteStackBlock;
      v239[1] = 3221225472;
      v239[2] = sub_10006AB5C;
      v239[3] = &unk_1001A53B8;
      v240 = v138;
      v95 = [objj map:v239];
      v96 = [STPromise alloc];
      v97 = [(STReactorDirectiveProcessor *)self processingQueue];
      v3 = [(STPromise *)v96 initWithResolution:v95 onQueue:v97];

      goto LABEL_121;
    case 5uLL:
      v41 = +[STLog reactorDirectiveProcessor];
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "processing respond with current configuration directive", &buf, 2u);
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        sub_10011BC58();
      }

      v42 = v137;
      obje = [(STReactorDirectiveProcessor *)self _sendRepairConfigurationChangeRelatedToChange:v42];
      v43 = [obje then];
      v236[0] = _NSConcreteStackBlock;
      v236[1] = 3221225472;
      v236[2] = sub_10006ABC4;
      v236[3] = &unk_1001A50C8;
      v237 = v42;
      v238 = v138;
      v44 = v43[2];
      v45 = v42;
      v3 = v44(v43, v236);

      goto LABEL_121;
    case 6uLL:
      v59 = +[STLog reactorDirectiveProcessor];
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "processing write device state directive", &buf, 2u);
      }

      v60 = [(STReactorDirectiveProcessor *)self deviceStateStore];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        sub_10011BBA8();
      }

      objg = [v60 writeDeviceStateChange:v137];

      v234[0] = _NSConcreteStackBlock;
      v234[1] = 3221225472;
      v234[2] = sub_10006AC9C;
      v234[3] = &unk_1001A4438;
      v235 = v138;
      v61 = [objg map:v234];
      v3 = [STPromise resolvedWith:v61];

      goto LABEL_121;
    case 7uLL:
      objc_opt_class();
      v62 = v137;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        sub_10011BAE0();
        v62 = v137;
      }

      v63 = v62;
      v64 = [v63 type];
      v65 = +[STLog reactorDirectiveProcessor];
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        if (v64 > 3)
        {
          v66 = &stru_1001AC900;
        }

        else
        {
          v66 = *(&off_1001A5530 + v64);
        }

        LODWORD(buf) = 138543362;
        *(&buf + 4) = v66;
        _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "processing schedule background activity directive type: %{public}@", &buf, 0xCu);
      }

      obj = 0;
      if (v64 <= 1)
      {
        if (v64)
        {
          if (v64 != 1)
          {
            goto LABEL_119;
          }

          goto LABEL_90;
        }

        goto LABEL_118;
      }

      if (v64 == 2)
      {
LABEL_118:
        obj = [(STReactorDirectiveProcessor *)self transportEnvoyQueue];
        goto LABEL_119;
      }

      if (v64 == 3)
      {
LABEL_90:
        obj = [(STReactorDirectiveProcessor *)self processingQueue];
      }

LABEL_119:
      v127 = +[STPromise doOn];
      v230[0] = _NSConcreteStackBlock;
      v230[1] = 3221225472;
      v230[2] = sub_10006ACE4;
      v230[3] = &unk_1001A53E0;
      v233 = v64;
      v230[4] = self;
      v231 = v63;
      v232 = v138;
      v128 = v127[2];
      v129 = v63;
      v3 = v128(v127, obj, v230);

LABEL_120:
LABEL_121:

      return v3;
    case 8uLL:
      objc_opt_class();
      v98 = v137;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        sub_10011B968();
        v98 = v137;
      }

      v99 = [v98 integerValue];
      v100 = +[STLog reactorDirectiveProcessor];
      if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
      {
        if (v99 > 3)
        {
          v101 = &stru_1001AC900;
        }

        else
        {
          v101 = *(&off_1001A5530 + v99);
        }

        LODWORD(buf) = 138543362;
        *(&buf + 4) = v101;
        _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEFAULT, "processing perform background activity directive type:  %{public}@", &buf, 0xCu);
      }

      if (v99 > 1)
      {
        if (v99 == 2)
        {
          objm = +[STPromise doOn];
          v134 = [(STReactorDirectiveProcessor *)self transportEnvoyQueue];
          v223[0] = _NSConcreteStackBlock;
          v223[1] = 3221225472;
          v223[2] = sub_10006AF78;
          v223[3] = &unk_1001A4E90;
          v223[4] = self;
          v135 = objm[2](objm, v134, v223);
          v136 = [v135 then];
          v221[0] = _NSConcreteStackBlock;
          v221[1] = 3221225472;
          v221[2] = sub_10006AFDC;
          v221[3] = &unk_1001A53B8;
          v222 = v138;
          v3 = (v136)[2](v136, v221);

          goto LABEL_121;
        }

        if (v99 == 3)
        {
          v105 = +[STLog reactorDirectiveProcessor];
          if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "processing write downtime state biome event directive", &buf, 2u);
          }

          v106 = [(STReactorDirectiveProcessor *)self familyProvider];
          obj = [v106 fetchTargetableFamilyMembersWithError:0];

          v107 = [(STReactorDirectiveProcessor *)self configurationStore];
          v108 = [v107 downtimeConfigurationOfChildrenByUserIDForTargetableFamilyMembers:obj];

          v219 = 0u;
          v220 = 0u;
          v217 = 0u;
          v218 = 0u;
          v141 = v108;
          v109 = 0;
          v110 = [v141 countByEnumeratingWithState:&v217 objects:v254 count:16];
          if (v110)
          {
            v139 = *v218;
            do
            {
              v111 = 0;
              v112 = v109;
              do
              {
                if (*v218 != v139)
                {
                  objc_enumerationMutation(v141);
                }

                v113 = *(*(&v217 + 1) + 8 * v111);
                v114 = [v141 objectForKeyedSubscript:v113];
                v115 = [STDowntimeStateEvent alloc];
                v116 = objc_opt_new();
                v117 = [v116 UUIDString];
                v118 = [v114 currentState];
                v119 = [v114 currentDate];
                v120 = [(STDowntimeStateEvent *)v115 initWithIdentifier:v117 downtimeConfigurationState:v118 downtimeDate:v119 userID:v113];

                v121 = [(STReactorDirectiveProcessor *)self biomeEventWriter];
                v109 = [v121 writeDowntimeStateEvent:v120];

                v111 = v111 + 1;
                v112 = v109;
              }

              while (v110 != v111);
              v110 = [v141 countByEnumeratingWithState:&v217 objects:v254 count:16];
            }

            while (v110);
          }

          v215[0] = _NSConcreteStackBlock;
          v215[1] = 3221225472;
          v215[2] = sub_10006B044;
          v215[3] = &unk_1001A4438;
          v216 = v138;
          v122 = [v109 map:v215];
          v3 = [STPromise resolvedWith:v122];

          goto LABEL_120;
        }
      }

      else
      {
        if (!v99)
        {
          objl = +[STPromise doOn];
          v131 = [(STReactorDirectiveProcessor *)self transportEnvoyQueue];
          v229[0] = _NSConcreteStackBlock;
          v229[1] = 3221225472;
          v229[2] = sub_10006ADF4;
          v229[3] = &unk_1001A4E90;
          v229[4] = self;
          v132 = objl[2](objl, v131, v229);
          v133 = [v132 then];
          v227[0] = _NSConcreteStackBlock;
          v227[1] = 3221225472;
          v227[2] = sub_10006AE44;
          v227[3] = &unk_1001A53B8;
          v228 = v138;
          v3 = (v133)[2](v133, v227);

          goto LABEL_121;
        }

        if (v99 == 1)
        {
          objk = +[STPromise doOn];
          v102 = [(STReactorDirectiveProcessor *)self transportEnvoyQueue];
          v226[0] = _NSConcreteStackBlock;
          v226[1] = 3221225472;
          v226[2] = sub_10006AEAC;
          v226[3] = &unk_1001A4E90;
          v226[4] = self;
          v103 = objk[2](objk, v102, v226);
          v104 = [v103 then];
          v224[0] = _NSConcreteStackBlock;
          v224[1] = 3221225472;
          v224[2] = sub_10006AF10;
          v224[3] = &unk_1001A53B8;
          v225 = v138;
          v3 = (v104)[2](v104, v224);

          goto LABEL_121;
        }
      }

LABEL_112:
      v123 = +[STLog reactorDirectiveProcessor];
      if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v123, OS_LOG_TYPE_DEFAULT, "processing cancel background activity directive", &buf, 2u);
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        sub_10011BA30();
      }

      v124 = [v137 integerValue];
      v125 = [(STReactorDirectiveProcessor *)self backgroundActivityScheduler];
      [v125 invalidateBackgroundActivityOfType:v124];

      v126 = [[STReactorDirectiveProcessorResult alloc] initWithOutput:0 processedDirective:v138];
      obj = [STResult success:v126];

      v6 = [STPromise resolvedWith:obj];
LABEL_117:
      v3 = v6;
      goto LABEL_120;
    case 9uLL:
      goto LABEL_112;
    case 0xAuLL:
      v10 = +[STLog reactorDirectiveProcessor];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "processing read response data for checkin", &buf, 2u);
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        sub_10011B8B8();
      }

      objb = v137;
      v11 = [(STReactorDirectiveProcessor *)self familyProvider];
      v12 = [v11 fetchTargetableFamilyMembersWithError:0];

      v13 = [STReactorCore userToRespondForGivenCheckingInUser:objb targetableFamilyMembers:v12];
      v14 = [(STReactorDirectiveProcessor *)self deviceStateStore];
      v15 = [v14 readDeviceStateChangeForLocalDevice];

      *&buf = 0;
      *(&buf + 1) = &buf;
      v250 = 0x3032000000;
      v251 = sub_10006B08C;
      v252 = sub_10006B09C;
      v253 = objc_opt_new();
      v16 = [(STReactorDirectiveProcessor *)self configurationStore];
      v17 = [v16 readConfigurationChangesOfType:1 userID:v13];
      v214[0] = _NSConcreteStackBlock;
      v214[1] = 3221225472;
      v214[2] = sub_10006B0A4;
      v214[3] = &unk_1001A5408;
      v214[4] = &buf;
      [v17 evaluateWithSuccess:v214 failure:&stru_1001A5428];

      v208 = 0;
      v209 = &v208;
      v210 = 0x3032000000;
      v211 = sub_10006B08C;
      v212 = sub_10006B09C;
      v213 = objc_opt_new();
      v18 = [(STReactorDirectiveProcessor *)self configurationStore];
      v19 = [v18 readConfigurationChangesOfType:2 userID:v13];
      v207[0] = _NSConcreteStackBlock;
      v207[1] = 3221225472;
      v207[2] = sub_10006B110;
      v207[3] = &unk_1001A5408;
      v207[4] = &v208;
      [v19 evaluateWithSuccess:v207 failure:&stru_1001A5448];

      v201 = 0;
      v202 = &v201;
      v203 = 0x3032000000;
      v204 = sub_10006B08C;
      v205 = sub_10006B09C;
      v206 = objc_opt_new();
      v20 = [(STReactorDirectiveProcessor *)self configurationStore];
      v21 = [v20 readConfigurationChangesOfType:3 userID:v13];
      v200[0] = _NSConcreteStackBlock;
      v200[1] = 3221225472;
      v200[2] = sub_10006B17C;
      v200[3] = &unk_1001A5408;
      v200[4] = &v201;
      [v21 evaluateWithSuccess:v200 failure:&stru_1001A5468];

      v194 = 0;
      v195 = &v194;
      v196 = 0x3032000000;
      v197 = sub_10006B08C;
      v198 = sub_10006B09C;
      v199 = objc_opt_new();
      v22 = [(STReactorDirectiveProcessor *)self configurationStore];
      v23 = [v22 readConfigurationChangesOfType:4 userID:v13];
      v193[0] = _NSConcreteStackBlock;
      v193[1] = 3221225472;
      v193[2] = sub_10006B1E8;
      v193[3] = &unk_1001A5408;
      v193[4] = &v194;
      [v23 evaluateWithSuccess:v193 failure:&stru_1001A5488];

      v187 = 0;
      v188 = &v187;
      v189 = 0x3032000000;
      v190 = sub_10006B08C;
      v191 = sub_10006B09C;
      v192 = objc_opt_new();
      v24 = [(STReactorDirectiveProcessor *)self configurationStore];
      v25 = [v24 readConfigurationChangesOfType:5 userID:v13];
      v186[0] = _NSConcreteStackBlock;
      v186[1] = 3221225472;
      v186[2] = sub_10006B254;
      v186[3] = &unk_1001A5408;
      v186[4] = &v187;
      [v25 evaluateWithSuccess:v186 failure:&stru_1001A54A8];

      v180 = 0;
      v181 = &v180;
      v182 = 0x3032000000;
      v183 = sub_10006B08C;
      v184 = sub_10006B09C;
      v185 = objc_opt_new();
      v26 = [(STReactorDirectiveProcessor *)self configurationStore];
      v27 = [v26 readConfigurationChangesOfType:6 userID:v13];
      v179[0] = _NSConcreteStackBlock;
      v179[1] = 3221225472;
      v179[2] = sub_10006B2C0;
      v179[3] = &unk_1001A5408;
      v179[4] = &v180;
      [v27 evaluateWithSuccess:v179 failure:&stru_1001A54C8];

      v28 = [v15 value];
      v29 = v188[5];
      v30 = [STMessageReactorCoreComponent buildCheckinResponseMessageEnvelopeForUser:objb targetableFamilyMembers:v12 localDeviceStateChange:v28 settingsChanges:*(*(&buf + 1) + 40) downtimeChanges:v209[5] communicationLimitsChanges:v202[5] alwaysAllowedChanges:v195[5] restrictionsChanges:v29 managedUserChanges:v181[5]];

      v31 = [[STReactorDirectiveProcessorResult alloc] initWithOutput:v30 processedDirective:v138];
      v32 = [STResult success:v31];

      v33 = [STPromise alloc];
      v34 = [(STReactorDirectiveProcessor *)self processingQueue];
      v3 = [(STPromise *)v33 initWithResolution:v32 onQueue:v34];

      _Block_object_dispose(&v180, 8);
      _Block_object_dispose(&v187, 8);

      _Block_object_dispose(&v194, 8);
      _Block_object_dispose(&v201, 8);

      _Block_object_dispose(&v208, 8);
      _Block_object_dispose(&buf, 8);

      goto LABEL_121;
    case 0xDuLL:
      v46 = +[STLog reactorDirectiveProcessor];
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "processing write ask for time request biome event directive", &buf, 2u);
      }

      v47 = [(STReactorDirectiveProcessor *)self biomeEventWriter];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        sub_10011B758();
      }

      objf = [v47 writeAskForTimeRequestEvent:v137];

      v163[0] = _NSConcreteStackBlock;
      v163[1] = 3221225472;
      v163[2] = sub_10006B5F0;
      v163[3] = &unk_1001A4438;
      v164 = v138;
      v48 = [objf map:v163];
      v3 = [STPromise resolvedWith:v48];

      goto LABEL_121;
    case 0xEuLL:
      v35 = +[STLog reactorDirectiveProcessor];
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "processing write ask for time response biome event directive", &buf, 2u);
      }

      v36 = [(STReactorDirectiveProcessor *)self biomeEventWriter];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        sub_10011B6A8();
      }

      objc = [v36 writeAskForTimeResponseEvent:v137];

      v161[0] = _NSConcreteStackBlock;
      v161[1] = 3221225472;
      v161[2] = sub_10006B638;
      v161[3] = &unk_1001A4438;
      v162 = v138;
      v37 = [objc map:v161];
      v3 = [STPromise resolvedWith:v37];

      goto LABEL_121;
    case 0xFuLL:
      v7 = +[STLog reactorDirectiveProcessor];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "processing write eye relief state directive", &buf, 2u);
      }

      v8 = [(STReactorDirectiveProcessor *)self eyeReliefStateWriter];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        sub_10011B5F8();
      }

      obja = [v8 writeEyeReliefState:{objc_msgSend(v137, "BOOLValue")}];

      v159[0] = _NSConcreteStackBlock;
      v159[1] = 3221225472;
      v159[2] = sub_10006B680;
      v159[3] = &unk_1001A4438;
      v160 = v138;
      v9 = [obja map:v159];
      v3 = [STPromise resolvedWith:v9];

      goto LABEL_121;
    case 0x10uLL:
      v67 = +[STLog reactorDirectiveProcessor];
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "processing write user safety policy directive", &buf, 2u);
      }

      v68 = [(STReactorDirectiveProcessor *)self userSafetyPolicyWriter];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        sub_10011B548();
      }

      objh = [v68 writeUserSafetyInterventionPolicy:{objc_msgSend(v137, "integerValue")}];

      v157[0] = _NSConcreteStackBlock;
      v157[1] = 3221225472;
      v157[2] = sub_10006B6C8;
      v157[3] = &unk_1001A4438;
      v158 = v138;
      v69 = [objh map:v157];
      v3 = [STPromise resolvedWith:v69];

      goto LABEL_121;
    case 0x11uLL:
      v70 = +[STLog reactorDirectiveProcessor];
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "processing setup directive", &buf, 2u);
      }

      v71 = [(STReactorDirectiveProcessor *)self familyProvider];
      v72 = [v71 fetchTargetableFamilyMembersWithError:0];

      v177 = 0u;
      v178 = 0u;
      v175 = 0u;
      v176 = 0u;
      obj = v72;
      v73 = [obj countByEnumeratingWithState:&v175 objects:v248 count:16];
      if (v73)
      {
        v140 = *v176;
        do
        {
          for (j = 0; j != v73; j = j + 1)
          {
            if (*v176 != v140)
            {
              objc_enumerationMutation(obj);
            }

            v75 = *(*(&v175 + 1) + 8 * j);
            v76 = [STUserID alloc];
            v77 = [v75 dsid];
            v78 = [v76 initWithDSID:v77];

            v79 = +[STPromise doOn];
            v80 = [(STReactorDirectiveProcessor *)self processingQueue];
            v172[0] = _NSConcreteStackBlock;
            v172[1] = 3221225472;
            v172[2] = sub_10006B32C;
            v172[3] = &unk_1001A4F20;
            v173 = v78;
            v174 = self;
            v81 = v79[2];
            v82 = v78;
            v83 = v81(v79, v80, v172);
            v84 = [v83 then];
            v171[0] = _NSConcreteStackBlock;
            v171[1] = 3221225472;
            v171[2] = sub_10006B424;
            v171[3] = &unk_1001A4F48;
            v171[4] = self;
            v85 = (v84)[2](v84, v171);
            v86 = [v85 catch];
            v87 = (v86)[2](v86, &stru_1001A54E8);
          }

          v73 = [obj countByEnumeratingWithState:&v175 objects:v248 count:16];
        }

        while (v73);
      }

      v88 = [[STReactorDirectiveProcessorResult alloc] initWithOutput:0 processedDirective:v138];
      v89 = [STResult success:v88];

      v3 = [STPromise resolvedWith:v89];

      goto LABEL_120;
    default:
      goto LABEL_121;
  }
}

- (id)_sendRepairConfigurationChangeRelatedToChange:(id)a3
{
  v4 = a3;
  v5 = +[STPromise doOn];
  v6 = [(STReactorDirectiveProcessor *)self processingQueue];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10006B8F4;
  v17[3] = &unk_1001A4F20;
  v17[4] = self;
  v18 = v4;
  v7 = v5[2];
  v8 = v4;
  v9 = v7(v5, v6, v17);
  v10 = [v9 then];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10006B94C;
  v16[3] = &unk_1001A5390;
  v16[4] = self;
  v11 = (v10)[2](v10, v16);
  v12 = [v11 then];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10006BA20;
  v15[3] = &unk_1001A5510;
  v15[4] = self;
  v13 = (v12)[2](v12, v15);

  return v13;
}

@end