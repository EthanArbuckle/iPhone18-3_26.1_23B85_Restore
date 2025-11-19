@interface _SWCTrackingDomainInfo
+ (OS_dispatch_queue)_queue;
+ (id)_trackingDomainInfoWithDomain:(id)a3 JSONObject:(id)a4;
+ (id)_trackingDomainInfoWithDomain:(id)a3 JSONObject:(id)a4 expectedSources:(unint64_t)a5;
+ (id)_trackingDomainInfoWithDomains:(id)a3;
+ (id)_trackingDomainInfoWithDomains:(id)a3 sources:(unint64_t)a4;
+ (id)trackingDomainInfoWithDomains:(id)a3;
+ (void)_getTrackingDomainInfoWithDomains:(id)a3 sources:(unint64_t)a4 completionHandler:(id)a5;
+ (void)getTrackingDomainInfoWithDomains:(id)a3 sources:(unint64_t)a4 completion:(id)a5;
- (BOOL)canBlockRequest;
- (_SWCTrackingDomainInfo)initWithCoder:(id)a3;
- (id)_initWithDomain:(id)a3 JSONObject:(id)a4;
- (unint64_t)source;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _SWCTrackingDomainInfo

+ (id)trackingDomainInfoWithDomains:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__2;
  v17 = __Block_byref_object_dispose__2;
  v18 = 0;
  if (qword_280B21958 != -1)
  {
    dispatch_once(&qword_280B21958, &__block_literal_global_93);
  }

  v4 = qword_280B21950;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v11 = getpid();
    *buf = 134217984;
    v20 = v11;
    _os_log_debug_impl(&dword_265F54000, v4, OS_LOG_TYPE_DEBUG, "Process %llu is getting tracking domain info out-of-process", buf, 0xCu);
  }

  v5 = _SWCGetServerConnection();
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_7];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56___SWCTrackingDomainInfo_trackingDomainInfoWithDomains___block_invoke_2;
  v12[3] = &unk_279BBE108;
  v12[4] = &v13;
  [v6 getTrackingDomains:v3 sources:3 completionHandler:v12];

  v7 = v14[5];
  if (!v7)
  {
    v14[5] = MEMORY[0x277CBEC10];
    v7 = v14[5];
  }

  v8 = v7;
  _Block_object_dispose(&v13, 8);

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (void)getTrackingDomainInfoWithDomains:(id)a3 sources:(unint64_t)a4 completion:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  if (qword_280B21958 != -1)
  {
    dispatch_once(&qword_280B21958, &__block_literal_global_93);
  }

  v9 = qword_280B21950;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v20 = getpid();
    _os_log_impl(&dword_265F54000, v9, OS_LOG_TYPE_INFO, "Process %llu is getting tracking domain info out-of-process", buf, 0xCu);
  }

  v10 = _SWCGetServerConnection();
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __78___SWCTrackingDomainInfo_getTrackingDomainInfoWithDomains_sources_completion___block_invoke;
  v17[3] = &unk_279BBE000;
  v11 = v8;
  v18 = v11;
  v12 = [v10 remoteObjectProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __78___SWCTrackingDomainInfo_getTrackingDomainInfoWithDomains_sources_completion___block_invoke_2;
  v15[3] = &unk_279BBE130;
  v13 = v11;
  v16 = v13;
  [v12 getTrackingDomains:v7 sources:a4 completionHandler:v15];

  v14 = *MEMORY[0x277D85DE8];
}

- (unint64_t)source
{
  v2 = [(NSDictionary *)self->_JSONObject objectForKeyedSubscript:@"s"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (BOOL)canBlockRequest
{
  v2 = [(NSDictionary *)self->_JSONObject objectForKeyedSubscript:@"dnbr"];
  v3 = [v2 BOOLValue];

  return v3 ^ 1;
}

+ (id)_trackingDomainInfoWithDomain:(id)a3 JSONObject:(id)a4
{
  v4 = [a1 _trackingDomainInfoWithDomain:a3 JSONObject:a4 expectedSources:3];

  return v4;
}

+ (id)_trackingDomainInfoWithDomain:(id)a3 JSONObject:(id)a4 expectedSources:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = objc_autoreleasePoolPush();
  if (_NSIsNSDictionary())
  {
    v10 = [[_SWCTrackingDomainInfo alloc] _initWithDomain:v7 JSONObject:v8];
    if (([v10 source] & a5) != 0)
    {
      v11 = v10;
      goto LABEL_6;
    }
  }

  v11 = 0;
LABEL_6:
  objc_autoreleasePoolPop(v9);

  return v11;
}

+ (id)_trackingDomainInfoWithDomains:(id)a3
{
  v3 = [a1 _trackingDomainInfoWithDomains:a3 sources:3];

  return v3;
}

+ (id)_trackingDomainInfoWithDomains:(id)a3 sources:(unint64_t)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v27 = a3;
  v6 = _SWCGetBundle();
  v26 = v6;
  if (v6)
  {
    v25 = [v6 URLForResource:@"trackingdomains" withExtension:@"json"];
    if (v25)
    {
      v38 = 0;
      v7 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:v25 options:1 error:&v38];
      v8 = v38;
      v23 = v7;
      if (v7)
      {
        v37 = v8;
        v9 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:0 error:&v37];
        v24 = v37;

        if (v9)
        {
          if (v27)
          {
            v28 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v27, "count")}];
            v35 = 0u;
            v36 = 0u;
            v33 = 0u;
            v34 = 0u;
            v10 = v27;
            v11 = [v10 countByEnumeratingWithState:&v33 objects:v41 count:16];
            if (v11)
            {
              v12 = *v34;
              do
              {
                for (i = 0; i != v11; ++i)
                {
                  if (*v34 != v12)
                  {
                    objc_enumerationMutation(v10);
                  }

                  v14 = *(*(&v33 + 1) + 8 * i);
                  v15 = [v9 objectForKeyedSubscript:v14];
                  if (v15)
                  {
                    v16 = [a1 _trackingDomainInfoWithDomain:v14 JSONObject:v15 expectedSources:a4];
                    [v28 setObject:v16 forKeyedSubscript:v14];
                  }
                }

                v11 = [v10 countByEnumeratingWithState:&v33 objects:v41 count:16];
              }

              while (v11);
            }
          }

          else
          {
            v19 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v9, "count")}];
            v29[0] = MEMORY[0x277D85DD0];
            v29[1] = 3221225472;
            v29[2] = __65___SWCTrackingDomainInfo__trackingDomainInfoWithDomains_sources___block_invoke;
            v29[3] = &unk_279BBE158;
            v28 = v19;
            v30 = v28;
            v31 = a1;
            v32 = a4;
            [v9 enumerateKeysAndObjectsUsingBlock:v29];
          }
        }

        else
        {
          if (qword_280B21958 != -1)
          {
            dispatch_once(&qword_280B21958, &__block_literal_global_93);
          }

          v18 = qword_280B21950;
          if (os_log_type_enabled(qword_280B21950, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v40 = v24;
            _os_log_error_impl(&dword_265F54000, v18, OS_LOG_TYPE_ERROR, "Failed to read tracking domains JSON file: %@", buf, 0xCu);
          }

          v28 = 0;
        }
      }

      else
      {
        if (qword_280B21958 != -1)
        {
          dispatch_once(&qword_280B21958, &__block_literal_global_93);
        }

        v17 = qword_280B21950;
        if (os_log_type_enabled(qword_280B21950, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v40 = v8;
          _os_log_error_impl(&dword_265F54000, v17, OS_LOG_TYPE_ERROR, "Failed to find tracking domains JSON file: %@", buf, 0xCu);
        }

        v28 = 0;
        v24 = v8;
      }
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v28 = 0;
  }

  v20 = [v28 copy];
  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (void)_getTrackingDomainInfoWithDomains:(id)a3 sources:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [a1 _queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __86___SWCTrackingDomainInfo__getTrackingDomainInfoWithDomains_sources_completionHandler___block_invoke;
  v13[3] = &unk_279BBE180;
  v16 = a1;
  v17 = a4;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

- (id)_initWithDomain:(id)a3 JSONObject:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = _SWCTrackingDomainInfo;
  v8 = [(_SWCTrackingDomainInfo *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    domain = v8->_domain;
    v8->_domain = v9;

    v11 = [v7 copy];
    JSONObject = v8->_JSONObject;
    v8->_JSONObject = v11;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_domain forKey:@"domain"];
  [v4 encodeObject:self->_JSONObject forKey:@"JSONObject"];
}

- (_SWCTrackingDomainInfo)initWithCoder:(id)a3
{
  v16[5] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = _SWCTrackingDomainInfo;
  v5 = [(_SWCTrackingDomainInfo *)&v15 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CBEB98]);
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v16[2] = objc_opt_class();
    v16[3] = objc_opt_class();
    v16[4] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:5];
    v8 = [v6 initWithArray:v7];

    v9 = [v4 swc_decodeObjectOfClass:objc_opt_class() forKey:@"domain"];
    domain = v5->_domain;
    v5->_domain = v9;

    v11 = [v4 swc_decodeObjectOfClasses:v8 forKey:@"JSONObject"];
    JSONObject = v5->_JSONObject;
    v5->_JSONObject = v11;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (OS_dispatch_queue)_queue
{
  if (qword_280B21948 != -1)
  {
    dispatch_once(&qword_280B21948, &__block_literal_global_86);
  }

  v3 = _MergedGlobals_6;

  return v3;
}

@end