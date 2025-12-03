@interface SUAutoInstallForecast
+ (id)createForecast;
+ (id)createForecastForNow:(id)now;
- (BOOL)_isDateExpired:(id)expired;
- (BOOL)_isForecastExpired;
- (BOOL)_isForecastLogicallyExpired;
- (BOOL)isEqual:(id)equal;
- (SUAutoInstallForecast)init;
- (SUAutoInstallForecast)initWithCoder:(id)coder;
- (id)_calendar;
- (id)_forecastDateCache;
- (id)_roundedEndTime;
- (id)_roundedStartTime;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)scheduleType;
- (void)encodeWithCoder:(id)coder;
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
  _forecastDateCache = [(SUAutoInstallForecast *)self _forecastDateCache];
  scheduleType = [_forecastDateCache scheduleType];

  return scheduleType;
}

- (id)description
{
  v16 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  unlockStartDate = [(SUAutoInstallForecast *)self unlockStartDate];
  v5 = [SUUtility prettyPrintDate:unlockStartDate];
  unlockEndDate = [(SUAutoInstallForecast *)self unlockEndDate];
  v7 = [SUUtility prettyPrintDate:unlockEndDate];
  suStartDate = [(SUAutoInstallForecast *)self suStartDate];
  v9 = [SUUtility prettyPrintDate:suStartDate];
  suEndDate = [(SUAutoInstallForecast *)self suEndDate];
  v11 = [SUUtility prettyPrintDate:suEndDate];
  scheduleType = [(SUAutoInstallForecast *)self scheduleType];
  if ((scheduleType - 1) > 2)
  {
    v13 = @"Unknown";
  }

  else
  {
    v13 = off_279CACEB0[scheduleType - 1];
  }

  v14 = [v16 stringWithFormat:@"[<%@:%p>unlockStart:%@|unlockEnd:%@|suStart:%@|suEnd:%@|scheduleType:%@]", v3, self, v5, v7, v9, v11, v13];

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      unlockStartDate = [(SUAutoInstallForecast *)self unlockStartDate];
      unlockStartDate2 = [(SUAutoInstallForecast *)v5 unlockStartDate];
      if ([unlockStartDate isEqualToDate:unlockStartDate2])
      {
        unlockEndDate = [(SUAutoInstallForecast *)self unlockEndDate];
        unlockEndDate2 = [(SUAutoInstallForecast *)v5 unlockEndDate];
        if ([unlockEndDate isEqualToDate:unlockEndDate2])
        {
          suStartDate = [(SUAutoInstallForecast *)self suStartDate];
          suStartDate2 = [(SUAutoInstallForecast *)v5 suStartDate];
          if ([suStartDate isEqualToDate:suStartDate2])
          {
            suEndDate = [(SUAutoInstallForecast *)self suEndDate];
            suEndDate2 = [(SUAutoInstallForecast *)v5 suEndDate];
            v13 = [suEndDate isEqualToDate:suEndDate2];
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
  _forecastDateCache = [(SUAutoInstallForecast *)self _forecastDateCache];
  calendar = [_forecastDateCache calendar];

  return calendar;
}

- (BOOL)_isForecastLogicallyExpired
{
  selfCopy = self;
  suStartDate = [(SUAutoInstallForecast *)self suStartDate];
  LOBYTE(selfCopy) = [(SUAutoInstallForecast *)selfCopy _isDateExpired:suStartDate];

  return selfCopy;
}

- (BOOL)_isForecastExpired
{
  selfCopy = self;
  suEndDate = [(SUAutoInstallForecast *)self suEndDate];
  LOBYTE(selfCopy) = [(SUAutoInstallForecast *)selfCopy _isDateExpired:suEndDate];

  return selfCopy;
}

- (id)_roundedStartTime
{
  _forecastDateCache = [(SUAutoInstallForecast *)self _forecastDateCache];
  roundedStartTime = [_forecastDateCache roundedStartTime];

  return roundedStartTime;
}

- (id)_roundedEndTime
{
  _forecastDateCache = [(SUAutoInstallForecast *)self _forecastDateCache];
  roundedEndTime = [_forecastDateCache roundedEndTime];

  return roundedEndTime;
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

- (BOOL)_isDateExpired:(id)expired
{
  v3 = MEMORY[0x277CBEAA8];
  expiredCopy = expired;
  date = [v3 date];
  v6 = [expiredCopy laterDate:date];

  return v6 == date;
}

+ (id)createForecast
{
  v3 = [MEMORY[0x277CBEAA8] now];
  v4 = [self createForecastForNow:v3];

  return v4;
}

+ (id)createForecastForNow:(id)now
{
  nowCopy = now;
  v4 = objc_alloc_init(MEMORY[0x277CFE118]);
  getUnlockAndSoftwareUpdateTimes = [v4 getUnlockAndSoftwareUpdateTimes];
  v6 = [getUnlockAndSoftwareUpdateTimes objectForKeyedSubscript:*MEMORY[0x277CFE310]];
  v14 = v6;
  if (!v6 || ([v6 dateByAddingTimeInterval:-7200.0], (v15 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    SULogInfo(@"Duet failed to return kCDSleepAutoSuUnlockKey", v7, v8, v9, v10, v11, v12, v13, v112);
    v35 = 0;
    goto LABEL_29;
  }

  v16 = v15;
  v17 = [getUnlockAndSoftwareUpdateTimes objectForKeyedSubscript:*MEMORY[0x277CFE300]];
  if (v17)
  {
    v25 = v17;
    date = [MEMORY[0x277CBEAA8] date];
    v27 = [v25 laterDate:date];

    if (v27 == v25)
    {
      v119 = v25;
      v36 = specificTimeOnDate(nowCopy, 2, 0, 0);
      v37 = specificTimeOnDate(nowCopy, 4, 0, 0);
      v38 = specificTimeOnDate(nowCopy, 5, 0, 0);
      v39 = [v36 dateByAddingTimeInterval:86400.0];
      v40 = [v38 dateByAddingTimeInterval:86400.0];
      v41 = [nowCopy compare:v36];
      v124 = v36;
      v42 = v36;
      v43 = v38;
      if (v41 != -1)
      {
        v44 = [nowCopy compare:v37];
        if (v44 == -1)
        {
          v42 = nowCopy;
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
        autoSUStartDelta = [v57 autoSUStartDelta];

        v59 = v119;
        if (autoSUStartDelta)
        {
          v60 = +[SUPreferences sharedInstance];
          autoSUStartDelta2 = [v60 autoSUStartDelta];
          v62 = (60 * [autoSUStartDelta2 unsignedIntegerValue]);

          v63 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v62];

          v114 = [SUUtility prettyPrintDate:v63];
          SULogInfo(@"Overriding suStartDate with time interval: %f : %@", v64, v65, v66, v67, v68, v69, v70, *&v62);

          v118 = v63;
        }

        v71 = +[SUPreferences sharedInstance];
        autoSUEndDelta = [v71 autoSUEndDelta];

        if (autoSUEndDelta)
        {
          v73 = +[SUPreferences sharedInstance];
          autoSUEndDelta2 = [v73 autoSUEndDelta];
          v75 = (60 * [autoSUEndDelta2 unsignedIntegerValue]);

          v76 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v75];

          v115 = [SUUtility prettyPrintDate:v76];
          SULogInfo(@"Overriding suEndDate with time interval: %f : %@", v77, v78, v79, v80, v81, v82, v83, *&v75);

          v47 = v76;
        }

        v84 = +[SUPreferences sharedInstance];
        autoSUUnlockStartDelta = [v84 autoSUUnlockStartDelta];

        if (autoSUUnlockStartDelta)
        {
          v86 = +[SUPreferences sharedInstance];
          autoSUUnlockStartDelta2 = [v86 autoSUUnlockStartDelta];
          v88 = (60 * [autoSUUnlockStartDelta2 unsignedIntegerValue]);

          v89 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v88];

          v116 = [SUUtility prettyPrintDate:v89];
          SULogInfo(@"Overriding unlockStartDate with time interval: %f : %@", v90, v91, v92, v93, v94, v95, v96, *&v88);

          v16 = v89;
        }

        v97 = +[SUPreferences sharedInstance];
        autoSUUnlockEndDelta = [v97 autoSUUnlockEndDelta];

        if (autoSUUnlockEndDelta)
        {
          v99 = +[SUPreferences sharedInstance];
          autoSUUnlockEndDelta2 = [v99 autoSUUnlockEndDelta];
          v101 = (60 * [autoSUUnlockEndDelta2 unsignedIntegerValue]);

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

- (SUAutoInstallForecast)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = SUAutoInstallForecast;
  v5 = [(SUAutoInstallForecast *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UnlockStart"];
    [(SUAutoInstallForecast *)v5 setUnlockStartDate:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UnlockEnd"];
    [(SUAutoInstallForecast *)v5 setUnlockEndDate:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SUStart"];
    [(SUAutoInstallForecast *)v5 setSuStartDate:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SUEnd"];
    [(SUAutoInstallForecast *)v5 setSuEndDate:v9];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  unlockStartDate = [(SUAutoInstallForecast *)self unlockStartDate];
  [coderCopy encodeObject:unlockStartDate forKey:@"UnlockStart"];

  unlockEndDate = [(SUAutoInstallForecast *)self unlockEndDate];
  [coderCopy encodeObject:unlockEndDate forKey:@"UnlockEnd"];

  suStartDate = [(SUAutoInstallForecast *)self suStartDate];
  [coderCopy encodeObject:suStartDate forKey:@"SUStart"];

  suEndDate = [(SUAutoInstallForecast *)self suEndDate];
  [coderCopy encodeObject:suEndDate forKey:@"SUEnd"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(SUAutoInstallForecast);
  unlockStartDate = [(SUAutoInstallForecast *)self unlockStartDate];
  [(SUAutoInstallForecast *)v4 setUnlockStartDate:unlockStartDate];

  unlockEndDate = [(SUAutoInstallForecast *)self unlockEndDate];
  [(SUAutoInstallForecast *)v4 setUnlockEndDate:unlockEndDate];

  suStartDate = [(SUAutoInstallForecast *)self suStartDate];
  [(SUAutoInstallForecast *)v4 setSuStartDate:suStartDate];

  suEndDate = [(SUAutoInstallForecast *)self suEndDate];
  [(SUAutoInstallForecast *)v4 setSuEndDate:suEndDate];

  return v4;
}

@end