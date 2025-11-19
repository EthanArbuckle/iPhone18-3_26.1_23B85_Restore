@interface SUAutoInstallForecast
+ (id)createForecast;
+ (id)createForecastForNow:(id)a3;
- (BOOL)_isDateExpired:(id)a3;
- (BOOL)_isForecastExpired;
- (BOOL)_isForecastLogicallyExpired;
- (BOOL)isEqual:(id)a3;
- (SUAutoInstallForecast)init;
- (SUAutoInstallForecast)initWithCoder:(id)a3;
- (id)_calendar;
- (id)_forecastDateCache;
- (id)_roundedEndTime;
- (id)_roundedStartTime;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)scheduleType;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SUAutoInstallForecast

- (SUAutoInstallForecast)init
{
  v5.receiver = self;
  v5.super_class = SUAutoInstallForecast;
  v2 = [(SUAutoInstallForecast *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SUAutoInstallForecast *)v2 setUnlockStartDate:0];
    [(SUAutoInstallForecast *)v3 setUnlockEndDate:0];
    [(SUAutoInstallForecast *)v3 setSuStartDate:0];
    [(SUAutoInstallForecast *)v3 setSuEndDate:0];
  }

  return v3;
}

- (int64_t)scheduleType
{
  v2 = [(SUAutoInstallForecast *)self _forecastDateCache];
  v3 = [v2 scheduleType];

  return v3;
}

- (id)description
{
  v16 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = [(SUAutoInstallForecast *)self unlockStartDate];
  v5 = [SUUtility prettyPrintDate:v4];
  v6 = [(SUAutoInstallForecast *)self unlockEndDate];
  v7 = [SUUtility prettyPrintDate:v6];
  v8 = [(SUAutoInstallForecast *)self suStartDate];
  v9 = [SUUtility prettyPrintDate:v8];
  v10 = [(SUAutoInstallForecast *)self suEndDate];
  v11 = [SUUtility prettyPrintDate:v10];
  v12 = [(SUAutoInstallForecast *)self scheduleType];
  if ((v12 - 1) > 2)
  {
    v13 = @"Unknown";
  }

  else
  {
    v13 = off_279CACEB0[v12 - 1];
  }

  v14 = [v16 stringWithFormat:@"[<%@:%p>unlockStart:%@|unlockEnd:%@|suStart:%@|suEnd:%@|scheduleType:%@]", v3, self, v5, v7, v9, v11, v13];

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SUAutoInstallForecast *)self unlockStartDate];
      v7 = [(SUAutoInstallForecast *)v5 unlockStartDate];
      if ([v6 isEqualToDate:v7])
      {
        v8 = [(SUAutoInstallForecast *)self unlockEndDate];
        v9 = [(SUAutoInstallForecast *)v5 unlockEndDate];
        if ([v8 isEqualToDate:v9])
        {
          v10 = [(SUAutoInstallForecast *)self suStartDate];
          v11 = [(SUAutoInstallForecast *)v5 suStartDate];
          if ([v10 isEqualToDate:v11])
          {
            v15 = [(SUAutoInstallForecast *)self suEndDate];
            v12 = [(SUAutoInstallForecast *)v5 suEndDate];
            v13 = [v15 isEqualToDate:v12];
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (id)_calendar
{
  v2 = [(SUAutoInstallForecast *)self _forecastDateCache];
  v3 = [v2 calendar];

  return v3;
}

- (BOOL)_isForecastLogicallyExpired
{
  v2 = self;
  v3 = [(SUAutoInstallForecast *)self suStartDate];
  LOBYTE(v2) = [(SUAutoInstallForecast *)v2 _isDateExpired:v3];

  return v2;
}

- (BOOL)_isForecastExpired
{
  v2 = self;
  v3 = [(SUAutoInstallForecast *)self suEndDate];
  LOBYTE(v2) = [(SUAutoInstallForecast *)v2 _isDateExpired:v3];

  return v2;
}

- (id)_roundedStartTime
{
  v2 = [(SUAutoInstallForecast *)self _forecastDateCache];
  v3 = [v2 roundedStartTime];

  return v3;
}

- (id)_roundedEndTime
{
  v2 = [(SUAutoInstallForecast *)self _forecastDateCache];
  v3 = [v2 roundedEndTime];

  return v3;
}

- (id)_forecastDateCache
{
  lazy_forecastDateCache = self->_lazy_forecastDateCache;
  if (!lazy_forecastDateCache)
  {
    v4 = [[_SUAutoInstallForecastDateCache alloc] initWithForecast:self];
    v5 = self->_lazy_forecastDateCache;
    self->_lazy_forecastDateCache = v4;

    lazy_forecastDateCache = self->_lazy_forecastDateCache;
  }

  return lazy_forecastDateCache;
}

- (BOOL)_isDateExpired:(id)a3
{
  v3 = MEMORY[0x277CBEAA8];
  v4 = a3;
  v5 = [v3 date];
  v6 = [v4 laterDate:v5];

  return v6 == v5;
}

+ (id)createForecast
{
  v3 = [MEMORY[0x277CBEAA8] now];
  v4 = [a1 createForecastForNow:v3];

  return v4;
}

+ (id)createForecastForNow:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CFE118]);
  v5 = [v4 getUnlockAndSoftwareUpdateTimes];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277CFE310]];
  v14 = v6;
  if (!v6 || ([v6 dateByAddingTimeInterval:-7200.0], (v15 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    SULogInfo(@"Duet failed to return kCDSleepAutoSuUnlockKey", v7, v8, v9, v10, v11, v12, v13, v112);
    v35 = 0;
    goto LABEL_29;
  }

  v16 = v15;
  v17 = [v5 objectForKeyedSubscript:*MEMORY[0x277CFE300]];
  if (v17)
  {
    v25 = v17;
    v26 = [MEMORY[0x277CBEAA8] date];
    v27 = [v25 laterDate:v26];

    if (v27 == v25)
    {
      v119 = v25;
      v36 = specificTimeOnDate(v3, 2, 0, 0);
      v37 = specificTimeOnDate(v3, 4, 0, 0);
      v38 = specificTimeOnDate(v3, 5, 0, 0);
      v39 = [v36 dateByAddingTimeInterval:86400.0];
      v40 = [v38 dateByAddingTimeInterval:86400.0];
      v41 = [v3 compare:v36];
      v124 = v36;
      v42 = v36;
      v43 = v38;
      if (v41 != -1)
      {
        v44 = [v3 compare:v37];
        if (v44 == -1)
        {
          v42 = v3;
        }

        else
        {
          v42 = v39;
        }

        if (v44 == -1)
        {
          v43 = v38;
        }

        else
        {
          v43 = v40;
        }
      }

      v120 = v40;
      v121 = v39;
      v122 = v38;
      v123 = v37;
      v45 = v42;
      v46 = v43;
      v47 = [v46 dateByAddingTimeInterval:86400.0];

      v48 = [SUUtility prettyPrintDate:v45];
      v113 = [SUUtility prettyPrintDate:v47];
      SULogInfo(@"suStartDate = %@, suEndDate = %@", v49, v50, v51, v52, v53, v54, v55, v48);

      v56 = objc_alloc_init(SUAutoInstallForecast);
      if (MGGetBoolAnswer())
      {
        v118 = v45;
        v57 = +[SUPreferences sharedInstance];
        v58 = [v57 autoSUStartDelta];

        v59 = v119;
        if (v58)
        {
          v60 = +[SUPreferences sharedInstance];
          v61 = [v60 autoSUStartDelta];
          v62 = (60 * [v61 unsignedIntegerValue]);

          v63 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v62];

          v114 = [SUUtility prettyPrintDate:v63];
          SULogInfo(@"Overriding suStartDate with time interval: %f : %@", v64, v65, v66, v67, v68, v69, v70, *&v62);

          v118 = v63;
        }

        v71 = +[SUPreferences sharedInstance];
        v72 = [v71 autoSUEndDelta];

        if (v72)
        {
          v73 = +[SUPreferences sharedInstance];
          v74 = [v73 autoSUEndDelta];
          v75 = (60 * [v74 unsignedIntegerValue]);

          v76 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v75];

          v115 = [SUUtility prettyPrintDate:v76];
          SULogInfo(@"Overriding suEndDate with time interval: %f : %@", v77, v78, v79, v80, v81, v82, v83, *&v75);

          v47 = v76;
        }

        v84 = +[SUPreferences sharedInstance];
        v85 = [v84 autoSUUnlockStartDelta];

        if (v85)
        {
          v86 = +[SUPreferences sharedInstance];
          v87 = [v86 autoSUUnlockStartDelta];
          v88 = (60 * [v87 unsignedIntegerValue]);

          v89 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v88];

          v116 = [SUUtility prettyPrintDate:v89];
          SULogInfo(@"Overriding unlockStartDate with time interval: %f : %@", v90, v91, v92, v93, v94, v95, v96, *&v88);

          v16 = v89;
        }

        v97 = +[SUPreferences sharedInstance];
        v98 = [v97 autoSUUnlockEndDelta];

        if (v98)
        {
          v99 = +[SUPreferences sharedInstance];
          v100 = [v99 autoSUUnlockEndDelta];
          v101 = (60 * [v100 unsignedIntegerValue]);

          v102 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v101];

          v117 = [SUUtility prettyPrintDate:v102];
          SULogInfo(@"Overriding unlockEndDate with time interval: %f : %@", v103, v104, v105, v106, v107, v108, v109, *&v101);

          v59 = v102;
        }

        v110 = v124;
        v45 = v118;
      }

      else
      {
        v59 = v119;
        v110 = v124;
      }

      [(SUAutoInstallForecast *)v56 setUnlockStartDate:v16];
      [(SUAutoInstallForecast *)v56 setUnlockEndDate:v59];
      [(SUAutoInstallForecast *)v56 setSuStartDate:v45];
      [(SUAutoInstallForecast *)v56 setSuEndDate:v47];
      v35 = v56;

      goto LABEL_28;
    }

    SULogInfo(@"unlock end date has already passed", v28, v29, v30, v31, v32, v33, v34, v112);
  }

  else
  {
    SULogInfo(@"Duet failed to return kCDSleepAutoSuExpirationTimeKey", v18, v19, v20, v21, v22, v23, v24, v112);
  }

  v35 = 0;
LABEL_28:

LABEL_29:

  return v35;
}

- (SUAutoInstallForecast)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SUAutoInstallForecast;
  v5 = [(SUAutoInstallForecast *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UnlockStart"];
    [(SUAutoInstallForecast *)v5 setUnlockStartDate:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UnlockEnd"];
    [(SUAutoInstallForecast *)v5 setUnlockEndDate:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SUStart"];
    [(SUAutoInstallForecast *)v5 setSuStartDate:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SUEnd"];
    [(SUAutoInstallForecast *)v5 setSuEndDate:v9];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SUAutoInstallForecast *)self unlockStartDate];
  [v4 encodeObject:v5 forKey:@"UnlockStart"];

  v6 = [(SUAutoInstallForecast *)self unlockEndDate];
  [v4 encodeObject:v6 forKey:@"UnlockEnd"];

  v7 = [(SUAutoInstallForecast *)self suStartDate];
  [v4 encodeObject:v7 forKey:@"SUStart"];

  v8 = [(SUAutoInstallForecast *)self suEndDate];
  [v4 encodeObject:v8 forKey:@"SUEnd"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(SUAutoInstallForecast);
  v5 = [(SUAutoInstallForecast *)self unlockStartDate];
  [(SUAutoInstallForecast *)v4 setUnlockStartDate:v5];

  v6 = [(SUAutoInstallForecast *)self unlockEndDate];
  [(SUAutoInstallForecast *)v4 setUnlockEndDate:v6];

  v7 = [(SUAutoInstallForecast *)self suStartDate];
  [(SUAutoInstallForecast *)v4 setSuStartDate:v7];

  v8 = [(SUAutoInstallForecast *)self suEndDate];
  [(SUAutoInstallForecast *)v4 setSuEndDate:v8];

  return v4;
}

@end