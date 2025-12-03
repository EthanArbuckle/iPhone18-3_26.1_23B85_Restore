@interface AccessoryUsageSummaryPayload
+ (id)payloadWithData:(id)data;
- (AccessoryUsageSummaryPayload)initWithData:(id)data;
@end

@implementation AccessoryUsageSummaryPayload

+ (id)payloadWithData:(id)data
{
  dataCopy = data;
  v4 = [[AccessoryUsageSummaryPayload alloc] initWithData:dataCopy];
  infoType = [(AccessoryUsageSummaryPayload *)v4 infoType];
  if (infoType == 3)
  {
    v6 = A2dpFlushSummaryPayload;
    goto LABEL_7;
  }

  if (infoType == 2)
  {
    v6 = HfpSummaryPayload;
    goto LABEL_7;
  }

  if (infoType == 1)
  {
    v6 = A2dpSummaryPayload;
LABEL_7:
    v7 = [[v6 alloc] initWithData:dataCopy];
    goto LABEL_9;
  }

  v7 = v4;
LABEL_9:
  v8 = v7;

  return v8;
}

- (AccessoryUsageSummaryPayload)initWithData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = AccessoryUsageSummaryPayload;
  v5 = [(AccessoryUsageSummaryPayload *)&v9 init];
  if (v5)
  {
    if ([dataCopy length] <= 7 || (v10 = 0, objc_msgSend(dataCopy, "getBytes:range:", &v10, 0, 8), -[AccessoryUsageSummaryPayload setInfoType:](v5, "setInfoType:", v10), objc_msgSend(dataCopy, "length") <= 0xF))
    {
      sub_1001EDBD0(&v10);
      v7 = v10;
    }

    else
    {
      v10 = 0;
      [dataCopy getBytes:&v10 range:{8, 8}];
      v6 = [NSString stringWithFormat:@"%llu", v10];
      [(AccessoryUsageSummaryPayload *)v5 setDeviceAddress:v6];

      v7 = v5;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end