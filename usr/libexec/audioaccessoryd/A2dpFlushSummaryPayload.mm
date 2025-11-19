@interface A2dpFlushSummaryPayload
- (A2dpFlushSummaryPayload)initWithData:(id)a3;
@end

@implementation A2dpFlushSummaryPayload

- (A2dpFlushSummaryPayload)initWithData:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = A2dpFlushSummaryPayload;
  v5 = [(AccessoryUsageSummaryPayload *)&v8 initWithData:v4];
  if (v5)
  {
    if ([v4 length] <= 7)
    {
      sub_1001EDD84(v4, &v9);
      v6 = v9;
    }

    else
    {
      v9 = 0;
      [v4 getBytes:&v9 range:{16, 8}];
      v5->_retxAvg = v9;
      v9 = 0;
      [v4 getBytes:&v9 range:{24, 8}];
      v5->_rssiAvg = v9;
      v9 = 0;
      [v4 getBytes:&v9 range:{32, 8}];
      v5->_numDevicesConnected = v9;
      v9 = 0;
      [v4 getBytes:&v9 range:{40, 8}];
      v5->_audioCategory = v9;
      v9 = 0;
      [v4 getBytes:&v9 range:{48, 8}];
      v5->_specialAudioCategory = v9;
      v9 = 0;
      [v4 getBytes:&v9 range:{56, 8}];
      v5->_snrAvg = v9;
      v6 = v5;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end