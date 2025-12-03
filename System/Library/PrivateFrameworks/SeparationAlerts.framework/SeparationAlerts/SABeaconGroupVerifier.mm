@interface SABeaconGroupVerifier
+ (id)verifyBeaconGroupsWithBeaconGroups:(id)groups deviceUUIDtoDeviceMap:(id)map deviceToSafeLocationMap:(id)locationMap;
+ (int)beaconGroupSizeForDevice:(id)device;
@end

@implementation SABeaconGroupVerifier

+ (id)verifyBeaconGroupsWithBeaconGroups:(id)groups deviceUUIDtoDeviceMap:(id)map deviceToSafeLocationMap:(id)locationMap
{
  v159 = *MEMORY[0x277D85DE8];
  groupsCopy = groups;
  mapCopy = map;
  locationMapCopy = locationMap;
  v10 = objc_opt_new();
  [v10 setBeaconGroupComplete:1];
  [v10 setBeaconGroupSafeLocationsMatch:1];
  v90 = mapCopy;
  v11 = [mapCopy mutableCopy];
  [v10 setDeviceUUIDtoDeviceMap:v11];

  v89 = locationMapCopy;
  v12 = [locationMapCopy mutableCopy];
  [v10 setDeviceToSafeLocationMap:v12];

  v92 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(groupsCopy, "count")}];
  v103 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(groupsCopy, "count")}];
  v134 = 0u;
  v135 = 0u;
  v136 = 0u;
  v137 = 0u;
  obj = groupsCopy;
  v94 = [obj countByEnumeratingWithState:&v134 objects:v158 count:16];
  if (v94)
  {
    v93 = *v135;
    do
    {
      for (i = 0; i != v94; ++i)
      {
        if (*v135 != v93)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v134 + 1) + 8 * i);
        v15 = [obj objectForKeyedSubscript:v14];
        v16 = TASALog;
        if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
        {
          v17 = v16;
          v18 = [v15 count];
          v19 = [v15 description];
          if ([v10 beaconGroupComplete])
          {
            v20 = "YES";
          }

          else
          {
            v20 = "NO";
          }

          beaconGroupSafeLocationsMatch = [v10 beaconGroupSafeLocationsMatch];
          *buf = 68290307;
          if (beaconGroupSafeLocationsMatch)
          {
            v22 = "YES";
          }

          else
          {
            v22 = "NO";
          }

          v145 = 0;
          v146 = 2082;
          v147 = "";
          v148 = 2113;
          v149 = v14;
          v150 = 2050;
          v151 = v18;
          v152 = 2113;
          v153 = v19;
          v154 = 2082;
          v155 = v20;
          v156 = 2082;
          v157 = v22;
          _os_log_impl(&dword_2656EA000, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa #beaconMonitoring for group, groupIdentifier:%{private}@, beaconGroup.count:%{public}lu, beacons:%{private}@, beaconGroupCompletePartialResult:%{public}s, safeLocationsMatchPartialResult:%{public}s}", buf, 0x44u);
        }

        anyObject = [v15 anyObject];
        v108 = anyObject;
        if (anyObject)
        {
          deviceUUIDtoDeviceMap = [v10 deviceUUIDtoDeviceMap];
          v25 = [deviceUUIDtoDeviceMap objectForKeyedSubscript:anyObject];

          v26 = [self beaconGroupSizeForDevice:v25];
          if ([v15 count] != v26)
          {
            v27 = TASALog;
            if (os_log_type_enabled(TASALog, OS_LOG_TYPE_FAULT))
            {
              v28 = v26;
              v29 = MEMORY[0x277CCABB0];
              v30 = v27;
              v31 = [v29 numberWithInteger:{objc_msgSend(v25, "deviceType")}];
              v32 = [v15 count];
              *buf = 68290307;
              v145 = 0;
              v146 = 2082;
              v147 = "";
              v148 = 2113;
              v149 = v14;
              v150 = 2113;
              v151 = v108;
              v152 = 2114;
              v153 = v31;
              v154 = 2050;
              v155 = v28;
              anyObject = v108;
              v156 = 2050;
              v157 = v32;
              _os_log_impl(&dword_2656EA000, v30, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#sa #beaconMonitoring incorrect beacon group size, groupIdentifier:%{private}@, beaconIdentifier:%{private}@, deviceType:%{public}@, expectedBeaconGroupSize:%{public}lu, beaconGroup.count:%{public}lu}", buf, 0x44u);
            }

            [v92 addObject:v14];
          }

          v95 = v25;
          v105 = v14;
          v98 = i;
          deviceToSafeLocationMap = [v10 deviceToSafeLocationMap];
          v34 = [deviceToSafeLocationMap objectForKeyedSubscript:anyObject];

          v132 = 0u;
          v133 = 0u;
          v130 = 0u;
          v131 = 0u;
          v96 = v15;
          v35 = v15;
          v36 = [v35 countByEnumeratingWithState:&v130 objects:v143 count:16];
          if (v36)
          {
            v37 = v36;
            v38 = *v131;
            do
            {
              for (j = 0; j != v37; ++j)
              {
                if (*v131 != v38)
                {
                  objc_enumerationMutation(v35);
                }

                v40 = *(*(&v130 + 1) + 8 * j);
                if (v40 != anyObject)
                {
                  deviceToSafeLocationMap2 = [v10 deviceToSafeLocationMap];
                  v42 = [deviceToSafeLocationMap2 objectForKeyedSubscript:v40];
                  v43 = [v34 isEqualToSet:v42];

                  anyObject = v108;
                  if ((v43 & 1) == 0)
                  {
                    v44 = TASALog;
                    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_FAULT))
                    {
                      v45 = v44;
                      deviceToSafeLocationMap3 = [v10 deviceToSafeLocationMap];
                      v47 = [deviceToSafeLocationMap3 objectForKeyedSubscript:v40];
                      *buf = 68290051;
                      v145 = 0;
                      v146 = 2082;
                      v147 = "";
                      v148 = 2113;
                      v149 = v105;
                      v150 = 2113;
                      v151 = v40;
                      v152 = 2114;
                      v153 = v34;
                      v154 = 2114;
                      v155 = v47;
                      _os_log_impl(&dword_2656EA000, v45, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#sa #beaconMonitoring safe location mismatch, groupIdentifier:%{private}@, beaconIdentifier:%{private}@, safelocationsBaseline:%{public}@, safelocationsCompared:%{public}@}", buf, 0x3Au);

                      anyObject = v108;
                    }

                    [v103 addObject:v105];
                  }
                }
              }

              v37 = [v35 countByEnumeratingWithState:&v130 objects:v143 count:16];
            }

            while (v37);
          }

          v15 = v96;
          i = v98;
        }

        else
        {
          [v92 addObject:v14];
          [v103 addObject:v14];
          v48 = TASALog;
          if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
          {
            v49 = v48;
            if ([v10 beaconGroupComplete])
            {
              v50 = "YES";
            }

            else
            {
              v50 = "NO";
            }

            beaconGroupSafeLocationsMatch2 = [v10 beaconGroupSafeLocationsMatch];
            *buf = 68289795;
            if (beaconGroupSafeLocationsMatch2)
            {
              v52 = "YES";
            }

            else
            {
              v52 = "NO";
            }

            v145 = 0;
            v146 = 2082;
            v147 = "";
            v148 = 2113;
            v149 = v14;
            v150 = 2082;
            v151 = v50;
            anyObject = 0;
            v152 = 2082;
            v153 = v52;
            _os_log_impl(&dword_2656EA000, v49, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#sa #beaconMonitoring beacon group is empty, groupIdentifier:%{private}@, beaconGroupComplete:%{public}s, safeLocationsMatch:%{public}s}", buf, 0x30u);
          }
        }
      }

      v94 = [obj countByEnumeratingWithState:&v134 objects:v158 count:16];
    }

    while (v94);
  }

  if ([v92 count])
  {
    [v10 setBeaconGroupComplete:0];
  }

  if ([v103 count])
  {
    [v10 setBeaconGroupSafeLocationsMatch:0];
  }

  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v97 = v92;
  v101 = [v97 countByEnumeratingWithState:&v126 objects:v142 count:16];
  if (v101)
  {
    v99 = *v127;
    do
    {
      v53 = 0;
      do
      {
        if (*v127 != v99)
        {
          objc_enumerationMutation(v97);
        }

        v106 = v53;
        v54 = *(*(&v126 + 1) + 8 * v53);
        v55 = [obj objectForKeyedSubscript:v54];
        v56 = v55;
        if (v55)
        {
          v124 = 0u;
          v125 = 0u;
          v122 = 0u;
          v123 = 0u;
          v57 = [v55 countByEnumeratingWithState:&v122 objects:v141 count:16];
          if (v57)
          {
            v58 = v57;
            v59 = *v123;
            do
            {
              for (k = 0; k != v58; ++k)
              {
                if (*v123 != v59)
                {
                  objc_enumerationMutation(v56);
                }

                v61 = *(*(&v122 + 1) + 8 * k);
                v62 = TASALog;
                if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
                {
                  *buf = 68289539;
                  v145 = 0;
                  v146 = 2082;
                  v147 = "";
                  v148 = 2113;
                  v149 = v54;
                  v150 = 2113;
                  v151 = v61;
                  _os_log_impl(&dword_2656EA000, v62, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#sa #beaconMonitoring suspending device due to incomplete beacon group, groupIdentifier:%{private}@, beaconIdentifier:%{private}@}", buf, 0x26u);
                }

                deviceToSafeLocationMap4 = [v10 deviceToSafeLocationMap];
                [deviceToSafeLocationMap4 removeObjectForKey:v61];

                deviceUUIDtoDeviceMap2 = [v10 deviceUUIDtoDeviceMap];
                [deviceUUIDtoDeviceMap2 removeObjectForKey:v61];
              }

              v58 = [v56 countByEnumeratingWithState:&v122 objects:v141 count:16];
            }

            while (v58);
          }
        }

        else
        {
          v65 = TASALog;
          if (os_log_type_enabled(TASALog, OS_LOG_TYPE_FAULT))
          {
            *buf = 68289283;
            v145 = 0;
            v146 = 2082;
            v147 = "";
            v148 = 2113;
            v149 = v54;
            _os_log_impl(&dword_2656EA000, v65, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#sa #beaconMonitoring incomplete beacon group not found, groupIdentifier:%{private}@}", buf, 0x1Cu);
          }
        }

        v53 = v106 + 1;
      }

      while (v106 + 1 != v101);
      v101 = [v97 countByEnumeratingWithState:&v126 objects:v142 count:16];
    }

    while (v101);
  }

  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  v102 = v103;
  v107 = [v102 countByEnumeratingWithState:&v118 objects:v140 count:16];
  if (v107)
  {
    v104 = *v119;
    do
    {
      for (m = 0; m != v107; ++m)
      {
        if (*v119 != v104)
        {
          objc_enumerationMutation(v102);
        }

        v67 = *(*(&v118 + 1) + 8 * m);
        v68 = [obj objectForKeyedSubscript:v67];
        if (v68)
        {
          v69 = objc_alloc_init(MEMORY[0x277CBEB58]);
          v114 = 0u;
          v115 = 0u;
          v116 = 0u;
          v117 = 0u;
          v109 = v68;
          v70 = v68;
          v71 = [v70 countByEnumeratingWithState:&v114 objects:v139 count:16];
          if (v71)
          {
            v72 = v71;
            v73 = *v115;
            do
            {
              for (n = 0; n != v72; ++n)
              {
                if (*v115 != v73)
                {
                  objc_enumerationMutation(v70);
                }

                v75 = *(*(&v114 + 1) + 8 * n);
                deviceToSafeLocationMap5 = [v10 deviceToSafeLocationMap];
                v77 = [deviceToSafeLocationMap5 objectForKeyedSubscript:v75];
                [v69 unionSet:v77];
              }

              v72 = [v70 countByEnumeratingWithState:&v114 objects:v139 count:16];
            }

            while (v72);
          }

          v112 = 0u;
          v113 = 0u;
          v110 = 0u;
          v111 = 0u;
          v78 = v70;
          v79 = [v78 countByEnumeratingWithState:&v110 objects:v138 count:16];
          if (v79)
          {
            v80 = v79;
            v81 = *v111;
            do
            {
              for (ii = 0; ii != v80; ++ii)
              {
                if (*v111 != v81)
                {
                  objc_enumerationMutation(v78);
                }

                v83 = *(*(&v110 + 1) + 8 * ii);
                v84 = [v69 copy];
                deviceToSafeLocationMap6 = [v10 deviceToSafeLocationMap];
                [deviceToSafeLocationMap6 setObject:v84 forKeyedSubscript:v83];
              }

              v80 = [v78 countByEnumeratingWithState:&v110 objects:v138 count:16];
            }

            while (v80);
          }

          v68 = v109;
        }

        else
        {
          v86 = TASALog;
          if (os_log_type_enabled(TASALog, OS_LOG_TYPE_FAULT))
          {
            *buf = 68289283;
            v145 = 0;
            v146 = 2082;
            v147 = "";
            v148 = 2113;
            v149 = v67;
            _os_log_impl(&dword_2656EA000, v86, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#sa #beaconMonitoring mismatched safe location beacon group not found, groupIdentifier:%{private}@}", buf, 0x1Cu);
          }
        }
      }

      v107 = [v102 countByEnumeratingWithState:&v118 objects:v140 count:16];
    }

    while (v107);
  }

  v87 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (int)beaconGroupSizeForDevice:(id)device
{
  deviceCopy = device;
  deviceType = [deviceCopy deviceType];
  if ((deviceType - 1) < 2)
  {
    v5 = 1;
  }

  else if (deviceType == 16)
  {
    v5 = 1;
    if ([deviceCopy productId] != 8202)
    {
      if ([deviceCopy productId] == 8223)
      {
        v5 = 1;
      }

      else
      {
        v5 = 2;
      }
    }
  }

  else if (deviceType == 4)
  {
    if ([deviceCopy isAppleAudioAccessory])
    {
      v5 = 3;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end