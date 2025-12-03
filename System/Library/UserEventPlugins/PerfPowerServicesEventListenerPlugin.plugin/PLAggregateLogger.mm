@interface PLAggregateLogger
- (BOOL)getCurrentDisplayState;
- (BOOL)getCurrentLPMState;
- (PLAggregateLogger)init;
- (int)binSessionLength:(int64_t)length;
- (void)dealloc;
- (void)handleAODMode:(id)mode;
- (void)handleBatteryStatus:(id)status;
- (void)handleDayChange;
- (void)handleEvent:(unsigned int)event withStatus:(BOOL)status;
- (void)handleLPMEvent:(id)event withAggdKeys:(id)keys withAggregateState:(id)state;
- (void)handleLPMStatus:(id)status;
- (void)handleWake:(id)wake;
- (void)queryBatteryStatsAtBoot;
@end

@implementation PLAggregateLogger

- (PLAggregateLogger)init
{
  v28.receiver = self;
  v28.super_class = PLAggregateLogger;
  v2 = [(PLAggregateLogger *)&v28 init];
  if (v2)
  {
    v3 = [NSMutableArray alloc];
    if (+[PLPowerEventListener hasBaseband])
    {
      v4 = 32;
    }

    else
    {
      v4 = 16;
    }

    v2->baseStates = [v3 initWithCapacity:v4];
    +[PLPowerEventListener hasBaseband];
    v5 = 0;
    do
    {
      [(NSMutableArray *)v2->baseStates setObject:objc_alloc_init(PLAggregateState) atIndexedSubscript:v5++];
      if (+[PLPowerEventListener hasBaseband])
      {
        v6 = 32;
      }

      else
      {
        v6 = 16;
      }
    }

    while (v5 < v6);
    v2->compositeStates = [[NSMutableDictionary alloc] initWithCapacity:11];
    v49 = &off_13A68;
    v50 = &off_13A68;
    [(NSMutableDictionary *)v2->compositeStates setObject:[PLAggregateState forKeyedSubscript:"stateWithSubstateIndices:" stateWithSubstateIndices:?], @"unplugged"];
    v47[0] = &off_13A68;
    v47[1] = &off_13A80;
    v48[0] = &off_13A68;
    v48[1] = &off_13A68;
    [(NSMutableDictionary *)v2->compositeStates setObject:[PLAggregateState forKeyedSubscript:"stateWithSubstateIndices:" stateWithSubstateIndices:?], @"unplugged_asleep"];
    v45[0] = &off_13A68;
    v45[1] = &off_13A80;
    v46[0] = &off_13A68;
    v46[1] = &off_13A80;
    [(NSMutableDictionary *)v2->compositeStates setObject:[PLAggregateState forKeyedSubscript:"stateWithSubstateIndices:" stateWithSubstateIndices:?], @"unplugged_awake"];
    v43[0] = &off_13A68;
    v43[1] = &off_13A80;
    v44[0] = &off_13A68;
    v44[1] = &off_13A80;
    v43[2] = &off_13A98;
    v44[2] = &off_13A80;
    [(NSMutableDictionary *)v2->compositeStates setObject:[PLAggregateState forKeyedSubscript:"stateWithSubstateIndices:" stateWithSubstateIndices:?], @"unplugged_screen_on"];
    v41[0] = &off_13A68;
    v41[1] = &off_13A80;
    v42[0] = &off_13A68;
    v42[1] = &off_13A80;
    v41[2] = &off_13A98;
    v42[2] = &off_13A68;
    [(NSMutableDictionary *)v2->compositeStates setObject:[PLAggregateState forKeyedSubscript:"stateWithSubstateIndices:" stateWithSubstateIndices:?], @"unplugged_screen_off"];
    if (+[PLPowerEventListener supportsLPM])
    {
      v39[0] = &off_13A68;
      v39[1] = &off_13AB0;
      v40[0] = &off_13A68;
      v40[1] = &off_13A80;
      [(NSMutableDictionary *)v2->compositeStates setObject:[PLAggregateState forKeyedSubscript:"stateWithSubstateIndices:" stateWithSubstateIndices:?], @"unplugged_lpm_on"];
      v37[0] = &off_13A68;
      v37[1] = &off_13AB0;
      v38[0] = &off_13A68;
      v38[1] = &off_13A68;
      [(NSMutableDictionary *)v2->compositeStates setObject:[PLAggregateState forKeyedSubscript:"stateWithSubstateIndices:" stateWithSubstateIndices:?], @"unplugged_lpm_off"];
    }

    v35 = &off_13A68;
    v36 = &off_13A80;
    [(NSMutableDictionary *)v2->compositeStates setObject:[PLAggregateState forKeyedSubscript:"stateWithSubstateIndices:" stateWithSubstateIndices:?], @"pluggedin"];
    v33[0] = &off_13A68;
    v33[1] = &off_13AC8;
    v34[0] = &off_13A80;
    v34[1] = &off_13A80;
    [(NSMutableDictionary *)v2->compositeStates setObject:[PLAggregateState forKeyedSubscript:"stateWithSubstateIndices:" stateWithSubstateIndices:?], @"pluggedin_charging"];
    v31[0] = &off_13A68;
    v31[1] = &off_13A80;
    v32[0] = &off_13A80;
    v32[1] = &off_13A80;
    v31[2] = &off_13A98;
    v32[2] = &off_13A80;
    [(NSMutableDictionary *)v2->compositeStates setObject:[PLAggregateState forKeyedSubscript:"stateWithSubstateIndices:" stateWithSubstateIndices:?], @"pluggedin_screen_on"];
    v29[0] = &off_13A68;
    v29[1] = &off_13A80;
    v30[0] = &off_13A80;
    v30[1] = &off_13A80;
    v29[2] = &off_13A98;
    v30[2] = &off_13A68;
    [(NSMutableDictionary *)v2->compositeStates setObject:[PLAggregateState forKeyedSubscript:"stateWithSubstateIndices:" stateWithSubstateIndices:?], @"pluggedin_screen_off"];
    v7 = objc_opt_new();
    [+[NSDate date](NSDate timeIntervalSince1970];
    v2->lastTime = v8;
    v2->lastVoltage = [v7 voltage] / 1000.0;
    if ([v7 gasGaugeEnabled])
    {
      [v7 currentCapacity];
    }

    else
    {
      [v7 rawCapacity];
    }

    v2->lastCurrentCapacity = v9;
    if ([v7 gasGaugeEnabled])
    {
      [v7 currentAbsoluteCapacity];
    }

    else
    {
      [v7 rawCapacity];
    }

    v2->lastCurrentCapacityAbsolute = v10;
    [v7 passedCharge];
    v2->lastPassedCharge = v11;
    [v7 chargeAccum];
    v2->lastChargeAccum = v12;
    [v7 dod0];
    v2->lastDOD0 = v13;
    if ([v7 gasGaugeEnabled])
    {
      [v7 rawCurrentCapacity];
    }

    else
    {
      [v7 rawCapacity];
    }

    v2->lastCurrentCapacityRaw = v14;
    if (+[PLPowerEventListener supportsLPM])
    {
      v2->lastLPMStatus = [(PLAggregateLogger *)v2 getCurrentLPMState];
    }

    [v7 currentCapacity];
    v16 = v15;
    [v7 maxCapacity];
    v2->currentBatteryLevel = (ceil(v16 / v17 * 10.0) * 10.0);
    [(PLAggregateLogger *)v2 setCurrentState:0];
    v18 = objc_alloc_init(PLBatteryProperties);
    [(PLAggregateLogger *)v2 handleEvent:3 withStatus:[(PLBatteryProperties *)v18 isCharging]];
    [(PLAggregateLogger *)v2 handleEvent:0 withStatus:[(PLBatteryProperties *)v18 isPluggedIn]];
    [(PLAggregateLogger *)v2 handleEvent:1 withStatus:1];
    [(PLAggregateLogger *)v2 handleEvent:2 withStatus:[(PLAggregateLogger *)v2 getCurrentDisplayState]];
    if (+[PLPowerEventListener supportsLPM])
    {
      [(PLAggregateLogger *)v2 handleEvent:4 withStatus:[(PLAggregateLogger *)v2 lastLPMStatus]];
    }

    v19 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v19 addObserver:v2 selector:"handleWake:" name:PLDeviceDidWakeNotification object:0];
    v20 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v20 addObserver:v2 selector:"handleSleep:" name:PLDeviceWillSleepNotification object:0];
    v21 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v21 addObserver:v2 selector:"handleScreenOn:" name:PLDeviceBacklightOnNotification object:0];
    v22 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v22 addObserver:v2 selector:"handleScreenOff:" name:PLDeviceBacklightOffNotification object:0];
    if (+[PLPowerEventListener hasAOD])
    {
      v23 = +[NSNotificationCenter defaultCenter];
      [(NSNotificationCenter *)v23 addObserver:v2 selector:"handleAODMode:" name:PLAODModeNotification object:0];
    }

    v24 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v24 addObserver:v2 selector:"handleBatteryStatus:" name:PLBatteryStatusDidChangeNotification object:0];
    if (+[PLPowerEventListener supportsLPM])
    {
      v25 = +[NSNotificationCenter defaultCenter];
      [(NSNotificationCenter *)v25 addObserver:v2 selector:"handleLPMStatus:" name:PLLPMStatusDidChangeNotification object:0];
    }

    [(PLAggregateLogger *)v2 queryBatteryStatsAtBoot];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_2558;
    v27[3] = &unk_103A0;
    v27[4] = v2;
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserverForName:"addObserverForName:object:queue:usingBlock:" object:NSCalendarDayChangedNotification queue:0 usingBlock:0, v27];
  }

  return v2;
}

- (void)dealloc
{
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:", self];
  [(NSMutableArray *)self->baseStates removeAllObjects];

  [(NSMutableDictionary *)self->compositeStates removeAllObjects];
  v3.receiver = self;
  v3.super_class = PLAggregateLogger;
  [(PLAggregateLogger *)&v3 dealloc];
}

- (BOOL)getCurrentDisplayState
{
  if (+[PLPowerEventListener hasAOD])
  {
    v2 = [+[BLSBacklight sharedBacklight](BLSBacklight "sharedBacklight")];
    if (v2 >= 4)
    {
      if (qword_13B48 != -1)
      {
        sub_93C8();
      }

      v9 = off_13988;
      if (os_log_type_enabled(off_13988, OS_LOG_TYPE_ERROR))
      {
        sub_9478(v9);
      }

      LOBYTE(v3) = 0;
    }

    else
    {
      v3 = 0xCu >> (v2 & 0xF);
    }
  }

  else
  {
    LOBYTE(v3) = 1;
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, [NSDictionary dictionaryWithObject:[NSDictionary dictionaryWithObject:[NSNumber numberWithBool:1] forKey:@"backlight-control"] forKey:@"IOPropertyMatch"]);
    valuePtr = 0;
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"IODisplayParameters", kCFAllocatorDefault, 0);
    if (CFProperty)
    {
      v6 = CFProperty;
      Value = CFDictionaryGetValue(CFProperty, @"brightness");
      if (Value && (v8 = CFDictionaryGetValue(Value, @"value")) != 0)
      {
        CFNumberGetValue(v8, kCFNumberSInt32Type, &valuePtr);
        CFRelease(v6);
        LOBYTE(v3) = valuePtr > 0;
      }

      else
      {
        CFRelease(v6);
      }
    }
  }

  return v3 & 1;
}

- (BOOL)getCurrentLPMState
{
  out_token = 0;
  v4 = 0;
  v2 = notify_register_check("com.apple.system.lowpowermode", &out_token);
  result = 0;
  if (!v2)
  {
    notify_get_state(out_token, &v4);
    notify_cancel(out_token);
    return v4 == 1;
  }

  return result;
}

- (void)handleEvent:(unsigned int)event withStatus:(BOOL)status
{
  statusCopy = status;
  objc_sync_enter(self);
  v7 = objc_autoreleasePoolPush();
  currentState = [(PLAggregateLogger *)self currentState];
  context = v7;
  if (+[PLPowerEventListener hasBaseband])
  {
    v9 = 31;
  }

  else
  {
    v9 = 15;
  }

  v116 = [(NSMutableArray *)self->baseStates objectAtIndex:v9 & currentState];
  v10 = +[NSDate date];
  [(NSDate *)v10 timeIntervalSince1970];
  v12 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  v18 = 0.0;
  if (v11 != self->lastTime)
  {
    v19 = objc_opt_new();
    voltage = [v19 voltage];
    if ([v19 gasGaugeEnabled])
    {
      [v19 currentCapacity];
    }

    else
    {
      [v19 rawCapacity];
    }

    obj = v21;
    if ([v19 gasGaugeEnabled])
    {
      [v19 currentAbsoluteCapacity];
    }

    else
    {
      [v19 rawCapacity];
    }

    v119 = v22;
    if ([v19 gasGaugeEnabled])
    {
      [v19 rawCurrentCapacity];
    }

    else
    {
      [v19 rawCapacity];
    }

    v117 = v23;
    lastVoltage = self->lastVoltage;
    lastCurrentCapacity = self->lastCurrentCapacity;
    lastCurrentCapacityAbsolute = self->lastCurrentCapacityAbsolute;
    [v19 passedCharge];
    v28 = v27;
    lastPassedCharge = self->lastPassedCharge;
    [v19 chargeAccum];
    v114 = v30;
    lastChargeAccum = self->lastChargeAccum;
    [v19 dod0];
    v31 = v28 - lastPassedCharge;
    lastCurrentCapacityRaw = self->lastCurrentCapacityRaw;
    v34 = v33 - self->lastDOD0 == 0.0;
    v35 = 0.0;
    if (v34)
    {
      v35 = v31;
    }

    v112 = v35;
    isCharging = [(PLAggregateLogger *)self isCharging];
    v37 = voltage / 1000.0;
    v38 = (v37 + lastVoltage) * 0.5;
    v39 = v117 - lastCurrentCapacityRaw;
    v40 = v38 * (*&obj - lastCurrentCapacity);
    v16 = v38 * (v119 - lastCurrentCapacityAbsolute);
    v41 = v38 * v39;
    if (isCharging && [(PLAggregateLogger *)self isPlugged])
    {
      if (v40 < 0.0)
      {
        v18 = 0.0;
      }

      else
      {
        v18 = v38 * (*&obj - lastCurrentCapacity);
      }

      if (v16 < 0.0)
      {
        v17 = 0.0;
      }

      else
      {
        v17 = v38 * (v119 - lastCurrentCapacityAbsolute);
      }

      v42 = v41 >= 0.0;
    }

    else
    {
      if (v40 > 0.0)
      {
        v18 = 0.0;
      }

      else
      {
        v18 = v38 * (*&obj - lastCurrentCapacity);
      }

      if (v16 > 0.0)
      {
        v17 = 0.0;
      }

      else
      {
        v17 = v38 * (v119 - lastCurrentCapacityAbsolute);
      }

      v42 = v41 <= 0.0;
    }

    if (v42)
    {
      v13 = v41;
    }

    else
    {
      v13 = 0.0;
    }

    if (qword_13B48 != -1)
    {
      sub_93C8();
    }

    v43 = off_13988;
    if (os_log_type_enabled(off_13988, OS_LOG_TYPE_DEBUG))
    {
      sub_94BC([(PLAggregateLogger *)self isCharging], [(PLAggregateLogger *)self isPlugged], buf, v43);
    }

    if (os_log_type_enabled(off_13988, OS_LOG_TYPE_DEBUG))
    {
      sub_954C();
    }

    if (os_log_type_enabled(off_13988, OS_LOG_TYPE_DEBUG))
    {
      sub_95E8();
    }

    if (os_log_type_enabled(off_13988, OS_LOG_TYPE_DEBUG))
    {
      sub_9684();
    }

    [(NSDate *)v10 timeIntervalSinceDate:[NSDate dateWithTimeIntervalSince1970:self->lastTime]];
    v12 = v44;
    self->lastVoltage = v37;
    self->lastCurrentCapacity = *&obj;
    self->lastCurrentCapacityAbsolute = v119;
    [v19 passedCharge];
    self->lastPassedCharge = v45;
    [v19 chargeAccum];
    self->lastChargeAccum = v46;
    [v19 dod0];
    self->lastDOD0 = v47;
    self->lastCurrentCapacityRaw = v117;
    [(NSDate *)v10 timeIntervalSince1970];
    v15 = v38 * v112;
    v14 = v38 * (v114 - lastChargeAccum);
    self->lastTime = v48;
    if (event == 4)
    {
      [v19 currentCapacity];
      v50 = v49;
      [v19 maxCapacity];
      self->currentBatteryLevel = (ceil(v50 / v51 * 10.0) * 10.0);
    }
  }

  v52 = 0;
  v53 = v12 < 0.0;
  if (v12 > 86400.0)
  {
    v53 = 1;
  }

  if (fabs(v18) >= 10000.0 && fabs(v17) >= 10000.0 && fabs(v16) >= 10000.0 && fabs(v15) >= 10000.0 && fabs(v14) >= 10000.0)
  {
    v52 = fabs(v13) >= 10000.0;
  }

  if (!v53 && !v52)
  {
    [v116 setTime:+[NSNumber numberWithDouble:](NSNumber energy:"numberWithDouble:" energyAbsolute:v12) energyAbsoluteNet:+[NSNumber numberWithDouble:](NSNumber energyPassedChargeNet:"numberWithDouble:" energyChargeAccumNet:-v18) energyRaw:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", -v17), +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", -v16), +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v15), +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v14), +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", -v13)}];
  }

  obja = [(PLAggregateLogger *)self currentState]& ~(1 << event) | (statusCopy << event);
  if (obja == -[PLAggregateLogger currentState](self, "currentState") || ([v116 incrementCount], v167 = 0u, v168 = 0u, v165 = 0u, v166 = 0u, compositeStates = self->compositeStates, (v55 = -[NSMutableDictionary countByEnumeratingWithState:objects:count:](compositeStates, "countByEnumeratingWithState:objects:count:", &v165, v172, 16)) == 0))
  {
    LOBYTE(v118) = 0;
    LOBYTE(v120) = 0;
  }

  else
  {
    v118 = 0;
    v120 = 0;
    v56 = *v166;
    do
    {
      for (i = 0; i != v55; i = i + 1)
      {
        if (*v166 != v56)
        {
          objc_enumerationMutation(compositeStates);
        }

        v58 = *(*(&v165 + 1) + 8 * i);
        v59 = [(NSMutableDictionary *)self->compositeStates objectForKeyedSubscript:v58];
        if ([objc_msgSend(v59 "substateIndices")] && (objc_msgSend(objc_msgSend(v59, "substateIndices"), "containsObject:", +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", obja)) & 1) == 0)
        {
          [v59 incrementCount];
          v120 |= [v58 isEqualToString:@"pluggedin_screen_on"];
          v118 |= [v58 isEqualToString:@"unplugged_screen_on"];
        }
      }

      v55 = [(NSMutableDictionary *)compositeStates countByEnumeratingWithState:&v165 objects:v172 count:16];
    }

    while (v55);
  }

  if (_os_feature_enabled_impl())
  {
    [objc_msgSend(v116 "time")];
    v61 = v60;
    [objc_msgSend(v116 "energy")];
    v63 = v62;
    [objc_msgSend(v116 "energyAbsolute")];
    v65 = v64;
    [objc_msgSend(v116 "energyAbsoluteNet")];
    v67 = v66;
    [objc_msgSend(v116 "energyPassedChargeNet")];
    v69 = v68;
    [objc_msgSend(v116 "energyChargeAccumNet")];
    v71 = v70;
    [objc_msgSend(v116 "energyRaw")];
    v73 = v72;
    currentState2 = [(PLAggregateLogger *)self currentState];
    v75 = llround(v61);
    v76 = llround(v63);
    v77 = llround(v65);
    v78 = llround(v67);
    v79 = llround(v69);
    v80 = llround(v71);
    v81 = llround(v73);
    if (v75 || v76 || v77 || v78 || v79 || v80 || v81 || currentState2 != obja)
    {
      v151 = _NSConcreteStackBlock;
      v152 = 3221225472;
      v153 = sub_3754;
      v154 = &unk_103C8;
      v157 = v76;
      v158 = v77;
      v159 = v78;
      v160 = v79;
      v161 = v80;
      v162 = v81;
      v164 = currentState2 != obja;
      selfCopy = self;
      v156 = v75;
      v163 = obja;
      AnalyticsSendEventLazy();
    }
  }

  [(PLAggregateLogger *)self setCurrentState:obja];
  v82 = +[NSMutableDictionary dictionary];
  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  allKeys = [(NSMutableDictionary *)self->compositeStates allKeys];
  v84 = [allKeys countByEnumeratingWithState:&v147 objects:v171 count:16];
  if (v84)
  {
    v85 = *v148;
    objb = allKeys;
    do
    {
      for (j = 0; j != v84; j = j + 1)
      {
        if (*v148 != v85)
        {
          objc_enumerationMutation(objb);
        }

        v87 = *(*(&v147 + 1) + 8 * j);
        v88 = [(NSMutableDictionary *)self->compositeStates objectForKeyedSubscript:v87];
        [v88 updateCompositeStateWithBaseStates:{-[PLAggregateLogger baseStates](self, "baseStates")}];
        [objc_msgSend(v88 "time")];
        [v82 setObject:+[NSNumber numberWithLong:](NSNumber forKeyedSubscript:{"numberWithLong:", llround(v89)), +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.power.state.%@.duration", v87)}];
        [objc_msgSend(v88 "energy")];
        [v82 setObject:+[NSNumber numberWithLong:](NSNumber forKeyedSubscript:{"numberWithLong:", llround(v90)), +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.power.state.%@.energy", v87)}];
        [objc_msgSend(v88 "energyAbsolute")];
        [v82 setObject:+[NSNumber numberWithLong:](NSNumber forKeyedSubscript:{"numberWithLong:", llround(v91)), +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.power.state.%@.energyAbsolute", v87)}];
        [objc_msgSend(v88 "energyRaw")];
        [v82 setObject:+[NSNumber numberWithLong:](NSNumber forKeyedSubscript:{"numberWithLong:", llround(v92)), +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.power.state.%@.energyRaw", v87)}];
        [v82 setObject:+[NSNumber numberWithLong:](NSNumber forKeyedSubscript:{"numberWithLong:", objc_msgSend(objc_msgSend(v88, "count"), "longValue")), +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.power.state.%@.count", v87)}];
        [objc_msgSend(v88 "energyAbsoluteNet")];
        [v82 setObject:+[NSNumber numberWithLong:](NSNumber forKeyedSubscript:{"numberWithLong:", llround(v93)), +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.power.state.%@.energyAbsoluteNet", v87)}];
        [objc_msgSend(v88 "energyPassedChargeNet")];
        [v82 setObject:+[NSNumber numberWithLong:](NSNumber forKeyedSubscript:{"numberWithLong:", llround(v94)), +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.power.state.%@.energyPassedChargeNet", v87)}];
        [objc_msgSend(v88 "energyChargeAccumNet")];
        [v82 setObject:+[NSNumber numberWithLong:](NSNumber forKeyedSubscript:{"numberWithLong:", llround(v95)), +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.power.state.%@.energyChargeAccumNet", v87)}];
        if (+[PLPowerEventListener supportsLPM])
        {
          [(PLAggregateLogger *)self handleLPMEvent:v87 withAggdKeys:v82 withAggregateState:v88];
        }
      }

      v84 = [objb countByEnumeratingWithState:&v147 objects:v171 count:16];
    }

    while (v84);
  }

  [(PLAggregateLogger *)self backlightLevel];
  v97 = (v96 * 100.0);
  [v82 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKeyedSubscript:{"numberWithUnsignedLongLong:", v97), @"com.apple.power.backlight.usersetting"}];
  if (_os_feature_enabled_impl())
  {
    v142 = _NSConcreteStackBlock;
    v143 = 3221225472;
    v144 = sub_39A4;
    v145 = &unk_103E8;
    v146 = v97;
    AnalyticsSendEventLazy();
  }

  if (v120)
  {
    v98 = [(NSMutableDictionary *)self->compositeStates objectForKeyedSubscript:@"pluggedin_screen_on"];
    [objc_msgSend(v98 "compositeTime")];
    v100 = llround(v99);
    [v82 setObject:&off_13A80 forKeyedSubscript:{objc_msgSend(@"com.apple.power.state.pluggedin_screen.bin", "stringByAppendingString:", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%i", -[PLAggregateLogger binSessionLength:](self, "binSessionLength:", v100)))}];
    if (_os_feature_enabled_impl())
    {
      v137 = _NSConcreteStackBlock;
      v138 = 3221225472;
      v139 = sub_3A28;
      v140 = &unk_103E8;
      v141 = v100;
      AnalyticsSendEventLazy();
    }

    [v98 setCompositeTime:&off_13A68];
  }

  if (v118)
  {
    v101 = [(NSMutableDictionary *)self->compositeStates objectForKeyedSubscript:@"unplugged_screen_on"];
    [objc_msgSend(v101 "compositeTime")];
    v103 = llround(v102);
    [v82 setObject:&off_13A80 forKeyedSubscript:{objc_msgSend(@"com.apple.power.state.unpluggedin_screen.bin", "stringByAppendingString:", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%i", -[PLAggregateLogger binSessionLength:](self, "binSessionLength:", v103)))}];
    if (_os_feature_enabled_impl())
    {
      v132 = _NSConcreteStackBlock;
      v133 = 3221225472;
      v134 = sub_3AC0;
      v135 = &unk_103E8;
      v136 = v103;
      AnalyticsSendEventLazy();
    }

    [v101 setCompositeTime:&off_13A68];
  }

  ADClientBatchKeys();
  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  baseStates = self->baseStates;
  v105 = [(NSMutableArray *)baseStates countByEnumeratingWithState:&v128 objects:v170 count:16];
  if (v105)
  {
    v106 = *v129;
    do
    {
      for (k = 0; k != v105; k = k + 1)
      {
        if (*v129 != v106)
        {
          objc_enumerationMutation(baseStates);
        }

        [*(*(&v128 + 1) + 8 * k) resetStats];
      }

      v105 = [(NSMutableArray *)baseStates countByEnumeratingWithState:&v128 objects:v170 count:16];
    }

    while (v105);
  }

  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  allValues = [(NSMutableDictionary *)self->compositeStates allValues];
  v109 = [allValues countByEnumeratingWithState:&v124 objects:v169 count:16];
  if (v109)
  {
    v110 = *v125;
    do
    {
      for (m = 0; m != v109; m = m + 1)
      {
        if (*v125 != v110)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v124 + 1) + 8 * m) resetStats];
      }

      v109 = [allValues countByEnumeratingWithState:&v124 objects:v169 count:16];
    }

    while (v109);
  }

  objc_autoreleasePoolPop(context);
  objc_sync_exit(self);
}

- (void)handleLPMEvent:(id)event withAggdKeys:(id)keys withAggregateState:(id)state
{
  if ([event isEqualToString:@"unplugged_lpm_on"] && -[PLAggregateLogger isLPMOn](self, "isLPMOn"))
  {
    [objc_msgSend(state "energy")];
    [keys setObject:+[NSNumber numberWithLong:](NSNumber forKeyedSubscript:{"numberWithLong:", llround(v9)), +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.power.state.%@.energy", @"unplugged_lpm_on_24hr"}];
    [objc_msgSend(state "energyAbsolute")];
    [keys setObject:+[NSNumber numberWithLong:](NSNumber forKeyedSubscript:{"numberWithLong:", llround(v10)), +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.power.state.%@.energyAbsolute", @"unplugged_lpm_on_24hr"}];
    [objc_msgSend(state "energyRaw")];
    [keys setObject:+[NSNumber numberWithLong:](NSNumber forKeyedSubscript:{"numberWithLong:", llround(v11)), +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.power.state.%@.energyRaw", @"unplugged_lpm_on_24hr"}];
    [keys setObject:&off_13AE0 forKeyedSubscript:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.power.state.%@.energy", @"unplugged_lpm_off_24hr"}];
    [keys setObject:&off_13AE0 forKeyedSubscript:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.power.state.%@.energyAbsolute", @"unplugged_lpm_off_24hr"}];
    [keys setObject:&off_13AE0 forKeyedSubscript:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.power.state.%@.energyRaw", @"unplugged_lpm_off_24hr"}];
    [keys setObject:+[NSNumber numberWithLong:](NSNumber forKeyedSubscript:{"numberWithLong:", objc_msgSend(objc_msgSend(state, "energyAbsoluteNet"), "longValue")), +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.power.state.%@.energyAbsoluteNet", @"unplugged_lpm_on_24hr"}];
    [keys setObject:+[NSNumber numberWithLong:](NSNumber forKeyedSubscript:{"numberWithLong:", objc_msgSend(objc_msgSend(state, "energyPassedChargeNet"), "longValue")), +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.power.state.%@.energyPassedChargeNet", @"unplugged_lpm_on_24hr"}];
    [keys setObject:+[NSNumber numberWithLong:](NSNumber forKeyedSubscript:{"numberWithLong:", objc_msgSend(objc_msgSend(state, "energyChargeAccumNet"), "longValue")), +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.power.state.%@.energyChargeAccumNet", @"unplugged_lpm_on_24hr"}];
    [keys setObject:&off_13AE0 forKeyedSubscript:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.power.state.%@.energyAbsoluteNet", @"unplugged_lpm_off_24hr"}];
    [keys setObject:&off_13AE0 forKeyedSubscript:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.power.state.%@.energyPassedChargeNet", @"unplugged_lpm_off_24hr"}];
    [keys setObject:&off_13AE0 forKeyedSubscript:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.power.state.%@.energyChargeAccumNet", @"unplugged_lpm_off_24hr"}];
    if ([(PLAggregateLogger *)self lastLPMStatus])
    {
      return;
    }

    [keys setObject:&off_13A80 forKeyedSubscript:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.power.state.%d.LPM.enable", self->currentBatteryLevel)}];
    if (!_os_feature_enabled_impl())
    {
      v13 = 1;
      goto LABEL_13;
    }

    v12 = v19;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v13 = 1;
    v14 = sub_4278;
    goto LABEL_11;
  }

  if ([event isEqualToString:@"unplugged_lpm_off"])
  {
    if (![(PLAggregateLogger *)self isLPMOn])
    {
      [objc_msgSend(state "energy")];
      [keys setObject:+[NSNumber numberWithLong:](NSNumber forKeyedSubscript:{"numberWithLong:", llround(v15)), +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.power.state.%@.energy", @"unplugged_lpm_off_24hr"}];
      [objc_msgSend(state "energyAbsolute")];
      [keys setObject:+[NSNumber numberWithLong:](NSNumber forKeyedSubscript:{"numberWithLong:", llround(v16)), +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.power.state.%@.energyAbsolute", @"unplugged_lpm_off_24hr"}];
      [objc_msgSend(state "energyRaw")];
      [keys setObject:+[NSNumber numberWithLong:](NSNumber forKeyedSubscript:{"numberWithLong:", llround(v17)), +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.power.state.%@.energyRaw", @"unplugged_lpm_off_24hr"}];
      [keys setObject:&off_13AE0 forKeyedSubscript:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.power.state.%@.energy", @"unplugged_lpm_on_24hr"}];
      [keys setObject:&off_13AE0 forKeyedSubscript:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.power.state.%@.energyAbsolute", @"unplugged_lpm_on_24hr"}];
      [keys setObject:&off_13AE0 forKeyedSubscript:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.power.state.%@.energyRaw", @"unplugged_lpm_on_24hr"}];
      [keys setObject:+[NSNumber numberWithLong:](NSNumber forKeyedSubscript:{"numberWithLong:", objc_msgSend(objc_msgSend(state, "energyAbsoluteNet"), "longValue")), +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.power.state.%@.energyAbsoluteNet", @"unplugged_lpm_off_24hr"}];
      [keys setObject:+[NSNumber numberWithLong:](NSNumber forKeyedSubscript:{"numberWithLong:", objc_msgSend(objc_msgSend(state, "energyPassedChargeNet"), "longValue")), +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.power.state.%@.energyPassedChargeNet", @"unplugged_lpm_off_24hr"}];
      [keys setObject:+[NSNumber numberWithLong:](NSNumber forKeyedSubscript:{"numberWithLong:", objc_msgSend(objc_msgSend(state, "energyChargeAccumNet"), "longValue")), +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.power.state.%@.energyChargeAccumNet", @"unplugged_lpm_off_24hr"}];
      [keys setObject:&off_13AE0 forKeyedSubscript:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.power.state.%@.energyAbsoluteNet", @"unplugged_lpm_on_24hr"}];
      [keys setObject:&off_13AE0 forKeyedSubscript:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.power.state.%@.energyPassedChargeNet", @"unplugged_lpm_on_24hr"}];
      [keys setObject:&off_13AE0 forKeyedSubscript:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.power.state.%@.energyChargeAccumNet", @"unplugged_lpm_on_24hr"}];
      if ([(PLAggregateLogger *)self lastLPMStatus])
      {
        [keys setObject:&off_13A80 forKeyedSubscript:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.power.state.%d.LPM.disable", self->currentBatteryLevel)}];
        v13 = 0;
        if (!_os_feature_enabled_impl())
        {
LABEL_13:
          [(PLAggregateLogger *)self setLastLPMStatus:v13];
          return;
        }

        v12 = v18;
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v14 = sub_4328;
LABEL_11:
        v12[2] = v14;
        v12[3] = &unk_10410;
        v12[4] = self;
        AnalyticsSendEventLazy();
        goto LABEL_13;
      }
    }
  }
}

- (void)handleWake:(id)wake
{
  context = objc_autoreleasePoolPush();
  userInfo = [wake userInfo];
  v5 = [userInfo objectForKey:PLDeviceDidWakeSystemReasonKey];
  v6 = +[NSMutableDictionary dictionary];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [v5 componentsSeparatedByString:@" "];
  v7 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = v11;
        if (([(__CFString *)v11 isEqualToString:@"acc"]& 1) == 0)
        {
          v12 = v11;
          if (([(__CFString *)v11 isEqualToString:@"baseband"]& 1) == 0)
          {
            v12 = v11;
            if (([(__CFString *)v11 isEqualToString:@"bluetooth"]& 1) == 0)
            {
              v12 = v11;
              if (([(__CFString *)v11 isEqualToString:@"ioxpander"]& 1) == 0)
              {
                v12 = v11;
                if (([(__CFString *)v11 isEqualToString:@"radios"]& 1) == 0)
                {
                  v12 = v11;
                  if (([(__CFString *)v11 isEqualToString:@"rtc"]& 1) == 0)
                  {
                    v12 = v11;
                    if (([(__CFString *)v11 isEqualToString:@"spu_osmium"]& 1) == 0)
                    {
                      v12 = v11;
                      if (([(__CFString *)v11 isEqualToString:@"spu_touch"]& 1) == 0)
                      {
                        v12 = v11;
                        if (([(__CFString *)v11 isEqualToString:@"spu_gesture"]& 1) == 0)
                        {
                          v12 = v11;
                          if (([(__CFString *)v11 isEqualToString:@"tbat"]& 1) == 0)
                          {
                            v12 = v11;
                            if (([(__CFString *)v11 isEqualToString:@"usb"]& 1) == 0)
                            {
                              v12 = v11;
                              if (([(__CFString *)v11 isEqualToString:@"wlan"]& 1) == 0)
                              {
                                if ([(__CFString *)v11 hasPrefix:@"spu"])
                                {
                                  v12 = @"spu_other";
                                }

                                else
                                {
                                  v12 = 0;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        if (([(__CFString *)v11 isEqualToString:@"hold"]& 1) != 0 || ([(__CFString *)v11 isEqualToString:@"menu"]& 1) != 0 || ([(__CFString *)v11 isEqualToString:@"ringer"]& 1) != 0 || ([(__CFString *)v11 isEqualToString:@"mikey"]& 1) != 0 || ([(__CFString *)v11 isEqualToString:@"clamshell"]& 1) != 0 || [(__CFString *)v11 hasPrefix:@"halleffect"])
        {
          v12 = @"user";
        }

        v13 = @"other";
        if (v12)
        {
          v13 = v12;
        }

        [v6 setObject:&off_13A80 forKeyedSubscript:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.power.wake_reasons.%@", v13)}];
        if (_os_feature_enabled_impl())
        {
          AnalyticsSendEventLazy();
        }
      }

      v8 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  [v6 setObject:&off_13A80 forKeyedSubscript:@"com.apple.power.wakecount"];
  ADClientBatchKeys();
  if (_os_feature_enabled_impl())
  {
    AnalyticsSendEventLazy();
  }

  [(PLAggregateLogger *)self handleEvent:1 withStatus:1];
  objc_autoreleasePoolPop(context);
}

- (void)handleBatteryStatus:(id)status
{
  userInfo = [status userInfo];
  v5 = [userInfo objectForKeyedSubscript:PLBatteryStatusPropertiesKey];
  -[PLAggregateLogger handleEvent:withStatus:](self, "handleEvent:withStatus:", 0, [v5 isPluggedIn]);
  isCharging = [v5 isCharging];

  [(PLAggregateLogger *)self handleEvent:3 withStatus:isCharging];
}

- (void)handleLPMStatus:(id)status
{
  userInfo = [status userInfo];
  v5 = [objc_msgSend(objc_msgSend(userInfo objectForKeyedSubscript:{PLLPMStatusDidChangeNotification), "objectForKey:", @"value", "intValue"}] == 1;

  [(PLAggregateLogger *)self handleEvent:4 withStatus:v5];
}

- (void)handleAODMode:(id)mode
{
  if (!+[PLPowerEventListener hasAOD])
  {
    return;
  }

  userInfo = [mode userInfo];
  v6 = [objc_msgSend(objc_msgSend(userInfo objectForKeyedSubscript:{PLAODModeNotification), "objectForKey:", @"value", "intValue"}];
  if (v6 > 1)
  {
    if (v6 == 2 || v6 == 3)
    {
      selfCopy2 = self;
      v8 = 1;
      goto LABEL_8;
    }
  }

  else if (v6 <= 1)
  {
    selfCopy2 = self;
    v8 = 0;
LABEL_8:

    [(PLAggregateLogger *)selfCopy2 handleEvent:2 withStatus:v8];
    return;
  }

  if (qword_13B48 != -1)
  {
    sub_93C8();
  }

  v9 = off_13988;
  if (os_log_type_enabled(off_13988, OS_LOG_TYPE_ERROR))
  {
    sub_9478(v9);
  }
}

- (void)handleDayChange
{
  v2 = objc_alloc_init(PLBatteryProperties);
  [(PLBatteryProperties *)v2 rawMaxCapacity];
  ADClientSetValueForScalarKey();
  [(PLBatteryProperties *)v2 designCapacity];
  ADClientSetValueForScalarKey();
  [(PLBatteryProperties *)v2 fullAvailableCapacity];
  ADClientSetValueForScalarKey();
  [(PLBatteryProperties *)v2 nominalChargeCapacity];
  ADClientSetValueForScalarKey();
  [(PLBatteryProperties *)v2 cycleCount];
  ADClientSetValueForScalarKey();
  if (_os_feature_enabled_impl())
  {
    AnalyticsSendEventLazy();
  }
}

- (void)queryBatteryStatsAtBoot
{
  v3 = dispatch_time(0, 600000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4D6C;
  block[3] = &unk_10478;
  block[4] = self;
  dispatch_after(v3, &_dispatch_main_q, block);
}

- (int)binSessionLength:(int64_t)length
{
  if (length < 1)
  {
    return 1;
  }

  if (length < 5)
  {
    return 2;
  }

  if (length < 0xA)
  {
    return 3;
  }

  if (length < 0x1E)
  {
    return 4;
  }

  if (length < 0x3C)
  {
    return 5;
  }

  if (length < 0x78)
  {
    return 6;
  }

  if (length < 0xB4)
  {
    return 7;
  }

  if (length < 0xF0)
  {
    return 8;
  }

  if (length < 0x12C)
  {
    return 9;
  }

  if (length < 0x168)
  {
    return 10;
  }

  if (length < 0x1A4)
  {
    return 11;
  }

  if (length < 0x1E0)
  {
    return 12;
  }

  if (length < 0x21C)
  {
    return 13;
  }

  if (length < 0x258)
  {
    return 14;
  }

  if (length < 0x384)
  {
    return 15;
  }

  if (length < 0x4B0)
  {
    return 16;
  }

  if (length < 0x708)
  {
    return 17;
  }

  if (length < 0xA8C)
  {
    return 18;
  }

  if (length < 0xE10)
  {
    return 19;
  }

  return 20;
}

@end