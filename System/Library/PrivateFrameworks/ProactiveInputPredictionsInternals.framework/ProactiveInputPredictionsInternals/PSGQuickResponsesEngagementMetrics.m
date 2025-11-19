@interface PSGQuickResponsesEngagementMetrics
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToQuickResponsesEngagementMetrics:(id)a3;
- (PSGQuickResponsesEngagementMetrics)initWithCoder:(id)a3;
- (PSGQuickResponsesEngagementMetrics)initWithLang:(id)a3 rolloutId:(id)a4 factorPackId:(id)a5 experimentId:(id)a6 treatmentId:(id)a7;
- (PSGQuickResponsesEngagementMetrics)initWithLang:(id)a3 rolloutId:(id)a4 factorPackId:(id)a5 experimentId:(id)a6 treatmentId:(id)a7 engagementDeltas:(id)a8;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PSGQuickResponsesEngagementMetrics

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PSGQuickResponsesEngagementMetrics *)self isEqualToQuickResponsesEngagementMetrics:v5];
  }

  return v6;
}

- (BOOL)isEqualToQuickResponsesEngagementMetrics:(id)a3
{
  v4 = a3;
  v5 = self->_lang;
  v6 = v5;
  if (v5 == v4[1])
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
  if (v8 == v4[2])
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
  if (v11 == v4[3])
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
  if (v14 == v4[4])
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
  if (v17 == v4[5])
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
  if (v22 == v4[6])
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

- (PSGQuickResponsesEngagementMetrics)initWithCoder:(id)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v5 = a3;
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
    v12 = [v8 robustDecodeObjectOfClass:v9 forKey:@"lang" withCoder:v5 expectNonNull:1 errorDomain:v10 errorCode:3 logHandle:v11];

    if (!v12)
    {
      v45 = [MEMORY[0x277CCA890] currentHandler];
      [v45 handleFailureInMethod:a2 object:v7 file:@"PSGDPDeviceMetricsCollector.m" lineNumber:139 description:{@"Invalid parameter not satisfying: %@", @"lang"}];
    }

    v13 = MEMORY[0x277D42620];
    v14 = objc_opt_class();
    v15 = psg_default_log_handle();
    v16 = [v13 robustDecodeObjectOfClass:v14 forKey:@"rolloutId" withCoder:v5 expectNonNull:0 errorDomain:v10 errorCode:3 logHandle:v15];

    v17 = [v5 error];

    if (v17)
    {
      v18 = psg_default_log_handle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v34 = [v5 error];
        *buf = 138412290;
        v53 = v34;
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
      v18 = [v20 robustDecodeObjectOfClass:v21 forKey:@"factorPackId" withCoder:v5 expectNonNull:0 errorDomain:v10 errorCode:3 logHandle:v22];

      v23 = [v5 error];

      if (v23)
      {
        v24 = psg_default_log_handle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v42 = [v5 error];
          *buf = 138412290;
          v53 = v42;
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
        v24 = [v25 robustDecodeObjectOfClass:v26 forKey:@"experimentId" withCoder:v5 expectNonNull:0 errorDomain:v10 errorCode:3 logHandle:v27];

        v28 = [v5 error];

        if (v28)
        {
          v29 = psg_default_log_handle();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v43 = [v5 error];
            *buf = 138412290;
            v53 = v43;
            _os_log_error_impl(&dword_260D36000, v29, OS_LOG_TYPE_ERROR, "Secure coding failure: %@", buf, 0xCu);
          }

          v19 = 0;
        }

        else
        {
          v47 = MEMORY[0x277D42620];
          v30 = objc_opt_class();
          v31 = psg_default_log_handle();
          v29 = [v47 robustDecodeObjectOfClass:v30 forKey:@"treatmentId" withCoder:v5 expectNonNull:0 errorDomain:v10 errorCode:3 logHandle:v31];

          v32 = [v5 error];

          if (v32)
          {
            v33 = psg_default_log_handle();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              v44 = [v5 error];
              *buf = 138412290;
              v53 = v44;
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
            v33 = [v48 robustDecodeObjectOfClasses:v38 forKey:@"engagementDeltas" withCoder:v5 expectNonNull:1 errorDomain:v10 errorCode:3 logHandle:v39];

            if (!v33)
            {
              v46 = [MEMORY[0x277CCA890] currentHandler];
              [v46 handleFailureInMethod:v50 object:v49 file:@"PSGDPDeviceMetricsCollector.m" lineNumber:183 description:{@"Invalid parameter not satisfying: %@", @"deltas"}];
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

- (void)encodeWithCoder:(id)a3
{
  lang = self->_lang;
  v5 = a3;
  [v5 encodeObject:lang forKey:@"lang"];
  [v5 encodeObject:self->_rolloutId forKey:@"rolloutId"];
  [v5 encodeObject:self->_factorPackId forKey:@"factorPackId"];
  [v5 encodeObject:self->_experimentId forKey:@"experimentId"];
  [v5 encodeObject:self->_treatmentId forKey:@"treatmentId"];
  [v5 encodeObject:self->_engagementDeltas forKey:@"engagementDeltas"];
}

- (PSGQuickResponsesEngagementMetrics)initWithLang:(id)a3 rolloutId:(id)a4 factorPackId:(id)a5 experimentId:(id)a6 treatmentId:(id)a7 engagementDeltas:(id)a8
{
  v15 = a3;
  v27 = a4;
  v26 = a5;
  v25 = a6;
  v16 = a7;
  v17 = a8;
  v18 = v17;
  if (v15)
  {
    if (v17)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v22 = [MEMORY[0x277CCA890] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"PSGDPDeviceMetricsCollector.m" lineNumber:93 description:{@"Invalid parameter not satisfying: %@", @"lang"}];

    if (v18)
    {
      goto LABEL_3;
    }
  }

  v23 = [MEMORY[0x277CCA890] currentHandler];
  [v23 handleFailureInMethod:a2 object:self file:@"PSGDPDeviceMetricsCollector.m" lineNumber:94 description:{@"Invalid parameter not satisfying: %@", @"engagementDeltas"}];

LABEL_3:
  v28.receiver = self;
  v28.super_class = PSGQuickResponsesEngagementMetrics;
  v19 = [(PSGQuickResponsesEngagementMetrics *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_lang, a3);
    objc_storeStrong(&v20->_rolloutId, a4);
    objc_storeStrong(&v20->_factorPackId, a5);
    objc_storeStrong(&v20->_experimentId, a6);
    objc_storeStrong(&v20->_treatmentId, a7);
    objc_storeStrong(&v20->_engagementDeltas, a8);
  }

  return v20;
}

- (PSGQuickResponsesEngagementMetrics)initWithLang:(id)a3 rolloutId:(id)a4 factorPackId:(id)a5 experimentId:(id)a6 treatmentId:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = objc_opt_new();
  v18 = [(PSGQuickResponsesEngagementMetrics *)self initWithLang:v16 rolloutId:v15 factorPackId:v14 experimentId:v13 treatmentId:v12 engagementDeltas:v17];

  return v18;
}

@end