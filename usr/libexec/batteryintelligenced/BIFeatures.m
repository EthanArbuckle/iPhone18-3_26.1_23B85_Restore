@interface BIFeatures
+ (BIFeatures)sharedInstance;
- (BIFeatures)init;
- (BOOL)processDataEntry:(id)a3 forBDCDataColumns:(id)a4 atVersion:(id)a5 intoRunningCount:(id *)a6;
- (id)_copyHistogramsOfTypes:(id)a3 withBinners:(id)a4 withParams:(id)a5;
- (id)copyDailyHealthHistoryForFeatures:(id)a3 withFeatureDimensions:(id)a4 withParams:(id)a5;
- (id)copyHistogramsOfTypes:(id)a3 withBinners:(id)a4 withParams:(id)a5;
- (id)copyUsageHistory:(id)a3 withFeatureDimensions:(id)a4 withParams:(id)a5;
- (id)defaultCRateBinner;
- (id)defaultTemperatureBinner;
- (id)defaultUISocBinner;
- (id)getDeviceAgeAtDate:(id)a3 usingManufactureDate:(id)a4;
- (id)getDeviceManufactureDate;
- (id)getTimestampForEntry:(id)a3 atVersion:(id)a4;
- (id)nsArrayForKey:(id)a3 fromDict:(id)a4 withDefaults:(id)a5;
- (id)nsNumberForKey:(id)a3 fromDict:(id)a4 withDefaults:(int64_t)a5;
- (id)parseHealthHistoryFromPPSData:(id)a3 withBDCversion:(id)a4 andParams:(id)a5;
- (void)resampleUsingEnumerator:(id)a3 forBDCDataColumns:(id)a4 samplingPeriodSeconds:(unsigned int)a5 aggregationTypes:(id)a6 callBack:(id)a7;
@end

@implementation BIFeatures

+ (BIFeatures)sharedInstance
{
  if (qword_100057948 != -1)
  {
    sub_100030514();
  }

  v3 = qword_100057940;

  return v3;
}

- (BIFeatures)init
{
  v35.receiver = self;
  v35.super_class = BIFeatures;
  v2 = [(BIFeatures *)&v35 init];
  if (!v2)
  {
    v17 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v17)
    {
      sub_100030604(v17, v18, v19, v20, v21, v22, v23, v24);
    }

    goto LABEL_12;
  }

  v3 = sub_10001DEC4("features");
  v4 = *(v2 + 1);
  *(v2 + 1) = v3;

  if (!*(v2 + 1))
  {
    v25 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v25)
    {
      sub_1000305C8(v25, v26, v27, v28, v29, v30, v31, v32);
    }

    goto LABEL_12;
  }

  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create("com.apple.batteryintelligenced.features.sampler", v5);
  v7 = *(v2 + 3);
  *(v2 + 3) = v6;

  if (!*(v2 + 3))
  {
    if (os_log_type_enabled(*(v2 + 1), OS_LOG_TYPE_ERROR))
    {
      sub_100030594();
    }

LABEL_12:
    v16 = 0;
    goto LABEL_17;
  }

  v8 = sub_10001DEB8();
  v9 = +[NSFileManager defaultManager];
  v36 = NSFileProtectionKey;
  v37 = NSFileProtectionCompleteUntilFirstUserAuthentication;
  v10 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
  v34 = 0;
  v11 = [v9 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:v10 error:&v34];
  v12 = v34;

  if (v11)
  {
    v13 = *(v2 + 4);
    *(v2 + 4) = &stru_100048B40;

    v14 = *(v2 + 5);
    *(v2 + 5) = &stru_100048B60;

    v15 = *(v2 + 6);
    *(v2 + 6) = &stru_100048B80;

    v16 = v2;
  }

  else
  {
    if (os_log_type_enabled(*(v2 + 1), OS_LOG_TYPE_FAULT))
    {
      sub_100030528();
    }

    v16 = 0;
  }

LABEL_17:
  return v16;
}

- (id)defaultTemperatureBinner
{
  v2 = objc_retainBlock(self->_defaultTemperatureBinner);

  return v2;
}

- (id)defaultUISocBinner
{
  v2 = objc_retainBlock(self->_defaultUISocBinner);

  return v2;
}

- (id)defaultCRateBinner
{
  v2 = objc_retainBlock(self->_defaultCRateBinner);

  return v2;
}

- (id)getTimestampForEntry:(id)a3 atVersion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 epochTimestamp];
    v8 = [NSDate dateWithTimeIntervalSince1970:?];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100014824;
      block[3] = &unk_1000486E0;
      v13 = v7;
      if (qword_100057950 != -1)
      {
        dispatch_once(&qword_100057950, block);
      }

      v9 = qword_100057960;
      v10 = [v6 objectAtIndexedSubscript:dword_100057958];
      v8 = [v9 dateFromString:v10];
    }

    else
    {
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
      {
        sub_100030640();
      }

      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)processDataEntry:(id)a3 forBDCDataColumns:(id)a4 atVersion:(id)a5 intoRunningCount:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v41 = a6;
  v42 = a5;
  if (a6)
  {
    if (v11 && [v11 count])
    {
      if (v42)
      {
        v40 = +[BDCSchema sharedBDCSchema];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v38 = [v10 metricKeysAndValues];
          v37 = v10;
          if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
          {
            sub_1000306FC();
          }
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            logger = self->_logger;
            if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
            {
              sub_100030674(logger, v10);
            }

            v13 = 0;
            goto LABEL_39;
          }

          v37 = v10;
          v38 = 0;
        }

        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v36 = v11;
        obj = v11;
        v15 = [obj countByEnumeratingWithState:&v43 objects:v59 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = 0;
          v18 = *v44;
          do
          {
            for (i = 0; i != v16; i = i + 1)
            {
              if (*v44 != v18)
              {
                objc_enumerationMutation(obj);
              }

              v20 = self;
              v21 = *(*(&v43 + 1) + 8 * i);
              if (isKindOfClass)
              {
                v22 = [v40 bdcNameForColumnName:*(*(&v43 + 1) + 8 * i) atVersion:v42];
                v23 = [v38 objectForKeyedSubscript:v22];
                v24 = [v23 intValue];
              }

              else
              {
                v22 = [v37 objectAtIndexedSubscript:{objc_msgSend(v40, "columnIndexForColumnName:atVersion:", *(*(&v43 + 1) + 8 * i), v42)}];
                v24 = [v22 intValue];
              }

              v25 = &v41[v17];

              var1 = v25->var1;
              var2 = v25->var2;
              if (v24 > var1)
              {
                var1 = v24;
              }

              v25->var0 = v24;
              v25->var1 = var1;
              if (v24 >= var2)
              {
                v28 = var2;
              }

              else
              {
                v28 = v24;
              }

              v25->var2 = v28;
              *&v25->var3 = vadd_s32(*&v25->var3, (v24 | 0x100000000));
              self = v20;
              v29 = v20->_logger;
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
              {
                var0 = v25->var0;
                v31 = v25->var1;
                v32 = v25->var2;
                var3 = v25->var3;
                var4 = v25->var4;
                *buf = 138413570;
                v48 = v21;
                v49 = 1024;
                v50 = var0;
                v51 = 1024;
                v52 = v31;
                v53 = 1024;
                v54 = v32;
                v55 = 1024;
                v56 = var3;
                v57 = 1024;
                v58 = var4;
                _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "Key:%@ currVal %d maxVal %d minVal %d sum %d count %d", buf, 0x2Au);
              }

              ++v17;
            }

            v16 = [obj countByEnumeratingWithState:&v43 objects:v59 count:16];
          }

          while (v16);
        }

        v13 = 1;
        v10 = v37;
        v11 = v36;
LABEL_39:

        goto LABEL_13;
      }

      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
      {
        sub_100030764();
      }
    }

    else if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      sub_100030798();
    }
  }

  else if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
  {
    sub_1000307CC();
  }

  v13 = 0;
LABEL_13:

  return v13;
}

- (void)resampleUsingEnumerator:(id)a3 forBDCDataColumns:(id)a4 samplingPeriodSeconds:(unsigned int)a5 aggregationTypes:(id)a6 callBack:(id)a7
{
  v75 = a5;
  v81 = a3;
  v11 = a4;
  v88 = a6;
  v74 = a7;
  v97 = 0;
  v98 = &v97;
  v99 = 0x2020000000;
  v100 = 0;
  v89 = v11;
  v12 = [v11 count];
  v73 = &v60;
  v72 = 4 * v12;
  v91 = &v60 - ((v72 + 15) & 0x7FFFFFFF0);
  v92 = self;
  j__dispatch_assert_queue_barrier(self->_samplingQueue);
  if (v12 && v12 == [v88 count])
  {
    if (v81)
    {
      v67 = +[BDCSchema sharedBDCSchema];
      v13 = [v81 version];
      v14 = [v67 maxColumnIndexForBDCStream:@"BDC_SBC" atVersion:v13];

      if ((v14 & 0x80000000) != 0)
      {
        if (os_log_type_enabled(v92[1], OS_LOG_TYPE_ERROR))
        {
          sub_100030878();
        }
      }

      else
      {
        v15 = malloc_type_malloc(20 * (v12 + 1), 0x1000040A86A77D5uLL);
        v98[3] = v15;
        if (v15)
        {
          v95[0] = _NSConcreteStackBlock;
          v95[1] = 3221225472;
          v95[2] = sub_100015A24;
          v95[3] = &unk_100048BA8;
          v95[4] = &v97;
          v95[5] = 20 * (v12 + 1);
          v96 = v12;
          v68 = objc_retainBlock(v95);
          v16 = *(v68 + 2);
          v65 = v68 + 16;
          v16();
          bzero(v91, v72);
          v87 = [v81 nextObject];
          v17 = 0;
          v90 = 0;
          v71 = v14 + 1;
          v18 = v75;
          v64 = v74 + 16;
          v82 = 20 * v12;
          *&v19 = 138412546;
          v62 = v19;
          v66 = (4 * v14 + 15) & 0x7FFFFFFF0;
          *&v19 = 67109120;
          v63 = v19;
          *&v19 = 67110656;
          v69 = v19;
          *&v19 = 67109634;
          v60 = v19;
          *&v19 = 138412290;
          v61 = v19;
          while (1)
          {
            if (!v87)
            {
              v58 = v98[3];
              if (v58)
              {
                free(v58);
              }

              goto LABEL_59;
            }

            v78 = objc_autoreleasePoolPush();
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              break;
            }

            v20 = [v87 count];
            if (v20 >= v71)
            {
              break;
            }

            if (os_log_type_enabled(v92[1], OS_LOG_TYPE_ERROR))
            {
              sub_100030800(&v93, v94);
            }

            v21 = [v81 nextObject];
            v80 = v87;
            v87 = v21;
LABEL_56:

            objc_autoreleasePoolPop(v78);
          }

          v22 = [v81 version];
          v80 = [(os_log_t *)v92 getTimestampForEntry:v87 atVersion:v22];

          v77 = sub_10001DEFC(v80, v75);
          if (!v90)
          {
            v90 = v77;
          }

          v79 = [v81 nextObject];
          if (v79)
          {
            v23 = [v81 version];
            v24 = [(os_log_t *)v92 getTimestampForEntry:v79 atVersion:v23];

            v76 = sub_10001DEFC(v24, v75);
            if (v24 && [v80 isEqualToDate:v24])
            {
              v25 = v92[1];
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                *buf = v61;
                *v104 = v80;
                _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Skipping row due to repeated timestamp %@", buf, 0xCu);
              }

LABEL_55:
              v57 = v79;

              v87 = v57;
              goto LABEL_56;
            }
          }

          else
          {
            v24 = 0;
            v76 = 0;
          }

          v26 = [v81 version];
          v27 = [(os_log_t *)v92 processDataEntry:v87 forBDCDataColumns:v89 atVersion:v26 intoRunningCount:v98[3]];

          if (v27 && (!v79 || ([v76 isEqualToDate:v90] & 1) == 0))
          {
            v28 = v92[1];
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              *buf = v62;
              *v104 = v17;
              *&v104[8] = 2112;
              *&v104[10] = v90;
              _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "END OF SEGMENT prev_ts %@, current_ts %@", buf, 0x16u);
            }

            v70 = &v60;
            v84 = (&v60 - v66);
            if (!v17)
            {
              v83 = 1;
LABEL_31:
              v85 = objc_alloc_init(NSMutableDictionary);
              v31 = v92[1];
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
              {
                *buf = v63;
                *v104 = v83;
                _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "Number of segments to fill %d", buf, 8u);
              }

              v32 = 0;
              v33 = 0;
              while (2)
              {
                v34 = [v88 objectAtIndexedSubscript:v33];
                v35 = [v34 unsignedIntValue];

                if (v35)
                {
                  if (v35 == 1)
                  {
                    v36 = *(v98[3] + v32 + 4);
LABEL_39:
                    v37 = v36;
                  }

                  else
                  {
                    if (v35 == 2)
                    {
                      v36 = *(v98[3] + v32 + 8);
                      goto LABEL_39;
                    }

                    v38 = v92[1];
                    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                    {
                      v54 = [v88 objectAtIndexedSubscript:v33];
                      v55 = [v54 unsignedIntValue];
                      *buf = v63;
                      *v104 = v55;
                      _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Unknown resampling aggregation type %u", buf, 8u);
                    }

                    v37 = *&v91[4 * v33];
                  }
                }

                else
                {
                  v37 = *(v98[3] + v32 + 12) / *(v98[3] + v32 + 16);
                }

                v84[v33] = v37;
                if (!v17)
                {
                  *&v91[4 * v33] = v37;
                }

                v39 = v92[1];
                if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
                {
                  v48 = (v98[3] + v32);
                  v50 = v48[3];
                  v49 = v48[4];
                  v51 = *&v91[4 * v33];
                  v53 = v48 + 1;
                  LODWORD(v48) = v48[1];
                  v52 = v53[1];
                  *buf = v69;
                  *v104 = v33;
                  *&v104[4] = 1024;
                  *&v104[6] = v49;
                  *&v104[10] = 1024;
                  *&v104[12] = v50;
                  *&v104[16] = 2048;
                  *&v104[18] = v51;
                  v105 = 2048;
                  v106 = v37;
                  v107 = 1024;
                  v108 = v52;
                  v109 = 1024;
                  v110 = v48;
                  _os_log_debug_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "idx %d, count %d, sum %d, prevVal %f, currVal %f, min %d, max %d", buf, 0x34u);
                }

                v101[0] = @"NumSegments";
                v40 = [NSNumber numberWithInt:v83];
                v102[0] = v40;
                v101[1] = @"PrevSegmentVal";
                LODWORD(v41) = *&v91[4 * v33];
                v42 = [NSNumber numberWithFloat:v41];
                v102[1] = v42;
                v101[2] = @"CurrSegmentVal";
                *&v43 = v37;
                v44 = [NSNumber numberWithFloat:v43];
                v102[2] = v44;
                v101[3] = @"PrevSegmentTimeStamp";
                v45 = v17;
                if (!v17)
                {
                  v86 = +[NSNull null];
                  v45 = v86;
                }

                v101[4] = @"CurrSegmentTimeStamp";
                v102[3] = v45;
                v102[4] = v90;
                v46 = [NSDictionary dictionaryWithObjects:v102 forKeys:v101 count:5];
                v47 = [v89 objectAtIndexedSubscript:v33];
                [v85 setObject:v46 forKeyedSubscript:v47];

                if (!v17)
                {
                }

                ++v33;
                v32 += 20;
                if (v82 == v32)
                {
                  v56 = [v85 copy];
                  (*(v74 + 2))(v74, v56);

                  goto LABEL_54;
                }

                continue;
              }
            }

            [v90 timeIntervalSinceDate:v17];
            v83 = (v29 / v18);
            if (v83 >= 1)
            {
              goto LABEL_31;
            }

            v30 = v92[1];
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              *buf = v60;
              *v104 = v83;
              *&v104[4] = 2112;
              *&v104[6] = v90;
              *&v104[14] = 2112;
              *&v104[16] = v17;
              _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Unexpected number of segments %d current_ts %@ prev_ts %@", buf, 0x1Cu);
            }

LABEL_54:

            memcpy(v91, v84, v72);
            (*(v68 + 2))();
            v17 = v90;
            v90 = 0;
          }

          goto LABEL_55;
        }

        v59 = v92[1];
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          sub_100030830(buf, [v89 count], v59);
        }
      }
    }

    else if (os_log_type_enabled(v92[1], OS_LOG_TYPE_ERROR))
    {
      sub_1000308AC();
    }
  }

  else if (os_log_type_enabled(v92[1], OS_LOG_TYPE_ERROR))
  {
    sub_1000308E0();
  }

LABEL_59:
  _Block_object_dispose(&v97, 8);
}

- (id)copyHistogramsOfTypes:(id)a3 withBinners:(id)a4 withParams:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_100015BF4;
  v26 = sub_100015C04;
  v27 = 0;
  samplingQueue = self->_samplingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015C0C;
  block[3] = &unk_100048BD0;
  v20 = v10;
  v21 = &v22;
  block[4] = self;
  v18 = v8;
  v19 = v9;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_sync(samplingQueue, block);
  v15 = v23[5];

  _Block_object_dispose(&v22, 8);
  return v15;
}

- (id)_copyHistogramsOfTypes:(id)a3 withBinners:(id)a4 withParams:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  j__dispatch_assert_queue_barrier(self->_samplingQueue);
  v11 = objc_alloc_init(NSMutableDictionary);
  if (!v8)
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      sub_100030A68();
    }

    v18 = 0;
    goto LABEL_97;
  }

  v12 = os_transaction_create();
  v79 = self;
  if (v10)
  {
    v13 = [v10 objectForKeyedSubscript:@"UseCachedFeatures"];
    v14 = [v13 BOOLValue];

    v15 = [v10 objectForKeyedSubscript:@"HistogramStartDate"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v17 = [v10 objectForKeyedSubscript:@"HistogramStartDate"];
    }

    else
    {
      v17 = 0;
    }

    v20 = [v10 objectForKeyedSubscript:@"HistogramEndDate"];
    objc_opt_class();
    v21 = objc_opt_isKindOfClass();

    if (v21)
    {
      v73 = [v10 objectForKeyedSubscript:@"HistogramEndDate"];
    }

    else
    {
      v73 = 0;
    }

    v22 = [v10 objectForKeyedSubscript:@"DesignCapacity"];
    objc_opt_class();
    v23 = objc_opt_isKindOfClass();

    if (v23)
    {
      v24 = [v10 objectForKeyedSubscript:@"DesignCapacity"];
      v19 = [v24 unsignedIntValue];
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v14 = 0;
    v19 = 0;
    v73 = 0;
    v17 = 0;
  }

  uisocHistogramCache = self->_uisocHistogramCache;
  location = &self->_uisocHistogramCache;
  v69 = v12;
  v70 = v10;
  if (uisocHistogramCache && self->_temperatureHistogramCache)
  {
    v26 = self->_cRateHistogramCache ? v14 : 0;
    if (v26 == 1)
    {
      v71 = v17;
      locationa = v9;
      v27 = uisocHistogramCache;
      v28 = self->_temperatureHistogramCache;
      v29 = self->_cRateHistogramCache;
      v72 = 0;
LABEL_70:
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v77 = v8;
      v55 = v8;
      v56 = [v55 countByEnumeratingWithState:&v80 objects:v89 count:16];
      if (!v56)
      {
        goto LABEL_86;
      }

      v57 = v56;
      v58 = *v81;
      while (1)
      {
        for (i = 0; i != v57; i = i + 1)
        {
          if (*v81 != v58)
          {
            objc_enumerationMutation(v55);
          }

          v60 = *(*(&v80 + 1) + 8 * i);
          v61 = [v60 integerValue];
          if (v61 == 2)
          {
            v63 = v29;
            goto LABEL_81;
          }

          v62 = v61;
          if (v61 == 1)
          {
            v63 = v28;
            goto LABEL_81;
          }

          if (!v61)
          {
            v63 = v27;
LABEL_81:
            v64 = [(BIHistogram *)v63 copyHistogramWithNormalizedCounts];
            [v11 setObject:v64 forKeyedSubscript:v60];

            continue;
          }

          logger = v79->_logger;
          if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
          {
            *buf = 134217984;
            v91 = v62;
            _os_log_error_impl(&_mh_execute_header, logger, OS_LOG_TYPE_ERROR, "Unknown BIFeatureType %lu", buf, 0xCu);
          }
        }

        v57 = [v55 countByEnumeratingWithState:&v80 objects:v89 count:16];
        if (!v57)
        {
LABEL_86:

          v18 = v11;
          v9 = locationa;
          v8 = v77;
          v30 = v73;
          goto LABEL_96;
        }
      }
    }
  }

  v30 = v73;
  if (!v73)
  {
    v30 = +[NSDate now];
    if (v17)
    {
      goto LABEL_25;
    }

LABEL_64:
    v17 = [v30 dateByAddingTimeInterval:-2592000.0];
    goto LABEL_25;
  }

  if (!v17)
  {
    goto LABEL_64;
  }

LABEL_25:
  v71 = v17;
  if (v17 && v30 && ([v17 laterDate:v30], v31 = objc_claimAutoreleasedReturnValue(), v31, v31 == v17))
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      sub_100030A34();
    }
  }

  else
  {
    if (v19 || (v19 = sub_10001EA68()) != 0)
    {
      v32 = self->_logger;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        sub_100030914(v19, v32);
      }

      v68 = v19;
      v73 = v30;
      v78 = objc_alloc_init(NSMutableSet);
      v76 = objc_alloc_init(NSMutableArray);
      if ([v8 count])
      {
        v34 = 0;
        v27 = 0;
        v28 = 0;
        v29 = 0;
        *&v33 = 134217984;
        v67 = v33;
        while (1)
        {
          v35 = [v8 objectAtIndexedSubscript:{v34, v67}];
          v36 = [v35 integerValue];

          if (v36 == 2)
          {
            if (v9)
            {
              v43 = [v9 objectAtIndexedSubscript:v34];
              if (v43)
              {
                v44 = [v9 objectAtIndexedSubscript:v34];
                v45 = objc_retainBlock(v44);
              }

              else
              {
                v45 = objc_retainBlock(self->_defaultCRateBinner);
              }

              v47 = v79;
            }

            else
            {
              v45 = objc_retainBlock(self->_defaultCRateBinner);
              v47 = self;
            }

            v49 = [[BIHistogram alloc] initWithBinLabelGenerator:v45 allLabels:&off_10004CC10];

            [v78 addObject:@"amperage"];
            [v76 addObject:&off_10004D420];
            objc_storeStrong(&v47->_cRateHistogramCache, v49);

            v29 = v49;
          }

          else
          {
            if (v36 != 1)
            {
              if (v36)
              {
                v46 = self->_logger;
                if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
                {
                  *buf = v67;
                  v91 = v36;
                  _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "Unknown BIFeatureType %lu", buf, 0xCu);
                }
              }

              else
              {
                if (v9)
                {
                  v37 = [v9 objectAtIndexedSubscript:v34];
                  if (v37)
                  {
                    v38 = [v9 objectAtIndexedSubscript:v34];
                    v39 = objc_retainBlock(v38);
                  }

                  else
                  {
                    v39 = objc_retainBlock(self->_defaultUISocBinner);
                  }
                }

                else
                {
                  v39 = objc_retainBlock(self->_defaultUISocBinner);
                }

                v50 = [[BIHistogram alloc] initWithBinLabelGenerator:v39 allLabels:&off_10004CBE0];

                [v78 addObject:@"uisoc"];
                [v76 addObject:&off_10004D420];
                objc_storeStrong(location, v50);

                v27 = v50;
                self = v79;
              }

              goto LABEL_61;
            }

            if (v9)
            {
              v40 = [v9 objectAtIndexedSubscript:v34];
              if (v40)
              {
                v41 = [v9 objectAtIndexedSubscript:v34];
                v42 = objc_retainBlock(v41);
              }

              else
              {
                v42 = objc_retainBlock(self->_defaultTemperatureBinner);
              }

              v47 = v79;
            }

            else
            {
              v42 = objc_retainBlock(self->_defaultTemperatureBinner);
              v47 = self;
            }

            v48 = [[BIHistogram alloc] initWithBinLabelGenerator:v42 allLabels:&off_10004CBF8];

            [v78 addObject:@"temp"];
            [v76 addObject:&off_10004D420];
            objc_storeStrong(&v47->_temperatureHistogramCache, v48);

            v28 = v48;
          }

          self = v47;
LABEL_61:
          if ([v8 count] <= ++v34)
          {
            goto LABEL_66;
          }
        }
      }

      v29 = 0;
      v28 = 0;
      v27 = 0;
LABEL_66:
      v30 = v73;
      v51 = [[BIDataEnumerator alloc] initWithStartDate:v71 endDate:v73 forBDCStream:@"BDC_SBC" atOrAboveVersion:@"1.3" usingDataFromCSVs:0];
      v52 = self->_logger;
      if (v51)
      {
        v53 = v51;
        if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
        {
          sub_10003098C();
        }

        locationa = v9;
        v54 = [v78 allObjects];
        v84[0] = _NSConcreteStackBlock;
        v84[1] = 3221225472;
        v84[2] = sub_100016648;
        v84[3] = &unk_100048BF8;
        v84[4] = self;
        v27 = v27;
        v85 = v27;
        v28 = v28;
        v86 = v28;
        v88 = v68;
        v29 = v29;
        v87 = v29;
        v72 = v53;
        [(BIFeatures *)self resampleUsingEnumerator:v53 forBDCDataColumns:v54 samplingPeriodSeconds:900 aggregationTypes:v76 callBack:v84];

        goto LABEL_70;
      }

      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
      {
        sub_1000309CC();
      }

      goto LABEL_95;
    }

    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      sub_100030A00();
    }
  }

  v29 = 0;
  v28 = 0;
  v27 = 0;
LABEL_95:
  v18 = 0;
LABEL_96:

  v10 = v70;
LABEL_97:

  return v18;
}

- (id)getDeviceManufactureDate
{
  v9 = 0;
  v8 = 0;
  if (sub_10001ECCC(&v9, &v8))
  {
    v3 = objc_alloc_init(NSDateComponents);
    v4 = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierISO8601];
    [v3 setCalendar:v4];

    [v3 setYear:v9];
    [v3 setWeekOfYear:v8];
    v5 = [v3 calendar];
    [v3 setWeekday:{objc_msgSend(v5, "firstWeekday")}];

    v6 = [v3 date];
  }

  else
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      sub_100030B04();
    }

    v6 = 0;
  }

  return v6;
}

- (id)getDeviceAgeAtDate:(id)a3 usingManufactureDate:(id)a4
{
  [a3 timeIntervalSinceDate:a4];
  v5 = v4 / 31536000.0;

  return [NSNumber numberWithDouble:v5];
}

- (id)nsNumberForKey:(id)a3 fromDict:(id)a4 withDefaults:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (sub_10001F7E4(v8))
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      sub_100030C10();
    }

LABEL_7:
    v10 = [NSNumber numberWithInteger:a5];
    goto LABEL_14;
  }

  if (sub_10001F830(v9))
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      sub_100030BA4();
    }

    goto LABEL_7;
  }

  v11 = [v9 objectForKeyedSubscript:v8];
  if (sub_10001F87C(v11))
  {
    v12 = v11;
  }

  else
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_FAULT))
    {
      sub_100030B38();
    }

    v12 = [NSNumber numberWithInteger:a5];
  }

  v10 = v12;

LABEL_14:

  return v10;
}

- (id)nsArrayForKey:(id)a3 fromDict:(id)a4 withDefaults:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (sub_10001F7E4(v8))
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      sub_100030C10();
    }

LABEL_7:
    v11 = v10;
    goto LABEL_12;
  }

  if (sub_10001F830(v9))
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      sub_100030BA4();
    }

    goto LABEL_7;
  }

  v12 = [v9 objectForKeyedSubscript:v8];
  v13 = sub_10001F8C8(v12);
  v14 = v12;
  if ((v13 & 1) == 0)
  {
    v15 = os_log_type_enabled(self->_logger, OS_LOG_TYPE_FAULT);
    v14 = v10;
    if (v15)
    {
      sub_100030C78();
      v14 = v10;
    }
  }

  v11 = v14;

LABEL_12:

  return v11;
}

- (id)copyUsageHistory:(id)a3 withFeatureDimensions:(id)a4 withParams:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v73 = objc_alloc_init(NSMutableDictionary);
  v11 = [BIDataEnumerator alloc];
  v12 = [v10 objectForKeyedSubscript:@"UsageHistoryStartDate"];
  v13 = [v10 objectForKeyedSubscript:@"UsageHistoryEndDate"];
  v14 = [(BIDataEnumerator *)v11 initWithStartDate:v12 endDate:v13 forBDCStream:@"BDC_SBC" atOrAboveVersion:@"1.3" usingDataFromCSVs:0];

  if (!v14)
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      sub_100030EAC();
    }

    v53 = 0;
    v54 = v73;
    goto LABEL_67;
  }

  v78 = objc_alloc_init(NSMutableArray);
  v77 = objc_alloc_init(NSMutableArray);
  v76 = objc_alloc_init(NSMutableArray);
  v75 = objc_alloc_init(NSMutableArray);
  v74 = objc_alloc_init(NSMutableArray);
  v15 = [NSSet setWithArray:&off_10004CC28];
  v16 = [v10 objectForKeyedSubscript:@"UsageHistoryStartDate"];
  v17 = [v10 objectForKeyedSubscript:@"UsageHistoryEndDate"];
  v18 = [v10 objectForKeyedSubscript:@"MaxUsageHistoryLenTimesteps"];
  v71 = v15;
  v19 = -[BIDataEnumerator getBDCDataFromStartDate:toEndDate:forStream:withMetrics:withLimit:](v14, "getBDCDataFromStartDate:toEndDate:forStream:withMetrics:withLimit:", v16, v17, @"BDC_SBC", v15, [v18 unsignedLongValue]);

  v72 = v19;
  if (!v19 || ![v19 count])
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      sub_100030E78();
    }

    v53 = 0;
    goto LABEL_49;
  }

  v70 = v10;
  v20 = [v19 firstObject];
  v21 = [(BIDataEnumerator *)v14 version];
  v22 = [(BIFeatures *)self getTimestampForEntry:v20 atVersion:v21];

  if (!v22)
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      sub_100030E44();
    }

    v53 = 0;
    v10 = v70;
LABEL_49:
    v54 = v73;
    v55 = v71;
    goto LABEL_66;
  }

  v68 = v8;
  v69 = v9;
  v82 = [v22 dateByAddingTimeInterval:-300.0];
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  obj = v19;
  v23 = [obj countByEnumeratingWithState:&v96 objects:v112 count:16];
  v79 = v14;
  if (!v23)
  {
    goto LABEL_30;
  }

  v24 = v23;
  v85 = *v97;
  do
  {
    v25 = 0;
    v80 = v24;
    do
    {
      if (*v97 != v85)
      {
        objc_enumerationMutation(obj);
      }

      v26 = *(*(&v96 + 1) + 8 * v25);
      v27 = objc_autoreleasePoolPush();
      v28 = [v26 metricKeysAndValues];
      if (!v28)
      {
        if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
        {
          sub_100030D44(&v94, v95);
        }

        goto LABEL_25;
      }

      v29 = [(BIDataEnumerator *)v14 version];
      v30 = [(BIFeatures *)self getTimestampForEntry:v26 atVersion:v29];

      if (!v30)
      {
        if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
        {
          sub_100030D14(&v92, v93);
        }

        v22 = 0;
LABEL_25:

        objc_autoreleasePoolPop(v27);
        goto LABEL_26;
      }

      [v30 timeIntervalSinceDate:v82];
      v32 = v31;
      v33 = [(BIFeatures *)self nsNumberForKey:@"Voltage" fromDict:v28 withDefaults:-999];
      v34 = [(BIFeatures *)self nsNumberForKey:@"Amperage" fromDict:v28 withDefaults:-999];
      v35 = [(BIFeatures *)self nsNumberForKey:@"Temperature" fromDict:v28 withDefaults:-999];
      v36 = [(BIFeatures *)self nsNumberForKey:@"ChargeAccum" fromDict:v28 withDefaults:-999];
      if (([v33 isEqual:&off_10004D450] & 1) != 0 || (objc_msgSend(v34, "isEqual:", &off_10004D450) & 1) != 0 || (objc_msgSend(v35, "isEqual:", &off_10004D450) & 1) != 0 || objc_msgSend(v36, "isEqual:", &off_10004D450))
      {
        if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
        {
          sub_100030CE4(&v90, v91);
        }

        objc_autoreleasePoolPop(v27);
        v22 = v30;
      }

      else
      {
        [v78 addObject:v33];
        [v77 addObject:v34];
        [v76 addObject:v35];
        [v75 addObject:v36];
        v37 = [NSNumber numberWithDouble:v32 / 60.0];
        [v74 addObject:v37];

        objc_autoreleasePoolPop(v27);
        v22 = v30;

        v82 = v22;
      }

      v14 = v79;
      v24 = v80;
LABEL_26:
      v25 = v25 + 1;
    }

    while (v24 != v25);
    v38 = [obj countByEnumeratingWithState:&v96 objects:v112 count:16];
    v24 = v38;
  }

  while (v38);
LABEL_30:

  v110[0] = @"voltageHistory";
  v110[1] = @"currentHistory";
  v111[0] = v78;
  v111[1] = v77;
  v110[2] = @"tempHistory";
  v110[3] = @"qHistory";
  v111[2] = v76;
  v111[3] = v75;
  v110[4] = @"timeSinceLastReadingMins";
  v111[4] = v74;
  v39 = [NSDictionary dictionaryWithObjects:v111 forKeys:v110 count:5];
  v40 = [v70 objectForKeyedSubscript:@"MaxUsageHistoryLenTimesteps"];
  v81 = [v40 unsignedIntValue];

  obja = [v78 count];
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v41 = v39;
  v42 = [v41 countByEnumeratingWithState:&v86 objects:v109 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v87;
    do
    {
      for (i = 0; i != v43; i = i + 1)
      {
        if (*v87 != v44)
        {
          objc_enumerationMutation(v41);
        }

        v46 = *(*(&v86 + 1) + 8 * i);
        v47 = [v41 objectForKey:v46];
        logger = self->_logger;
        if (os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG))
        {
          v49 = logger;
          v50 = [v47 count];
          *buf = 138413058;
          v102 = v46;
          v103 = 2048;
          v104 = v50;
          v105 = 2112;
          v106 = v46;
          v107 = 2112;
          v108 = v47;
          _os_log_debug_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEBUG, "%@ length: %lu \n %@: %@", buf, 0x2Au);
        }
      }

      v43 = [v41 countByEnumeratingWithState:&v86 objects:v109 count:16];
    }

    while (v43);
  }

  if (obja <= v81)
  {
    v8 = v68;
    v9 = v69;
  }

  else
  {
    v51 = self->_logger;
    v8 = v68;
    v9 = v69;
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
    {
      v65 = v51;
      v66 = [v70 objectForKeyedSubscript:@"UsageHistoryStartDate"];
      v67 = [v70 objectForKeyedSubscript:@"UsageHistoryEndDate"];
      *buf = 134218754;
      v102 = obja;
      v103 = 2112;
      v104 = v66;
      v105 = 2112;
      v106 = v67;
      v107 = 2048;
      v108 = v81;
      _os_log_debug_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEBUG, "Actual usage history length = %lu pulled from start date %@ to end date %@ exceeds model max input length of %lu", buf, 0x2Au);

      v8 = v68;
      v9 = v69;
    }

    v52 = [BITensor createSubArraysFromArrays:v41 fromStartIndex:&obja[-v81] withSize:v81];

    v41 = v52;
    if (!v52)
    {
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
      {
        sub_100030E10();
      }

      v41 = 0;
      v53 = 0;
      v54 = v73;
      v55 = v71;
      goto LABEL_65;
    }
  }

  v56 = [v41 allValues];
  v57 = [v56 objectAtIndex:0];
  v58 = [v57 count];

  v100[0] = &off_10004D438;
  v59 = [NSNumber numberWithUnsignedInteger:v58];
  v100[1] = v59;
  v60 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v41 count]);
  v100[2] = v60;
  v61 = [NSArray arrayWithObjects:v100 count:3];

  v62 = [v9 objectForKey:@"usage_history_input"];
  v63 = [BITensor create3DMultiArrayFromFeatureArrays:v41 withInputShape:v61 usingFeatureDimensionsDict:v62];

  if (v63)
  {
    v54 = v73;
    [v73 setObject:v63 forKeyedSubscript:@"usage_history_input"];
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
    {
      sub_100030D74();
    }

    v53 = v73;
    v9 = v69;
  }

  else
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      sub_100030DDC();
    }

    v53 = 0;
    v9 = v69;
    v54 = v73;
  }

  v55 = v71;

LABEL_65:
  v10 = v70;
  v14 = v79;
LABEL_66:

LABEL_67:
  return v53;
}

- (id)parseHealthHistoryFromPPSData:(id)a3 withBDCversion:(id)a4 andParams:(id)a5
{
  v50 = a3;
  v57 = a4;
  v51 = a5;
  v8 = objc_alloc_init(NSMutableDictionary);
  v75[0] = @"nccpHistory";
  v75[1] = @"wraHistory";
  v75[2] = @"qmaxpHistory";
  v75[3] = @"cycleCountHistory";
  v75[4] = @"ageHistory";
  v75[5] = @"timeSinceLastReadingDays";
  [NSArray arrayWithObjects:v75 count:6];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v9 = v72 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v69 objects:v74 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v70;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v70 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v69 + 1) + 8 * i);
        v15 = objc_alloc_init(NSMutableArray);
        [v8 setObject:v15 forKeyedSubscript:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v69 objects:v74 count:16];
    }

    while (v11);
  }

  v16 = [v51 objectForKey:@"DesignCapacity"];
  v17 = [v16 unsignedIntValue];

  v56 = [v51 objectForKey:@"ManufactureDate"];
  v18 = v50;
  v19 = [v50 firstObject];
  v20 = [(BIFeatures *)self getTimestampForEntry:v19 atVersion:v57];

  if (v20)
  {
    v21 = [v20 dateByAddingTimeInterval:-86400.0];
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    obj = v50;
    v54 = [obj countByEnumeratingWithState:&v65 objects:v73 count:16];
    if (v54)
    {
      v22 = v17;
      v55 = *v66;
      v53 = self;
LABEL_11:
      v23 = 0;
      v24 = v21;
      v21 = v20;
      while (1)
      {
        if (*v66 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v65 + 1) + 8 * v23);
        v26 = objc_autoreleasePoolPush();
        v27 = [v25 metricKeysAndValues];
        if (!v27)
        {
          if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
          {
            sub_100030F48();
          }

          goto LABEL_35;
        }

        v28 = [(BIFeatures *)self getTimestampForEntry:v25 atVersion:v57];

        if (!v28)
        {
          break;
        }

        context = v26;
        v29 = [(BIFeatures *)self getDeviceAgeAtDate:v28 usingManufactureDate:v56];
        if (!v29)
        {
          if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
          {
            sub_100030EE0();
          }

          v21 = v28;
LABEL_35:
          v18 = v50;

          objc_autoreleasePoolPop(v26);
          v48 = 0;
          goto LABEL_36;
        }

        v30 = v29;
        v63 = v24;
        [v28 timeIntervalSinceDate:v24];
        v32 = v31;
        v33 = [(BIFeatures *)self nsNumberForKey:@"NominalChargeCapacity" fromDict:v27 withDefaults:-999];
        v61 = [(BIFeatures *)self nsNumberForKey:@"WeightedRa" fromDict:v27 withDefaults:-999];
        v34 = [(BIFeatures *)self nsNumberForKey:@"Qmax0" fromDict:v27 withDefaults:-999];
        v60 = [(BIFeatures *)self nsNumberForKey:@"CycleCount" fromDict:v27 withDefaults:-999];
        v35 = &off_10004D450;
        if (([v33 isEqual:&off_10004D450] & 1) == 0)
        {
          [v33 floatValue];
          *&v37 = v36 / v22;
          v35 = [NSNumber numberWithFloat:v37];
        }

        v59 = v23;
        v62 = v33;
        v38 = &off_10004D450;
        if (([v34 isEqual:{&off_10004D450, v50}] & 1) == 0)
        {
          [v34 floatValue];
          *&v40 = v39 / v22;
          v38 = [NSNumber numberWithFloat:v40];
        }

        [v8 objectForKeyedSubscript:@"nccpHistory"];
        v41 = v58 = v34;
        [v41 addObject:v35];

        v42 = [v8 objectForKeyedSubscript:@"wraHistory"];
        [v42 addObject:v61];

        v43 = [v8 objectForKeyedSubscript:@"qmaxpHistory"];
        [v43 addObject:v38];

        v44 = [v8 objectForKeyedSubscript:@"cycleCountHistory"];
        [v44 addObject:v60];

        v45 = [v8 objectForKeyedSubscript:@"ageHistory"];
        [v45 addObject:v30];

        v46 = [v8 objectForKeyedSubscript:@"timeSinceLastReadingDays"];
        v47 = [NSNumber numberWithDouble:v32 / 86400.0];
        [v46 addObject:v47];

        objc_autoreleasePoolPop(context);
        v21 = v28;

        ++v23;
        v24 = v21;
        self = v53;
        if (v54 == (v59 + 1))
        {
          v20 = v21;
          v18 = v50;
          v54 = [obj countByEnumeratingWithState:&v65 objects:v73 count:16];
          if (v54)
          {
            goto LABEL_11;
          }

          goto LABEL_23;
        }
      }

      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
      {
        sub_100030F14();
      }

      v21 = 0;
      goto LABEL_35;
    }

LABEL_23:
    v24 = v21;

    v48 = v8;
    v21 = v20;
LABEL_36:
  }

  else
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      sub_100030F7C();
    }

    v48 = 0;
  }

  return v48;
}

- (id)copyDailyHealthHistoryForFeatures:(id)a3 withFeatureDimensions:(id)a4 withParams:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(NSMutableDictionary);
  v12 = [v10 objectForKeyedSubscript:@"HealthHistoryStartDate"];
  v13 = [v10 objectForKeyedSubscript:@"HealthHistoryEndDate"];
  v14 = [v12 compare:v13];

  if (v14 != 1)
  {
    v99 = self;
    v15 = [BIDataEnumerator alloc];
    v16 = [v10 objectForKeyedSubscript:@"HealthHistoryStartDate"];
    v17 = [v10 objectForKeyedSubscript:@"HealthHistoryEndDate"];
    v18 = [(BIDataEnumerator *)v15 initWithStartDate:v16 endDate:v17 forBDCStream:@"BDC_Daily" atOrAboveVersion:@"1.3" usingDataFromCSVs:0];

    v19 = v18;
    if (!v18)
    {
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
      {
        sub_1000313E0();
      }

      goto LABEL_16;
    }

    v20 = [v10 objectForKey:@"DesignCapacity"];
    if (v20)
    {
      v21 = [v10 objectForKey:@"DesignCapacity"];
      v22 = [v21 unsignedIntValue];
    }

    else
    {
      v22 = sub_10001EA68();
    }

    if (!v22)
    {
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
      {
        sub_1000313AC();
      }

      goto LABEL_16;
    }

    v98 = v11;
    v23 = [v10 objectForKey:@"ManufactureDate"];
    if (v23)
    {
      v24 = [v10 objectForKey:@"ManufactureDate"];
      v25 = self;
    }

    else
    {
      v25 = self;
      v24 = [(BIFeatures *)self getDeviceManufactureDate];
    }

    logger = v25->_logger;
    if (v24)
    {
      if (os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG))
      {
        sub_100030FB0();
      }

      v29 = [v10 objectForKeyedSubscript:@"HealthHistoryStartDate"];
      v30 = [v10 objectForKeyedSubscript:@"HealthHistoryEndDate"];
      v31 = [(BIDataEnumerator *)v19 getBDCDataFromStartDate:v29 toEndDate:v30 forStream:@"BDC_Daily" withMetrics:0 withLimit:1000];

      if (v31 && [v31 count])
      {
        v96 = v10;
        v97 = v24;
        v32 = v99[1];
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          sub_100031034(v32, v31);
        }

        v94 = v19;
        v95 = v9;
        v33 = [(BIDataEnumerator *)v19 version];
        v126[0] = @"DesignCapacity";
        v34 = [NSNumber numberWithUnsignedInt:v22];
        v126[1] = @"ManufactureDate";
        v127[0] = v34;
        v127[1] = v24;
        v35 = [NSDictionary dictionaryWithObjects:v127 forKeys:v126 count:2];
        v93 = v31;
        v36 = [(os_log_t *)v99 parseHealthHistoryFromPPSData:v31 withBDCversion:v33 andParams:v35];

        if (os_log_type_enabled(v99[1], OS_LOG_TYPE_DEBUG))
        {
          sub_1000310D0();
        }

        v110 = 0u;
        v111 = 0u;
        v108 = 0u;
        v109 = 0u;
        v37 = v36;
        v38 = [v37 countByEnumeratingWithState:&v108 objects:v125 count:16];
        if (v38)
        {
          v39 = v38;
          v40 = *v109;
          while (2)
          {
            for (i = 0; i != v39; i = i + 1)
            {
              if (*v109 != v40)
              {
                objc_enumerationMutation(v37);
              }

              v42 = [v37 objectForKey:*(*(&v108 + 1) + 8 * i)];
              v43 = [v42 count];

              if (!v43)
              {
                v76 = v99[1];
                v74 = v31;
                if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
                {
                  sub_100031138(v76, v31);
                }

                v26 = 0;
                v45 = v37;
                v9 = v95;
                v10 = v96;
                v11 = v98;
                v75 = v94;
                goto LABEL_80;
              }
            }

            v39 = [v37 countByEnumeratingWithState:&v108 objects:v125 count:16];
            if (v39)
            {
              continue;
            }

            break;
          }
        }

        v44 = objc_alloc_init(NSMutableDictionary);
        v123[0] = &off_10004D468;
        v123[1] = &off_10004D480;
        v124[0] = @"nccpHistory";
        v124[1] = @"wraHistory";
        v123[2] = &off_10004D498;
        v123[3] = &off_10004D4B0;
        v124[2] = @"qmaxpHistory";
        v124[3] = @"cycleCountHistory";
        v123[4] = &off_10004D4C8;
        v123[5] = &off_10004D4E0;
        v124[4] = @"ageHistory";
        v124[5] = @"timeSinceLastReadingDays";
        v45 = [NSDictionary dictionaryWithObjects:v124 forKeys:v123 count:6];
        v104 = 0u;
        v105 = 0u;
        v106 = 0u;
        v107 = 0u;
        v90 = v8;
        v46 = v8;
        v47 = [v46 countByEnumeratingWithState:&v104 objects:v122 count:16];
        if (v47)
        {
          v48 = v47;
          v49 = *v105;
          do
          {
            for (j = 0; j != v48; j = j + 1)
            {
              if (*v105 != v49)
              {
                objc_enumerationMutation(v46);
              }

              v51 = *(*(&v104 + 1) + 8 * j);
              v52 = [v45 objectForKeyedSubscript:v51];
              v53 = [v37 objectForKeyedSubscript:v52];
              v54 = [v45 objectForKeyedSubscript:v51];
              [v44 setObject:v53 forKeyedSubscript:v54];
            }

            v48 = [v46 countByEnumeratingWithState:&v104 objects:v122 count:16];
          }

          while (v48);
        }

        if (os_log_type_enabled(v99[1], OS_LOG_TYPE_DEBUG))
        {
          sub_1000311C0();
        }

        v55 = [v96 objectForKeyedSubscript:@"MaxHealthHistoryLenDays"];
        v92 = [v55 unsignedIntValue];

        v56 = [v46 objectAtIndex:0];
        v57 = [v45 objectForKeyedSubscript:v56];
        v58 = [v44 objectForKey:v57];
        v91 = [v58 count];

        v102 = 0u;
        v103 = 0u;
        v100 = 0u;
        v101 = 0u;
        v59 = v44;
        v60 = [v59 countByEnumeratingWithState:&v100 objects:v121 count:16];
        if (v60)
        {
          v61 = v60;
          v62 = *v101;
          do
          {
            for (k = 0; k != v61; k = k + 1)
            {
              if (*v101 != v62)
              {
                objc_enumerationMutation(v59);
              }

              v64 = *(*(&v100 + 1) + 8 * k);
              v65 = [v59 objectForKey:v64];
              v66 = v99[1];
              if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
              {
                v67 = v66;
                v68 = [v65 count];
                *buf = 138413058;
                v114 = v64;
                v115 = 2048;
                v116 = v68;
                v117 = 2112;
                v118 = v64;
                v119 = 2112;
                v120 = v65;
                _os_log_debug_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEBUG, "%@ length: %lu \n %@: %@", buf, 0x2Au);
              }
            }

            v61 = [v59 countByEnumeratingWithState:&v100 objects:v121 count:16];
          }

          while (v61);
        }

        v69 = &selRef_stringForKey_;
        v70 = v92;
        if (v91 <= v92)
        {
          v8 = v90;
          v9 = v95;
        }

        else
        {
          v71 = v99[1];
          v8 = v90;
          v9 = v95;
          if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
          {
            v87 = v71;
            v88 = [v96 objectForKeyedSubscript:@"HealthHistoryStartDate"];
            v70 = v92;
            v89 = [v96 objectForKeyedSubscript:@"HealthHistoryEndDate"];
            *buf = 134218754;
            v114 = v91;
            v115 = 2112;
            v116 = v88;
            v117 = 2112;
            v118 = v89;
            v119 = 2048;
            v120 = v92;
            _os_log_debug_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEBUG, "Actual daily history length = %lu pulled from start date %@ to end date %@ exceeds model max input length of %lu", buf, 0x2Au);

            v69 = &selRef_stringForKey_;
          }

          v72 = [v69 + 309 createSubArraysFromArrays:v59 fromStartIndex:&v91[-v92] withSize:v70];
          v73 = [v72 copy];

          v59 = v73;
          if (!v73)
          {
            if (os_log_type_enabled(v99[1], OS_LOG_TYPE_ERROR))
            {
              sub_100030E10();
            }

            v26 = 0;
            v10 = v96;
            v11 = v98;
            v74 = v93;
            v75 = v94;
LABEL_80:

            goto LABEL_17;
          }
        }

        v77 = [v59 allValues];
        v78 = [v77 objectAtIndex:0];
        v79 = v69;
        v80 = [v78 count];

        v112[0] = &off_10004D438;
        v81 = [NSNumber numberWithUnsignedInteger:v80];
        v112[1] = v81;
        v82 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v59 count]);
        v112[2] = v82;
        v83 = [NSArray arrayWithObjects:v112 count:3];

        v84 = [v9 objectForKey:@"daily_history_input"];
        v85 = [v79 + 309 create3DMultiArrayFromFeatureArrays:v59 withInputShape:v83 usingFeatureDimensionsDict:v84];

        if (v85)
        {
          [v98 setObject:v85 forKeyedSubscript:@"daily_history_input"];
          v86 = v99[1];
          v75 = v94;
          if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
          {
            sub_100031228(v86, v59, v85);
          }

          v26 = v98;
          v74 = v93;
        }

        else
        {
          v74 = v93;
          v75 = v94;
          if (os_log_type_enabled(v99[1], OS_LOG_TYPE_ERROR))
          {
            sub_1000312DC();
          }

          v26 = 0;
        }

        v10 = v96;
        v11 = v98;
        goto LABEL_80;
      }

      if (os_log_type_enabled(v99[1], OS_LOG_TYPE_ERROR))
      {
        sub_100031310();
      }
    }

    else
    {
      if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
      {
        sub_100031378();
      }
    }

    v26 = 0;
    v11 = v98;
    goto LABEL_17;
  }

  if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
  {
    sub_100031414();
  }

LABEL_16:
  v26 = 0;
LABEL_17:

  return v26;
}

@end