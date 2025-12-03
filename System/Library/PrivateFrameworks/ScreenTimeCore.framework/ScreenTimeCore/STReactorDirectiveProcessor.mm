@interface STReactorDirectiveProcessor
- (STReactorDirectiveProcessor)initWithQueue:(id)queue transportEnvoy:(id)envoy transportEnvoyQueue:(id)envoyQueue configurationStore:(id)store deviceStateStore:(id)stateStore biomeEventWriter:(id)writer backgroundActivityScheduler:(id)scheduler familyProvider:(id)self0 eyeReliefStateWriter:(id)self1 userSafetyPolicyWriter:(id)self2 transportPrimitives:(id)self3;
- (id)_sendRepairConfigurationChangeRelatedToChange:(id)change;
- (id)processDirective:(id)directive;
@end

@implementation STReactorDirectiveProcessor

- (STReactorDirectiveProcessor)initWithQueue:(id)queue transportEnvoy:(id)envoy transportEnvoyQueue:(id)envoyQueue configurationStore:(id)store deviceStateStore:(id)stateStore biomeEventWriter:(id)writer backgroundActivityScheduler:(id)scheduler familyProvider:(id)self0 eyeReliefStateWriter:(id)self1 userSafetyPolicyWriter:(id)self2 transportPrimitives:(id)self3
{
  queueCopy = queue;
  envoyCopy = envoy;
  envoyQueueCopy = envoyQueue;
  storeCopy = store;
  stateStoreCopy = stateStore;
  writerCopy = writer;
  schedulerCopy = scheduler;
  providerCopy = provider;
  stateWriterCopy = stateWriter;
  policyWriterCopy = policyWriter;
  primitivesCopy = primitives;
  processingQueue = self->_processingQueue;
  self->_processingQueue = queueCopy;
  v51 = queueCopy;

  transportEnvoy = self->_transportEnvoy;
  self->_transportEnvoy = envoyCopy;
  v50 = envoyCopy;

  transportEnvoyQueue = self->_transportEnvoyQueue;
  self->_transportEnvoyQueue = envoyQueueCopy;
  v30 = envoyQueueCopy;

  configurationStore = self->_configurationStore;
  self->_configurationStore = storeCopy;
  v32 = storeCopy;

  deviceStateStore = self->_deviceStateStore;
  self->_deviceStateStore = stateStoreCopy;
  v34 = stateStoreCopy;

  biomeEventWriter = self->_biomeEventWriter;
  self->_biomeEventWriter = writerCopy;
  v36 = writerCopy;

  backgroundActivityScheduler = self->_backgroundActivityScheduler;
  self->_backgroundActivityScheduler = schedulerCopy;
  v38 = schedulerCopy;

  familyProvider = self->_familyProvider;
  self->_familyProvider = providerCopy;
  v40 = providerCopy;

  eyeReliefStateWriter = self->_eyeReliefStateWriter;
  self->_eyeReliefStateWriter = stateWriterCopy;
  v42 = stateWriterCopy;

  userSafetyPolicyWriter = self->_userSafetyPolicyWriter;
  self->_userSafetyPolicyWriter = policyWriterCopy;
  v44 = policyWriterCopy;

  transportPrimitives = self->_transportPrimitives;
  self->_transportPrimitives = primitivesCopy;

  return self;
}

- (id)processDirective:(id)directive
{
  directiveCopy = directive;
  data = [directiveCopy data];
  switch([directiveCopy type])
  {
    case 0uLL:
      v4 = +[STLog reactorDirectiveProcessor];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "processing do nothing directive", &buf, 2u);
      }

      v5 = [[STReactorDirectiveProcessorResult alloc] initWithOutput:0 processedDirective:directiveCopy];
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

      v50 = data;
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

      processingQueue = [(STReactorDirectiveProcessor *)self processingQueue];
      v57 = [STPromise onQueue:processingQueue all:v51];
      then = [v57 then];
      v165[0] = _NSConcreteStackBlock;
      v165[1] = 3221225472;
      v165[2] = sub_10006B588;
      v165[3] = &unk_1001A41E8;
      v166 = directiveCopy;
      v3 = (then)[2](then, v165);

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
      v246 = data;
      v39 = [STPromise onQueue:objd do:v245];
      then2 = [v39 then];
      v243[0] = _NSConcreteStackBlock;
      v243[1] = 3221225472;
      v243[2] = sub_10006AAAC;
      v243[3] = &unk_1001A4438;
      v244 = directiveCopy;
      v3 = (then2)[2](then2, v243);

      goto LABEL_121;
    case 3uLL:
      v90 = +[STLog reactorDirectiveProcessor];
      if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "processing read configuration directive", &buf, 2u);
      }

      configurationStore = [(STReactorDirectiveProcessor *)self configurationStore];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        sub_10011BDB8();
      }

      obji = [configurationStore readConfigurationRelatedToConfiguration:data];

      v241[0] = _NSConcreteStackBlock;
      v241[1] = 3221225472;
      v241[2] = sub_10006AAF4;
      v241[3] = &unk_1001A5390;
      v242 = directiveCopy;
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

      configurationStore2 = [(STReactorDirectiveProcessor *)self configurationStore];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        sub_10011BD08();
      }

      objj = [configurationStore2 writeConfigurationChange:data];

      v239[0] = _NSConcreteStackBlock;
      v239[1] = 3221225472;
      v239[2] = sub_10006AB5C;
      v239[3] = &unk_1001A53B8;
      v240 = directiveCopy;
      v95 = [objj map:v239];
      v96 = [STPromise alloc];
      processingQueue2 = [(STReactorDirectiveProcessor *)self processingQueue];
      v3 = [(STPromise *)v96 initWithResolution:v95 onQueue:processingQueue2];

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

      v42 = data;
      obje = [(STReactorDirectiveProcessor *)self _sendRepairConfigurationChangeRelatedToChange:v42];
      then3 = [obje then];
      v236[0] = _NSConcreteStackBlock;
      v236[1] = 3221225472;
      v236[2] = sub_10006ABC4;
      v236[3] = &unk_1001A50C8;
      v237 = v42;
      v238 = directiveCopy;
      v44 = then3[2];
      v45 = v42;
      v3 = v44(then3, v236);

      goto LABEL_121;
    case 6uLL:
      v59 = +[STLog reactorDirectiveProcessor];
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "processing write device state directive", &buf, 2u);
      }

      deviceStateStore = [(STReactorDirectiveProcessor *)self deviceStateStore];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        sub_10011BBA8();
      }

      objg = [deviceStateStore writeDeviceStateChange:data];

      v234[0] = _NSConcreteStackBlock;
      v234[1] = 3221225472;
      v234[2] = sub_10006AC9C;
      v234[3] = &unk_1001A4438;
      v235 = directiveCopy;
      v61 = [objg map:v234];
      v3 = [STPromise resolvedWith:v61];

      goto LABEL_121;
    case 7uLL:
      objc_opt_class();
      v62 = data;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        sub_10011BAE0();
        v62 = data;
      }

      v63 = v62;
      type = [v63 type];
      v65 = +[STLog reactorDirectiveProcessor];
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        if (type > 3)
        {
          v66 = &stru_1001AC900;
        }

        else
        {
          v66 = *(&off_1001A5530 + type);
        }

        LODWORD(buf) = 138543362;
        *(&buf + 4) = v66;
        _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "processing schedule background activity directive type: %{public}@", &buf, 0xCu);
      }

      obj = 0;
      if (type <= 1)
      {
        if (type)
        {
          if (type != 1)
          {
            goto LABEL_119;
          }

          goto LABEL_90;
        }

        goto LABEL_118;
      }

      if (type == 2)
      {
LABEL_118:
        obj = [(STReactorDirectiveProcessor *)self transportEnvoyQueue];
        goto LABEL_119;
      }

      if (type == 3)
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
      v233 = type;
      v230[4] = self;
      v231 = v63;
      v232 = directiveCopy;
      v128 = v127[2];
      v129 = v63;
      v3 = v128(v127, obj, v230);

LABEL_120:
LABEL_121:

      return v3;
    case 8uLL:
      objc_opt_class();
      v98 = data;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        sub_10011B968();
        v98 = data;
      }

      integerValue = [v98 integerValue];
      v100 = +[STLog reactorDirectiveProcessor];
      if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
      {
        if (integerValue > 3)
        {
          v101 = &stru_1001AC900;
        }

        else
        {
          v101 = *(&off_1001A5530 + integerValue);
        }

        LODWORD(buf) = 138543362;
        *(&buf + 4) = v101;
        _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEFAULT, "processing perform background activity directive type:  %{public}@", &buf, 0xCu);
      }

      if (integerValue > 1)
      {
        if (integerValue == 2)
        {
          objm = +[STPromise doOn];
          transportEnvoyQueue = [(STReactorDirectiveProcessor *)self transportEnvoyQueue];
          v223[0] = _NSConcreteStackBlock;
          v223[1] = 3221225472;
          v223[2] = sub_10006AF78;
          v223[3] = &unk_1001A4E90;
          v223[4] = self;
          v135 = objm[2](objm, transportEnvoyQueue, v223);
          then4 = [v135 then];
          v221[0] = _NSConcreteStackBlock;
          v221[1] = 3221225472;
          v221[2] = sub_10006AFDC;
          v221[3] = &unk_1001A53B8;
          v222 = directiveCopy;
          v3 = (then4)[2](then4, v221);

          goto LABEL_121;
        }

        if (integerValue == 3)
        {
          v105 = +[STLog reactorDirectiveProcessor];
          if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "processing write downtime state biome event directive", &buf, 2u);
          }

          familyProvider = [(STReactorDirectiveProcessor *)self familyProvider];
          obj = [familyProvider fetchTargetableFamilyMembersWithError:0];

          configurationStore3 = [(STReactorDirectiveProcessor *)self configurationStore];
          v108 = [configurationStore3 downtimeConfigurationOfChildrenByUserIDForTargetableFamilyMembers:obj];

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
                uUIDString = [v116 UUIDString];
                currentState = [v114 currentState];
                currentDate = [v114 currentDate];
                v120 = [(STDowntimeStateEvent *)v115 initWithIdentifier:uUIDString downtimeConfigurationState:currentState downtimeDate:currentDate userID:v113];

                biomeEventWriter = [(STReactorDirectiveProcessor *)self biomeEventWriter];
                v109 = [biomeEventWriter writeDowntimeStateEvent:v120];

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
          v216 = directiveCopy;
          v122 = [v109 map:v215];
          v3 = [STPromise resolvedWith:v122];

          goto LABEL_120;
        }
      }

      else
      {
        if (!integerValue)
        {
          objl = +[STPromise doOn];
          transportEnvoyQueue2 = [(STReactorDirectiveProcessor *)self transportEnvoyQueue];
          v229[0] = _NSConcreteStackBlock;
          v229[1] = 3221225472;
          v229[2] = sub_10006ADF4;
          v229[3] = &unk_1001A4E90;
          v229[4] = self;
          v132 = objl[2](objl, transportEnvoyQueue2, v229);
          then5 = [v132 then];
          v227[0] = _NSConcreteStackBlock;
          v227[1] = 3221225472;
          v227[2] = sub_10006AE44;
          v227[3] = &unk_1001A53B8;
          v228 = directiveCopy;
          v3 = (then5)[2](then5, v227);

          goto LABEL_121;
        }

        if (integerValue == 1)
        {
          objk = +[STPromise doOn];
          transportEnvoyQueue3 = [(STReactorDirectiveProcessor *)self transportEnvoyQueue];
          v226[0] = _NSConcreteStackBlock;
          v226[1] = 3221225472;
          v226[2] = sub_10006AEAC;
          v226[3] = &unk_1001A4E90;
          v226[4] = self;
          v103 = objk[2](objk, transportEnvoyQueue3, v226);
          then6 = [v103 then];
          v224[0] = _NSConcreteStackBlock;
          v224[1] = 3221225472;
          v224[2] = sub_10006AF10;
          v224[3] = &unk_1001A53B8;
          v225 = directiveCopy;
          v3 = (then6)[2](then6, v224);

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

      integerValue2 = [data integerValue];
      backgroundActivityScheduler = [(STReactorDirectiveProcessor *)self backgroundActivityScheduler];
      [backgroundActivityScheduler invalidateBackgroundActivityOfType:integerValue2];

      v126 = [[STReactorDirectiveProcessorResult alloc] initWithOutput:0 processedDirective:directiveCopy];
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

      objb = data;
      familyProvider2 = [(STReactorDirectiveProcessor *)self familyProvider];
      v12 = [familyProvider2 fetchTargetableFamilyMembersWithError:0];

      v13 = [STReactorCore userToRespondForGivenCheckingInUser:objb targetableFamilyMembers:v12];
      deviceStateStore2 = [(STReactorDirectiveProcessor *)self deviceStateStore];
      readDeviceStateChangeForLocalDevice = [deviceStateStore2 readDeviceStateChangeForLocalDevice];

      *&buf = 0;
      *(&buf + 1) = &buf;
      v250 = 0x3032000000;
      v251 = sub_10006B08C;
      v252 = sub_10006B09C;
      v253 = objc_opt_new();
      configurationStore4 = [(STReactorDirectiveProcessor *)self configurationStore];
      v17 = [configurationStore4 readConfigurationChangesOfType:1 userID:v13];
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
      configurationStore5 = [(STReactorDirectiveProcessor *)self configurationStore];
      v19 = [configurationStore5 readConfigurationChangesOfType:2 userID:v13];
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
      configurationStore6 = [(STReactorDirectiveProcessor *)self configurationStore];
      v21 = [configurationStore6 readConfigurationChangesOfType:3 userID:v13];
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
      configurationStore7 = [(STReactorDirectiveProcessor *)self configurationStore];
      v23 = [configurationStore7 readConfigurationChangesOfType:4 userID:v13];
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
      configurationStore8 = [(STReactorDirectiveProcessor *)self configurationStore];
      v25 = [configurationStore8 readConfigurationChangesOfType:5 userID:v13];
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
      configurationStore9 = [(STReactorDirectiveProcessor *)self configurationStore];
      v27 = [configurationStore9 readConfigurationChangesOfType:6 userID:v13];
      v179[0] = _NSConcreteStackBlock;
      v179[1] = 3221225472;
      v179[2] = sub_10006B2C0;
      v179[3] = &unk_1001A5408;
      v179[4] = &v180;
      [v27 evaluateWithSuccess:v179 failure:&stru_1001A54C8];

      value = [readDeviceStateChangeForLocalDevice value];
      v29 = v188[5];
      v30 = [STMessageReactorCoreComponent buildCheckinResponseMessageEnvelopeForUser:objb targetableFamilyMembers:v12 localDeviceStateChange:value settingsChanges:*(*(&buf + 1) + 40) downtimeChanges:v209[5] communicationLimitsChanges:v202[5] alwaysAllowedChanges:v195[5] restrictionsChanges:v29 managedUserChanges:v181[5]];

      v31 = [[STReactorDirectiveProcessorResult alloc] initWithOutput:v30 processedDirective:directiveCopy];
      v32 = [STResult success:v31];

      v33 = [STPromise alloc];
      processingQueue3 = [(STReactorDirectiveProcessor *)self processingQueue];
      v3 = [(STPromise *)v33 initWithResolution:v32 onQueue:processingQueue3];

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

      biomeEventWriter2 = [(STReactorDirectiveProcessor *)self biomeEventWriter];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        sub_10011B758();
      }

      objf = [biomeEventWriter2 writeAskForTimeRequestEvent:data];

      v163[0] = _NSConcreteStackBlock;
      v163[1] = 3221225472;
      v163[2] = sub_10006B5F0;
      v163[3] = &unk_1001A4438;
      v164 = directiveCopy;
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

      biomeEventWriter3 = [(STReactorDirectiveProcessor *)self biomeEventWriter];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        sub_10011B6A8();
      }

      objc = [biomeEventWriter3 writeAskForTimeResponseEvent:data];

      v161[0] = _NSConcreteStackBlock;
      v161[1] = 3221225472;
      v161[2] = sub_10006B638;
      v161[3] = &unk_1001A4438;
      v162 = directiveCopy;
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

      eyeReliefStateWriter = [(STReactorDirectiveProcessor *)self eyeReliefStateWriter];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        sub_10011B5F8();
      }

      obja = [eyeReliefStateWriter writeEyeReliefState:{objc_msgSend(data, "BOOLValue")}];

      v159[0] = _NSConcreteStackBlock;
      v159[1] = 3221225472;
      v159[2] = sub_10006B680;
      v159[3] = &unk_1001A4438;
      v160 = directiveCopy;
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

      userSafetyPolicyWriter = [(STReactorDirectiveProcessor *)self userSafetyPolicyWriter];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        sub_10011B548();
      }

      objh = [userSafetyPolicyWriter writeUserSafetyInterventionPolicy:{objc_msgSend(data, "integerValue")}];

      v157[0] = _NSConcreteStackBlock;
      v157[1] = 3221225472;
      v157[2] = sub_10006B6C8;
      v157[3] = &unk_1001A4438;
      v158 = directiveCopy;
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

      familyProvider3 = [(STReactorDirectiveProcessor *)self familyProvider];
      v72 = [familyProvider3 fetchTargetableFamilyMembersWithError:0];

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
            dsid = [v75 dsid];
            v78 = [v76 initWithDSID:dsid];

            v79 = +[STPromise doOn];
            processingQueue4 = [(STReactorDirectiveProcessor *)self processingQueue];
            v172[0] = _NSConcreteStackBlock;
            v172[1] = 3221225472;
            v172[2] = sub_10006B32C;
            v172[3] = &unk_1001A4F20;
            v173 = v78;
            selfCopy = self;
            v81 = v79[2];
            v82 = v78;
            v83 = v81(v79, processingQueue4, v172);
            then7 = [v83 then];
            v171[0] = _NSConcreteStackBlock;
            v171[1] = 3221225472;
            v171[2] = sub_10006B424;
            v171[3] = &unk_1001A4F48;
            v171[4] = self;
            v85 = (then7)[2](then7, v171);
            catch = [v85 catch];
            v87 = (catch)[2](catch, &stru_1001A54E8);
          }

          v73 = [obj countByEnumeratingWithState:&v175 objects:v248 count:16];
        }

        while (v73);
      }

      v88 = [[STReactorDirectiveProcessorResult alloc] initWithOutput:0 processedDirective:directiveCopy];
      v89 = [STResult success:v88];

      v3 = [STPromise resolvedWith:v89];

      goto LABEL_120;
    default:
      goto LABEL_121;
  }
}

- (id)_sendRepairConfigurationChangeRelatedToChange:(id)change
{
  changeCopy = change;
  v5 = +[STPromise doOn];
  processingQueue = [(STReactorDirectiveProcessor *)self processingQueue];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10006B8F4;
  v17[3] = &unk_1001A4F20;
  v17[4] = self;
  v18 = changeCopy;
  v7 = v5[2];
  v8 = changeCopy;
  v9 = v7(v5, processingQueue, v17);
  then = [v9 then];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10006B94C;
  v16[3] = &unk_1001A5390;
  v16[4] = self;
  v11 = (then)[2](then, v16);
  then2 = [v11 then];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10006BA20;
  v15[3] = &unk_1001A5510;
  v15[4] = self;
  v13 = (then2)[2](then2, v15);

  return v13;
}

@end