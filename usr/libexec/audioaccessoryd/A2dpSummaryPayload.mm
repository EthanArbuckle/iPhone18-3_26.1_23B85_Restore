@interface A2dpSummaryPayload
- (A2dpSummaryPayload)initWithData:(id)data;
@end

@implementation A2dpSummaryPayload

- (A2dpSummaryPayload)initWithData:(id)data
{
  dataCopy = data;
  v8.receiver = self;
  v8.super_class = A2dpSummaryPayload;
  v5 = [(AccessoryUsageSummaryPayload *)&v8 initWithData:dataCopy];
  if (v5)
  {
    if ([dataCopy length] <= 0xA)
    {
      sub_1001EDC44(dataCopy, &v9);
      v6 = v9;
    }

    else
    {
      v9 = 0;
      [dataCopy getBytes:&v9 range:{16, 8}];
      v5->_retxAvg = v9;
      v9 = 0;
      [dataCopy getBytes:&v9 range:{24, 8}];
      v5->_rssiAvg = v9;
      v9 = 0;
      [dataCopy getBytes:&v9 range:{32, 8}];
      v5->_durationInSec = v9;
      v9 = 0;
      [dataCopy getBytes:&v9 range:{40, 8}];
      v5->_tipiConnected = v9 != 0;
      v9 = 0;
      [dataCopy getBytes:&v9 range:{48, 8}];
      v5->_numDevicesConnected = v9;
      v9 = 0;
      [dataCopy getBytes:&v9 range:{56, 8}];
      v5->_audioCategory = v9;
      v9 = 0;
      [dataCopy getBytes:&v9 range:{64, 8}];
      v5->_specialAudioCategory = v9;
      v9 = 0;
      [dataCopy getBytes:&v9 range:{72, 8}];
      v5->_snrAvg = v9;
      v9 = 0;
      [dataCopy getBytes:&v9 range:{80, 8}];
      v5->_overwaitCountAbove50ms = v9;
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