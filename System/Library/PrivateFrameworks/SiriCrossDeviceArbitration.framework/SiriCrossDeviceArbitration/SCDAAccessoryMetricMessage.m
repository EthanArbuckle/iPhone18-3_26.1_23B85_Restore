@interface SCDAAccessoryMetricMessage
- (BOOL)_decodeMetricDataPayload:(id)a3 decodedPayload:(MyriadMetricsDataV2 *)a4;
- (BOOL)_decodeMetricDataPayload:(id)a3 into:(MyriadMetricsDataV2 *)a4 expectedPayloadSize:(unint64_t)a5;
- (SCDAAccessoryMetricMessage)initWithDataPayload:(id)a3;
- (SCDAAccessoryMetricMessage)initWithMetricData:(id)a3;
- (id)_extractMetricDataFromDataPayload:(id)a3;
- (id)messageAsData;
@end

@implementation SCDAAccessoryMetricMessage

- (BOOL)_decodeMetricDataPayload:(id)a3 into:(MyriadMetricsDataV2 *)a4 expectedPayloadSize:(unint64_t)a5
{
  v7 = a3;
  v8 = [v7 length];
  if (v8 < a5)
  {
    a5 = v8;
  }

  v9 = [v7 bytes];

  memcpy(a4, v9, a5);
  return 1;
}

- (BOOL)_decodeMetricDataPayload:(id)a3 decodedPayload:(MyriadMetricsDataV2 *)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (!v6 || ![v6 length])
  {
    v10 = SCDALogContextAnalytics;
    if (os_log_type_enabled(SCDALogContextAnalytics, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[SCDAAccessoryMetricMessage _decodeMetricDataPayload:decodedPayload:]";
      v21 = 2112;
      v22 = v7;
      v13 = "%s Invalid analytics data payload: %@";
      v14 = v10;
      v15 = 22;
      goto LABEL_14;
    }

LABEL_7:
    v11 = 0;
    goto LABEL_12;
  }

  v18 = 0;
  [v7 getBytes:&v18 range:{0, 1}];
  v8 = v18;
  if (!v18)
  {
    v12 = SCDALogContextAnalytics;
    if (os_log_type_enabled(SCDALogContextAnalytics, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[SCDAAccessoryMetricMessage _decodeMetricDataPayload:decodedPayload:]";
      v21 = 1024;
      LODWORD(v22) = 0;
      v13 = "%s Analytics data has a invalid version %d";
      v14 = v12;
      v15 = 18;
LABEL_14:
      _os_log_error_impl(&dword_1DA758000, v14, OS_LOG_TYPE_ERROR, v13, buf, v15);
      goto LABEL_7;
    }

    goto LABEL_7;
  }

  bzero(a4, 0x428uLL);
  if (v8 == 1)
  {
    v9 = 232;
  }

  else
  {
    v9 = 1064;
  }

  v11 = [(SCDAAccessoryMetricMessage *)self _decodeMetricDataPayload:v7 into:a4 expectedPayloadSize:v9];
LABEL_12:

  v16 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)_extractMetricDataFromDataPayload:(id)a3
{
  v3 = a3;
  v4 = +[SCDAMetrics sharedInstance];
  v5 = [v4 isMyriadMetricsMessage:v3];

  if (v5)
  {
    v6 = [v3 objectForKeyedSubscript:scdaAccessoryMetricsMessageKey];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)messageAsData
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF88]);
  [v3 appendBytes:&self->_metric length:1064];

  return v3;
}

- (SCDAAccessoryMetricMessage)initWithDataPayload:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SCDAAccessoryMetricMessage;
  v5 = [(SCDAAccessoryMetricMessage *)&v10 init];
  v6 = v5;
  if (!v5)
  {
LABEL_4:
    v7 = v6;
    goto LABEL_6;
  }

  v7 = [(SCDAAccessoryMetricMessage *)v5 _extractMetricDataFromDataPayload:v4];
  if (v7)
  {
    v8 = [(SCDAAccessoryMetricMessage *)v6 _decodeMetricDataPayload:v7 decodedPayload:&v6->_metric];

    if (!v8)
    {
      v7 = 0;
      goto LABEL_6;
    }

    goto LABEL_4;
  }

LABEL_6:

  return v7;
}

- (SCDAAccessoryMetricMessage)initWithMetricData:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SCDAAccessoryMetricMessage;
  v5 = [(SCDAAccessoryMetricMessage *)&v9 init];
  v6 = v5;
  if (v5 && ![(SCDAAccessoryMetricMessage *)v5 _decodeMetricDataPayload:v4 decodedPayload:&v5->_metric])
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

@end