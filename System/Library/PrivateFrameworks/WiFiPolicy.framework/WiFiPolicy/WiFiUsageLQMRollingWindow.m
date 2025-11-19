@interface WiFiUsageLQMRollingWindow
+ (id)getValue:(id)a3 ForField:(id)a4 ScaledByDuration:(BOOL)a5;
+ (void)initialize;
+ (void)updateConfig;
- (BOOL)checkCriteriaBSSIDWithSample:(id)a3;
- (BOOL)configureDataTriggeredCriteria;
- (BOOL)endOngoingCriteria;
- (BOOL)hasChanged:(id)a3;
- (WiFiUsageLQMRollingWindow)initWithInterfaceName:(id)a3 andDuration:(double)a4 andInterfaceCapabilities:(id)a5;
- (id)evaluateCriteriaWithStopUponFirstMatch:(BOOL)a3;
- (id)getTriggerCriteriaList;
- (void)addSample:(id)a3;
- (void)addSamples:(id)a3;
- (void)addTrigger:(id)a3;
- (void)cleanUpStashedMedians;
- (void)clearOngoingCriteriaDates;
- (void)setCurrentApplicationName:(id)a3 withAttributes:(id)a4;
- (void)updateWindow;
@end

@implementation WiFiUsageLQMRollingWindow

- (void)updateWindow
{
  v3 = [MEMORY[0x277CBEAA8] date];
  v8 = [v3 dateByAddingTimeInterval:-self->_duration];

  samples = self->_samples;
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"timestamp >= %@", v8];
  [(NSMutableArray *)samples filterUsingPredicate:v5];

  preceedingTriggers = self->_preceedingTriggers;
  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"timestamp >= %@", v8];
  [(NSMutableArray *)preceedingTriggers filterUsingPredicate:v7];
}

- (void)cleanUpStashedMedians
{
  v15 = *MEMORY[0x277D85DE8];
  [(NSMutableSet *)self->_features setValue:0 forKey:@"median"];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_triggerCriteriaFilterList;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v10 + 1) + 8 * v7) features];
        [v8 setValue:0 forKey:@"median"];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)clearOngoingCriteriaDates
{
  v29 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = self->_triggerCriteriaFilterList;
  v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v3)
  {
    v4 = v3;
    v18 = *v24;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v23 + 1) + 8 * i);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v7 = [v6 criterias];
        v8 = [v7 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v20;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v20 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v19 + 1) + 8 * j);
              v13 = [v12 matched];
              if ((v13 & 1) == 0)
              {
                v14 = [v12 firstTriggered];
                v2 = v14;
                if (v14)
                {

LABEL_17:
                  [v12 setCurrentSample:0];
                  [v12 setFirstTriggered:0];
                  [v12 setLastTriggered:0];
                  [v12 setBssid:0];
                  continue;
                }
              }

              v15 = [v12 lastTriggered];

              if ((v13 & 1) == 0)
              {
              }

              if (v15)
              {
                goto LABEL_17;
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v9);
        }
      }

      v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v4);
  }

  v16 = *MEMORY[0x277D85DE8];
}

+ (void)initialize
{
  _config_duration = 0x404E000000000000;
  _config_minSamples = 5;
  v2 = _config_criteriaList;
  _config_criteriaList = 0;

  v3 = [WiFiUsageLQMConfiguration getConfigForKey:@"LQMRollingWindow"];
}

+ (void)updateConfig
{
  v10 = [WiFiUsageLQMConfiguration getConfigForKey:@"LQMRollingWindow"];
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = [v10 objectForKey:@"duration"];
      if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v3 = *&_config_duration, v3 != [v2 unsignedLongValue]))
      {
        [v2 floatValue];
        v5 = v4;
      }

      else
      {
        if (arc4random_uniform(0x64u) >= 0x32)
        {
          v6 = 30;
        }

        else
        {
          v6 = 60;
        }

        v5 = v6;
      }

      _config_duration = *&v5;
      v7 = [v10 objectForKey:@"minSamplesForFeatures"];

      if (v7)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = _config_minSamples;
          if (v8 != [v7 unsignedLongValue])
          {
            _config_minSamples = [v7 unsignedLongValue];
          }
        }
      }

      v9 = [v10 objectForKey:@"DataTriggeredCriteriaList"];

      if (v9)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ([_config_criteriaList isEqualToArray:v9] & 1) == 0)
        {
          objc_storeStrong(&_config_criteriaList, v9);
        }
      }
    }
  }

  NSLog(&cfstr_SDurationSetTo.isa, "+[WiFiUsageLQMRollingWindow updateConfig]", _config_duration);
  NSLog(&cfstr_SMinsamplesSet.isa, "+[WiFiUsageLQMRollingWindow updateConfig]", _config_minSamples);
}

- (WiFiUsageLQMRollingWindow)initWithInterfaceName:(id)a3 andDuration:(double)a4 andInterfaceCapabilities:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v8)
  {
    v24.receiver = self;
    v24.super_class = WiFiUsageLQMRollingWindow;
    v10 = [(WiFiUsageLQMRollingWindow *)&v24 init];
    v11 = [v8 copy];
    interfaceName = v10->_interfaceName;
    v10->_interfaceName = v11;

    v13 = [MEMORY[0x277CBEAA8] date];
    createdTimestamp = v10->_createdTimestamp;
    v10->_createdTimestamp = v13;

    v10->_duration = a4;
    samples = v10->_samples;
    v10->_samples = 0;

    objc_storeStrong(&v10->_capabilities, a5);
    v16 = objc_opt_new();
    triggerCriteriaFilterList = v10->_triggerCriteriaFilterList;
    v10->_triggerCriteriaFilterList = v16;

    v18 = objc_opt_new();
    features = v10->_features;
    v10->_features = v18;

    preceedingTriggers = v10->_preceedingTriggers;
    v10->_preceedingTriggers = 0;

    fgApp = v10->_fgApp;
    v10->_fgApp = 0;

    self = v10;
    v22 = self;
  }

  else
  {
    NSLog(&cfstr_SInvalidInterf.isa, "[WiFiUsageLQMRollingWindow initWithInterfaceName:andDuration:andInterfaceCapabilities:]", 0);
    v22 = 0;
  }

  return v22;
}

- (void)setCurrentApplicationName:(id)a3 withAttributes:(id)a4
{
  v6 = a3;
  objc_storeStrong(&_current_fgApp, a3);
  fgApp = self->_fgApp;
  self->_fgApp = v6;
}

- (void)addSample:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v11 = v4;
    if (!self->_samples)
    {
      v5 = [MEMORY[0x277CBEB18] array];
      samples = self->_samples;
      self->_samples = v5;

      v4 = v11;
    }

    [v4 setFgApp:_current_fgApp];
    v7 = [(NSMutableArray *)self->_samples lastObject];
    v8 = [v7 interfaceName];

    v9 = [v11 interfaceName];
    v10 = [v9 isEqualToString:v8];

    if (v10)
    {
      [v11 setInterfaceName:v8];
    }

    [(NSMutableArray *)self->_samples addObject:v11];
    if (self->_duration != *&_config_duration)
    {
      *&self->_duration = _config_duration;
    }

    [(WiFiUsageLQMRollingWindow *)self updateWindow];

    v4 = v11;
  }
}

- (void)addSamples:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    samples = self->_samples;
    v9 = v5;
    if (!samples)
    {
      v7 = [MEMORY[0x277CBEB18] array];
      v8 = self->_samples;
      self->_samples = v7;

      samples = self->_samples;
    }

    [(NSMutableArray *)samples addObjectsFromArray:v9];
    v4 = [(WiFiUsageLQMRollingWindow *)self updateWindow];
    v5 = v9;
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)addTrigger:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    preceedingTriggers = self->_preceedingTriggers;
    v9 = v5;
    if (!preceedingTriggers)
    {
      v7 = objc_opt_new();
      v8 = self->_preceedingTriggers;
      self->_preceedingTriggers = v7;

      preceedingTriggers = self->_preceedingTriggers;
    }

    v4 = [(NSMutableArray *)preceedingTriggers addObject:v9];
    v5 = v9;
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (BOOL)endOngoingCriteria
{
  v34 = *MEMORY[0x277D85DE8];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = self->_triggerCriteriaFilterList;
  v2 = [(NSMutableArray *)obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v23 = *v29;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v29 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v28 + 1) + 8 * i);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v7 = [v6 criterias];
        v8 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v25;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v25 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v24 + 1) + 8 * j);
              [v12 setMatched:0];
              [v12 setValid:0];
              v13 = [v12 firstTriggered];
              if (v13)
              {
                v14 = v13;
                v15 = [v12 lastTriggered];

                if (!v15)
                {
                  v16 = [v12 currentSample];

                  if (v16)
                  {
                    [v12 currentSample];
                  }

                  else
                  {
                    [v12 firstTriggered];
                  }
                  v17 = ;
                  [v12 setLastTriggered:v17];

                  v4 = 1;
                }
              }

              [v12 setBssid:0];
            }

            v9 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v9);
        }
      }

      v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  lastSampleBssid = self->_lastSampleBssid;
  self->_lastSampleBssid = 0;

  v19 = *MEMORY[0x277D85DE8];
  return v4 & 1;
}

- (id)getTriggerCriteriaList
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_triggerCriteriaFilterList;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = objc_alloc(MEMORY[0x277CBEA60]);
        v11 = [v9 criterias];
        v12 = [v10 initWithArray:v11 copyItems:1];

        [v3 addObjectsFromArray:v12];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)checkCriteriaBSSIDWithSample:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = [a3 networkDetails];
  v5 = [v4 connectedBss];
  v6 = [v5 bssid];

  if ([(NSString *)self->_lastSampleBssid isEqualToString:v6])
  {
    v7 = 0;
  }

  else
  {
    v23 = v6;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v8 = self->_triggerCriteriaFilterList;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v9)
    {
      v10 = v9;
      v7 = 0;
      v11 = *v29;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v29 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v28 + 1) + 8 * i);
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v14 = [v13 criterias];
          v15 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v25;
            do
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v25 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v24 + 1) + 8 * j);
                if ([v19 matched])
                {
                  v20 = [v19 currentSample];
                  [v19 setLastTriggered:v20];

                  v7 = 1;
                }
              }

              v16 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
            }

            while (v16);
          }
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v10);
    }

    else
    {
      v7 = 0;
    }

    v6 = v23;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v7 & 1;
}

- (id)evaluateCriteriaWithStopUponFirstMatch:(BOOL)a3
{
  v78 = a3;
  v3 = self;
  v103 = *MEMORY[0x277D85DE8];
  v4 = [(NSMutableArray *)self->_samples lastObject];
  v5 = [v4 networkDetails];
  v6 = [v5 connectedBss];
  v7 = [v6 bssid];

  v79 = 0;
  v75 = v3;
  v81 = v7;
  if ([(NSMutableArray *)v3->_samples count])
  {
    v8 = v78;
    if (!v7)
    {
      goto LABEL_15;
    }

    samples = v3->_samples;
    v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"networkDetails.connectedBss.bssid == %@", v7];
    v11 = [(NSMutableArray *)samples filteredArrayUsingPredicate:v10];

    v79 = v11;
    v12 = [v11 count];
    if (v12 < _config_minSamples)
    {
      goto LABEL_15;
    }

    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v13 = v3->_features;
    v14 = [(NSMutableSet *)v13 countByEnumeratingWithState:&v95 objects:v102 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v96;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v96 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v95 + 1) + 8 * i);
          v19 = [v18 median];

          if (!v19)
          {
            v20 = [v18 fieldName];
            v21 = +[WiFiUsageLQMRollingWindow medianIntegerValueForField:ScaledByDuration:OnSamples:](WiFiUsageLQMRollingWindow, "medianIntegerValueForField:ScaledByDuration:OnSamples:", v20, [v18 isPerSecond], v79);
            [v18 setMedian:v21];
          }
        }

        v15 = [(NSMutableSet *)v13 countByEnumeratingWithState:&v95 objects:v102 count:16];
      }

      while (v15);
    }

    v3 = v75;
  }

  v8 = v78;
LABEL_15:
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  obj = v3->_triggerCriteriaFilterList;
  v72 = [(NSMutableArray *)obj countByEnumeratingWithState:&v91 objects:v101 count:16];
  v22 = 0;
  if (!v72)
  {
    v23 = v7;
    goto LABEL_92;
  }

  v23 = v7;
  v71 = *v92;
  if (v7)
  {
    v24 = v79 == 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = !v24;
  v82 = v25;
  do
  {
    for (j = 0; j != v72; ++j)
    {
      if (*v92 != v71)
      {
        objc_enumerationMutation(obj);
      }

      v27 = *(*(&v91 + 1) + 8 * j);
      if (v82 && [v79 count] && (objc_msgSend(v27, "filterSamplesPredicate"), v28 = objc_claimAutoreleasedReturnValue(), v28, v28))
      {
        v29 = [v27 filterSamplesPredicate];
        v30 = [v79 filteredArrayUsingPredicate:v29];

        if (v30 && [v30 count])
        {
          v73 = j;
          v89 = 0u;
          v90 = 0u;
          v87 = 0u;
          v88 = 0u;
          v76 = v27;
          v31 = [v27 features];
          v32 = [v31 countByEnumeratingWithState:&v87 objects:v100 count:16];
          if (v32)
          {
            v33 = v32;
            v34 = *v88;
            do
            {
              for (k = 0; k != v33; ++k)
              {
                if (*v88 != v34)
                {
                  objc_enumerationMutation(v31);
                }

                v36 = *(*(&v87 + 1) + 8 * k);
                v37 = [v36 median];

                if (!v37)
                {
                  v38 = [v36 fieldName];
                  v39 = +[WiFiUsageLQMRollingWindow medianIntegerValueForField:ScaledByDuration:OnSamples:](WiFiUsageLQMRollingWindow, "medianIntegerValueForField:ScaledByDuration:OnSamples:", v38, [v36 isPerSecond], v30);
                  [v36 setMedian:v39];
                }
              }

              v33 = [v31 countByEnumeratingWithState:&v87 objects:v100 count:16];
            }

            while (v33);
          }

          v23 = v81;
          j = v73;
          v27 = v76;
        }
      }

      else
      {
        v30 = 0;
      }

      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v80 = [v27 criterias];
      v40 = [v80 countByEnumeratingWithState:&v83 objects:v99 count:16];
      if (!v40)
      {
        v43 = 0;
        goto LABEL_87;
      }

      v41 = v40;
      v77 = v27;
      v74 = j;
      v42 = *v84;
      v43 = v22;
      while (2)
      {
        for (m = 0; m != v41; ++m)
        {
          v45 = v43;
          if (*v84 != v42)
          {
            objc_enumerationMutation(v80);
          }

          v43 = *(*(&v83 + 1) + 8 * m);

          if (!v82)
          {
LABEL_54:
            v46 = 0;
            v47 = 0;
            goto LABEL_62;
          }

          v46 = 0;
          v47 = 0;
          if ([v79 count] && v30)
          {
            if (![v30 count])
            {
              goto LABEL_54;
            }

            v48 = [v43 type];
            if (v48)
            {
              if (v48 == 1)
              {
                v49 = [v77 features];
                goto LABEL_56;
              }

              v50 = 0;
            }

            else
            {
              v49 = [(NSMutableArray *)v75->_samples lastObject];
LABEL_56:
              v50 = v49;
            }

            v51 = [v43 requiredFieldsValid];
            v47 = [v51 evaluateWithObject:v50];

            if (v47)
            {
              v52 = [v43 predicate];
              v46 = [v52 evaluateWithObject:v50];
            }

            else
            {
              v46 = 0;
            }

            v53 = [v30 lastObject];
            v54 = [v53 timestamp];
            [v43 setCurrentSample:v54];

            v8 = v78;
            v23 = v81;
          }

LABEL_62:
          [v43 setMatched:v46];
          [v43 setValid:v47];
          v55 = [v43 firstTriggered];
          v56 = v55;
          if (v46)
          {

            if (!v56)
            {
              v57 = [v43 currentSample];
              [v43 setFirstTriggered:v57];
            }

            [v43 setBssid:v23];
            if (v8)
            {
              v22 = [v43 firstTriggered];
              v58 = [v43 currentSample];
              v59 = [v22 isEqual:v58];

              if (v59)
              {
                v23 = v81;
                goto LABEL_86;
              }

              v23 = v81;
            }
          }

          else
          {
            if (v55)
            {
              v60 = [v43 lastTriggered];

              if (!v60)
              {
                if (v30 && [v30 count] >= 2)
                {
                  v61 = [v30 objectAtIndex:{objc_msgSend(v30, "count") - 2}];
                  v62 = [v61 timestamp];
                  [v43 setLastTriggered:v62];
                }

                else
                {
                  v63 = [v43 currentSample];

                  if (v63)
                  {
                    [v43 currentSample];
                  }

                  else
                  {
                    [v43 firstTriggered];
                  }
                  v61 = ;
                  [v43 setLastTriggered:v61];
                }
              }
            }

            v23 = v81;
            [v43 setBssid:v81];
            if (v8)
            {
              v64 = [v43 lastTriggered];

              if (v64)
              {
                v22 = v43;
                j = v74;
                goto LABEL_88;
              }
            }
          }
        }

        v41 = [v80 countByEnumeratingWithState:&v83 objects:v99 count:16];
        if (v41)
        {
          continue;
        }

        break;
      }

      v22 = v43;
      v43 = 0;
LABEL_86:
      j = v74;
LABEL_87:

      v22 = v43;
LABEL_88:
    }

    v72 = [(NSMutableArray *)obj countByEnumeratingWithState:&v91 objects:v101 count:16];
  }

  while (v72);
LABEL_92:

  v65 = v23;
  lastSampleBssid = v75->_lastSampleBssid;
  v75->_lastSampleBssid = v65;
  v67 = v65;

  v68 = *MEMORY[0x277D85DE8];

  return v22;
}

- (BOOL)configureDataTriggeredCriteria
{
  v30 = *MEMORY[0x277D85DE8];
  if (_config_criteriaList)
  {
    [(NSMutableArray *)self->_triggerCriteriaFilterList removeAllObjects];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v3 = _config_criteriaList;
    v4 = [v3 countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v24;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v24 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v23 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = v8;
            v10 = [WiFiUsageLQMTriggerCriteriaFilter alloc];
            v11 = +[WiFiUsageLQMUserSample allLQMProperties];
            v12 = [(WiFiUsageLQMTriggerCriteriaFilter *)v10 initWith:v9 forFields:v11 andFeatures:self->_features];

            v13 = v12 == 0;
            if (v12)
            {
              [(NSMutableArray *)self->_triggerCriteriaFilterList addObject:v12];
            }
          }

          else
          {
            NSLog(&cfstr_SDatatriggered.isa, "[WiFiUsageLQMRollingWindow configureDataTriggeredCriteria]");
            v13 = 1;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v23 objects:v29 count:16];
      }

      while (v5);

      if (v13)
      {
        v14 = @"(with errors)";
      }

      else
      {
        v14 = &stru_28487EF20;
      }

      v15 = !v13;
    }

    else
    {

      v14 = &stru_28487EF20;
      v15 = 1;
    }

    v16 = MEMORY[0x277CCACA8];
    v17 = [(WiFiUsageLQMRollingWindow *)self getTriggerCriteriaList];
    v18 = [v16 stringWithFormat:@"%s: DataTriggered criteria configured %@: %@", "-[WiFiUsageLQMRollingWindow configureDataTriggeredCriteria]", v14, v17];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v18, "UTF8String")];
      v20 = [v19 UTF8String];
      *buf = 136446210;
      v28 = v20;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    }
  }

  else
  {
    v15 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v15;
}

+ (id)getValue:(id)a3 ForField:(id)a4 ScaledByDuration:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  if (objc_opt_respondsToSelector())
  {
    [v7 numberForKeyPath:v8];
  }

  else
  {
    [v7 valueForKeyPath:v8];
  }
  v9 = ;

  if (v9 && ([v7 duration] || !v5))
  {
    if (v5 && [v7 duration])
    {
      v11 = MEMORY[0x277CCABB0];
      [v9 doubleValue];
      v13 = [v11 numberWithLong:{(v12 / objc_msgSend(v7, "duration"))}];

      v9 = v13;
    }

    v10 = v9;
    v9 = v10;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)hasChanged:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_samples;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = 0;
    v8 = *v15;
    while (2)
    {
      v9 = 0;
      v10 = v7;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [*(*(&v14 + 1) + 8 * v9) numberForKeyPath:{v4, v14}];
        v7 = v11;
        if (v10 && ([v11 isEqual:v10] & 1) == 0)
        {

          LOBYTE(v6) = 1;
          goto LABEL_12;
        }

        ++v9;
        v10 = v7;
      }

      while (v6 != v9);
      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }

    v10 = v7;
LABEL_12:
  }

  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

@end