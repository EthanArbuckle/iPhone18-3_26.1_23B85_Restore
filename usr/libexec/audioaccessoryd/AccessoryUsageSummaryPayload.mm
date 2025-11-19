@interface AccessoryUsageSummaryPayload
+ (id)payloadWithData:(id)a3;
- (AccessoryUsageSummaryPayload)initWithData:(id)a3;
@end

@implementation AccessoryUsageSummaryPayload

+ (id)payloadWithData:(id)a3
{
  v3 = a3;
  v4 = [[AccessoryUsageSummaryPayload alloc] initWithData:v3];
  v5 = [(AccessoryUsageSummaryPayload *)v4 infoType];
  if (v5 == 3)
  {
    v6 = A2dpFlushSummaryPayload;
    goto LABEL_7;
  }

  if (v5 == 2)
  {
    v6 = HfpSummaryPayload;
    goto LABEL_7;
  }

  if (v5 == 1)
  {
    v6 = A2dpSummaryPayload;
LABEL_7:
    v7 = [[v6 alloc] initWithData:v3];
    goto LABEL_9;
  }

  v7 = v4;
LABEL_9:
  v8 = v7;

  return v8;
}

- (AccessoryUsageSummaryPayload)initWithData:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AccessoryUsageSummaryPayload;
  v5 = [(AccessoryUsageSummaryPayload *)&v9 init];
  if (v5)
  {
    if ([v4 length] <= 7 || (v10 = 0, objc_msgSend(v4, "getBytes:range:", &v10, 0, 8), -[AccessoryUsageSummaryPayload setInfoType:](v5, "setInfoType:", v10), objc_msgSend(v4, "length") <= 0xF))
    {
      sub_1001EDBD0(&v10);
      v7 = v10;
    }

    else
    {
      v10 = 0;
      [v4 getBytes:&v10 range:{8, 8}];
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