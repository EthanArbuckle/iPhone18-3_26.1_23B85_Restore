@interface BatteryAlgorithmsRunner
- (BOOL)algoWriteValidSmcKeys:(id)a3;
- (BatteryAlgorithmsRunner)init;
- (id)algoPreRunnerWithData:(id)a3;
- (int)algoRunnerExecuteWithData:(id)a3;
- (void)algoRunnerFreshInitWithData:(id)a3;
- (void)algoRunnerInitWithData:(id)a3;
- (void)algoRunnerStoreOutput;
@end

@implementation BatteryAlgorithmsRunner

- (BatteryAlgorithmsRunner)init
{
  v7.receiver = self;
  v7.super_class = BatteryAlgorithmsRunner;
  v2 = [(BatteryAlgorithmsRunner *)&v7 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.batteryintelligence", "BatteryAlgorithmsRunner");
    v4 = qword_100057920;
    qword_100057920 = v3;

    v5 = v2;
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10002FE84();
  }

  return v2;
}

- (void)algoRunnerInitWithData:(id)a3
{
  v4 = a3;
  if (![(BatteryAlgorithmsRunner *)self featureFlagEn])
  {
    v5 = qword_100057920;
    if (os_log_type_enabled(qword_100057920, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = [(BatteryAlgorithmsRunner *)self AlgorithmClassName];
      *buf = 138412290;
      v48 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ algorithm disabled by Feature Flag, Skipping", buf, 0xCu);
    }

    self->_initDone = 1;
  }

  v8 = sub_10001DEB8();
  v9 = [v8 stringByAppendingFormat:@"%@%@%@", @"/", @"com.apple.batteryintelligence.batteryalgorithms", @"/"];

  v10 = [v9 stringByAppendingFormat:@"%@%@", @"com.apple.batteryintelligence.batteryalgorithms", @"-"];
  v11 = [(BatteryAlgorithmsRunner *)self AlgorithmClassName];
  v12 = [v10 stringByAppendingFormat:@"%@%@", v11, @"-meta.plist"];
  metaFilePath = self->_metaFilePath;
  self->_metaFilePath = v12;

  v14 = qword_100057920;
  if (os_log_type_enabled(qword_100057920, OS_LOG_TYPE_DEFAULT))
  {
    v15 = self->_metaFilePath;
    *buf = 138412290;
    v48 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Metadata file: %@", buf, 0xCu);
  }

  v16 = [(BatteryAlgorithmsRunner *)self metaFilePath];
  v17 = sub_10001E4AC(v16);

  v18 = [NSMutableDictionary dictionaryWithDictionary:v17];
  runMetaData = self->_runMetaData;
  self->_runMetaData = v18;

  v20 = [(BatteryAlgorithmsRunner *)self AlgorithmClassName];
  v21 = [v10 stringByAppendingFormat:@"%@%@", v20, @"-state.plist"];
  stateFilePath = self->_stateFilePath;
  self->_stateFilePath = v21;

  v23 = qword_100057920;
  if (os_log_type_enabled(qword_100057920, OS_LOG_TYPE_DEFAULT))
  {
    v24 = self->_stateFilePath;
    *buf = 138412290;
    v48 = v24;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "State file: %@", buf, 0xCu);
  }

  v25 = [(BatteryAlgorithmsRunner *)self stateFilePath];
  v26 = sub_10001E4AC(v25);

  v27 = [NSMutableDictionary dictionaryWithDictionary:v26];
  algoStateData = self->_algoStateData;
  self->_algoStateData = v27;

  v29 = [(BatteryAlgorithmsRunner *)self AlgorithmClassName];
  v30 = [@"com.apple.batteryalgorithm." stringByAppendingFormat:@"%@", v29];
  eventCA = self->_eventCA;
  self->_eventCA = v30;

  v32 = [(BatteryAlgorithmsRunner *)self algoStateData];
  [v4 setObject:v32 forKey:@"savedAlgoState"];

  v33 = [(BatteryAlgorithmsRunner *)self AlgorithmClassName];
  v34 = [NSClassFromString(v33) algorithmWithData:v4];

  algorithmObject = self->_algorithmObject;
  self->_algorithmObject = v34;

  v36 = [(BatteryAlgorithmsRunner *)self algorithmObject];

  if (!v36)
  {
    v37 = qword_100057920;
    if (os_log_type_enabled(qword_100057920, OS_LOG_TYPE_DEFAULT))
    {
      v38 = v37;
      v39 = [(BatteryAlgorithmsRunner *)self AlgorithmClassName];
      *buf = 138412290;
      v48 = v39;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%@ algorithm Errored out", buf, 0xCu);
    }

    self->_initDone = 0;
  }

  v40 = [(BatteryAlgorithmsRunner *)self algorithmObject];
  v41 = qword_100057920;
  if (os_log_type_enabled(qword_100057920, OS_LOG_TYPE_DEFAULT))
  {
    v42 = v41;
    v43 = [v40 name];
    *buf = 138412290;
    v48 = v43;
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "The Algorithm Name is: %@", buf, 0xCu);
  }

  v44 = qword_100057920;
  if (os_log_type_enabled(qword_100057920, OS_LOG_TYPE_DEFAULT))
  {
    v45 = v44;
    v46 = [v40 algoDescription];
    *buf = 138412290;
    v48 = v46;
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "The Algorithm description is: %@", buf, 0xCu);
  }

  self->_freshInitRequested = [v40 freshInitNeeded];
  self->_initDone = 1;
}

- (void)algoRunnerFreshInitWithData:(id)a3
{
  v4 = a3;
  if ([(BatteryAlgorithmsRunner *)self featureFlagEn])
  {
    v5 = [(BatteryAlgorithmsRunner *)self algorithmObject];
    v6 = [v5 freshInitWithData:v4];

    if (v6)
    {
      v7 = qword_100057920;
      if (os_log_type_enabled(qword_100057920, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v7;
        v9 = [(BatteryAlgorithmsRunner *)self AlgorithmClassName];
        v13 = 138412546;
        v14 = v9;
        v15 = 1024;
        v16 = v6;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ failed to init: %d", &v13, 0x12u);
      }

      self->_initDone = 0;
    }
  }

  else
  {
    v10 = qword_100057920;
    if (os_log_type_enabled(qword_100057920, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = [(BatteryAlgorithmsRunner *)self AlgorithmClassName];
      v13 = 138412290;
      v14 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ algorithm disabled by Feature Flag, Skipping", &v13, 0xCu);
    }
  }
}

- (id)algoPreRunnerWithData:(id)a3
{
  v4 = a3;
  v5 = [(BatteryAlgorithmsRunner *)self algorithmObject];
  v6 = [v5 preRun:v4];

  return v6;
}

- (int)algoRunnerExecuteWithData:(id)a3
{
  v4 = a3;
  v5 = [(BatteryAlgorithmsRunner *)self algorithmObject];
  v6 = [v5 runWithData:v4];

  return v6;
}

- (BOOL)algoWriteValidSmcKeys:(id)a3
{
  v3 = a3;
  v4 = off_100057768;
  v5 = [v3 allKeys];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = [v3 objectForKeyedSubscript:v4];
    if (!v7)
    {
      v13 = qword_100057920;
      if (os_log_type_enabled(qword_100057920, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138412290;
        v23 = v3;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Did not find valid value in data dict %@", &v22, 0xCu);
      }

      goto LABEL_19;
    }

    v8 = v7;
    v9 = off_100057778[0];
    v10 = off_100057780;
    if ([v8 compare:v9]== -1 || [v8 compare:v10]== 1)
    {
      v11 = qword_100057920;
      if (os_log_type_enabled(qword_100057920, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138413058;
        v23 = v8;
        v24 = 2112;
        v25 = v4;
        v26 = 2112;
        v27 = v9;
        v28 = 2112;
        v29 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Value %@ is out of range for %@. Valid range [%@:%@]", &v22, 0x2Au);
      }
    }

    else
    {
      v14 = dword_100057770;
      v15 = byte_100057774;
      v22 = [v8 intValue];
      if (v15 < 5)
      {
        v17 = sub_100001484(v14, &v22, v15);
        if (!v17)
        {

          v20 = 1;
          goto LABEL_20;
        }

        v18 = v17;
        v19 = qword_100057920;
        if (os_log_type_enabled(qword_100057920, OS_LOG_TYPE_ERROR))
        {
          sub_10002FECC(v14, v18, v19);
        }
      }

      else
      {
        v16 = qword_100057920;
        if (os_log_type_enabled(qword_100057920, OS_LOG_TYPE_ERROR))
        {
          sub_10002FF54(v15, v16);
        }
      }
    }

    goto LABEL_18;
  }

  v12 = qword_100057920;
  if (os_log_type_enabled(qword_100057920, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v12;
    v9 = [v3 allKeys];
    v22 = 138412546;
    v23 = v4;
    v24 = 2112;
    v25 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Did not find any data for %@. Keys passed in = %@", &v22, 0x16u);
LABEL_18:
  }

LABEL_19:
  v20 = 0;
LABEL_20:

  return v20;
}

- (void)algoRunnerStoreOutput
{
  v2 = self;
  v3 = [(BatteryAlgorithmsRunner *)self algorithmObject];
  v4 = [v3 output];

  if (v4)
  {
    v5 = [v4 valueForKey:@"kCoreAnalyticsData"];

    if (v5)
    {
      v6 = qword_100057920;
      if (os_log_type_enabled(qword_100057920, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v6;
        v8 = [v4 valueForKey:@"kCoreAnalyticsData"];
        *buf = 138412290;
        v107 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Storing this to CA: %@", buf, 0xCu);
      }

      v9 = [v4 valueForKey:@"kCoreAnalyticsData"];
      v10 = [(BatteryAlgorithmsRunner *)v2 eventCA];
      [BIMetricRecorder sendToCoreAnalytics:v9 forEvent:v10 withTrialManager:0];
    }

    v11 = [v4 valueForKey:@"kBDCOutputData"];

    if (v11)
    {
      v12 = [v4 valueForKey:@"kBDCOutputData"];
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      v86 = 0u;
      v13 = [&off_10004CBC8 countByEnumeratingWithState:&v83 objects:v95 count:16];
      if (v13)
      {
        v14 = v13;
        v77 = *v84;
        v72 = v12;
        v73 = v2;
        do
        {
          v15 = 0;
          v74 = v14;
          do
          {
            if (*v84 != v77)
            {
              objc_enumerationMutation(&off_10004CBC8);
            }

            v78 = v15;
            v16 = *(*(&v83 + 1) + 8 * v15);
            v17 = qword_100057920;
            if (os_log_type_enabled(qword_100057920, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v107 = v16;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Looking for %@ in BDCOutputData", buf, 0xCu);
            }

            v18 = [v12 allKeys];
            v19 = [v18 containsObject:v16];

            if (v19)
            {
              v20 = [v12 valueForKey:v16];
              v21 = qword_100057920;
              if (os_log_type_enabled(qword_100057920, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v107 = v16;
                v108 = 2112;
                v109 = v20;
                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Storing this to DB Table %@: %@", buf, 0x16u);
              }

              v22 = [(BatteryAlgorithmsRunner *)v2 AlgorithmClassName];
              v23 = [NSString stringWithFormat:@"%@%@", v22, v16];

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v75 = v20;
                v76 = v23;
                if ([v16 isEqualToString:@"SBC"])
                {
                  v24 = v20;
                  v25 = +[NSMutableDictionary dictionary];
                  v102 = 0u;
                  v103 = 0u;
                  v104 = 0u;
                  v105 = 0u;
                  v26 = v24;
                  v27 = [v26 countByEnumeratingWithState:&v102 objects:buf count:16];
                  if (v27)
                  {
                    v28 = v27;
                    v29 = 0;
                    v30 = 0;
                    v31 = *v103;
                    do
                    {
                      v32 = 0;
                      v33 = v29;
                      v34 = v30;
                      do
                      {
                        if (*v103 != v31)
                        {
                          objc_enumerationMutation(v26);
                        }

                        v30 = *(*(&v102 + 1) + 8 * v32);

                        v29 = v33 + 1;
                        v35 = [NSNumber numberWithUnsignedInteger:v33];
                        [v25 setObject:v30 forKey:v35];

                        v32 = v32 + 1;
                        v33 = v29;
                        v34 = v30;
                      }

                      while (v28 != v32);
                      v28 = [v26 countByEnumeratingWithState:&v102 objects:buf count:16];
                    }

                    while (v28);
                  }

                  v36 = qword_100057920;
                  if (os_log_type_enabled(qword_100057920, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    v107 = v25;
                    v108 = 2112;
                    v109 = v76;
                    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Storing this Dictionary to PPS EPSQL %@: %@", buf, 0x16u);
                  }

                  v23 = v76;
                  [BIMetricRecorder sendToPPS:v25 forIdentifier:v76];

                  v12 = v72;
                  v2 = v73;
                  v14 = v74;
                  v20 = v75;
                }

                else
                {
                  v40 = v20;
                  v41 = v23;
                  v91 = 0u;
                  v92 = 0u;
                  v93 = 0u;
                  v94 = 0u;
                  obj = v40;
                  v81 = [v40 countByEnumeratingWithState:&v91 objects:buf count:16];
                  if (v81)
                  {
                    v80 = *v92;
                    do
                    {
                      v42 = 0;
                      do
                      {
                        if (*v92 != v80)
                        {
                          objc_enumerationMutation(obj);
                        }

                        v82 = v42;
                        v43 = *(*(&v91 + 1) + 8 * v42);
                        v44 = +[NSMutableDictionary dictionary];
                        v87 = 0u;
                        v88 = 0u;
                        v89 = 0u;
                        v90 = 0u;
                        v45 = v43;
                        v46 = [v45 countByEnumeratingWithState:&v87 objects:&v102 count:16];
                        if (v46)
                        {
                          v47 = v46;
                          v48 = *v88;
                          do
                          {
                            for (i = 0; i != v47; i = i + 1)
                            {
                              if (*v88 != v48)
                              {
                                objc_enumerationMutation(v45);
                              }

                              v50 = *(*(&v87 + 1) + 8 * i);
                              v51 = [v45 objectForKey:v50];
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v100 = v50;
                                v101 = v51;
                                v52 = [NSDictionary dictionaryWithObjects:&v101 forKeys:&v100 count:1];
                                v53 = qword_100057920;
                                if (os_log_type_enabled(qword_100057920, OS_LOG_TYPE_DEFAULT))
                                {
                                  *v96 = 138412546;
                                  v97 = v52;
                                  v98 = 2112;
                                  v99 = v41;
                                  _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Adding this Array to PPS EPSQL %@ : %@", v96, 0x16u);
                                }

                                [BIMetricRecorder sendToPPS:v52 forIdentifier:v41];
                              }

                              else
                              {
                                [v44 setObject:v51 forKeyedSubscript:v50];
                              }
                            }

                            v47 = [v45 countByEnumeratingWithState:&v87 objects:&v102 count:16];
                          }

                          while (v47);
                        }

                        v54 = qword_100057920;
                        if (os_log_type_enabled(qword_100057920, OS_LOG_TYPE_DEFAULT))
                        {
                          *v96 = 138412546;
                          v97 = v44;
                          v98 = 2112;
                          v99 = v41;
                          _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Storing this Dictionary to PPS EPSQL %@: %@", v96, 0x16u);
                        }

                        [BIMetricRecorder sendToPPS:v44 forIdentifier:v41];

                        v42 = v82 + 1;
                      }

                      while ((v82 + 1) != v81);
                      v81 = [obj countByEnumeratingWithState:&v91 objects:buf count:16];
                    }

                    while (v81);
                  }

                  v12 = v72;
                  v2 = v73;
                  v14 = v74;
                  v20 = v75;
                  v23 = v76;
                }
              }
            }

            else
            {
              v37 = qword_100057920;
              if (os_log_type_enabled(qword_100057920, OS_LOG_TYPE_DEFAULT))
              {
                v38 = v37;
                v39 = [v12 allKeys];
                *buf = 138412546;
                v107 = v16;
                v108 = 2112;
                v109 = v39;
                _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Did not find any data for %@. Keys passed in = %@", buf, 0x16u);
              }
            }

            v15 = v78 + 1;
          }

          while ((v78 + 1) != v14);
          v14 = [&off_10004CBC8 countByEnumeratingWithState:&v83 objects:v95 count:16];
        }

        while (v14);
      }
    }

    v55 = [v4 valueForKey:@"smcData"];

    if (v55)
    {
      v56 = qword_100057920;
      if (os_log_type_enabled(qword_100057920, OS_LOG_TYPE_DEFAULT))
      {
        v57 = v56;
        v58 = [v4 valueForKey:@"smcData"];
        *buf = 138412290;
        v107 = v58;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Transfer SMC data %@", buf, 0xCu);
      }

      v59 = [v4 valueForKey:@"smcData"];
      if (![(BatteryAlgorithmsRunner *)v2 algoWriteValidSmcKeys:v59])
      {
        v60 = qword_100057920;
        if (os_log_type_enabled(qword_100057920, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Transfer SMC key data failed", buf, 2u);
        }
      }
    }

    v61 = [v4 valueForKey:@"savedAlgoState"];

    if (v61)
    {
      v62 = qword_100057920;
      if (os_log_type_enabled(qword_100057920, OS_LOG_TYPE_DEFAULT))
      {
        v63 = v62;
        v64 = [v4 valueForKey:@"savedAlgoState"];
        *buf = 138412290;
        v107 = v64;
        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "Storing system state %@", buf, 0xCu);
      }

      v65 = [v4 valueForKey:@"savedAlgoState"];
      v66 = [(BatteryAlgorithmsRunner *)v2 stateFilePath];
      sub_10001DFFC(v65, v66);
    }
  }

  v67 = qword_100057920;
  if (os_log_type_enabled(qword_100057920, OS_LOG_TYPE_DEFAULT))
  {
    v68 = v67;
    v69 = [(BatteryAlgorithmsRunner *)v2 runMetaData];
    *buf = 138412290;
    v107 = v69;
    _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "Storing MetaData %@", buf, 0xCu);
  }

  v70 = [(BatteryAlgorithmsRunner *)v2 runMetaData];
  v71 = [(BatteryAlgorithmsRunner *)v2 metaFilePath];
  sub_10001DFFC(v70, v71);
}

@end