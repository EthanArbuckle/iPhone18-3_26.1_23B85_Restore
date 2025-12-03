@interface NWActivitySuperMetric
+ (unsigned)limitForFragmentType:(int)type;
+ (void)flattenObject:(id)object intoDictionary:(id)dictionary atPath:(id)path;
- (NSDictionary)dictionaryRepresentation;
- (NWActivitySuperMetric)init;
@end

@implementation NWActivitySuperMetric

- (NWActivitySuperMetric)init
{
  v10.receiver = self;
  v10.super_class = NWActivitySuperMetric;
  v2 = [(NWActivitySuperMetric *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(NWActivitySuperMetric *)v2 setConnectionReports:v3];

    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(NWActivitySuperMetric *)v2 setTaskMetrics:v4];

    v5 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    [(NWActivitySuperMetric *)v2 setAlgosScore:v5];

    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(NWActivitySuperMetric *)v2 setWifiFragments:v6];

    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(NWActivitySuperMetric *)v2 setCellularFragments:v7];

    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(NWActivitySuperMetric *)v2 setClientFragments:v8];
  }

  return v2;
}

- (NSDictionary)dictionaryRepresentation
{
  v149 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  activity = [(NWActivitySuperMetric *)self activity];
  dictionaryReport = [activity dictionaryReport];
  [NWActivitySuperMetric flattenObject:dictionaryReport intoDictionary:v3 atPath:@"a"];

  activityEpilogue = [(NWActivitySuperMetric *)self activityEpilogue];
  dictionaryReport2 = [activityEpilogue dictionaryReport];
  [NWActivitySuperMetric flattenObject:dictionaryReport2 intoDictionary:v3 atPath:@"e"];

  connectionReports = [(NWActivitySuperMetric *)self connectionReports];
  v9 = [connectionReports count];

  v120 = v3;
  selfCopy = self;
  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x277CBEB18]);
    connectionReports2 = [(NWActivitySuperMetric *)self connectionReports];
    v12 = [v10 initWithCapacity:{objc_msgSend(connectionReports2, "count")}];

    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    connectionReports3 = [(NWActivitySuperMetric *)self connectionReports];
    v14 = [connectionReports3 countByEnumeratingWithState:&v138 objects:v148 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = 0;
      v17 = *v139;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v139 != v17)
          {
            objc_enumerationMutation(connectionReports3);
          }

          v19 = *(*(&v138 + 1) + 8 * i);
          if (v16 > [NWActivitySuperMetric limitForFragmentType:4])
          {
            v22 = activityLogHandle();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              connectionReports4 = [(NWActivitySuperMetric *)selfCopy connectionReports];
              v24 = [connectionReports4 count];
              *buf = 134217984;
              v147 = v24;
              _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_INFO, "Reached max connection fragments, dropping the rest (count %lu)", buf, 0xCu);
            }

            goto LABEL_21;
          }

          dictionaryReport3 = [v19 dictionaryReport];
          if (dictionaryReport3)
          {
            [v12 addObject:dictionaryReport3];
            v16 = (v16 + 1);
          }

          else
          {
            v21 = activityLogHandle();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v147 = v19;
              _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_ERROR, "Failed to create fragment for %@", buf, 0xCu);
            }
          }
        }

        v15 = [connectionReports3 countByEnumeratingWithState:&v138 objects:v148 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v16 = 0;
    }

LABEL_21:

    v3 = v120;
    [v120 setObject:v12 forKeyedSubscript:@"connectionReports"];

    self = selfCopy;
  }

  else
  {
    v16 = 0;
  }

  v25 = [MEMORY[0x277CCABB0] numberWithInt:v16];
  [v3 setObject:v25 forKeyedSubscript:@"connectionReportsCount"];

  taskMetrics = [(NWActivitySuperMetric *)self taskMetrics];
  v27 = [taskMetrics count];

  if (v27)
  {
    v28 = objc_alloc(MEMORY[0x277CBEB18]);
    taskMetrics2 = [(NWActivitySuperMetric *)self taskMetrics];
    v30 = [v28 initWithCapacity:{objc_msgSend(taskMetrics2, "count")}];

    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    taskMetrics3 = [(NWActivitySuperMetric *)self taskMetrics];
    v32 = [taskMetrics3 countByEnumeratingWithState:&v134 objects:v145 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = 0;
      v35 = *v135;
      while (2)
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v135 != v35)
          {
            objc_enumerationMutation(taskMetrics3);
          }

          v37 = *(*(&v134 + 1) + 8 * j);
          if (v34 > [NWActivitySuperMetric limitForFragmentType:3])
          {
            v40 = activityLogHandle();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
            {
              taskMetrics4 = [(NWActivitySuperMetric *)selfCopy taskMetrics];
              v42 = [taskMetrics4 count];
              *buf = 134217984;
              v147 = v42;
              _os_log_impl(&dword_23255B000, v40, OS_LOG_TYPE_INFO, "Reached max task fragments, dropping the rest (count %lu)", buf, 0xCu);
            }

            goto LABEL_42;
          }

          dictionaryReport4 = [v37 dictionaryReport];
          if (dictionaryReport4)
          {
            [v30 addObject:dictionaryReport4];
            v34 = (v34 + 1);
          }

          else
          {
            v39 = activityLogHandle();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v147 = v37;
              _os_log_impl(&dword_23255B000, v39, OS_LOG_TYPE_ERROR, "Failed to create fragment for %@", buf, 0xCu);
            }
          }
        }

        v33 = [taskMetrics3 countByEnumeratingWithState:&v134 objects:v145 count:16];
        if (v33)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v34 = 0;
    }

LABEL_42:

    v3 = v120;
    [v120 setObject:v30 forKeyedSubscript:@"taskMetrics"];

    self = selfCopy;
  }

  else
  {
    v34 = 0;
  }

  v43 = [MEMORY[0x277CCABB0] numberWithInt:v34];
  [v3 setObject:v43 forKeyedSubscript:@"taskMetricsCount"];

  wifiFragments = [(NWActivitySuperMetric *)self wifiFragments];
  v45 = [wifiFragments count];

  if (!v45)
  {
    v57 = 0;
    goto LABEL_89;
  }

  v46 = activityLogHandle();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
  {
    wifiFragments2 = [(NWActivitySuperMetric *)self wifiFragments];
    v48 = [wifiFragments2 count];
    *buf = 134217984;
    v147 = v48;
    _os_log_impl(&dword_23255B000, v46, OS_LOG_TYPE_DEBUG, "Running transform on %lu fragments", buf, 0xCu);
  }

  v49 = objc_alloc(MEMORY[0x277CBEB18]);
  wifiFragments3 = [(NWActivitySuperMetric *)self wifiFragments];
  v119 = [v49 initWithCapacity:{objc_msgSend(wifiFragments3, "count")}];

  wifiFragments4 = [(NWActivitySuperMetric *)self wifiFragments];
  v52 = [wifiFragments4 count];

  if (v52 == 1)
  {
    wifiFragments5 = [(NWActivitySuperMetric *)self wifiFragments];
    firstObject = [wifiFragments5 firstObject];

    if (firstObject)
    {
      v55 = [firstObject getTransformedFlattened:0];
      if (v55)
      {
        [v119 addObject:v55];
        v56 = activityLogHandle();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v56, OS_LOG_TYPE_DEBUG, "Single fragment, no transform", buf, 2u);
        }

        v57 = 1;
      }

      else
      {
        v56 = activityLogHandle();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v147 = firstObject;
          _os_log_impl(&dword_23255B000, v56, OS_LOG_TYPE_ERROR, "Failed to transform fragment %@", buf, 0xCu);
        }

        v57 = 0;
      }

LABEL_85:

LABEL_86:
      self = selfCopy;
    }

    else
    {
      v55 = activityLogHandle();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        wifiFragments6 = [(NWActivitySuperMetric *)self wifiFragments];
        *buf = 138412290;
        v147 = wifiFragments6;
        _os_log_impl(&dword_23255B000, v55, OS_LOG_TYPE_ERROR, "Failed to get single fragment from %@", buf, 0xCu);
      }

      v57 = 0;
    }

    v3 = v120;
    goto LABEL_88;
  }

  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  firstObject = [(NWActivitySuperMetric *)self wifiFragments];
  v58 = [firstObject countByEnumeratingWithState:&v130 objects:v144 count:16];
  if (v58)
  {
    v60 = v58;
    dictionaryRepresentation = 0;
    v57 = 0;
    v62 = *v131;
    *&v59 = 67109120;
    v117 = v59;
    obj = firstObject;
LABEL_55:
    v63 = 0;
    v55 = dictionaryRepresentation;
    while (1)
    {
      if (*v131 != v62)
      {
        objc_enumerationMutation(obj);
      }

      v64 = *(*(&v130 + 1) + 8 * v63);
      if (v57 > [NWActivitySuperMetric limitForFragmentType:5, v117])
      {
        v56 = activityLogHandle();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
        {
          wifiFragments7 = [(NWActivitySuperMetric *)selfCopy wifiFragments];
          v74 = [wifiFragments7 count];
          *buf = 134217984;
          v147 = v74;
          _os_log_impl(&dword_23255B000, v56, OS_LOG_TYPE_INFO, "Reached max Wi-Fi fragments, dropping the rest (count %lu)", buf, 0xCu);
        }

        goto LABEL_81;
      }

      if (v55)
      {
        break;
      }

      v65 = activityLogHandle();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v147 = v64;
        _os_log_impl(&dword_23255B000, v65, OS_LOG_TYPE_DEBUG, "Transforming fragments, skipping initial fragment %@", buf, 0xCu);
      }

LABEL_69:

      awdReport = [v64 awdReport];
      dictionaryRepresentation = [awdReport dictionaryRepresentation];

      if (!dictionaryRepresentation)
      {
        v56 = activityLogHandle();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v147 = v64;
          _os_log_impl(&dword_23255B000, v56, OS_LOG_TYPE_ERROR, "Failed to create fragment for %@", buf, 0xCu);
        }

LABEL_81:
        firstObject = obj;
        goto LABEL_85;
      }

      ++v63;
      v55 = dictionaryRepresentation;
      if (v60 == v63)
      {
        firstObject = obj;
        v60 = [obj countByEnumeratingWithState:&v130 objects:v144 count:16];
        if (v60)
        {
          goto LABEL_55;
        }

        v55 = dictionaryRepresentation;
        goto LABEL_86;
      }
    }

    v65 = [v64 getTransformedFlattenedFrom:v55 style:0 index:v57];
    if (v65)
    {
      [v119 addObject:v65];
      v57 = (v57 + 1);
      v66 = activityLogHandle();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
      {
        *buf = v117;
        LODWORD(v147) = v57;
        v67 = v66;
        v68 = OS_LOG_TYPE_DEBUG;
        v69 = "Transformed fragment %d";
        v70 = 8;
LABEL_67:
        _os_log_impl(&dword_23255B000, v67, v68, v69, buf, v70);
      }
    }

    else
    {
      v66 = activityLogHandle();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v147 = v64;
        v67 = v66;
        v68 = OS_LOG_TYPE_ERROR;
        v69 = "Failed to transform fragment %@";
        v70 = 12;
        goto LABEL_67;
      }
    }

    goto LABEL_69;
  }

  v57 = 0;
  self = selfCopy;
LABEL_88:

  [v3 setObject:v119 forKeyedSubscript:@"wifiFragments"];
LABEL_89:
  v75 = [MEMORY[0x277CCABB0] numberWithInt:v57];
  [v3 setObject:v75 forKeyedSubscript:@"wifiFragmentsCount"];

  cellularFragments = [(NWActivitySuperMetric *)self cellularFragments];
  v77 = [cellularFragments count];

  if (v77)
  {
    v78 = objc_alloc(MEMORY[0x277CBEB18]);
    cellularFragments2 = [(NWActivitySuperMetric *)self cellularFragments];
    v80 = [v78 initWithCapacity:{objc_msgSend(cellularFragments2, "count")}];

    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    cellularFragments3 = [(NWActivitySuperMetric *)self cellularFragments];
    v82 = [cellularFragments3 countByEnumeratingWithState:&v126 objects:v143 count:16];
    if (v82)
    {
      v83 = v82;
      v84 = 0;
      v85 = *v127;
      while (2)
      {
        for (k = 0; k != v83; ++k)
        {
          if (*v127 != v85)
          {
            objc_enumerationMutation(cellularFragments3);
          }

          v87 = *(*(&v126 + 1) + 8 * k);
          if (v84 > [NWActivitySuperMetric limitForFragmentType:6])
          {
            v89 = activityLogHandle();
            self = selfCopy;
            if (os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
            {
              cellularFragments4 = [(NWActivitySuperMetric *)selfCopy cellularFragments];
              v91 = [cellularFragments4 count];
              *buf = 134217984;
              v147 = v91;
              _os_log_impl(&dword_23255B000, v89, OS_LOG_TYPE_INFO, "Reached max cellular fragments, dropping the rest (count %lu)", buf, 0xCu);
            }

            goto LABEL_109;
          }

          if (v87)
          {
            [v80 addObject:v87];
            v84 = (v84 + 1);
          }

          else
          {
            v88 = activityLogHandle();
            if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v147 = 0;
              _os_log_impl(&dword_23255B000, v88, OS_LOG_TYPE_ERROR, "Failed to create fragment for %@", buf, 0xCu);
            }
          }
        }

        v83 = [cellularFragments3 countByEnumeratingWithState:&v126 objects:v143 count:16];
        self = selfCopy;
        if (v83)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v84 = 0;
    }

LABEL_109:

    v3 = v120;
    [v120 setObject:v80 forKeyedSubscript:@"cellularFragments"];
  }

  else
  {
    v84 = 0;
  }

  v92 = [MEMORY[0x277CCABB0] numberWithInt:v84];
  [v3 setObject:v92 forKeyedSubscript:@"cellularFragmentsCount"];

  clientFragments = [(NWActivitySuperMetric *)self clientFragments];
  v94 = [clientFragments count];

  if (v94)
  {
    v95 = objc_alloc(MEMORY[0x277CBEB18]);
    clientFragments2 = [(NWActivitySuperMetric *)self clientFragments];
    v97 = [v95 initWithCapacity:{objc_msgSend(clientFragments2, "count")}];

    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    clientFragments3 = [(NWActivitySuperMetric *)self clientFragments];
    v99 = [clientFragments3 countByEnumeratingWithState:&v122 objects:v142 count:16];
    if (v99)
    {
      v100 = v99;
      v101 = 0;
      v102 = *v123;
      while (2)
      {
        for (m = 0; m != v100; ++m)
        {
          if (*v123 != v102)
          {
            objc_enumerationMutation(clientFragments3);
          }

          v104 = *(*(&v122 + 1) + 8 * m);
          if (v101 > [NWActivitySuperMetric limitForFragmentType:7])
          {
            v106 = activityLogHandle();
            self = selfCopy;
            if (os_log_type_enabled(v106, OS_LOG_TYPE_INFO))
            {
              clientFragments4 = [(NWActivitySuperMetric *)selfCopy clientFragments];
              v108 = [clientFragments4 count];
              *buf = 134217984;
              v147 = v108;
              _os_log_impl(&dword_23255B000, v106, OS_LOG_TYPE_INFO, "Reached max client fragments, dropping the rest (count %lu)", buf, 0xCu);
            }

            goto LABEL_130;
          }

          if (v104)
          {
            [v97 addObject:v104];
            v101 = (v101 + 1);
          }

          else
          {
            v105 = activityLogHandle();
            if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v147 = 0;
              _os_log_impl(&dword_23255B000, v105, OS_LOG_TYPE_ERROR, "Failed to create fragment for %@", buf, 0xCu);
            }
          }
        }

        v100 = [clientFragments3 countByEnumeratingWithState:&v122 objects:v142 count:16];
        self = selfCopy;
        if (v100)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v101 = 0;
    }

LABEL_130:

    v3 = v120;
    [v120 setObject:v97 forKeyedSubscript:@"clientMetrics"];
  }

  else
  {
    v101 = 0;
  }

  v109 = [MEMORY[0x277CCABB0] numberWithInt:v101];
  [v3 setObject:v109 forKeyedSubscript:@"clientMetricCount"];

  algosScore = [(NWActivitySuperMetric *)self algosScore];
  if (algosScore)
  {
    v111 = algosScore;
    algosScore2 = [(NWActivitySuperMetric *)self algosScore];
    v113 = [algosScore2 count];

    if (v113)
    {
      algosScore3 = [(NWActivitySuperMetric *)self algosScore];
      [v3 setObject:algosScore3 forKeyedSubscript:@"algosScore"];
    }
  }

  v115 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (void)flattenObject:(id)object intoDictionary:(id)dictionary atPath:(id)path
{
  v62 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  dictionaryCopy = dictionary;
  pathCopy = path;
  v10 = pathCopy;
  if (!objectCopy || !dictionaryCopy)
  {
    goto LABEL_13;
  }

  if (!pathCopy)
  {
    v13 = metricsLogHandle;
    if (!os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 138412290;
    v59 = objectCopy;
    v14 = "Cannot have nil path when flattening, skipping object: %@";
    v15 = v13;
    v16 = OS_LOG_TYPE_ERROR;
    v17 = 12;
    goto LABEL_12;
  }

  if (([pathCopy isEqualToString:@"a_deviceReport_batteryAccumulator_durations"] & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"e_deviceReport_batteryAccumulator_durations"))
  {
    v11 = metricsLogHandle;
    if (!os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
    {
LABEL_9:
      [dictionaryCopy setObject:objectCopy forKeyedSubscript:v10];
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  if (([v10 isEqualToString:@"a_l2Report_queue_stats"] & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"e_l2Report_queue_stats"))
  {
    v11 = metricsLogHandle;
    if (!os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_9;
    }

LABEL_7:
    *buf = 138412546;
    v59 = objectCopy;
    v60 = 2112;
    v61 = v10;
    v12 = "Not flattening object %@ at path %@";
LABEL_8:
    _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEBUG, v12, buf, 0x16u);
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v45 = objectCopy;
    v19 = objectCopy;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    obj = [v19 allKeys];
    v20 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v53;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v53 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v52 + 1) + 8 * i);
          v25 = [v19 objectForKey:v24];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v26 = metricsLogHandle;
            if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v59 = v24;
              v60 = 2112;
              v61 = v10;
              _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_INFO, "Bad key %@ at path %@", buf, 0x16u);
            }
          }

          v27 = [v10 length];
          v28 = objc_alloc(MEMORY[0x277CCACA8]);
          if (v27)
          {
            v29 = [v28 initWithFormat:@"%@_%@", v10, v24];
          }

          else
          {
            v29 = [v28 initWithFormat:@"%@", v24, v44];
          }

          v30 = v29;
          [self flattenObject:v25 intoDictionary:dictionaryCopy atPath:v29];
        }

        v21 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
      }

      while (v21);
    }

    objectCopy = v45;
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v11 = metricsLogHandle;
      if (!os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_9;
      }

      *buf = 138412546;
      v59 = objectCopy;
      v60 = 2112;
      v61 = v10;
      v12 = "Adding object: %@ into flat dictionary at path %@";
      goto LABEL_8;
    }

    v43 = metricsLogHandle;
    if (!os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_INFO))
    {
      goto LABEL_13;
    }

    *buf = 138412546;
    v59 = objectCopy;
    v60 = 2112;
    v61 = v10;
    v14 = "Bad value %@ at path %@, ignoring";
    v15 = v43;
    v16 = OS_LOG_TYPE_INFO;
    v17 = 22;
LABEL_12:
    _os_log_impl(&dword_23255B000, v15, v16, v14, buf, v17);
    goto LABEL_13;
  }

  v31 = dictionaryCopy;
  v32 = objectCopy;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v33 = [v32 countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = 0;
    v36 = *v49;
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v49 != v36)
        {
          objc_enumerationMutation(v32);
        }

        v38 = *(*(&v48 + 1) + 8 * j);
        v39 = [v10 length];
        v40 = objc_alloc(MEMORY[0x277CCACA8]);
        if (v39)
        {
          v41 = [v40 initWithFormat:@"%@_%zu", v10, v35];
        }

        else
        {
          v41 = [v40 initWithFormat:@"%zu", v35, v44];
        }

        v42 = v41;
        [self flattenObject:v38 intoDictionary:v31 atPath:v41];

        ++v35;
      }

      v34 = [v32 countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v34);
  }

  dictionaryCopy = v31;
LABEL_13:

  v18 = *MEMORY[0x277D85DE8];
}

+ (unsigned)limitForFragmentType:(int)type
{
  if (type > 8)
  {
    return 1;
  }

  else
  {
    return dword_232816C60[type];
  }
}

@end