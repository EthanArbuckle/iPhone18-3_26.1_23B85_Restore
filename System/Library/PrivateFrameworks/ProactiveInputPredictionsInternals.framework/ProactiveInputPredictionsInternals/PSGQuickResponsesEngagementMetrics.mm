@interface PSGQuickResponsesEngagementMetrics
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToQuickResponsesEngagementMetrics:(id)metrics;
- (PSGQuickResponsesEngagementMetrics)initWithCoder:(id)coder;
- (PSGQuickResponsesEngagementMetrics)initWithLang:(id)lang rolloutId:(id)id factorPackId:(id)packId experimentId:(id)experimentId treatmentId:(id)treatmentId;
- (PSGQuickResponsesEngagementMetrics)initWithLang:(id)lang rolloutId:(id)id factorPackId:(id)packId experimentId:(id)experimentId treatmentId:(id)treatmentId engagementDeltas:(id)deltas;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PSGQuickResponsesEngagementMetrics

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PSGQuickResponsesEngagementMetrics *)self isEqualToQuickResponsesEngagementMetrics:v5];
  }

  return v6;
}

- (BOOL)isEqualToQuickResponsesEngagementMetrics:(id)metrics
{
  metricsCopy = metrics;
  v5 = self->_lang;
  v6 = v5;
  if (v5 == metricsCopy[1])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v8 = self->_rolloutId;
  v9 = v8;
  if (v8 == metricsCopy[2])
  {
  }

  else
  {
    v10 = [(NSString *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v11 = self->_factorPackId;
  v12 = v11;
  if (v11 == metricsCopy[3])
  {
  }

  else
  {
    v13 = [(NSString *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v14 = self->_experimentId;
  v15 = v14;
  if (v14 == metricsCopy[4])
  {
  }

  else
  {
    v16 = [(NSString *)v14 isEqual:?];

    if ((v16 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v17 = self->_treatmentId;
  v18 = v17;
  if (v17 == metricsCopy[5])
  {
  }

  else
  {
    v19 = [(NSString *)v17 isEqual:?];

    if ((v19 & 1) == 0)
    {
LABEL_19:
      v20 = 0;
      goto LABEL_20;
    }
  }

  v22 = self->_engagementDeltas;
  v23 = v22;
  if (v22 == metricsCopy[6])
  {
    v20 = 1;
  }

  else
  {
    v20 = [(NSMutableArray *)v22 isEqual:?];
  }

LABEL_20:
  return v20;
}

- (PSGQuickResponsesEngagementMetrics)initWithCoder:(id)coder
{
  v54 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v51.receiver = self;
  v51.super_class = PSGQuickResponsesEngagementMetrics;
  v6 = [(PSGQuickResponsesEngagementMetrics *)&v51 init];
  if (v6)
  {
    v7 = v6;
    v8 = MEMORY[0x277D42620];
    v9 = objc_opt_class();
    v10 = *MEMORY[0x277D41EE0];
    v11 = psg_default_log_handle();
    v12 = [v8 robustDecodeObjectOfClass:v9 forKey:@"lang" withCoder:coderCopy expectNonNull:1 errorDomain:v10 errorCode:3 logHandle:v11];

    if (!v12)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v7 file:@"PSGDPDeviceMetricsCollector.m" lineNumber:139 description:{@"Invalid parameter not satisfying: %@", @"lang"}];
    }

    v13 = MEMORY[0x277D42620];
    v14 = objc_opt_class();
    v15 = psg_default_log_handle();
    v16 = [v13 robustDecodeObjectOfClass:v14 forKey:@"rolloutId" withCoder:coderCopy expectNonNull:0 errorDomain:v10 errorCode:3 logHandle:v15];

    error = [coderCopy error];

    if (error)
    {
      v18 = psg_default_log_handle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        error2 = [coderCopy error];
        *buf = 138412290;
        v53 = error2;
        _os_log_error_impl(&dword_260D36000, v18, OS_LOG_TYPE_ERROR, "Secure coding failure: %@", buf, 0xCu);
      }

      v19 = 0;
    }

    else
    {
      v50 = a2;
      v20 = MEMORY[0x277D42620];
      v21 = objc_opt_class();
      v22 = psg_default_log_handle();
      v18 = [v20 robustDecodeObjectOfClass:v21 forKey:@"factorPackId" withCoder:coderCopy expectNonNull:0 errorDomain:v10 errorCode:3 logHandle:v22];

      error3 = [coderCopy error];

      if (error3)
      {
        v24 = psg_default_log_handle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          error4 = [coderCopy error];
          *buf = 138412290;
          v53 = error4;
          _os_log_error_impl(&dword_260D36000, v24, OS_LOG_TYPE_ERROR, "Secure coding failure: %@", buf, 0xCu);
        }

        v19 = 0;
      }

      else
      {
        v49 = v7;
        v25 = MEMORY[0x277D42620];
        v26 = objc_opt_class();
        v27 = psg_default_log_handle();
        v24 = [v25 robustDecodeObjectOfClass:v26 forKey:@"experimentId" withCoder:coderCopy expectNonNull:0 errorDomain:v10 errorCode:3 logHandle:v27];

        error5 = [coderCopy error];

        if (error5)
        {
          v29 = psg_default_log_handle();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            error6 = [coderCopy error];
            *buf = 138412290;
            v53 = error6;
            _os_log_error_impl(&dword_260D36000, v29, OS_LOG_TYPE_ERROR, "Secure coding failure: %@", buf, 0xCu);
          }

          v19 = 0;
        }

        else
        {
          v47 = MEMORY[0x277D42620];
          v30 = objc_opt_class();
          v31 = psg_default_log_handle();
          v29 = [v47 robustDecodeObjectOfClass:v30 forKey:@"treatmentId" withCoder:coderCopy expectNonNull:0 errorDomain:v10 errorCode:3 logHandle:v31];

          error7 = [coderCopy error];

          if (error7)
          {
            v33 = psg_default_log_handle();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              error8 = [coderCopy error];
              *buf = 138412290;
              v53 = error8;
              _os_log_error_impl(&dword_260D36000, v33, OS_LOG_TYPE_ERROR, "Secure coding failure: %@", buf, 0xCu);
            }

            v19 = 0;
          }

          else
          {
            v48 = MEMORY[0x277D42620];
            v35 = objc_autoreleasePoolPush();
            v36 = objc_alloc(MEMORY[0x277CBEB98]);
            v37 = objc_opt_class();
            v38 = [v36 initWithObjects:{v37, objc_opt_class(), 0}];
            objc_autoreleasePoolPop(v35);
            v39 = psg_default_log_handle();
            v33 = [v48 robustDecodeObjectOfClasses:v38 forKey:@"engagementDeltas" withCoder:coderCopy expectNonNull:1 errorDomain:v10 errorCode:3 logHandle:v39];

            if (!v33)
            {
              currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
              [currentHandler2 handleFailureInMethod:v50 object:v49 file:@"PSGDPDeviceMetricsCollector.m" lineNumber:183 description:{@"Invalid parameter not satisfying: %@", @"deltas"}];
            }

            v19 = [(PSGQuickResponsesEngagementMetrics *)v49 initWithLang:v12 rolloutId:v16 factorPackId:v18 experimentId:v24 treatmentId:v29 engagementDeltas:v33];
            v49 = v19;
          }
        }

        v7 = v49;
      }
    }
  }

  else
  {
    v19 = 0;
  }

  v40 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)encodeWithCoder:(id)coder
{
  lang = self->_lang;
  coderCopy = coder;
  [coderCopy encodeObject:lang forKey:@"lang"];
  [coderCopy encodeObject:self->_rolloutId forKey:@"rolloutId"];
  [coderCopy encodeObject:self->_factorPackId forKey:@"factorPackId"];
  [coderCopy encodeObject:self->_experimentId forKey:@"experimentId"];
  [coderCopy encodeObject:self->_treatmentId forKey:@"treatmentId"];
  [coderCopy encodeObject:self->_engagementDeltas forKey:@"engagementDeltas"];
}

- (PSGQuickResponsesEngagementMetrics)initWithLang:(id)lang rolloutId:(id)id factorPackId:(id)packId experimentId:(id)experimentId treatmentId:(id)treatmentId engagementDeltas:(id)deltas
{
  langCopy = lang;
  idCopy = id;
  packIdCopy = packId;
  experimentIdCopy = experimentId;
  treatmentIdCopy = treatmentId;
  deltasCopy = deltas;
  v18 = deltasCopy;
  if (langCopy)
  {
    if (deltasCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PSGDPDeviceMetricsCollector.m" lineNumber:93 description:{@"Invalid parameter not satisfying: %@", @"lang"}];

    if (v18)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PSGDPDeviceMetricsCollector.m" lineNumber:94 description:{@"Invalid parameter not satisfying: %@", @"engagementDeltas"}];

LABEL_3:
  v28.receiver = self;
  v28.super_class = PSGQuickResponsesEngagementMetrics;
  v19 = [(PSGQuickResponsesEngagementMetrics *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_lang, lang);
    objc_storeStrong(&v20->_rolloutId, id);
    objc_storeStrong(&v20->_factorPackId, packId);
    objc_storeStrong(&v20->_experimentId, experimentId);
    objc_storeStrong(&v20->_treatmentId, treatmentId);
    objc_storeStrong(&v20->_engagementDeltas, deltas);
  }

  return v20;
}

- (PSGQuickResponsesEngagementMetrics)initWithLang:(id)lang rolloutId:(id)id factorPackId:(id)packId experimentId:(id)experimentId treatmentId:(id)treatmentId
{
  treatmentIdCopy = treatmentId;
  experimentIdCopy = experimentId;
  packIdCopy = packId;
  idCopy = id;
  langCopy = lang;
  v17 = objc_opt_new();
  v18 = [(PSGQuickResponsesEngagementMetrics *)self initWithLang:langCopy rolloutId:idCopy factorPackId:packIdCopy experimentId:experimentIdCopy treatmentId:treatmentIdCopy engagementDeltas:v17];

  return v18;
}

@end