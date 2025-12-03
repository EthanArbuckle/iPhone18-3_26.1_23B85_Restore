@interface DNSHeuristics
+ (BOOL)setNetworkAsFiltered:(id)filtered filtered:(BOOL)a4;
+ (BOOL)updateHeuristicState:(BOOL)state isTimeout:(BOOL)timeout;
+ (id)copyEmptyHeuristicState;
+ (unint64_t)currentTimeMs;
@end

@implementation DNSHeuristics

+ (BOOL)updateHeuristicState:(BOOL)state isTimeout:(BOOL)timeout
{
  timeoutCopy = timeout;
  stateCopy = state;
  v62 = *MEMORY[0x29EDCA608];
  v6 = objc_opt_new();
  requestParameters = [v6 requestParameters];
  [requestParameters setQualityOfService:25];

  [v6 activate];
  currentKnownNetworkProfile = [v6 currentKnownNetworkProfile];
  v8 = [DNSHeuristics copyNetworkSettings:currentKnownNetworkProfile];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = MEMORY[0x29EDB8EA0];
  }

  v10 = [v9 objectForKey:@"LastFailureTimestamp"];

  v11 = timeoutCopy;
  if (!v10)
  {
    v12 = +[DNSHeuristics copyEmptyHeuristicState];

    v9 = v12;
  }

  v13 = +[DNSHeuristics currentTimeMs];
  v14 = [v9 objectForKeyedSubscript:@"LastFailureTimestamp"];
  unsignedIntegerValue = [v14 unsignedIntegerValue];

  v16 = [v9 objectForKeyedSubscript:@"LongCount"];
  unsignedIntegerValue2 = [v16 unsignedIntegerValue];

  v18 = [v9 objectForKeyedSubscript:@"BurstCount"];
  unsignedIntegerValue3 = [v18 unsignedIntegerValue];

  v20 = currentKnownNetworkProfile;
  v21 = [DNSHeuristics getNetworkFilteredFlag:currentKnownNetworkProfile];
  if (!stateCopy)
  {
    v26 = v11;
    if (v11)
    {
      v27 = v13 - unsignedIntegerValue;
      if (v13 > unsignedIntegerValue && unsignedIntegerValue + 30000 > v13)
      {
        v22 = _mdns_heuristics_log();
        LOBYTE(v28) = 1;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          v57 = v27;
          _os_log_impl(&dword_2990ED000, v22, OS_LOG_TYPE_INFO, "Logging DoH timeout failure after only %llums, not incrementing failure counter", buf, 0xCu);
        }

        v20 = currentKnownNetworkProfile;
        goto LABEL_49;
      }
    }

    v29 = unsignedIntegerValue2 + 1;
    v30 = unsignedIntegerValue3 + (v13 - unsignedIntegerValue) / 0x1D4C0;
    if (v30 >= 0xA)
    {
      v30 = 10;
    }

    v31 = v30 != 0;
    v32 = v30 - 1;
    if (v31)
    {
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }

    if (v21)
    {
      v34 = _mdns_heuristics_log();
      v35 = 1;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v36 = "";
        *buf = 136315650;
        if (v26)
        {
          v36 = "timeout ";
        }

        v57 = v36;
        v58 = 2048;
        v59 = v29;
        v60 = 2048;
        v61 = v33;
        _os_log_impl(&dword_2990ED000, v34, OS_LOG_TYPE_INFO, "Logging DoH %sfailure %llu (bucket %llu), keeping filtered state", buf, 0x20u);
      }

      v37 = v33;
    }

    else
    {
      v52 = v33;
      v40 = [DNSHeuristics countersExceedThreshold:v29 burstCounter:v33];
      v41 = _mdns_heuristics_log();
      v34 = v41;
      if (v40)
      {
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v42 = "";
          *buf = 136315650;
          if (v26)
          {
            v42 = "timeout ";
          }

          v57 = v42;
          v58 = 2048;
          v59 = v29;
          v60 = 2048;
          v37 = v52;
          v61 = v52;
          _os_log_impl(&dword_2990ED000, v34, OS_LOG_TYPE_DEFAULT, "Logging DoH %sfailure %llu (bucket %llu), moving into filtered state", buf, 0x20u);
          v35 = 1;
          goto LABEL_48;
        }

        v35 = 1;
      }

      else
      {
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          v45 = "";
          *buf = 136315650;
          if (v26)
          {
            v45 = "timeout ";
          }

          v57 = v45;
          v58 = 2048;
          v59 = v29;
          v60 = 2048;
          v37 = v52;
          v61 = v52;
          _os_log_impl(&dword_2990ED000, v34, OS_LOG_TYPE_INFO, "Logging DoH %sfailure %llu (bucket %llu), keeping unfiltered state", buf, 0x20u);
          v35 = 0;
          goto LABEL_48;
        }

        v35 = 0;
      }

      v37 = v52;
    }

LABEL_48:

    v54[0] = @"LastFailureTimestamp";
    v46 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:v13];
    v55[0] = v46;
    v54[1] = @"LongCount";
    v47 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:v29];
    v55[1] = v47;
    v54[2] = @"BurstCount";
    v48 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:v37];
    v55[2] = v48;
    v22 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v55 forKeys:v54 count:3];

    v20 = currentKnownNetworkProfile;
    LODWORD(v46) = [DNSHeuristics setNetworkSettings:currentKnownNetworkProfile value:v22];
    v28 = v46 & [DNSHeuristics setNetworkAsFiltered:currentKnownNetworkProfile filtered:v35];
    v49 = [MEMORY[0x29EDB8E50] setWithObjects:{&unk_2A1F34C70, &unk_2A1F34C88, 0}];
    [v6 updateKnownNetworkProfile:currentKnownNetworkProfile properties:v49 error:0];

    goto LABEL_49;
  }

  if (v21)
  {
    if (unsignedIntegerValue + 86400000 >= v13)
    {
      v38 = _mdns_heuristics_log();
      v22 = v38;
      v39 = v13 - unsignedIntegerValue;
      if (v13 > unsignedIntegerValue)
      {
        LOBYTE(v28) = 1;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          v57 = v39;
          _os_log_impl(&dword_2990ED000, v22, OS_LOG_TYPE_INFO, "Logging DoH success after %llums, keeping filtered state", buf, 0xCu);
        }

        goto LABEL_49;
      }

      if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_40;
      }

      *buf = 0;
      v23 = "Logging DoH success, invalid last failure, clearing filtered state";
      v24 = v22;
      v25 = 2;
    }

    else
    {
      v22 = _mdns_heuristics_log();
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
LABEL_40:

        v43 = +[DNSHeuristics copyEmptyHeuristicState];
        v44 = [DNSHeuristics setNetworkSettings:currentKnownNetworkProfile value:v43];

        v28 = v44 & [DNSHeuristics setNetworkAsFiltered:currentKnownNetworkProfile filtered:0];
        v22 = [MEMORY[0x29EDB8E50] setWithObjects:{&unk_2A1F34C70, &unk_2A1F34C88, 0}];
        [v6 updateKnownNetworkProfile:currentKnownNetworkProfile properties:v22 error:0];
LABEL_49:

        goto LABEL_50;
      }

      *buf = 134217984;
      v57 = (v13 - unsignedIntegerValue);
      v23 = "Logging DoH success after %llums, clearing filtered state";
      v24 = v22;
      v25 = 12;
    }

    _os_log_impl(&dword_2990ED000, v24, OS_LOG_TYPE_DEFAULT, v23, buf, v25);
    goto LABEL_40;
  }

  LOBYTE(v28) = 1;
LABEL_50:
  [v6 invalidate];

  v50 = *MEMORY[0x29EDCA608];
  return v28;
}

+ (id)copyEmptyHeuristicState
{
  v9[3] = *MEMORY[0x29EDCA608];
  v8[0] = @"LastFailureTimestamp";
  v2 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:0];
  v9[0] = v2;
  v8[1] = @"LongCount";
  v3 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:0];
  v9[1] = v3;
  v8[2] = @"BurstCount";
  v4 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:10];
  v9[2] = v4;
  v5 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = *MEMORY[0x29EDCA608];
  return v5;
}

+ (unint64_t)currentTimeMs
{
  date = [MEMORY[0x29EDB8DB0] date];
  [date timeIntervalSince1970];
  v4 = (v3 * 1000.0);

  return v4;
}

+ (BOOL)setNetworkAsFiltered:(id)filtered filtered:(BOOL)a4
{
  if (a4)
  {
    return [DNSHeuristics setNetworkAsFiltered:filtered];
  }

  else
  {
    return [DNSHeuristics clearNetworkAsFiltered:filtered];
  }
}

@end