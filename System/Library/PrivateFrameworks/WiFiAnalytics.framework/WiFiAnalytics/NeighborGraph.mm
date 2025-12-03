@interface NeighborGraph
- (BOOL)doesPathExist:(id)exist target:(id)target;
- (NeighborGraph)initWithBssidArray:(id)array ssid:(id)ssid persistentContainer:(id)container;
- (id)copyNeighborGraphAsDictionaryOnMoc:(id)moc;
- (unint64_t)graphDensity;
- (void)setNeighborsForBssid:(id)bssid dwellTime:(unint64_t)time neighborInfoArray:(id)array;
- (void)setNeighborsForBssid:(id)bssid neighbors:(id)neighbors;
@end

@implementation NeighborGraph

- (NeighborGraph)initWithBssidArray:(id)array ssid:(id)ssid persistentContainer:(id)container
{
  v41 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  ssidCopy = ssid;
  containerCopy = container;
  v32.receiver = self;
  v32.super_class = NeighborGraph;
  v11 = [(NeighborGraph *)&v32 init];
  if (!v11)
  {
    goto LABEL_31;
  }

  if (!arrayCopy)
  {
    v28 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    *buf = 136446466;
    v34 = "[NeighborGraph initWithBssidArray:ssid:persistentContainer:]";
    v35 = 1024;
    v36 = 38;
    v29 = "%{public}s::%d:bssidArray nil";
LABEL_29:
    _os_log_impl(&dword_1C8460000, v28, OS_LOG_TYPE_ERROR, v29, buf, 0x12u);
    goto LABEL_30;
  }

  if (![arrayCopy count])
  {
    v28 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    *buf = 136446466;
    v34 = "[NeighborGraph initWithBssidArray:ssid:persistentContainer:]";
    v35 = 1024;
    v36 = 39;
    v29 = "%{public}s::%d:bssidArray has 0 objects";
    goto LABEL_29;
  }

  if (!containerCopy)
  {
    v28 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    *buf = 136446466;
    v34 = "[NeighborGraph initWithBssidArray:ssid:persistentContainer:]";
    v35 = 1024;
    v36 = 41;
    v29 = "%{public}s::%d:persistent container nil";
    goto LABEL_29;
  }

  objc_storeStrong(&v11->_persistentContainer, container);
  v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(arrayCopy, "count")}];
  graph = v11->_graph;
  v11->_graph = v12;

  if (!v11->_graph)
  {
    v28 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    *buf = 136446466;
    v34 = "[NeighborGraph initWithBssidArray:ssid:persistentContainer:]";
    v35 = 1024;
    v36 = 44;
    v29 = "%{public}s::%d:bss nil";
    goto LABEL_29;
  }

  if ([arrayCopy count])
  {
    v14 = 0;
    do
    {
      v15 = v11->_graph;
      array = [MEMORY[0x1E695DF70] array];
      [(NSMutableArray *)v15 addObject:array];

      ++v14;
    }

    while (v14 < [arrayCopy count]);
  }

  v17 = [ssidCopy copy];
  ssid = v11->_ssid;
  v11->_ssid = v17;

  v19 = [MEMORY[0x1E695DEC8] arrayWithArray:arrayCopy];
  bssids = v11->_bssids;
  v11->_bssids = v19;

  if (!v11->_bssids)
  {
    v28 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    *buf = 136446466;
    v34 = "[NeighborGraph initWithBssidArray:ssid:persistentContainer:]";
    v35 = 1024;
    v36 = 53;
    v29 = "%{public}s::%d:path nil";
    goto LABEL_29;
  }

  array2 = [MEMORY[0x1E695DF70] array];
  bssidsDwellTimes = v11->_bssidsDwellTimes;
  v11->_bssidsDwellTimes = array2;

  if (!v11->_bssidsDwellTimes)
  {
    v28 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v34 = "[NeighborGraph initWithBssidArray:ssid:persistentContainer:]";
      v35 = 1024;
      v36 = 56;
      v29 = "%{public}s::%d:_bssidsDwellTimes nil";
      goto LABEL_29;
    }

LABEL_30:

LABEL_31:
    v27 = 0;
    goto LABEL_32;
  }

  if ([arrayCopy count])
  {
    v23 = 0;
    do
    {
      [(NSMutableArray *)v11->_bssidsDwellTimes addObject:&unk_1F483E170];
      ++v23;
    }

    while (v23 < [arrayCopy count]);
  }

  v24 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    v25 = [(NSArray *)v11->_bssids count];
    v26 = [(NSMutableArray *)v11->_graph count];
    *buf = 136446978;
    v34 = "[NeighborGraph initWithBssidArray:ssid:persistentContainer:]";
    v35 = 1024;
    v36 = 62;
    v37 = 2048;
    v38 = v25;
    v39 = 2048;
    v40 = v26;
    _os_log_impl(&dword_1C8460000, v24, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Initialized with bssids count:%lu graph count: %lu", buf, 0x26u);
  }

  v27 = v11;
LABEL_32:

  v30 = *MEMORY[0x1E69E9840];
  return v27;
}

- (void)setNeighborsForBssid:(id)bssid neighbors:(id)neighbors
{
  v49 = *MEMORY[0x1E69E9840];
  bssidCopy = bssid;
  neighborsCopy = neighbors;
  v8 = neighborsCopy;
  if (!bssidCopy)
  {
    v13 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    *buf = 136446466;
    v44 = "[NeighborGraph setNeighborsForBssid:neighbors:]";
    v45 = 1024;
    v46 = 72;
    v32 = "%{public}s::%d:bssid nil";
    goto LABEL_28;
  }

  if (!neighborsCopy)
  {
    v13 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    *buf = 136446466;
    v44 = "[NeighborGraph setNeighborsForBssid:neighbors:]";
    v45 = 1024;
    v46 = 73;
    v32 = "%{public}s::%d:neighborBssids nil";
    goto LABEL_28;
  }

  if (![neighborsCopy count])
  {
    v13 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    *buf = 136446466;
    v44 = "[NeighborGraph setNeighborsForBssid:neighbors:]";
    v45 = 1024;
    v46 = 74;
    v32 = "%{public}s::%d:neighborBssids empty";
LABEL_28:
    v33 = v13;
    v34 = 18;
    goto LABEL_31;
  }

  bssids = [(NeighborGraph *)self bssids];
  v10 = [bssids indexOfObject:bssidCopy];

  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    *buf = 136446722;
    v44 = "[NeighborGraph setNeighborsForBssid:neighbors:]";
    v45 = 1024;
    v46 = 77;
    v47 = 2112;
    v48 = bssidCopy;
    v32 = "%{public}s::%d:bssid %@ not found";
    v33 = v13;
    v34 = 28;
LABEL_31:
    _os_log_impl(&dword_1C8460000, v33, OS_LOG_TYPE_ERROR, v32, buf, v34);
    goto LABEL_21;
  }

  v35 = v10;
  v36 = bssidCopy;
  v11 = MEMORY[0x1E695DF70];
  bssids2 = [(NeighborGraph *)self bssids];
  v13 = [v11 arrayWithCapacity:{objc_msgSend(bssids2, "count")}];

  bssids3 = [(NeighborGraph *)self bssids];
  v15 = [bssids3 count];

  if (v15)
  {
    v16 = 0;
    do
    {
      v17 = [MEMORY[0x1E696AD98] numberWithBool:0];
      [v13 addObject:v17];

      ++v16;
      bssids4 = [(NeighborGraph *)self bssids];
      v19 = [bssids4 count];
    }

    while (v16 < v19);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v8;
  v20 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v39;
    while (2)
    {
      for (i = 0; i != v21; ++i)
      {
        v24 = v13;
        if (*v39 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v38 + 1) + 8 * i);
        bssids5 = [(NeighborGraph *)self bssids];
        v27 = [bssids5 indexOfObject:v25];

        if (v27 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v30 = WALogCategoryDeviceStoreHandle();
          v13 = v24;
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            v44 = "[NeighborGraph setNeighborsForBssid:neighbors:]";
            v45 = 1024;
            v46 = 86;
            v47 = 2112;
            v48 = v25;
            _os_log_impl(&dword_1C8460000, v30, OS_LOG_TYPE_ERROR, "%{public}s::%d:neighbor %@ not found", buf, 0x1Cu);
          }

          goto LABEL_20;
        }

        v28 = [MEMORY[0x1E696AD98] numberWithBool:1];
        v13 = v24;
        [v24 insertObject:v28 atIndex:v27];
      }

      v21 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }
  }

  graph = [(NeighborGraph *)self graph];
  [graph insertObject:v13 atIndex:v35];

LABEL_20:
  bssidCopy = v36;
LABEL_21:

  v31 = *MEMORY[0x1E69E9840];
}

- (BOOL)doesPathExist:(id)exist target:(id)target
{
  v26 = *MEMORY[0x1E69E9840];
  existCopy = exist;
  targetCopy = target;
  v8 = targetCopy;
  if (!existCopy)
  {
    v18 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    v22 = 136446466;
    v23 = "[NeighborGraph doesPathExist:target:]";
    v24 = 1024;
    v25 = 101;
    v19 = "%{public}s::%d:sourceBssid nil";
LABEL_18:
    _os_log_impl(&dword_1C8460000, v18, OS_LOG_TYPE_ERROR, v19, &v22, 0x12u);
    goto LABEL_19;
  }

  if (!targetCopy)
  {
    v18 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    v22 = 136446466;
    v23 = "[NeighborGraph doesPathExist:target:]";
    v24 = 1024;
    v25 = 102;
    v19 = "%{public}s::%d:targetBssid nil";
    goto LABEL_18;
  }

  bssids = [(NeighborGraph *)self bssids];
  v10 = [bssids indexOfObject:existCopy];

  bssids2 = [(NeighborGraph *)self bssids];
  v12 = [bssids2 indexOfObject:v8];

  if (v12 == v10)
  {
    v18 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v22 = 136446466;
      v23 = "[NeighborGraph doesPathExist:target:]";
      v24 = 1024;
      v25 = 107;
      v19 = "%{public}s::%d:source and target are same.. bailing";
      goto LABEL_18;
    }

LABEL_19:

    v14 = 0;
LABEL_20:
    isKindOfClass = 0;
    goto LABEL_21;
  }

  graph = [(NeighborGraph *)self graph];
  v14 = [graph objectAtIndex:v10];

  if (!v14 || ![v14 count])
  {
    goto LABEL_20;
  }

  v15 = [v14 objectAtIndex:v12];
  null = [MEMORY[0x1E695DFB0] null];

  if (v15 == null)
  {
    isKindOfClass = 0;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isKindOfClass = 1;
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }
  }

LABEL_21:
  v20 = *MEMORY[0x1E69E9840];
  return isKindOfClass & 1;
}

- (unint64_t)graphDensity
{
  v46 = *MEMORY[0x1E69E9840];
  bssids = [(NeighborGraph *)self bssids];
  v22 = [bssids count];

  bssids2 = [(NeighborGraph *)self bssids];
  v5 = [bssids2 mutableCopy];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v45 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v23 = *v29;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v23)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        v12 = [v6 mutableCopy];
        [v12 removeObject:v11];
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v13 = v12;
        v14 = [v13 countByEnumeratingWithState:&v24 objects:v44 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v25;
          do
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v25 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v9 += [(NeighborGraph *)self doesPathExist:v11 target:*(*(&v24 + 1) + 8 * j)];
            }

            v15 = [v13 countByEnumeratingWithState:&v24 objects:v44 count:16];
          }

          while (v15);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v28 objects:v45 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v18 = ((v22 - 1) * v22) >> 1;
  v19 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136447490;
    v33 = "[NeighborGraph graphDensity]";
    v34 = 1024;
    v35 = 146;
    v36 = 2048;
    v37 = v22;
    v38 = 2048;
    v39 = ((v22 - 1) * v22) >> 1;
    v40 = 2048;
    v41 = v9;
    v42 = 2048;
    v43 = (v9 / v18 * 100.0);
    _os_log_impl(&dword_1C8460000, v19, OS_LOG_TYPE_DEBUG, "%{public}s::%d:BssCount:%lu MaxPaths:%lu actualPaths:%lu Density:%lu", buf, 0x3Au);
  }

  v20 = *MEMORY[0x1E69E9840];
  return (v9 / v18 * 100.0);
}

- (void)setNeighborsForBssid:(id)bssid dwellTime:(unint64_t)time neighborInfoArray:(id)array
{
  v83 = *MEMORY[0x1E69E9840];
  bssidCopy = bssid;
  arrayCopy = array;
  v9 = arrayCopy;
  if (!bssidCopy)
  {
    log = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    *buf = 136446466;
    v70 = "[NeighborGraph setNeighborsForBssid:dwellTime:neighborInfoArray:]";
    v71 = 1024;
    v72 = 153;
    v54 = "%{public}s::%d:bssid nil";
    goto LABEL_33;
  }

  if (!arrayCopy)
  {
    log = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    *buf = 136446466;
    v70 = "[NeighborGraph setNeighborsForBssid:dwellTime:neighborInfoArray:]";
    v71 = 1024;
    v72 = 154;
    v54 = "%{public}s::%d:neighborInfoArray nil";
    goto LABEL_33;
  }

  if (![arrayCopy count])
  {
    log = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    *buf = 136446466;
    v70 = "[NeighborGraph setNeighborsForBssid:dwellTime:neighborInfoArray:]";
    v71 = 1024;
    v72 = 155;
    v54 = "%{public}s::%d:neighborInfoArray empty";
LABEL_33:
    v55 = log;
    v56 = 18;
    goto LABEL_36;
  }

  bssids = [(NeighborGraph *)self bssids];
  v11 = [bssids indexOfObject:bssidCopy];

  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    log = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    *buf = 136446722;
    v70 = "[NeighborGraph setNeighborsForBssid:dwellTime:neighborInfoArray:]";
    v71 = 1024;
    v72 = 158;
    v73 = 2112;
    v74 = bssidCopy;
    v54 = "%{public}s::%d:bssid %@ not found";
    v55 = log;
    v56 = 28;
LABEL_36:
    _os_log_impl(&dword_1C8460000, v55, OS_LOG_TYPE_ERROR, v54, buf, v56);
    goto LABEL_26;
  }

  bssidsDwellTimes = [(NeighborGraph *)self bssidsDwellTimes];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:time];
  v59 = v11;
  [bssidsDwellTimes insertObject:v13 atIndex:v11];

  v14 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = [v9 count];
    bssids2 = [(NeighborGraph *)self bssids];
    *buf = 136447746;
    v70 = "[NeighborGraph setNeighborsForBssid:dwellTime:neighborInfoArray:]";
    v71 = 1024;
    v72 = 162;
    v73 = 2048;
    v74 = (v11 + 1);
    v75 = 2112;
    v76 = bssidCopy;
    v77 = 2048;
    timeCopy = time;
    v79 = 2048;
    v80 = v15;
    v81 = 2048;
    v82 = [bssids2 count];
    _os_log_impl(&dword_1C8460000, v14, OS_LOG_TYPE_DEBUG, "%{public}s::%d:(%lu) BSSID: %@ dwell:%lu has %lu neighbors. BssidsCount:%lu", buf, 0x44u);
  }

  v58 = bssidCopy;

  log = [MEMORY[0x1E695DF70] array];
  bssids3 = [(NeighborGraph *)self bssids];
  v18 = [bssids3 count];

  if (v18)
  {
    v19 = 0;
    do
    {
      array = [MEMORY[0x1E695DF70] array];
      [log addObject:array];

      ++v19;
      bssids4 = [(NeighborGraph *)self bssids];
      v22 = [bssids4 count];
    }

    while (v19 < v22);
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v57 = v9;
  obj = v9;
  v23 = [obj countByEnumeratingWithState:&v64 objects:v68 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = 0;
    v62 = *v65;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v65 != v62)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v64 + 1) + 8 * i);
        v28 = [v27 valueForKey:@"NeighborBssid"];
        bssids5 = [(NeighborGraph *)self bssids];
        v30 = [bssids5 indexOfObject:v28];

        v31 = WALogCategoryDeviceStoreHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136447234;
          v70 = "[NeighborGraph setNeighborsForBssid:dwellTime:neighborInfoArray:]";
          v71 = 1024;
          v72 = 175;
          v73 = 2112;
          v74 = v28;
          v75 = 2048;
          v76 = v30;
          v77 = 2048;
          timeCopy = v25 + 1;
          _os_log_impl(&dword_1C8460000, v31, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Neighbor: %@ has index %lu at iteration:%lu", buf, 0x30u);
        }

        if (v30 == 0x7FFFFFFFFFFFFFFFLL)
        {
          dictionary = WALogCategoryDeviceStoreHandle();
          if (os_log_type_enabled(dictionary, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446978;
            v70 = "[NeighborGraph setNeighborsForBssid:dwellTime:neighborInfoArray:]";
            v71 = 1024;
            v72 = 178;
            v73 = 2112;
            v74 = v28;
            v75 = 2048;
            v76 = v25 + 1;
            _os_log_impl(&dword_1C8460000, dictionary, OS_LOG_TYPE_ERROR, "%{public}s::%d:Couldnt find Neighbor: %@ in iteration:%lu", buf, 0x26u);
          }
        }

        else
        {
          dictionary = [MEMORY[0x1E695DF90] dictionary];
          v33 = [v27 objectForKeyedSubscript:@"NeighborBssNumRoamCacheRssiHigh"];
          [dictionary setObject:v33 forKeyedSubscript:@"NeighborBssNumRoamCacheRssiHigh"];

          v34 = [v27 objectForKeyedSubscript:@"NeighborBssNumRoamCacheRssiMid"];
          [dictionary setObject:v34 forKeyedSubscript:@"NeighborBssNumRoamCacheRssiMid"];

          v35 = [v27 objectForKeyedSubscript:@"NeighborBssNumRoamCacheRssiUpperMid"];
          [dictionary setObject:v35 forKeyedSubscript:@"NeighborBssNumRoamCacheRssiUpperMid"];

          v36 = [v27 objectForKeyedSubscript:@"NeighborBssNumRoamCacheRssiLow"];
          [dictionary setObject:v36 forKeyedSubscript:@"NeighborBssNumRoamCacheRssiLow"];

          v37 = [v27 objectForKeyedSubscript:@"NeighborBssNumRoamCacheRssiReallyLow"];
          [dictionary setObject:v37 forKeyedSubscript:@"NeighborBssNumRoamCacheRssiReallyLow"];

          v38 = [v27 objectForKeyedSubscript:@"NeighborBssNumRoamOriginRssiHigh"];
          [dictionary setObject:v38 forKeyedSubscript:@"NeighborBssNumRoamOriginRssiHigh"];

          v39 = [v27 objectForKeyedSubscript:@"NeighborBssNumRoamOriginRssiUpperHigh"];
          [dictionary setObject:v39 forKeyedSubscript:@"NeighborBssNumRoamOriginRssiUpperHigh"];

          v40 = [v27 objectForKeyedSubscript:@"NeighborBssNumRoamOriginRssiOptimum"];
          [dictionary setObject:v40 forKeyedSubscript:@"NeighborBssNumRoamOriginRssiOptimum"];

          v41 = [v27 objectForKeyedSubscript:@"NeighborBssNumRoamOriginRssiUpperOptimum"];
          [dictionary setObject:v41 forKeyedSubscript:@"NeighborBssNumRoamOriginRssiUpperOptimum"];

          v42 = [v27 objectForKeyedSubscript:@"NeighborBssNumRoamOriginRssiMid"];
          [dictionary setObject:v42 forKeyedSubscript:@"NeighborBssNumRoamOriginRssiMid"];

          v43 = [v27 objectForKeyedSubscript:@"NeighborBssNumRoamOriginRssiUpperMid"];
          [dictionary setObject:v43 forKeyedSubscript:@"NeighborBssNumRoamOriginRssiUpperMid"];

          v44 = [v27 objectForKeyedSubscript:@"NeighborBssNumRoamOriginRssiLow"];
          [dictionary setObject:v44 forKeyedSubscript:@"NeighborBssNumRoamOriginRssiLow"];

          v45 = [v27 objectForKeyedSubscript:@"NeighborBssNumLazyRoamOriginRssiHigh"];
          [dictionary setObject:v45 forKeyedSubscript:@"NeighborBssNumLazyRoamOriginRssiHigh"];

          v46 = [v27 objectForKeyedSubscript:@"NeighborBssNumLazyRoamOriginRssiUpperHigh"];
          [dictionary setObject:v46 forKeyedSubscript:@"NeighborBssNumLazyRoamOriginRssiUpperHigh"];

          v47 = [v27 objectForKeyedSubscript:@"NeighborBssNumLazyRoamOriginRssiOptimum"];
          [dictionary setObject:v47 forKeyedSubscript:@"NeighborBssNumLazyRoamOriginRssiOptimum"];

          v48 = [v27 objectForKeyedSubscript:@"NeighborBssNumLazyRoamOriginRssiUpperOptimum"];
          [dictionary setObject:v48 forKeyedSubscript:@"NeighborBssNumLazyRoamOriginRssiUpperOptimum"];

          v49 = [v27 objectForKeyedSubscript:@"NeighborBssNumLazyRoamOriginRssiMid"];
          [dictionary setObject:v49 forKeyedSubscript:@"NeighborBssNumLazyRoamOriginRssiMid"];

          [log replaceObjectAtIndex:v30 withObject:dictionary];
          ++v25;
        }
      }

      v24 = [obj countByEnumeratingWithState:&v64 objects:v68 count:16];
    }

    while (v24);
  }

  v50 = WALogCategoryDeviceStoreHandle();
  bssidCopy = v58;
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
  {
    v51 = [log count];
    *buf = 136447234;
    v70 = "[NeighborGraph setNeighborsForBssid:dwellTime:neighborInfoArray:]";
    v71 = 1024;
    v72 = 207;
    v73 = 2112;
    v74 = v58;
    v75 = 2048;
    v76 = v59;
    v77 = 2048;
    timeCopy = v51;
    _os_log_impl(&dword_1C8460000, v50, OS_LOG_TYPE_DEBUG, "%{public}s::%d:BSSID %@ at %lu has Neighbor count: %lu", buf, 0x30u);
  }

  graph = [(NeighborGraph *)self graph];
  [graph insertObject:log atIndex:v59];

  v9 = v57;
LABEL_26:

  v53 = *MEMORY[0x1E69E9840];
}

- (id)copyNeighborGraphAsDictionaryOnMoc:(id)moc
{
  v40 = *MEMORY[0x1E69E9840];
  mocCopy = moc;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__3;
  v28 = __Block_byref_object_dispose__3;
  array = [MEMORY[0x1E695DF70] array];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__3;
  v22 = __Block_byref_object_dispose__3;
  array2 = [MEMORY[0x1E695DF70] array];
  bssidsDwellTimes = [(NeighborGraph *)self bssidsDwellTimes];
  v6 = [bssidsDwellTimes valueForKeyPath:@"@sum.self"];

  unsignedIntegerValue = [v6 unsignedIntegerValue];
  v8 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    bssids = [(NeighborGraph *)self bssids];
    v10 = [bssids count];
    bssids2 = [(NeighborGraph *)self bssids];
    *buf = 136447234;
    v31 = "[NeighborGraph copyNeighborGraphAsDictionaryOnMoc:]";
    v32 = 1024;
    v33 = 223;
    v34 = 2048;
    v35 = v10;
    v36 = 2048;
    v37 = unsignedIntegerValue;
    v38 = 2112;
    v39 = bssids2;
    _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_DEBUG, "%{public}s::%d:bssidCount:%lu totalDwell:%lu BSSIDs:%@", buf, 0x30u);
  }

  bssids3 = [(NeighborGraph *)self bssids];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __52__NeighborGraph_copyNeighborGraphAsDictionaryOnMoc___block_invoke;
  v17[3] = &unk_1E830E988;
  v17[4] = self;
  v17[5] = &v24;
  v17[6] = &v18;
  v17[7] = unsignedIntegerValue;
  [bssids3 enumerateObjectsUsingBlock:v17];

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:v25[5] forKey:@"nodes"];
  [dictionary setObject:v19[5] forKey:@"links"];
  v14 = [dictionary copy];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

void __52__NeighborGraph_copyNeighborGraphAsDictionaryOnMoc___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [MEMORY[0x1E695DF90] dictionary];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3 + 1];
  [v6 setValue:v7 forKey:@"id"];

  [v6 setValue:v5 forKey:@"bssid"];
  v8 = [*(a1 + 32) bssidsDwellTimes];
  v9 = [v8 objectAtIndex:a3];
  v10 = (100 * [v9 unsignedIntegerValue]) / *(a1 + 56);

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
  [v6 setValue:v11 forKey:@"dwellTime"];

  [*(*(*(a1 + 40) + 8) + 40) addObject:v6];
  v12 = [*(*(a1 + 32) + 24) bssForBssid:v5 prefetchProperties:&unk_1F483E578 withError:0];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
  [v6 setValue:v13 forKey:@"dwellTime"];

  v14 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v12, "mostRecentChannel")}];
  [v6 setValue:v14 forKey:@"channel"];

  v15 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v12, "isEdgeForJoin")}];
  [v6 setValue:v15 forKey:@"isEdgeForJoin"];

  v16 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v12, "isEdgeForLeave")}];
  [v6 setValue:v16 forKey:@"isEdgeForLeave"];

  v17 = [*(a1 + 32) graph];
  v18 = [v17 objectAtIndex:a3];

  v19 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v20 = [*(a1 + 32) bssidsDwellTimes];
    v21 = [v20 objectAtIndex:a3];
    *buf = 136447746;
    v31 = "[NeighborGraph copyNeighborGraphAsDictionaryOnMoc:]_block_invoke";
    v32 = 1024;
    v33 = 243;
    v34 = 2112;
    v35 = v5;
    v36 = 2112;
    v37 = v21;
    v38 = 2048;
    v39 = v10;
    v40 = 2048;
    v41 = a3;
    v42 = 2048;
    v43 = [v18 count];
    _os_log_impl(&dword_1C8460000, v19, OS_LOG_TYPE_DEBUG, "%{public}s::%d:BSSID %@ dwell:%@ dwellPct:%lu at %lu has Neighbor count: %lu", buf, 0x44u);
  }

  if (v18 && [v18 count])
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __52__NeighborGraph_copyNeighborGraphAsDictionaryOnMoc___block_invoke_133;
    v25[3] = &unk_1E830E960;
    v29 = a3;
    v22 = v5;
    v23 = *(a1 + 32);
    v26 = v22;
    v27 = v23;
    v28 = *(a1 + 48);
    [v18 enumerateObjectsUsingBlock:v25];
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __52__NeighborGraph_copyNeighborGraphAsDictionaryOnMoc___block_invoke_133(uint64_t a1, void *a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [MEMORY[0x1E695DFB0] null];

  if (v6 != v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = WALogCategoryDeviceStoreHandle();
      v71 = a1;
      v68 = a3;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = *(a1 + 56) + 1;
        v9 = (a3 + 1);
        v10 = *(a1 + 32);
        v11 = [*(a1 + 40) bssids];
        v12 = [v11 objectAtIndex:a3];
        *buf = 136447490;
        v73 = "[NeighborGraph copyNeighborGraphAsDictionaryOnMoc:]_block_invoke";
        v74 = 1024;
        v75 = 250;
        v76 = 2048;
        v77 = v8;
        v78 = 2112;
        v79 = v10;
        v80 = 2048;
        v81 = v9;
        v82 = 2112;
        v83 = v12;
        _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_DEBUG, "%{public}s::%d:(%lu) BSSID: %@ -> (%lu) BSSID: %@", buf, 0x3Au);

        a1 = v71;
      }

      else
      {
        v9 = (a3 + 1);
      }

      v17 = [MEMORY[0x1E695DF90] dictionary];
      v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 56) + 1];
      [v17 setObject:v18 forKey:@"source"];

      v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9];
      v69 = v17;
      [v17 setObject:v19 forKey:@"target"];

      v70 = v5;
      v20 = v5;
      v21 = [v20 objectForKeyedSubscript:@"NeighborBssNumRoamOriginRssiHigh"];
      v22 = [v21 unsignedIntegerValue];
      v23 = [v20 objectForKeyedSubscript:@"NeighborBssNumRoamOriginRssiUpperHigh"];
      v24 = [v23 unsignedIntegerValue] + v22;
      v25 = [v20 objectForKeyedSubscript:@"NeighborBssNumRoamOriginRssiOptimum"];
      v26 = [v25 unsignedIntegerValue];
      v27 = [v20 objectForKeyedSubscript:@"NeighborBssNumRoamOriginRssiUpperOptimum"];
      v28 = v24 + v26 + [v27 unsignedIntegerValue];
      v29 = [v20 objectForKeyedSubscript:@"NeighborBssNumRoamOriginRssiMid"];
      v30 = [v29 unsignedIntegerValue];
      v31 = [v20 objectForKeyedSubscript:@"NeighborBssNumRoamOriginRssiUpperMid"];
      v32 = v30 + [v31 unsignedIntegerValue];
      v33 = [v20 objectForKeyedSubscript:@"NeighborBssNumRoamOriginRssiLow"];
      v34 = v28 + v32 + [v33 unsignedIntegerValue];

      v35 = [v20 objectForKeyedSubscript:@"NeighborBssNumRoamOriginRssiHigh"];
      v36 = 100 * [v35 unsignedIntegerValue] / v34;

      v37 = [v20 objectForKeyedSubscript:@"NeighborBssNumRoamOriginRssiUpperHigh"];
      v67 = 100 * [v37 unsignedIntegerValue] / v34;

      v38 = [v20 objectForKeyedSubscript:@"NeighborBssNumRoamOriginRssiOptimum"];
      v39 = 100 * [v38 unsignedIntegerValue] / v34;

      v40 = [v20 objectForKeyedSubscript:@"NeighborBssNumRoamOriginRssiUpperOptimum"];
      v41 = 100 * [v40 unsignedIntegerValue] / v34;

      v42 = [v20 objectForKeyedSubscript:@"NeighborBssNumRoamOriginRssiMid"];
      v43 = 100 * [v42 unsignedIntegerValue] / v34;

      v44 = [v20 objectForKeyedSubscript:@"NeighborBssNumRoamOriginRssiUpperMid"];
      v45 = 100 * [v44 unsignedIntegerValue] / v34;

      v46 = [v20 objectForKeyedSubscript:@"NeighborBssNumRoamOriginRssiLow"];
      v47 = 100 * [v46 unsignedIntegerValue] / v34;

      v48 = [MEMORY[0x1E695DF70] array];
      v49 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v36];
      [v48 addObject:v49];

      v50 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v67];
      [v48 addObject:v50];

      v51 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v39];
      [v48 addObject:v51];

      v52 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v41];
      [v48 addObject:v52];

      v53 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v43];
      [v48 addObject:v53];

      v54 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v45];
      [v48 addObject:v54];

      v55 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v47];
      [v48 addObject:v55];

      v56 = [v48 valueForKeyPath:@"@max.integerValue"];
      v57 = [v48 indexOfObject:v56];
      v58 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136447234;
        v73 = "[NeighborGraph copyNeighborGraphAsDictionaryOnMoc:]_block_invoke";
        v74 = 1024;
        v75 = 288;
        v76 = 2112;
        v77 = v56;
        v78 = 2048;
        v79 = v57;
        v80 = 2112;
        v81 = v48;
        _os_log_impl(&dword_1C8460000, v58, OS_LOG_TYPE_DEBUG, "%{public}s::%d:max:%@ level:%lu %@", buf, 0x30u);
      }

      v59 = [RoamPolicyStore rangeStringWithRssiLevel:v57];
      [v69 setObject:v59 forKey:@"rssiBucketWithMostRoams"];
      [v69 setObject:v56 forKey:@"rssiBucketWithRoamsPct"];
      v60 = MEMORY[0x1E696AD98];
      v61 = [*(v71 + 40) persistentContainer];
      v62 = *(v71 + 32);
      v63 = [*(v71 + 40) bssids];
      v64 = [v63 objectAtIndex:v68];
      v65 = [v60 numberWithUnsignedInteger:{objc_msgSend(v61, "successfulRoamCountFrom:to:", v62, v64)}];
      [v69 setObject:v65 forKey:@"roamsCount"];

      v14 = v69;
      [*(*(*(v71 + 48) + 8) + 40) addObject:v69];

      v5 = v70;
      goto LABEL_15;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v14 = WALogCategoryDeviceStoreHandle();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (isKindOfClass)
    {
      if (v15)
      {
        *buf = 136446466;
        v73 = "[NeighborGraph copyNeighborGraphAsDictionaryOnMoc:]_block_invoke";
        v74 = 1024;
        v75 = 300;
        v16 = "%{public}s::%d:Unexpected neighborInfo class";
LABEL_14:
        _os_log_impl(&dword_1C8460000, v14, OS_LOG_TYPE_ERROR, v16, buf, 0x12u);
      }
    }

    else if (v15)
    {
      *buf = 136446466;
      v73 = "[NeighborGraph copyNeighborGraphAsDictionaryOnMoc:]_block_invoke";
      v74 = 1024;
      v75 = 302;
      v16 = "%{public}s::%d:Invalid neighborInfo class";
      goto LABEL_14;
    }

LABEL_15:
  }

  v66 = *MEMORY[0x1E69E9840];
}

@end