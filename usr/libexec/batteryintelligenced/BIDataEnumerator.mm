@interface BIDataEnumerator
- (BIDataEnumerator)initWithStartDate:(id)date endDate:(id)endDate forBDCStream:(id)stream atOrAboveVersion:(id)version usingDataFromCSVs:(BOOL)vs withInputFilePath:(id)path;
- (id)getBDCDataFromStartDate:(id)date toEndDate:(id)endDate forStream:(id)stream withMetrics:(id)metrics withLimit:(unint64_t)limit;
- (id)getMedianValueForKey:(id)key;
- (id)nextObject;
- (void)resetStream;
@end

@implementation BIDataEnumerator

- (BIDataEnumerator)initWithStartDate:(id)date endDate:(id)endDate forBDCStream:(id)stream atOrAboveVersion:(id)version usingDataFromCSVs:(BOOL)vs withInputFilePath:(id)path
{
  dateCopy = date;
  endDateCopy = endDate;
  streamCopy = stream;
  versionCopy = version;
  pathCopy = path;
  v89.receiver = self;
  v89.super_class = BIDataEnumerator;
  v18 = [(BIDataEnumerator *)&v89 init];
  v70 = streamCopy;
  if (!v18)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002E604();
    }

    v32 = 0;
    v29 = streamCopy;
    goto LABEL_9;
  }

  v19 = sub_10001DEC4("dataaccess");
  v20 = *(v18 + 1);
  *(v18 + 1) = v19;

  *(v18 + 96) = vs;
  *(v18 + 8) = 0x412A5E0000000000;
  *(v18 + 9) = 0x3FF0000000000000;
  v21 = [dateCopy copy];
  v22 = *(v18 + 13);
  *(v18 + 13) = v21;

  v23 = [endDateCopy copy];
  v24 = *(v18 + 14);
  *(v18 + 14) = v23;

  v25 = [streamCopy copy];
  v26 = *(v18 + 15);
  *(v18 + 15) = v25;

  v27 = [versionCopy copy];
  v28 = *(v18 + 16);
  *(v18 + 16) = v27;

  v29 = streamCopy;
  if (!vs)
  {
    v32 = v18;
LABEL_9:
    v30 = pathCopy;
    goto LABEL_52;
  }

  v68 = +[NSFileManager defaultManager];
  v30 = pathCopy;
  if (pathCopy)
  {
    v31 = pathCopy;
  }

  else
  {
    v31 = sub_10001DEAC();
  }

  v67 = v31;
  v33 = [NSURL fileURLWithPath:v31 isDirectory:1];
  v100[0] = NSURLAttributeModificationDateKey;
  v100[1] = NSURLCreationDateKey;
  v34 = [NSArray arrayWithObjects:v100 count:2];
  v88 = 0;
  v66 = v33;
  v35 = [v68 contentsOfDirectoryAtURL:v33 includingPropertiesForKeys:v34 options:5 error:&v88];
  v74 = v88;

  v65 = v35;
  if (v35)
  {
    v71 = endDateCopy;
    v72 = dateCopy;
    v36 = objc_alloc_init(NSMutableArray);
    v37 = *(v18 + 2);
    *(v18 + 2) = v36;

    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    obj = v35;
    v77 = [obj countByEnumeratingWithState:&v84 objects:v99 count:{16, v35}];
    if (v77)
    {
      v76 = *v85;
      v73 = versionCopy;
      do
      {
        for (i = 0; i != v77; i = i + 1)
        {
          if (*v85 != v76)
          {
            objc_enumerationMutation(obj);
          }

          v39 = *(*(&v84 + 1) + 8 * i);
          v40 = objc_autoreleasePoolPush();
          lastPathComponent = [v39 lastPathComponent];
          v42 = [lastPathComponent containsString:v29];

          if (v42)
          {
            lastPathComponent2 = [v39 lastPathComponent];
            v44 = [lastPathComponent2 componentsSeparatedByString:@"_"];

            v82 = 0u;
            v83 = 0u;
            v80 = 0u;
            v81 = 0u;
            v45 = v44;
            v46 = [v45 countByEnumeratingWithState:&v80 objects:v98 count:16];
            v47 = 0.0;
            if (v46)
            {
              v48 = v46;
              v49 = *v81;
              while (2)
              {
                for (j = 0; j != v48; j = j + 1)
                {
                  if (*v81 != v49)
                  {
                    objc_enumerationMutation(v45);
                  }

                  v51 = *(*(&v80 + 1) + 8 * j);
                  if ([v51 containsString:@"version"] && objc_msgSend(v51, "length") == 10)
                  {
                    v52 = [v51 substringFromIndex:7];
                    [v52 floatValue];
                    v47 = v53;

                    goto LABEL_29;
                  }
                }

                v48 = [v45 countByEnumeratingWithState:&v80 objects:v98 count:16];
                if (v48)
                {
                  continue;
                }

                break;
              }

LABEL_29:
              versionCopy = v73;
            }

            [versionCopy floatValue];
            if (v47 >= v54)
            {
              v78 = 0;
              v79 = 0;
              [v39 getResourceValue:&v79 forKey:NSURLCreationDateKey error:&v78];
              v55 = v79;
              v56 = v78;

              v57 = *(v18 + 1);
              if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412802;
                v93 = v72;
                v94 = 2112;
                v95 = v71;
                v96 = 2112;
                v97 = v55;
                _os_log_debug_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEBUG, "Look back %@ end date %@ Creation %@", buf, 0x20u);
              }

              v58 = [v55 laterDate:v72];
              v59 = v58;
              if (v58 == v55)
              {
                v60 = [v55 laterDate:v71];

                v61 = v60 == v71;
                versionCopy = v73;
                v29 = v70;
                if (v61)
                {
                  v62 = *(v18 + 1);
                  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
                  {
                    sub_10002EB84(v90, v62, v39, &v91);
                  }

                  [*(v18 + 2) addObject:v39];
                  versionCopy = v73;
                }
              }

              else
              {
              }

              v74 = v56;
            }
          }

          objc_autoreleasePoolPop(v40);
        }

        v77 = [obj countByEnumeratingWithState:&v84 objects:v99 count:16];
      }

      while (v77);
    }

    [*(v18 + 2) sortUsingComparator:&stru_100048788];
    if ([*(v18 + 2) count])
    {
      v63 = v18;
    }

    else
    {
      v63 = 0;
    }

    v32 = v63;
    dateCopy = v72;
    endDateCopy = v71;
    v30 = pathCopy;
  }

  else
  {
    if (os_log_type_enabled(*(v18 + 1), OS_LOG_TYPE_ERROR))
    {
      sub_10002EC08();
    }

    v32 = 0;
  }

LABEL_52:
  return v32;
}

- (id)nextObject
{
  if (!self->_useCSVs)
  {
    nextObject3 = [NSPredicate predicateWithFormat:@"(subsystem == 'BatteryDataCollection' AND category == %@)", self->_bdcStream];
    nextObject = [(NSEnumerator *)self->_enumeratorPPSCollection nextObject];
    if ([(NSString *)self->_bdcStream isEqualToString:@"BDC_SBC"])
    {
      v7 = [NSSet setWithArray:&off_10004CB98];
      if (nextObject)
      {
        v8 = v7;
LABEL_13:

        goto LABEL_14;
      }

      v46 = v7;
      startDate = self->_startDate;
      if (startDate)
      {
        v21 = 0;
        v22 = 0;
        while (1)
        {
          if (!self->_endDate)
          {
            v8 = v22;
            v30 = v21;
            goto LABEL_54;
          }

          itrEndDate = self->_itrEndDate;
          if (itrEndDate)
          {
            v45 = [(NSDate *)self->_itrEndDate dateByAddingTimeInterval:self->_timeIntevalBetweenChunks];
            startDate = v45;
          }

          objc_storeStrong(&self->_itrStartDate, startDate);
          if (itrEndDate)
          {
          }

          if ([(NSDate *)self->_itrEndDate isEqualToDate:self->_endDate])
          {
            break;
          }

          v24 = [(NSDate *)self->_itrStartDate laterDate:self->_endDate];
          itrStartDate = self->_itrStartDate;

          if (v24 == itrStartDate)
          {
            break;
          }

          v26 = [(NSDate *)self->_itrStartDate dateByAddingTimeInterval:self->_dataChunkingTimeInterval];
          v27 = self->_itrEndDate;
          self->_itrEndDate = v26;

          v28 = [(NSDate *)self->_itrEndDate laterDate:self->_endDate];
          endDate = self->_itrEndDate;
          if (v28 == endDate)
          {
            endDate = self->_endDate;
          }

          objc_storeStrong(&self->_itrEndDate, endDate);

          v30 = [[NSDateInterval alloc] initWithStartDate:self->_itrStartDate endDate:self->_itrEndDate];
          v8 = [[PPSTimeSeriesRequest alloc] initWithMetrics:v46 predicate:nextObject3 timeFilter:v30 limitCount:3000 offsetCount:0];

          logger = self->_logger;
          if (!v8)
          {
            if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
            {
              sub_10002ED64();
            }

            nextObject = 0;
            v8 = v30;
            goto LABEL_13;
          }

          if (os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG))
          {
            bdcStream = self->_bdcStream;
            v41 = self->_itrStartDate;
            v42 = self->_itrEndDate;
            *buf = 138412802;
            v51 = bdcStream;
            v52 = 2112;
            v53 = v41;
            v54 = 2112;
            v55 = v42;
            _os_log_debug_impl(&_mh_execute_header, logger, OS_LOG_TYPE_DEBUG, "Fetching data from %@ stream in range %@ - %@", buf, 0x20u);
          }

          v49 = 0;
          v32 = PerfPowerServicesGetData();
          v33 = v49;
          if (v33)
          {
            v44 = v33;
            if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
            {
              sub_10002ECB4();
            }

            goto LABEL_56;
          }

          v34 = [v32 copy];
          currentPPSCollection = self->_currentPPSCollection;
          self->_currentPPSCollection = v34;

          objectEnumerator = [(PPSTimeSeries *)self->_currentPPSCollection objectEnumerator];
          enumeratorPPSCollection = self->_enumeratorPPSCollection;
          self->_enumeratorPPSCollection = objectEnumerator;

          nextObject2 = [(NSEnumerator *)self->_enumeratorPPSCollection nextObject];
          if (nextObject2)
          {
            nextObject = nextObject2;

            v8 = v46;
            goto LABEL_13;
          }

          v39 = self->_logger;
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
            sub_10002ED24(&v47, v48, v39);
          }

          startDate = self->_startDate;
          v21 = v30;
          v22 = v8;
          if (!startDate)
          {
            goto LABEL_54;
          }
        }

        if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
        {
          sub_10002EDA0();
        }

        nextObject = 0;
        v8 = v22;
        goto LABEL_13;
      }

      v8 = 0;
      v30 = 0;
LABEL_54:
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
      {
        sub_10002EDE0();
      }

LABEL_56:
    }

    else
    {
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
      {
        sub_10002EC78();
      }

      v8 = nextObject;
    }

    nextObject = 0;
    goto LABEL_13;
  }

  if (!self->_fileEnumerator)
  {
    objectEnumerator2 = [(NSMutableArray *)self->_fileURLs objectEnumerator];
    fileEnumerator = self->_fileEnumerator;
    self->_fileEnumerator = objectEnumerator2;
  }

  nextObject3 = [(NSEnumerator *)self->_rowEnumerator nextObject];
  if (nextObject3)
  {
    goto LABEL_5;
  }

  nextObject4 = [(NSEnumerator *)self->_fileEnumerator nextObject];
  if (nextObject4)
  {
    nextObject3 = nextObject4;
    v11 = [NSString stringWithContentsOfURL:nextObject4 encoding:4 error:0];
    v12 = [v11 componentsSeparatedByString:@"\n"];
    v13 = [v12 mutableCopy];
    rows = self->_rows;
    self->_rows = v13;

    v15 = self->_rows;
    if (v15 && [(NSMutableArray *)v15 count])
    {
      [(NSMutableArray *)self->_rows removeObject:&stru_1000499A0];
      v16 = [(NSMutableArray *)self->_rows count];
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
      {
        sub_10002EE1C();
      }

      if (v16 > 1)
      {
        [(NSMutableArray *)self->_rows removeObjectAtIndex:0];
        objectEnumerator3 = [(NSMutableArray *)self->_rows objectEnumerator];
        rowEnumerator = self->_rowEnumerator;
        self->_rowEnumerator = objectEnumerator3;

        nextObject5 = [(NSEnumerator *)self->_rowEnumerator nextObject];

        nextObject3 = nextObject5;
LABEL_5:
        nextObject = [nextObject3 componentsSeparatedByString:{@", "}];
LABEL_14:

        goto LABEL_15;
      }

      v43 = self->_logger;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v51 = nextObject3;
        v52 = 1024;
        LODWORD(v53) = v16;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "Returning early. File %@ Row count %u", buf, 0x12u);
      }
    }

    nextObject = 0;
    goto LABEL_14;
  }

  nextObject = 0;
LABEL_15:

  return nextObject;
}

- (id)getBDCDataFromStartDate:(id)date toEndDate:(id)endDate forStream:(id)stream withMetrics:(id)metrics withLimit:(unint64_t)limit
{
  dateCopy = date;
  endDateCopy = endDate;
  streamCopy = stream;
  metricsCopy = metrics;
  if (!self->_useCSVs)
  {
    streamCopy = [NSPredicate predicateWithFormat:@"(subsystem == 'BatteryDataCollection' AND category == %@)", streamCopy];
    if ([streamCopy isEqualToString:@"BDC_Daily"] & 1) != 0 || (objc_msgSend(streamCopy, "isEqualToString:", @"BDC_SBC"))
    {
      v18 = [[NSDateInterval alloc] initWithStartDate:dateCopy endDate:endDateCopy];
      v19 = [[PPSTimeSeriesRequest alloc] initWithMetrics:metricsCopy predicate:streamCopy timeFilter:v18 limitCount:limit offsetCount:0];
      logger = self->_logger;
      if (v19)
      {
        v21 = v19;
        v25 = streamCopy;
        if (os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412802;
          v27 = streamCopy;
          v28 = 2112;
          v29 = dateCopy;
          v30 = 2112;
          v31 = endDateCopy;
          _os_log_debug_impl(&_mh_execute_header, logger, OS_LOG_TYPE_DEBUG, "Fetching data for stream %@ in range %@ - %@", buf, 0x20u);
        }

        v22 = PerfPowerServicesGetData();
        v23 = 0;
        if (v23)
        {
          if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
          {
            sub_10002ECB4();
          }

          v16 = 0;
        }

        else
        {
          v16 = v22;
        }

        streamCopy = v25;
        goto LABEL_22;
      }

      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
      {
        sub_10002EEDC();
      }
    }

    else if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      sub_10002EEA0();
    }

    v16 = 0;
LABEL_22:

    goto LABEL_23;
  }

  if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
  {
    sub_10002EF18();
  }

  v16 = 0;
LABEL_23:

  return v16;
}

- (void)resetStream
{
  fileEnumerator = self->_fileEnumerator;
  self->_fileEnumerator = 0;

  rowEnumerator = self->_rowEnumerator;
  self->_rowEnumerator = 0;

  enumeratorPPSCollection = self->_enumeratorPPSCollection;
  self->_enumeratorPPSCollection = 0;

  itrEndDate = self->_itrEndDate;
  self->_itrEndDate = 0;

  itrStartDate = self->_itrStartDate;
  self->_itrStartDate = 0;
}

- (id)getMedianValueForKey:(id)key
{
  keyCopy = key;
  v5 = [NSSet setWithObject:keyCopy];
  v6 = [[NSDateInterval alloc] initWithStartDate:self->_startDate endDate:self->_endDate];
  v7 = [NSPredicate predicateWithFormat:@"(subsystem == 'BatteryDataCollection' AND category == %@)", self->_bdcStream];
  if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
  {
    sub_10002EF54();
  }

  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_INFO))
  {
    startDate = self->_startDate;
    endDate = self->_endDate;
    *buf = 138412802;
    v39 = keyCopy;
    v40 = 2112;
    v41 = startDate;
    v42 = 2112;
    v43 = endDate;
    _os_log_impl(&_mh_execute_header, logger, OS_LOG_TYPE_INFO, "Fetching BDC metric %@ in range %@ - %@", buf, 0x20u);
  }

  v11 = [[PPSTimeSeriesRequest alloc] initWithMetrics:v5 predicate:v7 timeFilter:v6 limitCount:100 offsetCount:0];
  if (v11)
  {
    v36 = 0;
    v12 = PerfPowerServicesGetData();
    v13 = 0;
    if (v13)
    {
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
      {
        sub_10002ECB4();
      }

      v14 = 0;
    }

    else
    {
      v28 = v11;
      v29 = v7;
      v30 = v6;
      v31 = v5;
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
      {
        sub_10002EFBC();
      }

      v15 = +[NSMutableArray array];
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v27 = v12;
      v16 = v12;
      v17 = [v16 countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v33;
        do
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v33 != v19)
            {
              objc_enumerationMutation(v16);
            }

            metricKeysAndValues = [*(*(&v32 + 1) + 8 * i) metricKeysAndValues];
            v22 = [metricKeysAndValues objectForKeyedSubscript:keyCopy];
            [v15 addObject:v22];
          }

          v18 = [v16 countByEnumeratingWithState:&v32 objects:v37 count:16];
        }

        while (v18);
      }

      v23 = sub_10001F038(v15);
      if (v23 && (+[NSNull null](NSNull, "null"), v24 = objc_claimAutoreleasedReturnValue(), v25 = [v23 isEqual:v24], v24, !v25))
      {
        v5 = v31;
        v13 = 0;
        if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
        {
          sub_10002F024();
        }

        v14 = v23;
      }

      else
      {
        v5 = v31;
        v13 = 0;
        if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
        {
          sub_10002F0A8();
        }

        v14 = 0;
      }

      v12 = v27;
      v11 = v28;

      v7 = v29;
      v6 = v30;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end