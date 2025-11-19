@interface InstallAttributionPingback
- (BOOL)isEqual:(id)a3;
- (InstallAttributionPingback)initWithAppAdamId:(id)a3 transactionId:(id)a4 campaignId:(id)a5 adNetworkId:(id)a6 attributionSignature:(id)a7 pingbackUrl:(id)a8 retryCount:(int64_t)a9 localTimestamp:(id)a10;
@end

@implementation InstallAttributionPingback

- (InstallAttributionPingback)initWithAppAdamId:(id)a3 transactionId:(id)a4 campaignId:(id)a5 adNetworkId:(id)a6 attributionSignature:(id)a7 pingbackUrl:(id)a8 retryCount:(int64_t)a9 localTimestamp:(id)a10
{
  v16 = a3;
  v17 = a4;
  v51 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a10;
  v52.receiver = self;
  v52.super_class = InstallAttributionPingback;
  v22 = [(InstallAttributionPingback *)&v52 init];
  if (v22)
  {
    v23 = [v16 copy];
    appAdamId = v22->_appAdamId;
    v22->_appAdamId = v23;

    v25 = [v17 copy];
    transactionId = v22->_transactionId;
    v22->_transactionId = v25;

    v27 = [v51 copy];
    campaignId = v22->_campaignId;
    v22->_campaignId = v27;

    v29 = [v18 copy];
    adNetworkId = v22->_adNetworkId;
    v22->_adNetworkId = v29;

    v31 = [v19 copy];
    attributionSignature = v22->_attributionSignature;
    v22->_attributionSignature = v31;

    v33 = [v20 copy];
    pingbackUrl = v22->_pingbackUrl;
    v22->_pingbackUrl = v33;

    v22->_retryCount = a9;
    v35 = [v21 copy];
    localTimestamp = v22->_localTimestamp;
    v22->_localTimestamp = v35;

    if (!v22->_appAdamId || !v22->_transactionId || !v22->_campaignId || !v22->_adNetworkId || !v22->_attributionSignature || !v21 || !v22->_pingbackUrl)
    {
      v50 = v16;
      v37 = +[SSLogConfig sharedDaemonConfig];
      if (!v37)
      {
        v37 = +[SSLogConfig sharedConfig];
      }

      v38 = [v37 shouldLog];
      if ([v37 shouldLogToDisk])
      {
        v38 |= 2u;
      }

      v39 = [v37 OSLogObject];
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v38 &= 2u;
      }

      if (v38)
      {
        v40 = v20;
        v41 = v19;
        v42 = v17;
        v43 = objc_opt_class();
        v48 = v43;
        [(InstallAttributionPingback *)v22 description];
        v44 = v49 = v18;
        v53 = 138543618;
        v54 = v43;
        v17 = v42;
        v19 = v41;
        v20 = v40;
        v55 = 2112;
        v56 = v44;
        LODWORD(v47) = 22;
        v45 = _os_log_send_and_compose_impl();

        v18 = v49;
        if (!v45)
        {
LABEL_19:

          v22 = 0;
          v16 = v50;
          goto LABEL_20;
        }

        v39 = [NSString stringWithCString:v45 encoding:4, &v53, v47];
        free(v45);
        SSFileLog();
      }

      goto LABEL_19;
    }
  }

LABEL_20:

  return v22;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(InstallAttributionPingback *)self appAdamId];
    v7 = [v5 appAdamId];
    if ([v6 isEqual:v7])
    {
      v8 = [(InstallAttributionPingback *)self adNetworkId];
      v9 = [v5 adNetworkId];
      if ([v8 isEqual:v9])
      {
        v10 = [(InstallAttributionPingback *)self campaignId];
        v11 = [v5 campaignId];
        if ([v10 isEqual:v11])
        {
          v12 = [(InstallAttributionPingback *)self pingbackUrl];
          v26 = [v5 pingbackUrl];
          v27 = v12;
          if ([v12 isEqual:v26])
          {
            v13 = [(InstallAttributionPingback *)self transactionId];
            v24 = [v5 transactionId];
            v25 = v13;
            if ([v13 isEqual:v24])
            {
              v14 = [(InstallAttributionPingback *)self attributionSignature];
              v15 = [v5 attributionSignature];
              v23 = v14;
              v16 = v14;
              v17 = v15;
              if ([v16 isEqual:v15] && (v21 = -[InstallAttributionPingback retryCount](self, "retryCount"), v21 == objc_msgSend(v5, "retryCount")))
              {
                v22 = [(InstallAttributionPingback *)self localTimestamp];
                v20 = [v5 localTimestamp];
                v18 = [v22 isEqual:v20];
              }

              else
              {
                v18 = 0;
              }
            }

            else
            {
              v18 = 0;
            }
          }

          else
          {
            v18 = 0;
          }
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

@end