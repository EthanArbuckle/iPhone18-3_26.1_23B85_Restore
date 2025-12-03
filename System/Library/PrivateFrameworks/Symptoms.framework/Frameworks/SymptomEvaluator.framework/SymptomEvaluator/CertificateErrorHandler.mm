@interface CertificateErrorHandler
+ (id)configureClass:(id)class;
+ (id)sharedInstance;
- (BOOL)allowNotifyingCaptivityAt:(double)at;
- (BOOL)allowNotifyingOutrankAt:(double)at;
- (BOOL)noteSymptom:(id)symptom;
- (CertificateErrorHandler)init;
- (id)evaluate:(id)evaluate forThreshold:(int64_t)threshold;
- (int)configureInstance:(id)instance;
- (int)read:(id)read returnedValues:(id)values;
- (void)_reset:(id)_reset;
- (void)restoreDefaults;
- (void)setConfiguration:(id)configuration;
- (void)storeMaintenance;
@end

@implementation CertificateErrorHandler

- (void)restoreDefaults
{
  *&self->_dampeningCurrentInterval = vdupq_n_s64(0x404E800000000000uLL);
  *&self->_dampeningIncrement = xmmword_232816850;
  *&self->_outrankEventGraceTime = xmmword_232816860;
  *&self->_threshold = 0x300000003;
  self->_outrankOriginThreshold = 2;
}

- (CertificateErrorHandler)init
{
  v14.receiver = self;
  v14.super_class = CertificateErrorHandler;
  v2 = [(CertificateErrorHandler *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    banned = v2->_banned;
    v2->_banned = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    stores = v2->_stores;
    v2->_stores = v5;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __31__CertificateErrorHandler_init__block_invoke;
    v12[3] = &unk_27898A690;
    v8 = v2;
    v13 = v8;
    v9 = [defaultCenter addObserverForName:@"kNotificationNewPrimaryInterface" object:0 queue:0 usingBlock:v12];
    resetObserver = v8->_resetObserver;
    v8->_resetObserver = v9;

    [(CertificateErrorHandler *)v8 restoreDefaults];
  }

  return v2;
}

void __31__CertificateErrorHandler_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__CertificateErrorHandler_init__block_invoke_2;
  v5[3] = &unk_27898A7D0;
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__CertificateErrorHandler_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_pred_3 != -1)
  {
    dispatch_once(&sharedInstance_pred_3, block);
  }

  v2 = sharedInstance_sharedInstance_3;

  return v2;
}

void __41__CertificateErrorHandler_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_3;
  sharedInstance_sharedInstance_3 = v1;

  v3 = sharedInstance_sharedInstance_3;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [ConfigurationHandler setConfigurationObject:v3 forName:v5];
}

+ (id)configureClass:(id)class
{
  classCopy = class;
  v4 = +[CertificateErrorHandler sharedInstance];
  [v4 configureInstance:classCopy];

  return v4;
}

- (BOOL)allowNotifyingOutrankAt:(double)at
{
  v28 = *MEMORY[0x277D85DE8];
  if (self->_captivityReportingDisabled)
  {
    LOBYTE(nonIdle) = 1;
  }

  else
  {
    lastCaptivityReportTime = self->_lastCaptivityReportTime;
    if (lastCaptivityReportTime <= 0.0)
    {
      LOBYTE(nonIdle) = 0;
    }

    else
    {
      v6 = lastCaptivityReportTime + self->_outrankEventGraceTime;
      v7 = lastCaptivityReportTime + self->_outrankEventMaxTime;
      v8 = +[CellOutrankHandler sharedInstance];
      v9 = v8;
      if (v6 >= at || v7 <= at)
      {
        nonIdle = 0;
      }

      else
      {
        nonIdle = [v8 nonIdle];
      }

      v11 = evaluationLogHandle;
      if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v12 = v11;
        v15[0] = 67110656;
        v15[1] = nonIdle;
        v16 = 2048;
        atCopy = at;
        v18 = 2048;
        v19 = v6;
        v20 = 2048;
        v21 = v7;
        v22 = 2048;
        v23 = v6 - at;
        v24 = 2048;
        v25 = v7 - at;
        v26 = 1024;
        nonIdle2 = [v9 nonIdle];
        _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEBUG, "CertificateErrorHandler: allowNotifyingOutrankAt: ret %d from now %.3f allow from %.3f to %.3f (delta %.3f to %.3f) outrank nonidle %d", v15, 0x40u);
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return nonIdle;
}

- (BOOL)allowNotifyingCaptivityAt:(double)at
{
  v31 = *MEMORY[0x277D85DE8];
  lastCaptivityReportTime = self->_lastCaptivityReportTime;
  v6 = lastCaptivityReportTime + self->_outrankEventGraceTime;
  v7 = lastCaptivityReportTime + self->_outrankEventMaxTime;
  if (self->_captivityReportingDisabled)
  {
    v8 = 0;
  }

  else if (lastCaptivityReportTime == 0.0)
  {
    v8 = 1;
  }

  else
  {
    v9 = +[CellOutrankHandler sharedInstance];
    v10 = [v9 nonIdle] ^ 1;
    if (v6 >= at)
    {
      v10 = 1;
    }

    if (v7 <= at)
    {
      v8 = 1;
    }

    else
    {
      v8 = v10;
    }
  }

  v11 = evaluationLogHandle;
  if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
  {
    captivityReportingDisabled = self->_captivityReportingDisabled;
    v13 = self->_lastCaptivityReportTime;
    v14 = v11;
    v15 = +[CellOutrankHandler sharedInstance];
    v18[0] = 67110656;
    v18[1] = v8;
    v19 = 1024;
    v20 = captivityReportingDisabled;
    v21 = 2048;
    v22 = v13;
    v23 = 2048;
    atCopy = at;
    v25 = 2048;
    v26 = v6;
    v27 = 2048;
    v28 = v7;
    v29 = 1024;
    nonIdle = [v15 nonIdle];
    _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEBUG, "CertificateErrorHandler: allowNotifyingCaptivityAt: ret %d disabled %d _lastCaptivityReportTime %.3f from now %.3ff allow from %.3f to %.3f nonidle %d", v18, 0x3Cu);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)storeMaintenance
{
  v37 = *MEMORY[0x277D85DE8];
  allKeys = [(NSMutableDictionary *)self->_stores allKeys];
  v32.tv_sec = 0;
  *&v32.tv_usec = 0;
  gettimeofday(&v32, 0);
  tv_sec = v32.tv_sec;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = allKeys;
  v26 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v26)
  {
    v23 = 0;
    v27 = 0;
    v25 = *v29;
    *&v5 = 138412290;
    v22 = v5;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v29 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v28 + 1) + 8 * i);
        v8 = [(NSMutableDictionary *)self->_stores objectForKeyedSubscript:v7, v22];
        if ([v8 count] > self->_maxCount)
        {
          v9 = evaluationLogHandle;
          if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
          {
            v10 = v9;
            v11 = [v8 count];
            maxCount = self->_maxCount;
            *buf = 138412802;
            *v34 = v7;
            *&v34[8] = 1024;
            LODWORD(v35) = v11;
            WORD2(v35) = 1024;
            *(&v35 + 6) = maxCount;
            _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "CertificateErrorHandler: remove cert error from history for %@: too many, count %d max %d", buf, 0x18u);
          }

          [v8 removeObjectAtIndex:0];
        }

        while ([v8 count])
        {
          v13 = [v8 objectAtIndex:0];
          v14 = (tv_sec - *([v13 eventData] + 8));
          v15 = evaluationLogHandle;
          if (v14 <= self->_maxAge)
          {
            if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
            {
              *buf = v22;
              *v34 = v7;
              _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEBUG, "CertificateErrorHandler: No more old cert error events in history for %@", buf, 0xCu);
            }

            break;
          }

          if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_INFO))
          {
            maxAge = self->_maxAge;
            *buf = 138412802;
            *v34 = v7;
            *&v34[8] = 2048;
            *&v35 = v14;
            WORD4(v35) = 1024;
            *(&v35 + 10) = maxAge;
            _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_INFO, "CertificateErrorHandler: remove cert error from history for %@: too old (%lld secs), retain time %d", buf, 0x1Cu);
          }

          [v8 removeObjectAtIndex:0];
        }

        if ([v8 count])
        {
          v17 = [v8 count];
          v18 = [(NSMutableDictionary *)self->_banned objectForKey:v7];

          if (!v18)
          {
            v23 += [v8 count];
          }

          LODWORD(v27) = v27 + v17;
          ++HIDWORD(v27);
        }

        else
        {
          [(NSMutableDictionary *)self->_stores setObject:0 forKeyedSubscript:v7];
        }
      }

      v26 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v26);
  }

  else
  {
    v23 = 0;
    v27 = 0;
  }

  self->_numCerts = v27;
  self->_numNonBannedCerts = v23;
  self->_numCertOrigins = HIDWORD(v27);
  v19 = evaluationLogHandle;
  if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
  {
    stores = self->_stores;
    *buf = 67109890;
    *v34 = v27;
    *&v34[4] = 1024;
    *&v34[6] = v23;
    LOWORD(v35) = 1024;
    *(&v35 + 2) = HIDWORD(v27);
    WORD3(v35) = 2112;
    *(&v35 + 1) = stores;
    _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEBUG, "CertificateErrorHandler: storeMaintenance certs %d nonBanned %d origins %d store %@", buf, 0x1Eu);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)evaluate:(id)evaluate forThreshold:(int64_t)threshold
{
  v74 = *MEMORY[0x277D85DE8];
  evaluateCopy = evaluate;
  eventData = [evaluateCopy eventData];
  if (self->_threshold != threshold)
  {
    v8 = evaluationLogHandle;
    if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
    {
      threshold = self->_threshold;
      *buf = 134218240;
      *v72 = threshold;
      *&v72[8] = 1024;
      *&v72[10] = threshold;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, "CertificateErrorHandler: override threshold %ld with %d", buf, 0x12u);
    }

    threshold = self->_threshold;
  }

  v10 = evaluationLogHandle;
  if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    processName = [evaluateCopy processName];
    v13 = eventData[3];
    v14 = eventData[4];
    v15 = eventData[5];
    v16 = eventData[6];
    *buf = 136316162;
    *v72 = processName;
    *&v72[8] = 2048;
    *&v72[10] = v13;
    *&v72[18] = 2048;
    *&v72[20] = v14;
    *&v72[28] = 2048;
    *&v72[30] = v15;
    *&v72[38] = 2048;
    v73 = v16;
    _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_INFO, "CERT_ERROR from %s, domain %lld error %lld  num attempts %lld num symptoms %lld", buf, 0x34u);
  }

  if ([evaluateCopy processName])
  {
    v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:{objc_msgSend(evaluateCopy, "processName")}];
    if (v17)
    {
      goto LABEL_12;
    }

    v18 = evaluationLogHandle;
    if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_ERROR))
    {
      v19 = v18;
      processName2 = [evaluateCopy processName];
      v21 = eventData[3];
      v22 = eventData[4];
      v23 = eventData[5];
      v24 = eventData[6];
      *buf = 136316162;
      *v72 = processName2;
      *&v72[8] = 2048;
      *&v72[10] = v21;
      *&v72[18] = 2048;
      *&v72[20] = v22;
      *&v72[28] = 2048;
      *&v72[30] = v23;
      *&v72[38] = 2048;
      v73 = v24;
      _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_ERROR, "CERT_ERROR with non-UTF8 name from %s, domain %lld error %lld  num attempts %lld num symptoms %lld", buf, 0x34u);
    }

    v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%s", objc_msgSend(evaluateCopy, "processName")];
    if (v17)
    {
LABEL_12:
      v25 = v17;
      v26 = [(NSMutableDictionary *)self->_stores objectForKeyedSubscript:v17];
      if (!v26)
      {
        v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
        [(NSMutableDictionary *)self->_stores setObject:v26 forKeyedSubscript:v25];
      }

      [v26 addObject:evaluateCopy];
    }
  }

  [(CertificateErrorHandler *)self storeMaintenance];
  v27 = evaluationLogHandle;
  if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_INFO))
  {
    numCerts = self->_numCerts;
    numNonBannedCerts = self->_numNonBannedCerts;
    numCertOrigins = self->_numCertOrigins;
    stores = self->_stores;
    *buf = 67110146;
    *v72 = numCerts;
    *&v72[4] = 1024;
    *&v72[6] = numNonBannedCerts;
    *&v72[10] = 1024;
    *&v72[12] = numCertOrigins;
    *&v72[16] = 1024;
    *&v72[18] = threshold;
    *&v72[22] = 2112;
    *&v72[24] = stores;
    _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_INFO, "CertificateErrorHandler: evaluate with count %d nonBannedCount %d sources %d while captivity threshold %d, stores %@", buf, 0x24u);
  }

  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v34 = v33;

  if (![(CertificateErrorHandler *)self allowNotifyingCaptivityAt:v34])
  {
    v36 = evaluationLogHandle;
    if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_INFO))
    {
      v37 = self->_numNonBannedCerts;
      *buf = 67109376;
      *v72 = v37;
      *&v72[4] = 2048;
      *&v72[6] = threshold;
      _os_log_impl(&dword_23255B000, v36, OS_LOG_TYPE_INFO, "CertificateErrorHandler: suppress Captivity checking, defer to Outrank, count %d while threshold %ld", buf, 0x12u);
    }

    v38 = 0;
    goto LABEL_23;
  }

  if (threshold <= self->_numNonBannedCerts)
  {
    v39 = v34 - self->_lastCaptivityReportTime;
    v40 = evaluationLogHandle;
    if (v39 >= self->_dampeningCurrentInterval)
    {
      if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v42 = self->_numNonBannedCerts;
        dampeningCurrentInterval = self->_dampeningCurrentInterval;
        *buf = 67109632;
        *v72 = v42;
        *&v72[4] = 2048;
        *&v72[6] = v39;
        *&v72[14] = 2048;
        *&v72[16] = dampeningCurrentInterval;
        _os_log_impl(&dword_23255B000, v40, OS_LOG_TYPE_DEFAULT, "CertificateErrorHandler: Cert error evaluated positive, %d certs, no suppression, previous evaluation (%.3f secs, need %.3f secs)", buf, 0x1Cu);
      }

      self->_lastCaptivityReportTime = v34;
      dampeningMaxInterval = self->_dampeningMaxInterval;
      v45 = self->_dampeningIncrement + self->_dampeningCurrentInterval;
      self->_dampeningCurrentInterval = v45;
      if (v45 > dampeningMaxInterval)
      {
        self->_dampeningCurrentInterval = dampeningMaxInterval;
      }

      v46 = evaluationLogHandle;
      if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v47 = self->_dampeningCurrentInterval;
        *buf = 134217984;
        *v72 = v47;
        _os_log_impl(&dword_23255B000, v46, OS_LOG_TYPE_DEBUG, "CertificateErrorHandler: Set dampening to %.3f for cert errors", buf, 0xCu);
      }

      v35 = objc_alloc_init(Evaluation);
      v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", objc_msgSend(evaluateCopy, "processName")];
      v68[0] = MEMORY[0x277D85DD0];
      v68[1] = 3221225472;
      v68[2] = __49__CertificateErrorHandler_evaluate_forThreshold___block_invoke;
      v68[3] = &unk_27898A7F8;
      v69 = v48;
      selfCopy = self;
      v49 = v48;
      [(Evaluation *)v35 setCallback:v68];

      goto LABEL_34;
    }

    v38 = 1;
    if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_INFO))
    {
      v41 = self->_dampeningCurrentInterval;
      *buf = 134218240;
      *v72 = v39;
      *&v72[8] = 2048;
      *&v72[10] = v41;
      _os_log_impl(&dword_23255B000, v40, OS_LOG_TYPE_INFO, "CertificateErrorHandler: Cert error evaluated positive, suppressed as too close in time to previous evaluation (%.3f secs, need %.3f secs)", buf, 0x16u);
    }

LABEL_23:
    v35 = 0;
    goto LABEL_35;
  }

  v35 = 0;
LABEL_34:
  v38 = 1;
LABEL_35:
  if ([(CertificateErrorHandler *)self allowNotifyingOutrankAt:v34])
  {
    if (self->_numCerts >= self->_outrankCertThreshold && self->_numCertOrigins >= self->_outrankOriginThreshold)
    {
      v58 = evaluationLogHandle;
      if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v59 = self->_stores;
        v60 = v58;
        allKeys = [(NSMutableDictionary *)v59 allKeys];
        *buf = 138412290;
        *v72 = allKeys;
        _os_log_impl(&dword_23255B000, v60, OS_LOG_TYPE_DEFAULT, "CertificateErrorHandler: perform Outrank notification, sources %@", buf, 0xCu);
      }

      [CellOutrankHandler noteOutrankEvent:2];
      self->_lastOutrankReportTime = v34;
      v55 = 1;
    }

    else
    {
      v50 = evaluationLogHandle;
      if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v51 = self->_numCerts;
        v52 = self->_numCertOrigins;
        outrankCertThreshold = self->_outrankCertThreshold;
        outrankOriginThreshold = self->_outrankOriginThreshold;
        *buf = 67109888;
        *v72 = v51;
        *&v72[4] = 1024;
        *&v72[6] = v52;
        *&v72[10] = 1024;
        *&v72[12] = outrankCertThreshold;
        *&v72[16] = 1024;
        *&v72[18] = outrankOriginThreshold;
        _os_log_impl(&dword_23255B000, v50, OS_LOG_TYPE_DEBUG, "CertificateErrorHandler: skip Outrank notification, under threshold, certs %d origins %d need %d %d", buf, 0x1Au);
      }

      v55 = 0;
    }

    v57 = 1;
  }

  else
  {
    v56 = evaluationLogHandle;
    if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v56, OS_LOG_TYPE_DEBUG, "CertificateErrorHandler: suppress Outrank checking, defer to Captivity", buf, 2u);
    }

    v55 = 0;
    v57 = 0;
  }

  v62 = evaluationLogHandle;
  if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v63 = self->_numCerts;
    v64 = self->_numNonBannedCerts;
    v65 = self->_numCertOrigins;
    *buf = 67110656;
    *v72 = v38;
    *&v72[4] = 1024;
    *&v72[6] = v35 != 0;
    *&v72[10] = 1024;
    *&v72[12] = v57;
    *&v72[16] = 1024;
    *&v72[18] = v55;
    *&v72[22] = 1024;
    *&v72[24] = v63;
    *&v72[28] = 1024;
    *&v72[30] = v64;
    *&v72[34] = 1024;
    *&v72[36] = v65;
    _os_log_impl(&dword_23255B000, v62, OS_LOG_TYPE_DEFAULT, "CertificateErrorHandler: evaluation exit, captivity notifications allowed %d sent %d  outrank notifications allowed %d sent %d cert-errs %d non-banned %d sources %d", buf, 0x2Cu);
  }

  v66 = *MEMORY[0x277D85DE8];

  return v35;
}

void __49__CertificateErrorHandler_evaluate_forThreshold___block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v3 = evaluationLogHandle;
    if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "CertificateErrorHandler: Placing process %@ on the untrusted list for CERT_ERRs", &v8, 0xCu);
    }

    [*(*(a1 + 40) + 8) setObject:*(a1 + 32) forKey:*(a1 + 32)];
    v5 = evaluationLogHandle;
    if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_INFO))
    {
      v6 = *(*(a1 + 40) + 8);
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_INFO, "CertificateErrorHandler: _banned = %@", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_reset:(id)_reset
{
  v4 = evaluationLogHandle;
  if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEBUG, "CertificateErrorHandler: reset, remove objects from store", v5, 2u);
  }

  self->_dampeningCurrentInterval = self->_dampeningInitialInterval;
  self->_lastCaptivityReportTime = 0.0;
  [(NSMutableDictionary *)self->_stores removeAllObjects];
}

- (void)setConfiguration:(id)configuration
{
  v10 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v5 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = configurationCopy;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "CertificateErrorHandler:  new configuration parameters %{public}@", &v8, 0xCu);
  }

  [configurationCopy extractKey:@"certErrsGracePeriod" toDouble:&self->_outrankEventGraceTime defaultTo:10.0];
  [configurationCopy extractKey:@"certErrsMaxOutrankActive" toDouble:&self->_outrankEventMaxTime defaultTo:300.0];
  [configurationCopy extractKey:@"certErrThresh" toUint32:&self->_threshold defaultTo:3];
  [configurationCopy extractKey:@"certErrOutrankThresh" toUint32:&self->_outrankCertThreshold defaultTo:3];
  [configurationCopy extractKey:@"certErrOriginOutrankThresh" toUint32:&self->_outrankOriginThreshold defaultTo:2];
  [configurationCopy extractKey:@"certErrMinDampening" toDouble:&self->_dampeningInitialInterval defaultTo:61.0];
  [configurationCopy extractKey:@"certErrDampeningIncrement" toDouble:&self->_dampeningIncrement defaultTo:82.0];
  [configurationCopy extractKey:@"certErrMaxDampening" toDouble:&self->_dampeningMaxInterval defaultTo:310.0];
  v6 = [configurationCopy objectForKey:@"restoreDefaults"];
  if (v6)
  {
    [(CertificateErrorHandler *)self restoreDefaults];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (int)configureInstance:(id)instance
{
  instanceCopy = instance;
  v5 = [instanceCopy objectForKey:@"COUNT_LIMIT"];
  v6 = v5;
  if (v5)
  {
    self->_maxCount = [v5 integerValue];
  }

  else
  {
    v7 = configurationLogHandle;
    if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "CertificateErrorHandler: Missing MAX_COUNT in cert error config", buf, 2u);
    }
  }

  v8 = [instanceCopy objectForKey:@"TIME_LIMIT"];

  if (v8)
  {
    self->_maxAge = [v8 integerValue];
  }

  else
  {
    v9 = configurationLogHandle;
    if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_ERROR, "CertificateErrorHandler: Missing MAX_AGE in redirect config", v11, 2u);
    }
  }

  return 0;
}

- (BOOL)noteSymptom:(id)symptom
{
  eventKey = [symptom eventKey];
  v5 = [SymptomStore keyFromSymptomName:@"SYMPTOM_ENABLE_CAPTIVITY_NOTIFICATIONS"];
  v6 = [eventKey isEqualToString:v5];

  if (v6)
  {
    v7 = evaluationLogHandle;
    v8 = os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEFAULT);
    v9 = 0;
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "CertificateErrorHandler: Enabling captivity cert error processing", buf, 2u);
      v9 = 0;
    }

LABEL_8:
    self->_captivityReportingDisabled = v9;
    goto LABEL_9;
  }

  v10 = [SymptomStore keyFromSymptomName:@"SYMPTOM_DISABLE_CAPTIVITY_NOTIFICATIONS"];
  v11 = [eventKey isEqualToString:v10];

  if (v11)
  {
    v12 = evaluationLogHandle;
    if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "CertificateErrorHandler: Disabling captivity cert error processing", v14, 2u);
    }

    v9 = 1;
    goto LABEL_8;
  }

LABEL_9:

  return 1;
}

- (int)read:(id)read returnedValues:(id)values
{
  valuesCopy = values;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [valuesCopy setObject:v6 forKey:@"GENERIC_CONFIG_TARGET"];

  return 0;
}

@end