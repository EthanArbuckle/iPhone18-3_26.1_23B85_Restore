@interface PRSharingChoice
- (PRSharingChoice)init;
- (PRSharingChoice)initWithQueue:(id)queue;
- (id).cxx_construct;
- (void)addBluetoothProximityEstimate:(NeighborMeasurements *)estimate currentMachContTime:;
- (void)addRoseSolutions:(id)solutions currentMachContTime:(double)time;
- (void)createEstimators;
- (void)reportScoresToClientAlways:(BOOL)always useUpdatedScoreList:(BOOL)list currentMachContTime:(double)time;
- (void)updateScoresForTime:(double)time;
- (void)updateScoresWithNewMeasurement:(const void *)measurement;
@end

@implementation PRSharingChoice

- (PRSharingChoice)init
{
  [(PRSharingChoice *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PRSharingChoice)initWithQueue:(id)queue
{
  queueCopy = queue;
  v19.receiver = self;
  v19.super_class = PRSharingChoice;
  v6 = [(PRSharingChoice *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    *&v7->_useRegionBasedEstimator = 0;
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    scores = v7->_scores;
    v7->_scores = v8;

    __asm { FMOV            V0.2D, #-1.0 }

    *&v7->_lastScoreReportMachContinuousTime = _Q0;
    lastBigHeadMacAddress = v7->_lastBigHeadMacAddress;
    v7->_lastBigHeadMacAddress = 0;

    v16 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"score" ascending:0];
    scoreSortDescriptor = v7->_scoreSortDescriptor;
    v7->_scoreSortDescriptor = v16;
  }

  return v7;
}

- (void)createEstimators
{
  if (!self->_estimatorRangeOnly.__ptr_)
  {
    logger = self->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_230EB5000, logger, OS_LOG_TYPE_DEFAULT, "Initializing SharingImportanceManager", v3, 2u);
    }

    operator new();
  }
}

- (void)addRoseSolutions:(id)solutions currentMachContTime:(double)time
{
  timeCopy = time;
  v104 = *MEMORY[0x277D85DE8];
  solutionsCopy = solutions;
  selfCopy = self;
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
    *(buf.__r_.__value_.__r.__words + 4) = timeCopy;
    _os_log_impl(&dword_230EB5000, logger, OS_LOG_TYPE_DEFAULT, "addRoseSolutions: current mach continuous time %lf", &buf, 0xCu);
  }

  v79[0] = 0;
  v79[1] = 0;
  v78 = v79;
  v6 = selfCopy->_logger;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [solutionsCopy count];
    LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
    *(buf.__r_.__value_.__r.__words + 4) = v7;
    _os_log_impl(&dword_230EB5000, v6, OS_LOG_TYPE_DEFAULT, "PRSharingSession: Got %lu solutions", &buf, 0xCu);
  }

  v77 = 0u;
  v75 = 0u;
  v76 = 0u;
  v74 = 0u;
  v8 = solutionsCopy;
  v9 = [v8 countByEnumeratingWithState:&v74 objects:v103 count:16];
  if (v9)
  {
    v10 = *v75;
    do
    {
      v11 = 0;
      do
      {
        if (*v75 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v74 + 1) + 8 * v11);
        mac_addr = [v12 mac_addr];
        __str.__r_.__value_.__r.__words[0] = mac_addr;
        v14 = v79[0];
        if (!v79[0])
        {
          goto LABEL_18;
        }

        v15 = v79;
        do
        {
          v16 = v14[4];
          v17 = v16 >= mac_addr;
          v18 = v16 < mac_addr;
          if (v17)
          {
            v15 = v14;
          }

          v14 = v14[v18];
        }

        while (v14);
        if (v15 != v79 && mac_addr >= v15[4])
        {
          if ([v12 variant] == 1)
          {
            buf.__r_.__value_.__r.__words[0] = &__str;
            *(std::__tree<std::__value_type<unsigned long long,BOOL>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,BOOL>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,BOOL>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&v78, &__str) + 40) = 1;
          }
        }

        else
        {
LABEL_18:
          variant = [v12 variant];
          buf.__r_.__value_.__r.__words[0] = &__str;
          *(std::__tree<std::__value_type<unsigned long long,BOOL>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,BOOL>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,BOOL>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&v78, &__str) + 40) = variant == 1;
        }

        ++v11;
      }

      while (v11 != v9);
      v20 = [v8 countByEnumeratingWithState:&v74 objects:v103 count:16];
      v9 = v20;
    }

    while (v20);
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = v8;
  v21 = [obj countByEnumeratingWithState:&v70 objects:v102 count:16];
  if (v21)
  {
    v22 = *v71;
    v67 = vdupq_n_s64(0x7FF4000000000000uLL);
    do
    {
      v23 = 0;
      v64 = v21;
      do
      {
        if (*v71 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v70 + 1) + 8 * v23);
        if ([v24 variant] == 1 || (__str.__r_.__value_.__r.__words[0] = objc_msgSend(v24, "mac_addr"), buf.__r_.__value_.__r.__words[0] = &__str, (std::__tree<std::__value_type<unsigned long long,BOOL>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,BOOL>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,BOOL>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&v78, &__str)[5] & 1) == 0))
        {
          __str.__r_.__value_.__r.__words[0] = [v24 mac_addr];
          buf.__r_.__value_.__r.__words[0] = &__str;
          if ((std::__tree<std::__value_type<unsigned long long,BOOL>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,BOOL>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,BOOL>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&v78, &__str)[5] & 1) == 0)
          {
            v25 = selfCopy->_logger;
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              mac_addr2 = [v24 mac_addr];
              LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
              *(buf.__r_.__value_.__r.__words + 4) = mac_addr2;
              _os_log_impl(&dword_230EB5000, v25, OS_LOG_TYPE_DEFAULT, "PRSharingSession: Using raw measurement solution for MAC: 0x%016llx", &buf, 0xCu);
            }
          }

          if ([v24 variant] == 1)
          {
            v27 = selfCopy->_logger;
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              mac_addr3 = [v24 mac_addr];
              LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
              *(buf.__r_.__value_.__r.__words + 4) = mac_addr3;
              _os_log_impl(&dword_230EB5000, v27, OS_LOG_TYPE_DEFAULT, "PRSharingSession: Using sensor-fused measurement solution for MAC: 0x%016llx", &buf, 0xCu);
            }
          }

          v29 = selfCopy->_logger;
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            mac_addr4 = [v24 mac_addr];
            [v24 mach_absolute_time_sec];
            v66 = v31;
            if ([v24 mach_continuous_time_valid])
            {
              v32 = "true";
            }

            else
            {
              v32 = "false";
            }

            [v24 mach_continuous_time_sec];
            v34 = v33;
            [v24 range_m];
            v36 = v35;
            [v24 range_unc_m];
            v38 = v37;
            if ([v24 az_valid])
            {
              v39 = "true";
            }

            else
            {
              v39 = "false";
            }

            [v24 az_deg];
            v41 = v40;
            [v24 az_unc_deg];
            v43 = v42;
            if ([v24 el_valid])
            {
              v44 = "true";
            }

            else
            {
              v44 = "false";
            }

            [v24 el_deg];
            v46 = v45;
            [v24 el_unc_deg];
            v48 = v47;
            [v24 fov_confidence];
            v50 = v49;
            antenna_type = [v24 antenna_type];
            v52 = v22;
            v53 = @"InvalidEnumValue";
            if (antenna_type <= 4)
            {
              v53 = off_2788F40D8[antenna_type];
            }

            uTF8String = [(__CFString *)v53 UTF8String];
            soi_rssi_valid = [v24 soi_rssi_valid];
            [v24 soi_rssi_dbm];
            LODWORD(buf.__r_.__value_.__l.__data_) = 134221826;
            v57 = "false";
            if (soi_rssi_valid)
            {
              v57 = "true";
            }

            *(buf.__r_.__value_.__r.__words + 4) = mac_addr4;
            WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = v66;
            HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
            v81 = v32;
            v82 = 2048;
            *v83 = v34;
            *&v83[8] = 2048;
            *&v83[10] = v36;
            *&v83[18] = 2048;
            *&v83[20] = v38;
            *&v83[28] = 2080;
            v84 = v39;
            *v85 = 2048;
            *&v85[2] = v41;
            v86 = 2048;
            v87 = v43;
            v88 = 2080;
            v89 = v44;
            v90 = 2048;
            v91 = v46;
            v92 = 2048;
            v93 = v48;
            v94 = 2048;
            v95 = v50;
            v96 = 2080;
            v97 = uTF8String;
            v98 = 2080;
            v99 = v57;
            v100 = 2048;
            v101 = v56;
            _os_log_impl(&dword_230EB5000, v29, OS_LOG_TYPE_DEFAULT, "PRSharingSession: new PRRoseSolution sent to estimator:\n MAC: 0x%016llx\n MAT: %f\n MCT_valid: %s\n MCT: %f\n range: %f\n range_unc: %f\n az_valid: %s\n az_deg: %f\n az_deg_unc: %f\n el_valid: %s\n el_deg: %f\n el_deg_unc: %f\n fov_confidence: %f\n antenna_type: %s\n soi_rssi_valid: %s\n soi_rssi_dbm: %f", &buf, 0xA2u);
            v22 = v52;
            v21 = v64;
          }

          +[PRSharingSessionHelper UIntToHexString:len:](PRSharingSessionHelper, "UIntToHexString:len:", [v24 mac_addr], 6);
          memset(&buf, 0, sizeof(buf));
          v81 = 0x7FF4000000000000;
          v82 = 0;
          *&v83[6] = v67;
          v83[22] = 0;
          *&v83[26] = 3;
          LOBYTE(v84) = 0;
          *v85 = 0x7FF4000000000000;
          *&v85[8] = 0;
          std::string::operator=(&buf, &__str);
          [v24 mach_absolute_time_sec];
          v81 = v58;
          LOBYTE(v82) = 1;
          [v24 range_m];
          *&v83[6] = v59;
          LOBYTE(v84) = [v24 soi_rssi_valid];
          [v24 soi_rssi_dbm];
          *v85 = v60;
          HIBYTE(v82) = 0;
          *&v83[14] = 0xC00921FB54442D18;
          v83[22] = 0;
          *&v83[26] = 3;
          *&v85[8] = 0;
          [(PRSharingChoice *)selfCopy updateScoresWithNewMeasurement:&buf];
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }
        }

        ++v23;
      }

      while (v21 != v23);
      v21 = [obj countByEnumeratingWithState:&v70 objects:v102 count:16];
    }

    while (v21);
  }

  [(PRSharingChoice *)selfCopy reportScoresToClientAlways:0 useUpdatedScoreList:1 currentMachContTime:timeCopy];
  std::__tree<Region>::destroy(&v78, v79[0]);

  v61 = *MEMORY[0x277D85DE8];
}

- (void)addBluetoothProximityEstimate:(NeighborMeasurements *)estimate currentMachContTime:
{
  v4 = v3;
  v11 = *MEMORY[0x277D85DE8];
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    v10 = v4;
    _os_log_impl(&dword_230EB5000, logger, OS_LOG_TYPE_DEFAULT, "addBluetoothProximityEstimate: current mach continuous time %lf", &v9, 0xCu);
  }

  [(PRSharingChoice *)self updateScoresWithNewMeasurement:estimate];
  [(PRSharingChoice *)self reportScoresToClientAlways:0 useUpdatedScoreList:1 currentMachContTime:v4];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)reportScoresToClientAlways:(BOOL)always useUpdatedScoreList:(BOOL)list currentMachContTime:(double)time
{
  v84[1] = *MEMORY[0x277D85DE8];
  alwaysCopy = always;
  if (!always && !list)
  {
    goto LABEL_74;
  }

  if (!always || list || !self->_newScoresHandler || ![(NSArray *)self->_lastReportedScores count])
  {
    if (self->_lastScoreReportMachContinuousTime + 0.05 > time && !alwaysCopy)
    {
      goto LABEL_74;
    }

    allValues = [(NSMutableDictionary *)self->_scores allValues];
    v84[0] = self->_scoreSortDescriptor;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v84 count:1];
    v13 = [allValues sortedArrayUsingDescriptors:v12];
    v14 = [v13 mutableCopy];

    v15 = 0;
    v16 = 0;
    while ([v14 count] > v15)
    {
      v17 = [v14 objectAtIndex:v15];
      angle = [v17 angle];
      v19 = angle != 0;

      v16 += v19;
      ++v15;
    }

    if (v16)
    {
      v20 = 0;
      v21 = -1;
      v22 = -1.0;
      while ([v14 count] > v20)
      {
        v23 = [v14 objectAtIndex:v20];
        angle2 = [v23 angle];
        v25 = angle2 == 0;

        if (!v25)
        {
          [v23 score];
          if (v22 >= v26)
          {
            [v23 score];
            if (v22 == v28)
            {
              v29 = self->_logger;
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                [v23 score];
                *buf = 134217984;
                v79 = v30;
                _os_log_impl(&dword_230EB5000, v29, OS_LOG_TYPE_DEFAULT, "Big Head Selection: multiple candidates with same score %f!", buf, 0xCu);
              }

              v21 = -1;
            }
          }

          else
          {
            [v23 score];
            v22 = v27;
            v21 = v20;
          }
        }

        ++v20;
      }

      v31 = (v21 & 0x80000000) == 0;
      if (v16 != 1 && (v21 & 0x80000000) == 0)
      {
        v32 = [v14 objectAtIndex:v21];
        v33 = self->_logger;
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          btAddress = [v32 btAddress];
          [v32 score];
          *buf = 138412546;
          v79 = btAddress;
          v80 = 2048;
          v81 = v35;
          _os_log_impl(&dword_230EB5000, v33, OS_LOG_TYPE_DEFAULT, "Big Head Selection: selected big head device %@ with score %f", buf, 0x16u);
        }

        v31 = 1;
      }

      v75 = v31;
    }

    else
    {
      v75 = 0;
      v21 = -1;
    }

    v36 = 0;
    v37 = v21;
    while ([v14 count] > v36)
    {
      v38 = [v14 objectAtIndex:v36];
      angle3 = [v38 angle];
      if (angle3)
      {
        v40 = v37 == v36;
      }

      else
      {
        v40 = 1;
      }

      v41 = !v40;

      if (v41)
      {
        v42 = self->_logger;
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          angle4 = [v38 angle];
          [angle4 measurement];
          v45 = v44;
          btAddress2 = [v38 btAddress];
          [v38 score];
          *buf = 134218498;
          v79 = v45;
          v80 = 2112;
          v81 = btAddress2;
          v82 = 2048;
          v83 = v47;
          _os_log_impl(&dword_230EB5000, v42, OS_LOG_TYPE_DEFAULT, "Big Head Selection: nil out angle %f for device %@ with score %f (II)", buf, 0x20u);
        }

        v48 = [PRDeviceScore alloc];
        btAddress3 = [v38 btAddress];
        proximity = [v38 proximity];
        range = [v38 range];
        [v38 score];
        v53 = v52;
        [v38 scoreUncertainty];
        v55 = [(PRDeviceScore *)v48 initWithValues:btAddress3 proximity:proximity range:range angle:0 score:v53 scoreUncertainty:v54];

        [v38 timestamp];
        [(PRDeviceScore *)v55 setTimestamp:?];
        [v14 replaceObjectAtIndex:v36 withObject:v55];
      }

      ++v36;
    }

    if (v75)
    {
      v56 = [v14 objectAtIndex:v37];
      [v56 btAddress];
      obj = p_lastBigHeadMacAddress = &self->_lastBigHeadMacAddress;
      if (([obj isEqual:self->_lastBigHeadMacAddress] & 1) == 0)
      {
        if (self->_lastBigHeadFirstReportTime + 0.5 > time)
        {
          if (alwaysCopy && self->_newScoresHandler)
          {
            logger = self->_logger;
            if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
            {
              v59 = *p_lastBigHeadMacAddress;
              *buf = 138412802;
              v79 = v59;
              v80 = 2048;
              v81 = 0x3FE0000000000000;
              v82 = 2112;
              v83 = obj;
              _os_log_impl(&dword_230EB5000, logger, OS_LOG_TYPE_DEFAULT, "Big Head Selection: last big head %@ less than %f second(s), reporting previously reported big head %@", buf, 0x20u);
            }

            lastReportedScores = self->_lastReportedScores;
            (*(self->_newScoresHandler + 2))();
          }

          else
          {
            v72 = self->_logger;
            if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
            {
              v73 = *p_lastBigHeadMacAddress;
              *buf = 138412802;
              v79 = v73;
              v80 = 2048;
              v81 = 0x3FE0000000000000;
              v82 = 2112;
              v83 = obj;
              _os_log_impl(&dword_230EB5000, v72, OS_LOG_TYPE_DEFAULT, "Big Head Selection: last big head %@ less than %f second(s), skip reporting current big head %@", buf, 0x20u);
            }
          }

LABEL_73:
LABEL_74:
          v74 = *MEMORY[0x277D85DE8];
          return;
        }

        self->_lastBigHeadFirstReportTime = time;
        objc_storeStrong(&self->_lastBigHeadMacAddress, obj);
      }
    }

    else
    {
      obj = 0;
    }

    v61 = [v14 count];
    if (v61 == [(NSArray *)self->_lastReportedScores count])
    {
      v62 = 0;
      while ([v14 count] > v62)
      {
        v63 = [v14 objectAtIndex:v62];
        v64 = [(NSArray *)self->_lastReportedScores objectAtIndex:v62];
        btAddress4 = [v63 btAddress];
        btAddress5 = [v64 btAddress];
        v67 = [btAddress4 isEqual:btAddress5];

        if ((v67 & 1) == 0)
        {

          goto LABEL_68;
        }

        angle5 = [v63 angle];
        angle6 = [v64 angle];
        v70 = angle6 != 0;

        ++v62;
        if ((((angle5 == 0) ^ v70) & 1) == 0)
        {
          goto LABEL_68;
        }
      }

      if (alwaysCopy)
      {
        goto LABEL_68;
      }
    }

    else
    {
LABEL_68:
      self->_lastScoreReportMachContinuousTime = time;
      objc_storeStrong(&self->_lastReportedScores, v14);
      newScoresHandler = self->_newScoresHandler;
      if (newScoresHandler)
      {
        newScoresHandler[2](newScoresHandler, v14);
      }
    }

    goto LABEL_73;
  }

  v7 = self->_lastReportedScores;
  v8 = *(self->_newScoresHandler + 2);
  v9 = *MEMORY[0x277D85DE8];

  v8();
}

- (void)updateScoresForTime:(double)time
{
  v21[0] = 0;
  v21[1] = 0;
  v20 = v21;
  SharingImportanceManager::getImportanceEstimates(self->_estimatorRangeOnly.__ptr_, &v20, time);
  v5 = objc_alloc(MEMORY[0x277CBEB18]);
  allKeys = [(NSMutableDictionary *)self->_scores allKeys];
  v7 = [v5 initWithArray:allKeys];

  v8 = v20;
  if (v20 != v21)
  {
    do
    {
      v9 = [PRSharingSessionHelper convertMacStringToNSData:v8 + 4];
      v10 = [PRSharingSessionHelper reverseNSData:v9];

      if (v8[9])
      {
        v11 = *(v8 + 7);
        v12 = *(v8 + 8);
        v13 = *(v8 + 26);
        if (v8[11])
        {
          v14 = [PRRangeMeasurement measurementWithRange:*(v8 + 12) uncertainty:0.0];
        }

        else
        {
          v14 = 0;
        }

        v15 = [[PRDeviceScore alloc] initWithValues:v10 proximity:[PRSharingSessionHelper CoarseRangeToProx:?]score:v14 scoreUncertainty:0, v11, v12];
        [(NSMutableDictionary *)self->_scores setObject:v15 forKeyedSubscript:v10];

        v16 = [(NSMutableDictionary *)self->_scores objectForKeyedSubscript:v10];
        [v16 setTimestamp:time];

        [v7 removeObject:v10];
      }

      v17 = v8[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v8[2];
          v19 = *v18 == v8;
          v8 = v18;
        }

        while (!v19);
      }

      v8 = v18;
    }

    while (v18 != v21);
  }

  [(NSMutableDictionary *)self->_scores removeObjectsForKeys:v7];

  std::__tree<std::__value_type<std::string,NeighborImportanceEstimate>,std::__map_value_compare<std::string,std::__value_type<std::string,NeighborImportanceEstimate>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,NeighborImportanceEstimate>>>::destroy(&v20, v21[0]);
}

- (void)updateScoresWithNewMeasurement:(const void *)measurement
{
  v10 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  std::vector<NeighborMeasurements>::push_back[abi:ne200100](&self->_measurements, measurement);
  SharingImportanceManager::handleMeasurements(self->_estimatorRangeOnly.__ptr_, &self->_measurements);
  std::vector<NeighborMeasurements>::clear[abi:ne200100](&self->_measurements);
  [(PRSharingChoice *)self updateScoresForTime:*(measurement + 3)];
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(measurement + 3);
    v8 = 134217984;
    v9 = v6;
    _os_log_impl(&dword_230EB5000, logger, OS_LOG_TYPE_DEFAULT, "measurement time %lf", &v8, 0xCu);
  }

  kdebug_trace();
  v7 = *MEMORY[0x277D85DE8];
}

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 8) = 0;
  *(self + 9) = 0;
  *(self + 11) = 0;
  return self;
}

@end