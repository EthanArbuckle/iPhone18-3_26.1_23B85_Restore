@interface BatteryAlgorithmsInit
+ (id)sharedInstance;
- (BatteryAlgorithmsInit)init;
- (void)fullInitDataRead;
@end

@implementation BatteryAlgorithmsInit

+ (id)sharedInstance
{
  if (qword_100057878 != -1)
  {
    sub_10002DF4C();
  }

  v3 = qword_100057870;

  return v3;
}

- (BatteryAlgorithmsInit)init
{
  v62.receiver = self;
  v62.super_class = BatteryAlgorithmsInit;
  v2 = [(BatteryAlgorithmsInit *)&v62 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.batteryintelligence", "BatteryAlgoInputs");
    v4 = qword_100057880;
    qword_100057880 = v3;

    v5 = qword_100057880;
    if (os_log_type_enabled(qword_100057880, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Starting BatteryAlgorithmsInit", buf, 2u);
    }

    v6 = sub_10001E58C();
    battData = v2->_battData;
    v2->_battData = v6;

    v8 = [(BatteryAlgorithmsInit *)v2 battData];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 objectForKey:@"BatteryData"];
      if (sub_10001F830(v10) || (sub_10001F914(v10) & 1) == 0)
      {
        if (os_log_type_enabled(qword_100057880, OS_LOG_TYPE_ERROR))
        {
          sub_10002DFC8();
        }

        v22 = 0;
      }

      else
      {
        v11 = [v9 objectForKey:@"ChargerData"];
        if (sub_10001F830(v11) || (sub_10001F914(v11) & 1) == 0)
        {
          if (os_log_type_enabled(qword_100057880, OS_LOG_TYPE_ERROR))
          {
            sub_10002DF94();
          }

          v22 = 0;
        }

        else
        {
          v12 = [v10 objectForKey:@"LifetimeData"];
          if (sub_10001F830(v12) || (sub_10001F914(v12) & 1) == 0)
          {
            if (os_log_type_enabled(qword_100057880, OS_LOG_TYPE_ERROR))
            {
              sub_10002DF60();
            }

            v22 = 0;
          }

          else
          {
            v13 = [v10 objectForKey:@"AlgoChemID"];
            v61 = sub_100002C7C(v13);

            v14 = [v9 objectForKey:@"CycleCount"];
            v60 = sub_100002C7C(v14);

            v15 = [v11 objectForKey:@"VacVoltageLimit"];
            v59 = sub_100002C7C(v15);

            v16 = [v12 objectForKey:@"TotalOperatingTime"];
            v58 = sub_100002C7C(v16);

            v17 = [v12 objectForKey:@"CycleCountLastQmax"];
            v57 = sub_100002C7C(v17);

            v18 = [v10 objectForKey:@"DateOfFirstUse"];
            v56 = sub_100002C7C(v18);

            v19 = [v10 objectForKey:@"Serial"];
            v55 = sub_100002C7C(v19);

            v20 = [v12 objectForKey:@"TimeAtHighSoc"];
            v54 = sub_100002C7C(v20);

            v21 = [v10 objectForKey:@"AlgoCycleCountDbgData"];
            v53 = sub_100002C7C(v21);

            v22 = +[NSMutableDictionary dictionary];
            [(NSMutableDictionary *)v22 setObject:v61 forKeyedSubscript:@"AlgoChemID"];
            [(NSMutableDictionary *)v22 setObject:v60 forKeyedSubscript:@"CycleCount"];
            [(NSMutableDictionary *)v22 setObject:v59 forKeyedSubscript:@"VacVoltageLimit"];
            [(NSMutableDictionary *)v22 setObject:v58 forKeyedSubscript:@"TotalOperatingTime"];
            [(NSMutableDictionary *)v22 setObject:v57 forKeyedSubscript:@"CycleCountLastQmax"];
            [(NSMutableDictionary *)v22 setObject:v56 forKeyedSubscript:@"DateOfFirstUse"];
            [(NSMutableDictionary *)v22 setObject:v55 forKeyedSubscript:@"Serial"];
            [(NSMutableDictionary *)v22 setObject:v54 forKeyedSubscript:@"TimeAtHighSoc"];
            [(NSMutableDictionary *)v22 setObject:v53 forKeyedSubscript:@"AlgoCycleCountDbgData"];
          }
        }
      }
    }

    else
    {
      if (os_log_type_enabled(qword_100057880, OS_LOG_TYPE_ERROR))
      {
        sub_10002DFFC();
      }

      v22 = 0;
    }

    smcKeys = v2->_smcKeys;
    v2->_smcKeys = v22;

    v32 = +[NSMutableDictionary dictionary];
    deviceState = v2->_deviceState;
    v2->_deviceState = v32;

    *buf = 0;
    v34 = IOPSGetBatteryHealthState();
    if (v34)
    {
      v35 = v34;
      v36 = qword_100057880;
      if (os_log_type_enabled(qword_100057880, OS_LOG_TYPE_DEFAULT))
      {
        *v66 = 67109120;
        v67 = v35;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Error fetching battery health state: %d", v66, 8u);
      }

      v37 = 1;
    }

    else
    {
      v38 = *buf;
      v39 = [v38 objectForKeyedSubscript:@"IOPSBatteryHealthState"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v40 = [v39 intValue];

        v37 = v40 != 4;
      }

      else
      {
        v41 = qword_100057880;
        if (os_log_type_enabled(qword_100057880, OS_LOG_TYPE_DEFAULT))
        {
          *v66 = 0;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Battery health info was not returned", v66, 2u);
        }

        v37 = 0;
      }
    }

    v42 = [NSNumber numberWithBool:v37];
    [(NSMutableDictionary *)v2->_deviceState setObject:v42 forKeyedSubscript:@"BatteryAuthPass"];

    v43 = sub_10001E628();
    [(NSMutableDictionary *)v2->_deviceState setObject:v43 forKeyedSubscript:@"DeviceType"];

    v44 = [NSMutableDictionary alloc];
    v64[0] = @"smcData";
    v45 = [(BatteryAlgorithmsInit *)v2 smcKeys];
    v64[1] = @"systemState";
    v65[0] = v45;
    v46 = [(BatteryAlgorithmsInit *)v2 deviceState];
    v65[1] = v46;
    v47 = [NSDictionary dictionaryWithObjects:v65 forKeys:v64 count:2];
    v48 = [v44 initWithDictionary:v47];
    preInitData = v2->_preInitData;
    v2->_preInitData = v48;

    v50 = qword_100057880;
    if (os_log_type_enabled(qword_100057880, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Done BatteryAlgorithmsInit", buf, 2u);
    }

    v51 = v2;
  }

  else
  {
    v23 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v23)
    {
      sub_10002E030(v23, v24, v25, v26, v27, v28, v29, v30);
    }
  }

  return v2;
}

- (void)fullInitDataRead
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001F70;
  block[3] = &unk_1000486E0;
  block[4] = self;
  if (qword_100057888 != -1)
  {
    dispatch_once(&qword_100057888, block);
  }
}

@end