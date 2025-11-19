@interface PanicReport
- (PanicReport)initWithPanicString:(id)a3 otherString:(id)a4 buildVersion:(id)a5 panicFlags:(unint64_t)a6 panicType:(id)a7 incidentID:(id)a8 rootsInstalled:(id)a9;
- (id)additionalIPSMetadata;
- (id)createUUIDString:(unsigned int)a3;
- (id)getBuildVersionString;
- (id)incidentID;
- (id)parseExtPaniclog;
- (id)patternTypeString;
- (id)problemType;
- (id)reportNamePrefix;
- (void)donateToBiome;
- (void)generateLogAtLevel:(BOOL)a3 withBlock:(id)a4;
- (void)processExtPaniclogFlags:(unsigned int)a3 data_id:(id)a4 data:(id)a5 additionalBuffers:(id)a6 addToExtPaniclog:(BOOL *)a7;
- (void)setBiomeProperties:(id)a3;
- (void)setPatternUUID:(id)a3;
- (void)setSOCIdAndRev;
- (void)setUtilizationInfo:(id)a3;
@end

@implementation PanicReport

- (void)donateToBiome
{
  if (objc_opt_class())
  {
    v3 = qword_100042B28;
    if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
    {
      patternUUID = self->_patternUUID;
      patternType = self->_patternType;
      v14 = 138412546;
      v15 = patternUUID;
      v16 = 2112;
      v17 = patternType;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "donate panic with pattern uuid %@ type %@", &v14, 0x16u);
    }

    v6 = [BMDiagnosticsPanic alloc];
    v7 = [NSNumber numberWithDouble:*&self->OSAStackShotReport_opaque[OBJC_IVAR___OSAReport__capture_time]];
    v8 = [(PanicReport *)self incidentID];
    v9 = [v6 initWithCaptureTime:v7 incidentID:v8 patternUUID:self->_patternUUID patternType:self->_patternType];

    v10 = BiomeLibrary();
    v11 = [v10 Diagnostics];
    v12 = [v11 Panic];
    v13 = [v12 source];
    [v13 sendEvent:v9];
  }
}

- (void)setBiomeProperties:(id)a3
{
  v4 = [a3 copy];
  biomeProperties = self->_biomeProperties;
  self->_biomeProperties = v4;

  _objc_release_x1();
}

- (void)setPatternUUID:(id)a3
{
  v4 = [a3 copy];
  patternUUID = self->_patternUUID;
  self->_patternUUID = v4;

  _objc_release_x1();
}

- (id)patternTypeString
{
  patternType = self->_patternType;
  if (patternType)
  {
    patternType = [patternType stringValue];
    v2 = vars8;
  }

  return patternType;
}

- (id)incidentID
{
  v2 = *&self->OSAStackShotReport_opaque[OBJC_IVAR___OSAReport__incidentID];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PanicReport;
    v3 = [(PanicReport *)&v5 incidentID];
  }

  return v3;
}

- (void)generateLogAtLevel:(BOOL)a3 withBlock:(id)a4
{
  v5 = a4;
  v150[0] = @"incident";
  v104 = [(PanicReport *)self incidentID];
  v151[0] = v104;
  v150[1] = @"crashReporterKey";
  v101 = +[OSASystemConfiguration sharedInstance];
  v99 = [v101 crashReporterKey];
  v151[1] = v99;
  v150[2] = @"product";
  v98 = +[OSASystemConfiguration sharedInstance];
  v97 = [v98 modelCode];
  v151[2] = v97;
  v150[3] = @"socId";
  v96 = [NSString stringWithFormat:@"%x", self->_socId];
  v151[3] = v96;
  v150[4] = @"socRevision";
  v95 = [NSString stringWithFormat:@"%x", self->_socRev];
  v151[4] = v95;
  v150[5] = @"build";
  v94 = [(PanicReport *)self getBuildVersionString];
  v151[5] = v94;
  v150[6] = @"kernel";
  v6 = [objc_opt_class() kernelVersionDescription];
  v151[6] = v6;
  v150[7] = @"date";
  v7 = *&self->OSAStackShotReport_opaque[OBJC_IVAR___OSAReport__capture_time];
  v8 = OSADateFormat();
  v9 = v8;
  if (self->_isBtnReset)
  {
    v10 = @"string";
  }

  else
  {
    v10 = @"panicString";
  }

  panicString = self->_panicString;
  if (!panicString)
  {
    panicString = @"<mysterious>";
  }

  v151[7] = v8;
  v151[8] = panicString;
  v150[8] = v10;
  v150[9] = @"panicFlags";
  v12 = [NSString stringWithFormat:@"0x%llx", self->_panicFlags];
  v151[9] = v12;
  v150[10] = @"codeSigningMonitor";
  v13 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [objc_opt_class() codeSigningMonitor]);
  v151[10] = v13;
  v150[11] = @"panicProcessingFlags";
  v14 = [NSString stringWithFormat:@"0x%llx", self->_panicProcessingFlags];
  v151[11] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v151 forKeys:v150 count:12];
  v5[2](v5, v15);

  v16 = self;
  v17 = [(PanicReport *)self problemType];
  v18 = [OSALog commonFieldsForBody:v17];
  v5[2](v5, v18);

  panicInitiator = self->_panicInitiator;
  if (panicInitiator)
  {
    v148 = @"panicInitiator";
    v149 = panicInitiator;
    v20 = [NSDictionary dictionaryWithObjects:&v149 forKeys:&v148 count:1];
    v5[2](v5, v20);
  }

  if (self->_isInterruptedCoredump)
  {
    v5[2](v5, &off_10003C590);
  }

  if ([(NSString *)self->_otherString length])
  {
    v146 = @"otherString";
    otherString = self->_otherString;
    v21 = [NSDictionary dictionaryWithObjects:&otherString forKeys:&v146 count:1];
    v5[2](v5, v21);
  }

  if (self->_foregroundAppHashSet)
  {
    foregroundAppHash = self->_foregroundAppHash;
    if (foregroundAppHash)
    {
      v144 = @"foregroundAppHash";
      v23 = [NSString stringWithFormat:@"%@", foregroundAppHash];
      v145 = v23;
      v24 = [NSDictionary dictionaryWithObjects:&v145 forKeys:&v144 count:1];
      v5[2](v5, v24);
    }
  }

  if ((self->_panicFlags & 0x40) != 0)
  {
    [*&self->OSAStackShotReport_opaque[OBJC_IVAR___OSAReport__notes] addObject:@"nested panic occurred"];
  }

  utilizationInfo = self->_utilizationInfo;
  if (utilizationInfo)
  {
    v142 = @"PanicLogUtilizationMetrics";
    v143 = utilizationInfo;
    v26 = [NSDictionary dictionaryWithObjects:&v143 forKeys:&v142 count:1];
    v5[2](v5, v26);
  }

  if (qword_100042A88 != -1)
  {
    dispatch_once(&qword_100042A88, &stru_100038EF8);
  }

  if (dword_100042A80)
  {
    if (qword_100042AA8 != -1)
    {
      dispatch_once(&qword_100042AA8, &stru_100038F38);
    }

    v27 = qword_100042AA0;
    v28 = v27;
    if (v27)
    {
      v140 = @"ECID";
      v141 = v27;
      v29 = [NSDictionary dictionaryWithObjects:&v141 forKeys:&v140 count:1];
      v5[2](v5, v29);
    }
  }

  patternUUID = self->_patternUUID;
  if (patternUUID)
  {
    v138 = @"patternUUIDs";
    v139 = patternUUID;
    v31 = [NSDictionary dictionaryWithObjects:&v139 forKeys:&v138 count:1];
    v5[2](v5, v31);
  }

  if ([objc_opt_class() isInLDM])
  {
    v5[2](v5, &off_10003C5B8);
  }

  if ([objc_opt_class() isDeveloperMode])
  {
    v5[2](v5, &off_10003C5E0);
  }

  if (qword_100042A88 != -1)
  {
    dispatch_once(&qword_100042A88, &stru_100038EF8);
  }

  if (dword_100042A80)
  {
    goto LABEL_39;
  }

  if (qword_100042A98 != -1)
  {
    dispatch_once(&qword_100042A98, &stru_100038F18);
  }

  if (dword_100042A90)
  {
LABEL_39:
    v5[2](v5, &off_10003C608);
  }

  v32 = [objc_opt_class() bootProgressRegister];
  v33 = v32;
  if (v32)
  {
    v136 = @"bootProgressRegister";
    v34 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"0x%llx", [v32 unsignedLongLongValue]);
    v137 = v34;
    v35 = [NSDictionary dictionaryWithObjects:&v137 forKeys:&v136 count:1];
    v5[2](v5, v35);
  }

  if (objc_opt_class())
  {
    v134 = @"repairStatus";
    v36 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%llu", +[CRAuthRepairInspector getStatus]);
    v135 = v36;
    v37 = [NSDictionary dictionaryWithObjects:&v135 forKeys:&v134 count:1];
    v5[2](v5, v37);
  }

  if ([(NSString *)v16->_socdNandContainer length])
  {
    v132 = @"SOCDNandContainer";
    socdNandContainer = v16->_socdNandContainer;
    v38 = [NSDictionary dictionaryWithObjects:&socdNandContainer forKeys:&v132 count:1];
    v5[2](v5, v38);
  }

  v103 = v16;
  v100 = v33;
  if (os_variant_has_internal_diagnostics())
  {
    v39 = [(PanicReport *)v16 parseExtPaniclog];
    v40 = v39;
    if (v39)
    {
      v41 = [v39 objectForKeyedSubscript:@"extPaniclogData"];
      if (v41)
      {
        v130 = @"ExtensiblePaniclog";
        v42 = [v40 objectForKeyedSubscript:@"extPaniclogData"];
        v131 = v42;
        v43 = [NSDictionary dictionaryWithObjects:&v131 forKeys:&v130 count:1];
        v5[2](v5, v43);
      }

      v44 = [v40 objectForKeyedSubscript:@"additionalData"];
      v45 = v44;
      if (v44)
      {
        v105 = v41;
        v113 = 0u;
        v114 = 0u;
        v111 = 0u;
        v112 = 0u;
        v46 = v44;
        v47 = [v46 countByEnumeratingWithState:&v111 objects:v129 count:16];
        if (v47)
        {
          v48 = v47;
          v49 = *v112;
          do
          {
            for (i = 0; i != v48; i = i + 1)
            {
              if (*v112 != v49)
              {
                objc_enumerationMutation(v46);
              }

              v51 = *(*(&v111 + 1) + 8 * i);
              v52 = [v46 objectForKeyedSubscript:v51];
              v127 = v51;
              v128 = v52;
              v53 = [NSDictionary dictionaryWithObjects:&v128 forKeys:&v127 count:1];
              v5[2](v5, v53);
            }

            v48 = [v46 countByEnumeratingWithState:&v111 objects:v129 count:16];
          }

          while (v48);
        }

        v16 = v103;
        v41 = v105;
      }
    }
  }

  if ([(NSString *)v16->_storagePanicData length])
  {
    storagePanicData = v16->_storagePanicData;
    v125 = @"storagePanicData";
    v126 = storagePanicData;
    v55 = [NSDictionary dictionaryWithObjects:&v126 forKeys:&v125 count:1];
    v5[2](v5, v55);
  }

  v102 = v5;
  v106 = objc_alloc_init(NSMutableArray);
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v56 = v16->_socdContainerArray;
  v57 = [(NSMutableArray *)v56 countByEnumeratingWithState:&v107 objects:v124 count:16];
  if (v57)
  {
    v58 = v57;
    v59 = *v108;
    do
    {
      for (j = 0; j != v58; j = j + 1)
      {
        if (*v108 != v59)
        {
          objc_enumerationMutation(v56);
        }

        v61 = *(*(&v107 + 1) + 8 * j);
        if ([v61 count])
        {
          v62 = objc_alloc_init(NSMutableDictionary);
          v63 = [v61 objectAtIndex:0];
          v64 = +[NSNull null];
          v65 = [v63 isEqual:v64];

          if ((v65 & 1) == 0)
          {
            v66 = [v61 objectAtIndex:0];
            if ([v66 length])
            {
              [v62 setObject:v66 forKey:@"SOCDContainer"];
            }
          }

          v67 = [v61 objectAtIndex:1];
          v68 = +[NSNull null];
          v69 = [v67 isEqual:v68];

          if ((v69 & 1) == 0)
          {
            v70 = [v61 objectAtIndex:1];
            if ([v70 length])
            {
              [v62 setObject:v70 forKey:@"SOCDPanicString"];
            }
          }

          if ([v62 count])
          {
            [v106 addObject:v62];
          }
        }
      }

      v58 = [(NSMutableArray *)v56 countByEnumeratingWithState:&v107 objects:v124 count:16];
    }

    while (v58);
  }

  if ([v106 count])
  {
    v122 = @"SOCDContainers";
    v123 = v106;
    v71 = [NSDictionary dictionaryWithObjects:&v123 forKeys:&v122 count:1];
    v102[2](v102, v71);
  }

  if (qword_100042A28 != -1)
  {
    dispatch_once(&qword_100042A28, &stru_100038E38);
  }

  if (byte_100042A20 == 1)
  {
    if (qword_100042A48 != -1)
    {
      dispatch_once(&qword_100042A48, &stru_100038E78);
    }

    v72 = qword_100042A40;
    if ([v72 count])
    {
      v120 = @"PanicMedicReports";
      v121 = v72;
      v73 = [NSDictionary dictionaryWithObjects:&v121 forKeys:&v120 count:1];
      v102[2](v102, v73);
    }
  }

  v74 = objc_alloc_init(OSABinaryImageCatalog);
  [(PanicReport *)v103 decodeKCDataWithBlock:v102 withTuning:&off_10003C630 usingCatalog:v74];
  v118 = @"binaryImages";
  v75 = [v74 reportUsedImages];
  v119 = v75;
  v76 = [NSDictionary dictionaryWithObjects:&v119 forKeys:&v118 count:1];
  v102[2](v102, v76);

  v77 = OBJC_IVAR___OSAReport__notes;
  [v74 appendNotesTo:*&v103->OSAStackShotReport_opaque[OBJC_IVAR___OSAReport__notes]];
  if (os_variant_has_internal_diagnostics())
  {
    v78 = sub_10000EEA8();
    v80 = v79;
    if ((v78 & 0x100) != 0)
    {
      [*&v103->OSAStackShotReport_opaque[v77] addObject:@"test automation device"];
      if ((v78 & 0x10000) == 0)
      {
LABEL_95:
        if (!v80)
        {
          goto LABEL_97;
        }

        goto LABEL_96;
      }
    }

    else if ((v78 & 0x10000) == 0)
    {
      goto LABEL_95;
    }

    [*&v103->OSAStackShotReport_opaque[v77] addObject:@"intentional panic"];
    if (v80)
    {
LABEL_96:
      v81 = *&v103->OSAStackShotReport_opaque[v77];
      v82 = [NSString stringWithFormat:@"test plan id: %llu", v80];
      [v81 addObject:v82];
    }
  }

LABEL_97:
  if ([*&v103->OSAStackShotReport_opaque[v77] count])
  {
    v83 = *&v103->OSAStackShotReport_opaque[v77];
    v116 = @"notes";
    v117 = v83;
    v84 = [NSDictionary dictionaryWithObjects:&v117 forKeys:&v116 count:1];
    v102[2](v102, v84);
  }

  if (qword_100042A68 != -1)
  {
    dispatch_once(&qword_100042A68, &stru_100038EB8);
  }

  if (byte_100042A60 == 1)
  {
    v102[2](v102, &off_10003C658);
    v85 = qword_100042B28;
    if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "Deleting dumppanic boot-arg...", buf, 2u);
    }

    v86 = sub_10000D4EC();
    v87 = @"dumppanic";
    if (([v86 containsString:@"dumppanic"]& 1) == 0)
    {

LABEL_117:
      goto LABEL_118;
    }

    v88 = [v86 rangeOfString:@"dumppanic"];
    if (v88 == 0x7FFFFFFFFFFFFFFFLL)
    {
      _os_assert_log();
      _os_crash();
      __break(1u);
    }

    v89 = v88;
    v90 = [v86 substringToIndex:v88];
    while (v89 < [v86 length]&& [v86 characterAtIndex:v89]!= 32)
    {
      ++v89;
    }

    v91 = [v86 substringFromIndex:v89];
    v92 = [v90 stringByAppendingString:v91];
    v93 = sub_10000CDB8(@"boot-args", v92);

    if (v93)
    {
      v86 = qword_100042B28;
      if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v86, OS_LOG_TYPE_ERROR, "failed to delete dumppanic in boot-args", buf, 2u);
      }

      goto LABEL_117;
    }
  }

LABEL_118:
}

- (id)parseExtPaniclog
{
  v36 = objc_alloc_init(NSMutableDictionary);
  v37 = objc_alloc_init(NSMutableDictionary);
  v38 = objc_alloc_init(NSMutableDictionary);
  extPaniclog = self->_extPaniclog;
  if (!extPaniclog || [(NSData *)extPaniclog length]- 32769 < 0xFFFF8000)
  {
    goto LABEL_8;
  }

  v4 = [(NSData *)self->_extPaniclog subdataWithRange:0, 4];
  v5 = *[v4 bytes];

  if (v5 != 2)
  {
    v8 = qword_100042B28;
    if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v41 = v5;
      v9 = "Invalid version. Version in paniclog: %d\n";
      goto LABEL_27;
    }

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v6 = [(NSData *)self->_extPaniclog subdataWithRange:4, 4];
  v7 = *[v6 bytes];

  if (v7 > 0x64)
  {
    v8 = qword_100042B28;
    if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v41 = v7;
      v9 = "Invalid no_of_logs %d";
LABEL_27:
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, v9, buf, 8u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (!v7)
  {
    goto LABEL_43;
  }

  v12 = 8;
  while (1)
  {
    v13 = [(PanicReport *)self createUUIDString:v12];
    if (!v13)
    {
      goto LABEL_43;
    }

    v35 = v13;
    v14 = [(NSData *)self->_extPaniclog subdataWithRange:(v12 + 16), 4];
    v15 = v14;
    v16 = *[v14 bytes];

    v17 = strnlen([(NSData *)self->_extPaniclog bytes]+ (v12 + 20), 0x1FuLL);
    v18 = [NSString alloc];
    v19 = [(NSData *)self->_extPaniclog subdataWithRange:(v12 + 20), v17];
    v20 = [v18 initWithData:v19 encoding:4];

    if (!v20)
    {
      v30 = qword_100042B28;
      if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Unable to create Data ID String", buf, 2u);
      }

      v20 = 0;
      goto LABEL_36;
    }

    v21 = v12 + v17 + 21;
    v22 = [(NSData *)self->_extPaniclog subdataWithRange:v21, 4];
    v23 = v22;
    v24 = *[v22 bytes];

    if (v24 > 0x8000)
    {
      v31 = qword_100042B28;
      if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v41 = v24;
        _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Data len is invalid: %d", buf, 8u);
      }

      goto LABEL_36;
    }

    v25 = v21 + 4;
    v26 = [(NSData *)self->_extPaniclog subdataWithRange:v21 + 4, v24];
    v27 = [v26 base64EncodedStringWithOptions:0];

    if (!v27)
    {
      v32 = qword_100042B28;
      if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Unable to create Buffer data string", buf, 2u);
      }

LABEL_36:

      goto LABEL_43;
    }

    v39 = 1;
    [(PanicReport *)self processExtPaniclogFlags:v16 data_id:v20 data:v27 additionalBuffers:v38 addToExtPaniclog:&v39];
    if (v39 != 1)
    {
      goto LABEL_24;
    }

    v28 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v20, @"Data ID", v27, @"Data", 0];
    if (!v28)
    {
      break;
    }

    v29 = [v37 objectForKey:v35];
    if (!v29)
    {
      v29 = objc_alloc_init(NSMutableArray);
      if (!v29)
      {
        v34 = qword_100042B28;
        if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Unable to create array", buf, 2u);
        }

        goto LABEL_42;
      }

      [v37 setObject:v29 forKey:v35];
    }

    [v29 addObject:v28];

LABEL_24:
    v12 = v24 + v25;
    if (!--v7)
    {
      goto LABEL_43;
    }
  }

  v33 = qword_100042B28;
  if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Unable to create Data ID and Data dict", buf, 2u);
  }

LABEL_42:

LABEL_43:
  if ([v37 count])
  {
    [v36 setObject:v37 forKey:@"extPaniclogData"];
  }

  if ([v38 count])
  {
    [v36 setObject:v38 forKey:@"additionalData"];
  }

  if (![v36 count])
  {
    goto LABEL_8;
  }

  v10 = v36;
LABEL_9:

  return v10;
}

- (void)processExtPaniclogFlags:(unsigned int)a3 data_id:(id)a4 data:(id)a5 additionalBuffers:(id)a6 addToExtPaniclog:(BOOL *)a7
{
  if (a3)
  {
    [a6 setObject:a5 forKey:a4];
    *a7 = 0;
  }
}

- (id)createUUIDString:(unsigned int)a3
{
  v5 = [NSUUID alloc];
  v6 = [(NSData *)self->_extPaniclog subdataWithRange:a3, 16];
  v7 = [v5 initWithUUIDBytes:{objc_msgSend(v6, "bytes")}];

  if (v7)
  {
    v8 = [v7 UUIDString];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v12 = qword_100042B28;
      if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
      {
        *v14 = 0;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Unable to create UUID String", v14, 2u);
      }
    }
  }

  else
  {
    v11 = qword_100042B28;
    if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Unable to create UUID object", buf, 2u);
    }

    v9 = 0;
  }

  return v9;
}

- (id)reportNamePrefix
{
  if ([(PanicReport *)self ss_sequence]== -1)
  {
    if (self->_storagePanicData)
    {
      v3 = @"-base+storage_crash";
    }

    else if (self->_socdContainerArray)
    {
      v3 = @"-base+socd";
    }

    else
    {
      v3 = @"-base";
    }
  }

  else
  {
    v3 = @"-full";
  }

  if (self->_isBtnReset)
  {
    v4 = @"forceReset";
  }

  else
  {
    v4 = @"panic";
  }

  return [NSString stringWithFormat:@"%@%@", v4, v3];
}

- (id)problemType
{
  if (qword_100042A68 != -1)
  {
    dispatch_once(&qword_100042A68, &stru_100038EB8);
  }

  if (byte_100042A60)
  {
    v3 = @"410";
  }

  else
  {
    if (self->_isBtnReset)
    {
      v4 = @"151";
    }

    else
    {
      v4 = @"210";
    }

    v3 = v4;
  }

  return v3;
}

- (id)additionalIPSMetadata
{
  v3 = [(PanicReport *)self incidentID];
  v4 = [NSMutableDictionary dictionaryWithObject:v3 forKey:kOSALogMetadataIncidentID];

  v5 = [(PanicReport *)self getBuildVersionString];
  [v4 setObject:v5 forKeyedSubscript:@"os_version"];

  v6 = self->_rootsInstalled;
  if (v6 || (v10 = 8, v11 = 0, !sysctlbyname("kern.roots_installed", &v11, &v10, 0, 0)) && ([NSNumber numberWithUnsignedLongLong:v11], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    [v4 setObject:v6 forKeyedSubscript:@"roots_installed"];
  }

  if ((+[OSAReport isSecurityResearchDeviceERM]& 1) != 0)
  {
    v8 = &off_10003C4A8;
  }

  else
  {
    if (!self->_isMTEPanic)
    {
      goto LABEL_9;
    }

    v8 = &off_10003C4C0;
  }

  [v4 setObject:v8 forKeyedSubscript:@"sroute_id"];
LABEL_9:

  return v4;
}

- (id)getBuildVersionString
{
  v3 = +[OSASystemConfiguration sharedInstance];
  v4 = [v3 productNameVersionBuildString];

  if ([(NSString *)self->_buildVersion length])
  {
    v5 = +[OSASystemConfiguration sharedInstance];
    v6 = [v5 productName];
    v7 = [NSString stringWithFormat:@"%@ %@", v6, self->_buildVersion];

    v4 = v7;
  }

  return v4;
}

- (void)setUtilizationInfo:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_utilizationInfo, a3);
    v5 = v6;
  }
}

- (void)setSOCIdAndRev
{
  sub_10000C250("chosen", "chip-id", &self->_socId);

  sub_10000C250("arm-io", "chip-revision", &self->_socRev);
}

- (PanicReport)initWithPanicString:(id)a3 otherString:(id)a4 buildVersion:(id)a5 panicFlags:(unint64_t)a6 panicType:(id)a7 incidentID:(id)a8 rootsInstalled:(id)a9
{
  v16 = a3;
  v17 = a4;
  v45 = a5;
  v18 = a7;
  v19 = a8;
  v44 = a9;
  v47 = 0;
  v20 = [(PanicReport *)self initForPid:0 process:0 withReason:0 exceptionCode:&v47 exceptionCodeCount:1 stackshotFlags:0];
  v21 = v20;
  if (v20)
  {
    if (v19)
    {
      [(PanicReport *)v20 setIncidentID:v19];
    }

    objc_storeStrong(&v21->_panicString, a3);
    objc_storeStrong(&v21->_otherString, a4);
    objc_storeStrong(&v21->_buildVersion, a5);
    v21->_panicFlags = a6;
    v21->_isBtnReset = (a6 & 0x80) != 0;
    v43 = v18;
    v21->_isInterruptedCoredump = [v18 isEqual:@"interrupted coredump panic"];
    objc_storeStrong(&v21->_rootsInstalled, a9);
    v21->_panicProcessingFlags = 0;
    v22 = v16;
    v23 = v16;
    if (![v23 containsString:@"esr: "] || (v24 = objc_msgSend(v23, "rangeOfString:", @"esr: "), v24 == 0x7FFFFFFFFFFFFFFFLL) || (v25 = v24, v26 = objc_msgSend(@"esr: ", "length"), objc_msgSend(v23, "substringFromIndex:", &v25[v26]), v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "rangeOfString:", @" "), v27, v28 == 0x7FFFFFFFFFFFFFFFLL))
    {
      v29 = 0;
    }

    else
    {
      v41 = [v23 substringWithRange:{&v25[v26], v28}];
      v48 = 0;
      sscanf([v41 UTF8String], "%x", &v48);
      v42 = v48;

      v29 = (v42 & 0xFC00003F) == -1811939311;
    }

    v21->_isMTEPanic = v29;
    v16 = v22;
    v18 = v43;
    if (&_AnalyticsSendEventLazy)
    {
      if (v21->_isBtnReset)
      {
        AnalyticsSendEventLazy();
      }

      else
      {
        v46 = v43;
        AnalyticsSendEventLazy();
      }
    }

    socdContainerArray = v21->_socdContainerArray;
    v21->_socdContainerArray = 0;

    socdNandContainer = v21->_socdNandContainer;
    v21->_socdNandContainer = 0;

    extPaniclog = v21->_extPaniclog;
    v21->_extPaniclog = 0;

    panicInitiator = v21->_panicInitiator;
    v21->_panicInitiator = 0;

    foregroundAppHash = v21->_foregroundAppHash;
    v21->_foregroundAppHash = 0;

    v21->_foregroundAppHashSet = 0;
    utilizationInfo = v21->_utilizationInfo;
    v21->_utilizationInfo = 0;

    appleCareDetails = v21->_appleCareDetails;
    v21->_appleCareDetails = 0;

    biomeProperties = v21->_biomeProperties;
    v21->_biomeProperties = 0;

    patternType = v21->_patternType;
    v21->_patternType = 0;

    patternUUID = v21->_patternUUID;
    v21->_patternUUID = 0;
  }

  return v21;
}

@end