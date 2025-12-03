@interface BatteryAnalysisEstimator
+ (id)sharedPredictor;
- (BOOL)isUnsupportedModelVersion:(id)version;
- (BatteryAnalysisEstimator)init;
- (double)estimateAndRecordForEndSOC:(int64_t)c withParams:(id)params;
- (id)estimateForTarget:(int64_t)target withFeatures:(id)features andModelDict:(id)dict;
- (id)featureDictionaryForTarget:(int64_t)target withInitialFeatures:(id)features withError:(id *)error;
- (id)getPayloadForPPSWithParams:(id)params andPredictionValue:(id)value;
- (id)modelVersionForTarget:(int64_t)target fromTrial:(BOOL)trial;
@end

@implementation BatteryAnalysisEstimator

+ (id)sharedPredictor
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100020398;
  block[3] = &unk_100048718;
  block[4] = self;
  if (qword_100057A20 != -1)
  {
    dispatch_once(&qword_100057A20, block);
  }

  v2 = qword_100057A18;

  return v2;
}

- (BatteryAnalysisEstimator)init
{
  v24.receiver = self;
  v24.super_class = BatteryAnalysisEstimator;
  v2 = [(BatteryAnalysisEstimator *)&v24 init];
  if (!v2)
  {
    v13 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v13)
    {
      sub_10002F41C(v13, v14, v15, v16, v17, v18, v19, v20);
    }

    goto LABEL_11;
  }

  if (!+[BIMGUtility isiPhone])
  {
    v21 = *(v2 + 5);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "BatteryAnalysisEstimator is not supported in this platform.", v23, 2u);
    }

    goto LABEL_11;
  }

  v3 = sub_10001DEC4("BatteryAnalysisEstimator");
  v4 = *(v2 + 5);
  *(v2 + 5) = v3;

  v29[0] = &off_10004D768;
  v29[1] = &off_10004D780;
  v30[0] = @"battery_analysis_tt80_model_";
  v30[1] = @"battery_analysis_ttl_model_";
  v5 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:2];
  [v2 setModelNames:v5];

  v27[0] = &off_10004D768;
  v6 = [[BITrialManager alloc] initWithNamespaceName:@"BATTERYINTELLIGENCE_BATTERY_ANALYSIS"];
  v27[1] = &off_10004D780;
  v28[0] = v6;
  v7 = [[BITrialManager alloc] initWithNamespaceName:@"BATTERYINTELLIGENCE_BATTERY_ANALYSIS_TTL"];
  v28[1] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:2];
  [v2 setTrialManagers:v8];

  v25[0] = &off_10004D768;
  v25[1] = &off_10004D780;
  v26[0] = @"bkwqiw7f79";
  v26[1] = @"k5wmzvi5mm";
  v9 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];
  v10 = [v9 mutableCopy];
  [v2 setModelVersions:v10];

  v11 = +[BIFeatures sharedInstance];

  if (!v11)
  {
    if (os_log_type_enabled(*(v2 + 5), OS_LOG_TYPE_FAULT))
    {
      sub_10003262C();
    }

LABEL_11:
    v12 = 0;
    goto LABEL_12;
  }

  v12 = v2;
LABEL_12:

  return v12;
}

- (id)featureDictionaryForTarget:(int64_t)target withInitialFeatures:(id)features withError:(id *)error
{
  featuresCopy = features;
  v9 = [featuresCopy objectForKeyedSubscript:@"timeSincePlugin"];
  if (v9)
  {
    v10 = [featuresCopy objectForKeyedSubscript:@"socAtPlugin"];
    if (!v10)
    {
      if (error)
      {
        v242 = NSLocalizedDescriptionKey;
        v243 = @"socAtPlugin was not provided.";
        v17 = [NSDictionary dictionaryWithObjects:&v243 forKeys:&v242 count:1];
        *error = [NSError errorWithDomain:@"BatteryIntelligenceErrorDomain" code:1 userInfo:v17];
      }

      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
      {
        sub_100032A44();
      }

      goto LABEL_28;
    }

    v11 = [featuresCopy objectForKeyedSubscript:@"endSOC"];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 integerValue] >= 81 && 0xCCCCCCCCCCCCCCCDLL * objc_msgSend(v12, "integerValue") + 0x1999999999999999 < 0x3333333333333333;
      if (target == 1 && !v13)
      {
        if (error)
        {
          v238 = NSLocalizedDescriptionKey;
          v239 = @"Unsupported endSOC for TTL featurization. Only [85, 90, 95, 100] are supported.";
          v19 = [NSDictionary dictionaryWithObjects:&v239 forKeys:&v238 count:1];
          *error = [NSError errorWithDomain:@"BatteryIntelligenceErrorDomain" code:1 userInfo:v19];
        }

        if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
        {
          sub_10003266C();
        }

LABEL_28:
        v15 = 0;
        v16 = 0;
LABEL_151:

        goto LABEL_152;
      }
    }

    else
    {
      if (target == 1)
      {
        if (error)
        {
          v240 = NSLocalizedDescriptionKey;
          v241 = @"endSOC was not provided for TTL featurization.";
          v18 = [NSDictionary dictionaryWithObjects:&v241 forKeys:&v240 count:1];
          *error = [NSError errorWithDomain:@"BatteryIntelligenceErrorDomain" code:1 userInfo:v18];
        }

        if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
        {
          sub_100032A10();
        }

        goto LABEL_28;
      }

      if (target)
      {
        v12 = 0;
      }

      else
      {
        v12 = &off_10004D798;
      }
    }

    v20 = sub_10001E58C();
    v191 = v12;
    if (sub_10001F830(v20))
    {
      if (error)
      {
        v236 = NSLocalizedDescriptionKey;
        v237 = @"Unable to load all battery/charging data.";
        [NSDictionary dictionaryWithObjects:&v237 forKeys:&v236 count:1];
        v22 = v21 = v20;
        *error = [NSError errorWithDomain:@"BatteryIntelligenceErrorDomain" code:1 userInfo:v22];

        v20 = v21;
      }

      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
      {
        sub_1000329DC();
      }

      v15 = 0;
      v16 = 0;
      goto LABEL_150;
    }

    v23 = +[BIFeatures sharedInstance];
    v24 = [v23 nsNumberForKey:@"CurrentCapacity" fromDict:v20 withDefaults:-9999999];

    v25 = +[BIFeatures sharedInstance];
    v189 = [v25 nsNumberForKey:@"CycleCount" fromDict:v20 withDefaults:-9999999];

    v26 = +[BIFeatures sharedInstance];
    v188 = [v26 nsNumberForKey:@"DesignCapacity" fromDict:v20 withDefaults:-9999999];

    v27 = +[BIFeatures sharedInstance];
    v187 = [v27 nsNumberForKey:@"NominalChargeCapacity" fromDict:v20 withDefaults:-9999999];

    v28 = +[BIFeatures sharedInstance];
    v186 = [v28 nsNumberForKey:@"VirtualTemperature" fromDict:v20 withDefaults:-9999999];

    v29 = +[BIFeatures sharedInstance];
    v185 = [v29 nsNumberForKey:@"InstantAmperage" fromDict:v20 withDefaults:-9999999];

    v30 = +[BIFeatures sharedInstance];
    v184 = [v30 nsNumberForKey:@"Voltage" fromDict:v20 withDefaults:-9999999];

    v190 = v20;
    v31 = [v20 objectForKeyedSubscript:@"AdapterDetails"];
    if (sub_10001F830(v31))
    {
      if (error)
      {
        v234 = NSLocalizedDescriptionKey;
        v235 = @"Unable to load adapter details data.";
        [NSDictionary dictionaryWithObjects:&v235 forKeys:&v234 count:1];
        v33 = v32 = v31;
        *error = [NSError errorWithDomain:@"BatteryIntelligenceErrorDomain" code:1 userInfo:v33];

        v31 = v32;
      }

      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
      {
        sub_1000329A8();
      }

      v15 = 0;
      v16 = 0;
      goto LABEL_149;
    }

    targetCopy = target;
    v34 = +[BIFeatures sharedInstance];
    v180 = [v34 nsNumberForKey:@"AdapterVoltage" fromDict:v31 withDefaults:-9999999];

    v35 = +[BIFeatures sharedInstance];
    v183 = [v35 nsNumberForKey:@"Current" fromDict:v31 withDefaults:-9999999];

    v36 = +[BIFeatures sharedInstance];
    v37 = [v36 nsNumberForKey:@"Watts" fromDict:v31 withDefaults:-9999999];

    v38 = +[BIFeatures sharedInstance];
    v182 = [v38 nsNumberForKey:@"FamilyCode" fromDict:v31 withDefaults:-9999999];

    v39 = +[BIFeatures sharedInstance];
    v181 = [v39 nsNumberForKey:@"IsWireless" fromDict:v31 withDefaults:-9999999];

    v179 = v37;
    if ([v37 isEqual:&off_10004D7B0])
    {
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
      {
        sub_1000326DC();
      }

      v40 = v180;
      if (([v180 isEqual:&off_10004D7B0] & 1) != 0 || objc_msgSend(v183, "isEqual:", &off_10004D7B0))
      {
        if (error)
        {
          v232 = NSLocalizedDescriptionKey;
          v233 = @"Error loading adapter voltage or adapter current. Unable to compute estimated adapter watts.";
          [NSDictionary dictionaryWithObjects:&v233 forKeys:&v232 count:1];
          errorCopy = error;
          v43 = v42 = v31;
          *errorCopy = [NSError errorWithDomain:@"BatteryIntelligenceErrorDomain" code:1 userInfo:v43];
          v40 = v180;

          v31 = v42;
        }

        if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
        {
          sub_100032974();
        }

        v15 = 0;
        v16 = 0;
        v44 = v179;
        goto LABEL_148;
      }

      v177 = v24;
      [v180 doubleValue];
      v68 = v67;
      [v183 doubleValue];
      v46 = v68 * v69 * 0.000001;
      logger = self->_logger;
      if (os_log_type_enabled(logger, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v227 = v180;
        v228 = 2112;
        v229 = v183;
        v230 = 2048;
        v231 = v46;
        _os_log_impl(&_mh_execute_header, logger, OS_LOG_TYPE_INFO, "Adapter voltage: %@, adapter current: %@, estimated watts: %f", buf, 0x20u);
      }
    }

    else
    {
      v177 = v24;
      [v37 doubleValue];
      v46 = v45;
    }

    v47 = [v190 objectForKeyedSubscript:@"PowerTelemetryData"];
    v48 = sub_10001E628();
    v49 = [v48 isEqualToString:@"D79"];

    v174 = v47;
    if (!sub_10001F830(v47))
    {
      v63 = +[BIFeatures sharedInstance];
      v173 = [v63 nsNumberForKey:@"SystemPowerIn" fromDict:v47 withDefaults:-9999999];

      v64 = +[BIFeatures sharedInstance];
      v171 = [v64 nsNumberForKey:@"SystemLoad" fromDict:v47 withDefaults:-9999999];

      v62 = 0;
      v24 = v177;
      goto LABEL_75;
    }

    if (!v49)
    {
      if (error)
      {
        v224 = NSLocalizedDescriptionKey;
        v225 = @"Unable to load power telemetry table.";
        [NSDictionary dictionaryWithObjects:&v225 forKeys:&v224 count:1];
        v66 = v65 = v31;
        *error = [NSError errorWithDomain:@"BatteryIntelligenceErrorDomain" code:1 userInfo:v66];

        v31 = v65;
      }

      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
      {
        sub_100032710();
      }

      v15 = 0;
      v16 = 0;
      v24 = v177;
      v44 = v179;
      v40 = v180;
      goto LABEL_147;
    }

    errorCopy2 = error;
    v163 = v10;
    v166 = v31;
    v50 = off_1000577A8;
    modelVersions = [(BatteryAnalysisEstimator *)self modelVersions];
    v52 = [NSNumber numberWithInteger:targetCopy];
    v53 = [modelVersions objectForKeyedSubscript:v52];
    v54 = [v50 containsObject:v53];

    v55 = self->_logger;
    v56 = os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT);
    if (v54)
    {
      v171 = &off_10004D600;
      v173 = &off_10004D5E8;
      if (v56)
      {
        v57 = v55;
        modelVersions2 = [(BatteryAnalysisEstimator *)self modelVersions];
        v59 = [NSNumber numberWithInteger:targetCopy];
        v60 = modelVersions2;
        v61 = [modelVersions2 objectForKeyedSubscript:v59];
        *buf = 138412802;
        v227 = &off_10004D5E8;
        v228 = 2112;
        v229 = &off_10004D600;
        v230 = 2112;
        v231 = *&v61;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Device does not contain power telemetry table. Substituting default (median) values for system power (= %@ mW) and system load (%@ mW) instead (model version = %@)", buf, 0x20u);

        v62 = 0;
LABEL_70:
        v10 = v163;
        v24 = v177;
LABEL_74:
        v31 = v166;
        error = errorCopy2;
LABEL_75:
        v75 = [v190 objectForKeyedSubscript:@"BatteryData"];
        v168 = v75;
        if (sub_10001F830(v75))
        {
          v40 = v180;
          if (error)
          {
            v222 = NSLocalizedDescriptionKey;
            v223 = @"Unable to load battery data table.";
            [NSDictionary dictionaryWithObjects:&v223 forKeys:&v222 count:1];
            v77 = v76 = v31;
            *error = [NSError errorWithDomain:@"BatteryIntelligenceErrorDomain" code:1 userInfo:v77];

            v31 = v76;
          }

          if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
          {
            sub_100032940();
          }

          v15 = 0;
          v16 = 0;
          v44 = v179;
          v78 = v171;
          goto LABEL_146;
        }

        v169 = v62;
        v178 = v24;
        v79 = +[BIFeatures sharedInstance];
        v80 = [v79 nsArrayForKey:@"Qmax" fromDict:v75 withDefaults:&off_10004CD78];

        v81 = +[BIFeatures sharedInstance];
        v82 = [v81 nsArrayForKey:@"PresentDOD" fromDict:v75 withDefaults:&off_10004CD90];

        v165 = v80;
        v160 = v82;
        if ([v80 count])
        {
          v159 = v9;
          v24 = v178;
          if ([v82 count])
          {
            errorCopy3 = error;
            v164 = v10;
            v167 = v31;
            firstObject = [v165 firstObject];
            [v82 firstObject];
            v216[0] = @"familyCode";
            v216[1] = @"isWireless";
            v217[0] = v182;
            v217[1] = v181;
            v216[2] = @"temperature";
            v216[3] = @"curr_ncc";
            v217[2] = v186;
            v217[3] = v187;
            v216[4] = @"curr_qmax";
            v156 = v216[5] = @"curr_dod";
            v157 = firstObject;
            v217[4] = firstObject;
            v217[5] = v156;
            v216[6] = @"soc";
            v216[7] = @"cycleCount";
            v217[6] = v178;
            v217[7] = v189;
            v216[8] = @"designCap";
            v216[9] = @"systemPowerIn";
            v217[8] = v188;
            v217[9] = v173;
            v216[10] = @"systemLoad";
            v216[11] = @"battAmperage";
            v217[10] = v171;
            v217[11] = v185;
            v216[12] = @"battVoltage";
            v217[12] = v184;
            [NSDictionary dictionaryWithObjects:v217 forKeys:v216 count:13];
            v201 = 0u;
            v202 = 0u;
            v203 = 0u;
            v84 = v204 = 0u;
            v85 = [v84 countByEnumeratingWithState:&v201 objects:v215 count:16];
            if (v85)
            {
              v86 = v85;
              v87 = *v202;
              while (2)
              {
                for (i = 0; i != v86; i = i + 1)
                {
                  if (*v202 != v87)
                  {
                    objc_enumerationMutation(v84);
                  }

                  v89 = *(*(&v201 + 1) + 8 * i);
                  v90 = v84;
                  v91 = [v84 objectForKeyedSubscript:v89];
                  v92 = [v91 isEqual:&off_10004D7B0];

                  if (v92)
                  {
                    if (errorCopy3)
                    {
                      v213 = NSLocalizedDescriptionKey;
                      v99 = [NSString stringWithFormat:@"Error loading %@ from IOPMPS data.", v89];
                      v214 = v99;
                      [NSDictionary dictionaryWithObjects:&v214 forKeys:&v213 count:1];
                      v101 = v100 = self;
                      *errorCopy3 = [NSError errorWithDomain:@"BatteryIntelligenceErrorDomain" code:1 userInfo:v101];

                      self = v100;
                    }

                    v9 = v159;
                    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
                    {
                      sub_100032744();
                    }

                    v15 = 0;
                    v16 = 0;
                    v102 = v90;
                    v103 = v90;
                    v10 = v164;
                    v31 = v167;
                    v44 = v179;
                    v40 = v180;
                    v78 = v171;
                    goto LABEL_144;
                  }

                  v84 = v90;
                }

                v86 = [v90 countByEnumeratingWithState:&v201 objects:v215 count:16];
                if (v86)
                {
                  continue;
                }

                break;
              }
            }

            v154 = v84;
            if (v169)
            {
              v93 = v159;
              v94 = v178;
              v95 = v171;
              v96 = v173;
            }

            else
            {
              [v173 doubleValue];
              v107 = [NSNumber numberWithDouble:v106 * 0.001];

              [v171 doubleValue];
              v95 = [NSNumber numberWithDouble:v108 * 0.001];

              v96 = v107;
              v93 = v159;
              v94 = v178;
            }

            selfCopy = self;
            v211[0] = @"curr_est_watts";
            v109 = [NSNumber numberWithDouble:v46];
            v212[0] = v109;
            v212[1] = v186;
            v211[1] = @"curr_temp";
            v211[2] = @"curr_cycles";
            v212[2] = v189;
            v212[3] = v94;
            v211[3] = @"curr_soc";
            v211[4] = @"curr_ncc";
            v212[4] = v187;
            v212[5] = v157;
            v211[5] = @"curr_qmax";
            v211[6] = @"curr_dod";
            v212[6] = v156;
            v212[7] = v188;
            v211[7] = @"design_capacity";
            v211[8] = @"curr_system_power";
            v172 = v95;
            v173 = v96;
            v212[8] = v96;
            v212[9] = v95;
            v211[9] = @"curr_system_load";
            v211[10] = @"time_since_plugin";
            v212[10] = v93;
            v212[11] = v185;
            v211[11] = @"curr_batt_amperage";
            v211[12] = @"curr_batt_voltage";
            v212[12] = v184;
            v212[13] = v164;
            v211[13] = @"original_session_start_soc";
            v211[14] = @"end_soc";
            v212[14] = v191;
            v211[15] = @"is_wireless";
            v110 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v181 BOOLValue]);
            v212[15] = v110;
            v111 = [NSDictionary dictionaryWithObjects:v212 forKeys:v211 count:16];
            v158 = [NSMutableDictionary dictionaryWithDictionary:v111];

            v112 = +[NSMutableDictionary dictionary];
            v197 = 0u;
            v198 = 0u;
            v199 = 0u;
            v200 = 0u;
            v113 = [&off_10004CD60 countByEnumeratingWithState:&v197 objects:v210 count:16];
            if (v113)
            {
              v114 = v113;
              v115 = *v198;
              do
              {
                for (j = 0; j != v114; j = j + 1)
                {
                  if (*v198 != v115)
                  {
                    objc_enumerationMutation(&off_10004CD60);
                  }

                  v117 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"AdapterInfo_%d", [*(*(&v197 + 1) + 8 * j) intValue]);
                  [v112 setObject:&off_10004D7E0 forKeyedSubscript:v117];
                }

                v114 = [&off_10004CD60 countByEnumeratingWithState:&v197 objects:v210 count:16];
              }

              while (v114);
            }

            v153 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"AdapterInfo_%d", [v182 intValue]);
            [v112 setValue:&off_10004D7F8 forKey:?];
            [v158 addEntriesFromDictionary:v112];
            v118 = +[NSMutableArray array];
            v193 = 0u;
            v194 = 0u;
            v195 = 0u;
            v196 = 0u;
            v119 = [&off_10004CD60 countByEnumeratingWithState:&v193 objects:v209 count:16];
            if (v119)
            {
              v120 = v119;
              v121 = *v194;
              do
              {
                for (k = 0; k != v120; k = k + 1)
                {
                  if (*v194 != v121)
                  {
                    objc_enumerationMutation(&off_10004CD60);
                  }

                  v123 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"AdapterInfo_%d", [*(*(&v193 + 1) + 8 * k) intValue]);
                  [v118 addObject:v123];
                }

                v120 = [&off_10004CD60 countByEnumeratingWithState:&v193 objects:v209 count:16];
              }

              while (v120);
            }

            v124 = selfCopy;
            modelVersions3 = [(os_log_t *)selfCopy modelVersions];
            v126 = [NSNumber numberWithInteger:targetCopy];
            v127 = [modelVersions3 objectForKeyedSubscript:v126];
            v128 = [&off_10004D850 objectForKey:v127];

            v129 = v128;
            v130 = [v128 arrayByAddingObjectsFromArray:v118];
            v131 = selfCopy[5];
            v155 = v130;
            if (os_log_type_enabled(v131, OS_LOG_TYPE_DEBUG))
            {
              v151 = v129;
              v146 = v131;
              modelVersions4 = [(os_log_t *)selfCopy modelVersions];
              v148 = [NSNumber numberWithInteger:targetCopy];
              v149 = [modelVersions4 objectForKeyedSubscript:v148];
              *buf = 138412546;
              v227 = v149;
              v228 = 2112;
              v229 = v155;
              _os_log_debug_impl(&_mh_execute_header, v146, OS_LOG_TYPE_DEBUG, "Ordered list of all features for model version %@: %@", buf, 0x16u);

              v130 = v155;
              v124 = selfCopy;

              v129 = v151;
            }

            v208[0] = &off_10004D7F8;
            v132 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v130 count]);
            v208[1] = v132;
            v133 = [NSArray arrayWithObjects:v208 count:2];

            v134 = v124[5];
            v135 = v158;
            if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v227 = v133;
              v228 = 2112;
              v229 = v158;
              _os_log_impl(&_mh_execute_header, v134, OS_LOG_TYPE_DEFAULT, "Creating multiarray with shape %@ using feature values from dictionary: %@", buf, 0x16u);
            }

            v192 = 0;
            v152 = v133;
            v176 = [[MLMultiArray alloc] initWithShape:v133 dataType:65568 error:&v192];
            v15 = v192;
            v31 = v167;
            if (v15)
            {
              if (os_log_type_enabled(selfCopy[5], OS_LOG_TYPE_ERROR))
              {
                sub_1000327B4();
              }

              v9 = v159;
              if (errorCopy3)
              {
                v136 = v15;
                v16 = 0;
                *errorCopy3 = v15;
              }

              else
              {
                v16 = 0;
              }
            }

            else
            {
              v150 = v129;
              if (![v155 count])
              {
LABEL_137:
                v205 = @"input_1";
                v206 = v176;
                v16 = [NSDictionary dictionaryWithObjects:&v206 forKeys:&v205 count:1];
                v9 = v159;
                v44 = v179;
                v129 = v150;
                goto LABEL_143;
              }

              v137 = 0;
              while (1)
              {
                v138 = [v155 objectAtIndexedSubscript:v137];
                v139 = [v135 objectForKeyedSubscript:v138];

                if (!v139)
                {
                  break;
                }

                v140 = [v155 objectAtIndexedSubscript:v137];
                v141 = [v135 objectForKeyedSubscript:v140];
                v207[0] = &off_10004D7E0;
                v142 = [NSNumber numberWithUnsignedInteger:v137];
                v207[1] = v142;
                v143 = [NSArray arrayWithObjects:v207 count:2];
                [v176 setObject:v141 forKeyedSubscript:v143];

                v135 = v158;
                v31 = v167;

                if (++v137 >= [v155 count])
                {
                  goto LABEL_137;
                }
              }

              v144 = selfCopy[5];
              v129 = v150;
              if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
              {
                sub_100032824(v144, v155, v137);
              }

              v16 = 0;
              v9 = v159;
            }

            v44 = v179;
LABEL_143:

            v10 = v164;
            v40 = v180;
            v78 = v172;
            v102 = v154;
            v103 = v158;
LABEL_144:

            v24 = v178;
            goto LABEL_145;
          }

          v40 = v180;
          if (error)
          {
            v218 = NSLocalizedDescriptionKey;
            v219 = @"PresentDOD array was empty.";
            [NSDictionary dictionaryWithObjects:&v219 forKeys:&v218 count:1];
            v105 = v104 = v31;
            v24 = v178;
            *error = [NSError errorWithDomain:@"BatteryIntelligenceErrorDomain" code:1 userInfo:v105];

            v31 = v104;
          }

          if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
          {
            sub_1000328D8();
          }

          v15 = 0;
          v16 = 0;
        }

        else
        {
          v24 = v178;
          v40 = v180;
          if (error)
          {
            v220 = NSLocalizedDescriptionKey;
            v221 = @"Qmax array was empty.";
            [NSDictionary dictionaryWithObjects:&v221 forKeys:&v220 count:1];
            v98 = v97 = v31;
            v24 = v178;
            *error = [NSError errorWithDomain:@"BatteryIntelligenceErrorDomain" code:1 userInfo:v98];

            v31 = v97;
          }

          if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
          {
            sub_10003290C();
          }

          v15 = 0;
          v16 = 0;
        }

        v44 = v179;
        v78 = v171;
LABEL_145:

LABEL_146:
LABEL_147:

LABEL_148:
LABEL_149:

        v20 = v190;
LABEL_150:

        goto LABEL_151;
      }

      v62 = 0;
    }

    else
    {
      v171 = &off_10004D7C8;
      if (v56)
      {
        v71 = v55;
        modelVersions5 = [(BatteryAnalysisEstimator *)self modelVersions];
        v73 = [NSNumber numberWithInteger:targetCopy];
        v74 = [modelVersions5 objectForKeyedSubscript:v73];
        *buf = 138412546;
        v227 = &off_10004D7C8;
        v228 = 2112;
        v229 = v74;
        _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "Device does not contain power telemetry table. Substituting with default sentinel value (%@) for system power and system load (model version = %@)", buf, 0x16u);

        v62 = 1;
        v173 = &off_10004D7C8;
        goto LABEL_70;
      }

      v62 = 1;
      v173 = &off_10004D7C8;
    }

    v24 = v177;
    goto LABEL_74;
  }

  if (error)
  {
    v244 = NSLocalizedDescriptionKey;
    v245 = @"timeSincePlugin was not provided.";
    v14 = [NSDictionary dictionaryWithObjects:&v245 forKeys:&v244 count:1];
    *error = [NSError errorWithDomain:@"BatteryIntelligenceErrorDomain" code:1 userInfo:v14];
  }

  if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
  {
    sub_100032A78();
  }

  v15 = 0;
  v16 = 0;
LABEL_152:

  return v16;
}

- (double)estimateAndRecordForEndSOC:(int64_t)c withParams:(id)params
{
  v6 = c != 80;
  paramsCopy = params;
  v8 = +[BIBatteryAnalysisSharedResources sharedTargetDetails];
  v9 = [NSNumber numberWithInteger:v6];
  v10 = [v8 objectForKey:v9];

  v11 = [paramsCopy mutableCopy];
  v12 = [NSNumber numberWithInteger:c];
  [v11 setValue:v12 forKey:@"endSOC"];

  v13 = [(BatteryAnalysisEstimator *)self modelForTarget:v6 fromTrial:1];
  if ((sub_10001F78C(v13) & 1) != 0 || ([v13 objectForKey:@"mlModel"], v14 = objc_claimAutoreleasedReturnValue(), v15 = sub_10001F78C(v14), v14, v15))
  {
    v16 = -1.0;
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      sub_100032B9C();
    }
  }

  else
  {
    v34 = 0;
    v17 = [(BatteryAnalysisEstimator *)self featureDictionaryForTarget:v6 withInitialFeatures:v11 withError:&v34];
    v18 = v34;
    if (v18)
    {
      logger = self->_logger;
      v16 = -1.0;
      if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
      {
        sub_100032AAC(logger, v10, v18);
      }
    }

    else if (sub_10001F830(v17))
    {
      v16 = -1.0;
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
      {
        sub_100032B68();
      }
    }

    else
    {
      v20 = [(BatteryAnalysisEstimator *)self estimateForTarget:v6 withFeatures:v17 andModelDict:v13];
      v16 = -1.0;
      if ((sub_10001F78C(v20) & 1) == 0)
      {
        v33 = v20;
        [v20 doubleValue];
        v16 = v21 * 3600.0;
        v22 = self->_logger;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = v22;
          friendlyName = [v10 friendlyName];
          *buf = 138412546;
          v38 = friendlyName;
          v39 = 2048;
          v40 = v16;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Model %@ estimate: %.01lf seconds.", buf, 0x16u);
        }

        if (c != 80)
        {
          v16 = v16 + 300.0;
          v24 = self->_logger;
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = v24;
            friendlyName2 = [v10 friendlyName];
            *buf = 138412546;
            v38 = friendlyName2;
            v39 = 2048;
            v40 = v16;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Updated %@ estimate by offset, estimate is now: %.01lf seconds.", buf, 0x16u);
          }
        }

        v35[0] = @"target";
        v26 = [NSNumber numberWithInteger:v6];
        v36[0] = v26;
        v35[1] = @"end_soc";
        v27 = [NSNumber numberWithInteger:c];
        v36[1] = v27;
        v28 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:2];
        v29 = [(BatteryAnalysisEstimator *)self getPayloadForPPSWithParams:v28 andPredictionValue:v33];

        v20 = v33;
        [BIMetricRecorder sendToPPS:v29 forIdentifier:@"TimeTo80"];
      }
    }
  }

  return v16;
}

- (BOOL)isUnsupportedModelVersion:(id)version
{
  v3 = [&off_10004D850 objectForKey:version];
  v4 = v3 == 0;

  return v4;
}

- (id)modelVersionForTarget:(int64_t)target fromTrial:(BOOL)trial
{
  trialCopy = trial;
  v7 = @"k5wmzvi5mm";
  if (!target)
  {
    v7 = @"bkwqiw7f79";
  }

  v8 = v7;
  modelNames = [(BatteryAnalysisEstimator *)self modelNames];
  v10 = [NSNumber numberWithInteger:target];
  v11 = [modelNames objectForKeyedSubscript:v10];
  v12 = [v11 stringByAppendingString:v8];

  v42[0] = @"version";
  v42[1] = @"model_name";
  v43[0] = v8;
  v43[1] = v12;
  v33 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:2];
  trialManagers = self->_trialManagers;
  v14 = [NSNumber numberWithInteger:target];
  v15 = [(NSDictionary *)trialManagers objectForKeyedSubscript:v14];

  if (trialCopy && v15)
  {
    if (target)
    {
      v16 = @"batteryAnalysisTTLModelID";
    }

    else
    {
      v16 = @"batteryAnalysisModelID";
    }

    v17 = [v15 trialFactorLevel:v16];
    v18 = v17;
    if (v17)
    {
      stringValue = [v17 stringValue];
      if ([(BatteryAnalysisEstimator *)self isUnsupportedModelVersion:?])
      {
        logger = self->_logger;
        if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v37 = stringValue;
          v38 = 2112;
          v39 = v8;
          v40 = 2112;
          v41 = v12;
          _os_log_impl(&_mh_execute_header, logger, OS_LOG_TYPE_DEFAULT, "Loaded unsupported model version from trial (%@). Defaulting to model version %@ at %@.", buf, 0x20u);
        }
      }

      else
      {
        v21 = stringValue;

        modelNames2 = [(BatteryAnalysisEstimator *)self modelNames];
        v22 = [NSNumber numberWithInteger:target];
        [modelNames2 objectForKeyedSubscript:v22];
        v23 = v31 = v18;
        v30 = [v23 stringByAppendingString:v21];

        v18 = v31;
        v34[0] = @"version";
        v34[1] = @"model_name";
        v35[0] = v21;
        v35[1] = v30;
        v24 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:2];

        v25 = [v24 objectForKeyedSubscript:@"version"];
        modelVersions = [(BatteryAnalysisEstimator *)self modelVersions];
        v27 = [NSNumber numberWithInteger:target];
        [modelVersions setObject:v25 forKeyedSubscript:v27];

        v33 = v24;
        v12 = v30;
        v8 = v21;
      }
    }

    else
    {
      v20 = self->_logger;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v37 = v8;
        v38 = 2112;
        v39 = v12;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Unable to obtain model ID from trial. Defaulting to model version %@ at %@.", buf, 0x16u);
      }
    }
  }

  return v33;
}

- (id)estimateForTarget:(int64_t)target withFeatures:(id)features andModelDict:(id)dict
{
  dictCopy = dict;
  featuresCopy = features;
  v10 = +[BIBatteryAnalysisSharedResources sharedTargetDetails];
  v11 = [NSNumber numberWithInteger:target];
  v12 = [v10 objectForKey:v11];

  v36 = 0;
  v13 = [[MLDictionaryFeatureProvider alloc] initWithDictionary:featuresCopy error:&v36];

  v14 = v36;
  if (v14)
  {
    v15 = v14;
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      sub_10002E8D0();
    }

LABEL_11:
    v16 = 0;
    goto LABEL_12;
  }

  if (sub_10001F78C(v13))
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      sub_100032D10();
    }

    goto LABEL_11;
  }

  if (sub_10001F78C(dictCopy))
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      sub_100032CDC();
    }

    goto LABEL_11;
  }

  v18 = [dictCopy objectForKey:@"mlModel"];
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    v20 = logger;
    friendlyName = [v12 friendlyName];
    v22 = [dictCopy objectForKeyedSubscript:@"model_name"];
    v23 = [dictCopy objectForKeyedSubscript:@"version"];
    *buf = 138412802;
    v40 = friendlyName;
    v41 = 2112;
    v42 = v22;
    v43 = 2112;
    v44 = v23;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Predicting %@ using model: %@ and version: %@.", buf, 0x20u);
  }

  v35 = 0;
  v24 = [v18 predictionFromFeatures:v13 error:&v35];
  v25 = v35;
  if (v25)
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      sub_100032C04();
    }
  }

  else
  {
    if (!sub_10001F78C(v24))
    {
      v33 = v18;
      v26 = [dictCopy objectForKeyedSubscript:@"predictedFeatureNames"];
      firstObject = [v26 firstObject];

      v28 = [v24 featureValueForName:firstObject];
      multiArrayValue = [v28 multiArrayValue];

      v37 = &off_10004D7E0;
      v38 = firstObject;
      v30 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      v34 = multiArrayValue;
      v31 = [BITensor getValuesFrom2DMultiArray:multiArrayValue withFeatureNamesForDimensions:v30];

      if (sub_10001F830(v31))
      {
        v32 = firstObject;
        if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
        {
          sub_100032C74();
        }

        v16 = 0;
      }

      else
      {
        v32 = firstObject;
        v16 = [v31 objectForKeyedSubscript:firstObject];
      }

      v18 = v33;

      goto LABEL_24;
    }

    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      sub_100032CA8();
    }
  }

  v16 = 0;
LABEL_24:

LABEL_12:

  return v16;
}

- (id)getPayloadForPPSWithParams:(id)params andPredictionValue:(id)value
{
  valueCopy = value;
  paramsCopy = params;
  v8 = [paramsCopy objectForKey:@"target"];
  v9 = +[NSMutableDictionary dictionary];
  modelVersions = [(BatteryAnalysisEstimator *)self modelVersions];
  v11 = [modelVersions objectForKeyedSubscript:v8];
  [v9 setObject:v11 forKeyedSubscript:@"model_id"];

  modelNames = [(BatteryAnalysisEstimator *)self modelNames];
  v13 = [modelNames objectForKeyedSubscript:v8];
  [v9 setObject:v13 forKeyedSubscript:@"model_name"];

  [v9 setObject:valueCopy forKeyedSubscript:@"model_prediction"];
  v14 = [NSNumber numberWithUnsignedInt:sub_10001E8F4()];
  [v9 setObject:v14 forKeyedSubscript:@"start_soc"];

  v15 = [paramsCopy objectForKey:@"end_soc"];

  [v9 setObject:v15 forKeyedSubscript:@"end_soc"];

  return v9;
}

@end