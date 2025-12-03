@interface SDAState
+ (id)loadFromFileAtPath:(id)path;
- (id)getElemForBundleId:(id)id volType:(int)type residency:(unsigned int)residency urgency:(int)urgency state:(int)state create:(BOOL)create;
- (void)enumerateAllAverageElementsOfVolType:(int)type UsingBlock:(id)block;
- (void)fadeOldEntries;
- (void)print;
- (void)saveToFile;
- (void)updateEventId:(unint64_t)id andDate:(id)date forVolPath:(id)path;
@end

@implementation SDAState

+ (id)loadFromFileAtPath:(id)path
{
  pathCopy = path;
  v4 = objc_opt_new();
  v5 = @"/var/db/spaceattribution";
  if (pathCopy)
  {
    v5 = pathCopy;
  }

  v6 = [NSString stringWithFormat:@"%@/%@", v5, @"SpeculativeDownload.db"];

  [v4 setPathToDisk:v6];
  v80 = 0;
  v7 = [NSData dataWithContentsOfFile:v6 options:0 error:&v80];
  v8 = v80;
  v9 = &SBSCopyDisplayIdentifiers_ptr;
  v10 = &SBSCopyDisplayIdentifiers_ptr;
  v78 = v6;
  if (v7)
  {
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [NSSet setWithObjects:v11, v12, v13, v14, objc_opt_class(), 0, v6];
    v79 = v8;
    v16 = v7;
    v17 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v15 fromData:v7 error:&v79];
    v18 = v79;

    if (!v18)
    {
      v20 = 0;
      v10 = &SBSCopyDisplayIdentifiers_ptr;
      v21 = v16;
      v9 = &SBSCopyDisplayIdentifiers_ptr;
      goto LABEL_13;
    }

    v19 = SALog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v76 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v7 length]);
      v77 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v17 count]);
      *buf = 138412802;
      v82 = v76;
      v83 = 2112;
      v84 = v77;
      v85 = 2112;
      v86 = v18;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Loading: [objDate length] %@ to [dict count] %@, err %@", buf, 0x20u);
    }

    v20 = v18;
    v10 = &SBSCopyDisplayIdentifiers_ptr;
    v21 = v16;
    v9 = &SBSCopyDisplayIdentifiers_ptr;
  }

  else
  {
    v21 = 0;
    v19 = SALog();
    v20 = v8;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10003FD80();
    }

    v17 = 0;
  }

LABEL_13:
  v22 = [v17 objectForKey:@"SdaVersion"];
  [v4 setSdaVersion:v22];

  sdaVersion = [v4 sdaVersion];
  if (sdaVersion && (v24 = sdaVersion, [v4 sdaVersion], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "isEqualToNumber:", &off_1000689B8), v25, v24, (v26 & 1) != 0))
  {
    v27 = v20;
  }

  else
  {
    [v4 setSdaVersion:&off_1000689B8];
    v28 = SALog();
    v27 = v20;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      sdaVersion2 = [v4 sdaVersion];
      *buf = 138412290;
      v82 = sdaVersion2;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "New SDA version %@", buf, 0xCu);
    }

    v17 = 0;
  }

  v30 = [v17 objectForKey:@"BuildVersion"];
  [v4 setBuildVersion:v30];

  buildVersion = [v4 buildVersion];
  if (!buildVersion || (v32 = buildVersion, [v4 buildVersion], v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v33, "isEqual:", @"buildVersion unknown"), v33, v32, v34))
  {
    v35 = SALog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "updating kBuildVersion", buf, 2u);
    }

    v36 = +[SASupport buildVersion];
    [v4 setBuildVersion:v36];
  }

  v37 = [v17 objectForKey:@"LastUpdateDate"];
  [v4 setLastUpdateDate:v37];

  lastUpdateDate = [v4 lastUpdateDate];

  if (!lastUpdateDate)
  {
    v39 = [v9[207] now];
    [v4 setLastUpdateDate:v39];

    v40 = SALog();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      lastUpdateDate2 = [v4 lastUpdateDate];
      *buf = 138412290;
      v82 = lastUpdateDate2;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "updating lastUpdateDate to %@", buf, 0xCu);
    }
  }

  v42 = [v17 objectForKey:@"StartExecutionDate"];
  [v4 setStartExecutionDate:v42];

  startExecutionDate = [v4 startExecutionDate];

  if (!startExecutionDate)
  {
    v44 = [v9[207] now];
    [v4 setStartExecutionDate:v44];

    v45 = SALog();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      startExecutionDate2 = [v4 startExecutionDate];
      *buf = 138412290;
      v82 = startExecutionDate2;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "updating startExecutionDate to %@", buf, 0xCu);
    }
  }

  v47 = [v17 objectForKey:@"NumOfTraversal"];
  [v4 setNumOfTraversal:v47];

  numOfTraversal = [v4 numOfTraversal];

  if (!numOfTraversal)
  {
    [v4 setNumOfTraversal:&off_1000689D0];
  }

  v49 = [v17 objectForKey:@"kExecutionOnGoing"];
  [v4 setExecutionOnGoing:v49];

  executionOnGoing = [v4 executionOnGoing];

  if (!executionOnGoing)
  {
    v51 = SALog();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "No kExecutionOnGoing found", buf, 2u);
    }

    [v4 setExecutionOnGoing:&off_1000689D0];
  }

  v52 = [v17 objectForKey:@"FreeDiskSpaceAtStart"];
  [v4 setFreeDiskSpaceAtStart:v52];

  freeDiskSpaceAtStart = [v4 freeDiskSpaceAtStart];

  if (!freeDiskSpaceAtStart)
  {
    v54 = SALog();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "No kFreeDiskSpaceAtStart found", buf, 2u);
    }

    [v4 setFreeDiskSpaceAtStart:&off_1000689D0];
  }

  v55 = [v17 objectForKey:@"DenominatorTable"];
  [v4 setAveElem:v55];

  aveElem = [v4 aveElem];

  if (!aveElem)
  {
    v57 = SALog();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "No kDenominatorTable found", buf, 2u);
    }

    v58 = v10[210];
    v59 = objc_opt_new();
    [v4 setAveElem:v59];
  }

  v60 = [v17 objectForKey:@"LastEventIdPerVol"];
  if (!v60)
  {
    v61 = SALog();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "creating dictionary for kLastEventIdPerVol", buf, 2u);
    }

    v62 = v10[210];
    v60 = objc_opt_new();
  }

  [v4 setLastEventIdPerVol:v60];
  v63 = [v17 objectForKey:@"LastEventTimePerVol"];
  if (!v63)
  {
    v64 = SALog();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "creating dictionary for kLastEventTimePerVol", buf, 2u);
    }

    v65 = v10[210];
    v63 = objc_opt_new();
  }

  [v4 setLastEventTimePerVol:v63];
  v66 = [v9[207] now];
  lastUpdateDate3 = [v4 lastUpdateDate];
  [v66 timeIntervalSinceDate:lastUpdateDate3];
  v69 = v68;

  v70 = (v69 + 43200.0) / 86400.0;
  if (v70 <= 1)
  {
    v71 = 1;
  }

  else
  {
    v71 = v70;
  }

  v72 = [NSNumber numberWithUnsignedLongLong:v71];
  [v4 setDaysSinceLastUpdate:v72];

  v73 = v10[210];
  v74 = objc_opt_new();
  [v4 setHistogramPerVol:v74];

  return v4;
}

- (void)updateEventId:(unint64_t)id andDate:(id)date forVolPath:(id)path
{
  pathCopy = path;
  dateCopy = date;
  v12 = [NSNumber numberWithUnsignedLongLong:id];
  lastEventIdPerVol = [(SDAState *)self lastEventIdPerVol];
  [lastEventIdPerVol setObject:v12 forKey:pathCopy];

  lastEventTimePerVol = [(SDAState *)self lastEventTimePerVol];
  [lastEventTimePerVol setObject:dateCopy forKey:pathCopy];
}

- (void)saveToFile
{
  v3 = +[NSFileManager defaultManager];
  v23 = 0;
  v4 = [v3 createDirectoryAtPath:@"/var/db/spaceattribution" withIntermediateDirectories:1 attributes:0 error:&v23];
  v5 = v23;
  if (v4)
  {
    v6 = [NSMutableDictionary dictionaryWithObjectsAndKeys:self->_sdaVersion, @"SdaVersion", self->_buildVersion, @"BuildVersion", self->_lastEventTimePerVol, @"LastEventTimePerVol", self->_lastEventIdPerVol, @"LastEventIdPerVol", self->_startExecutionDate, @"StartExecutionDate", self->_executionOnGoing, @"kExecutionOnGoing", self->_numOfTraversal, @"NumOfTraversal", self->_lastUpdateDate, @"LastUpdateDate", self->_freeDiskSpaceAtStart, @"FreeDiskSpaceAtStart", self->_aveElem, @"DenominatorTable", 0];
    v22 = v5;
    v7 = [NSKeyedArchiver archivedDataWithRootObject:v6 requiringSecureCoding:0 error:&v22];
    v8 = v22;

    if (v8)
    {
      v9 = SALog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10003FE6C();
      }
    }

    pathToDisk = [(SDAState *)self pathToDisk];
    v11 = [v7 writeToFile:pathToDisk atomically:1];

    v12 = SALog();
    v13 = v12;
    if (v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        pathToDisk2 = [(SDAState *)self pathToDisk];
        *buf = 138412290;
        v25 = pathToDisk2;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "successful write to file %@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10003FEE0(self);
    }
  }

  else
  {
    v6 = SALog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10003FDF4(v6, v15, v16, v17, v18, v19, v20, v21);
    }

    v8 = v5;
  }
}

- (void)fadeOldEntries
{
  v3 = [(NSMutableDictionary *)self->_aveElem copy];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000247C8;
  v4[3] = &unk_1000653C0;
  v4[4] = self;
  [v3 enumerateKeysAndObjectsUsingBlock:v4];
}

- (id)getElemForBundleId:(id)id volType:(int)type residency:(unsigned int)residency urgency:(int)urgency state:(int)state create:(BOOL)create
{
  createCopy = create;
  idCopy = id;
  v15 = [NSNumber numberWithUnsignedLong:type];
  v16 = [NSNumber numberWithUnsignedLong:residency];
  v17 = [NSNumber numberWithUnsignedLong:urgency];
  v18 = [NSNumber numberWithUnsignedLong:state];
  v19 = [(NSMutableDictionary *)self->_aveElem objectForKey:idCopy];
  if (v19)
  {
LABEL_4:
    v20 = [v19 objectForKey:v15];
    if (!v20)
    {
      if (!createCopy)
      {
        v23 = 0;
        goto LABEL_19;
      }

      v20 = objc_opt_new();
      [v19 setObject:v20 forKey:v15];
    }

    v25 = v16;
    v21 = [v20 objectForKey:v16];
    if (!v21)
    {
      if (!createCopy)
      {
        v23 = 0;
        goto LABEL_18;
      }

      v21 = objc_opt_new();
      [v20 setObject:v21 forKey:v25];
    }

    v22 = [v21 objectForKey:v17];
    if (!v22)
    {
      if (!createCopy)
      {
        v23 = 0;
LABEL_17:

LABEL_18:
        v16 = v25;

LABEL_19:
        goto LABEL_20;
      }

      v22 = objc_opt_new();
      [v21 setObject:v22 forKey:v17];
    }

    v23 = [v22 objectForKey:v18];
    if (!v23 && createCopy)
    {
      v23 = objc_opt_new();
      [v22 setObject:v23 forKey:v18];
    }

    goto LABEL_17;
  }

  if (createCopy)
  {
    v19 = objc_opt_new();
    [(NSMutableDictionary *)self->_aveElem setObject:v19 forKey:idCopy];
    goto LABEL_4;
  }

  v23 = 0;
LABEL_20:

  return v23;
}

- (void)enumerateAllAverageElementsOfVolType:(int)type UsingBlock:(id)block
{
  blockCopy = block;
  aveElem = self->_aveElem;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100024F74;
  v9[3] = &unk_100065410;
  typeCopy = type;
  v10 = blockCopy;
  v8 = blockCopy;
  [(NSMutableDictionary *)aveElem enumerateKeysAndObjectsUsingBlock:v9];
}

- (void)print
{
  v3 = SALog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    sdaVersion = self->_sdaVersion;
    v23 = 138412290;
    v24 = sdaVersion;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "sdaVersion %@", &v23, 0xCu);
  }

  v5 = SALog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    buildVersion = self->_buildVersion;
    v23 = 138412290;
    v24 = buildVersion;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "buildVersion %@", &v23, 0xCu);
  }

  v7 = SALog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    lastUpdateDate = self->_lastUpdateDate;
    v23 = 138412290;
    v24 = lastUpdateDate;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "lastUpdateDate %@", &v23, 0xCu);
  }

  v9 = SALog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    numOfTraversal = self->_numOfTraversal;
    v23 = 138412290;
    v24 = numOfTraversal;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "numOfTraversal %@", &v23, 0xCu);
  }

  v11 = SALog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    freeDiskSpaceAtStart = self->_freeDiskSpaceAtStart;
    v23 = 138412290;
    v24 = freeDiskSpaceAtStart;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "freeDiskSpaceAtStart %@", &v23, 0xCu);
  }

  v13 = SALog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    pathToDisk = self->_pathToDisk;
    v23 = 138412290;
    v24 = pathToDisk;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "pathToDisk %@", &v23, 0xCu);
  }

  v15 = SALog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    daysSinceLastUpdate = self->_daysSinceLastUpdate;
    v23 = 138412290;
    v24 = daysSinceLastUpdate;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "daysSinceLastUpdate %@", &v23, 0xCu);
  }

  v17 = SALog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    startExecutionDate = self->_startExecutionDate;
    v23 = 138412290;
    v24 = startExecutionDate;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "startExecutionDate %@", &v23, 0xCu);
  }

  v19 = SALog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = self->_numOfTraversal;
    v23 = 138412290;
    v24 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "numOfTraversal %@", &v23, 0xCu);
  }

  v21 = SALog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    executionOnGoing = self->_executionOnGoing;
    v23 = 138412290;
    v24 = executionOnGoing;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "executionOnGoing %@", &v23, 0xCu);
  }

  [(NSMutableDictionary *)self->_lastEventTimePerVol enumerateKeysAndObjectsUsingBlock:&stru_100065530];
  [(NSMutableDictionary *)self->_lastEventIdPerVol enumerateKeysAndObjectsUsingBlock:&stru_100065570];
  [(NSMutableDictionary *)self->_aveElem enumerateKeysAndObjectsUsingBlock:&stru_1000655B0];
}

@end