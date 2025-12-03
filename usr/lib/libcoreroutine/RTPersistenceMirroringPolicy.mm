@interface RTPersistenceMirroringPolicy
- (RTPersistenceMirroringPolicy)initWithQualityOfService:(int64_t)service;
- (RTPersistenceMirroringPolicy)initWithQualityOfService:(int64_t)service tokenBucket:(id)bucket;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)qualityOfServiceToString:(int64_t)string;
@end

@implementation RTPersistenceMirroringPolicy

- (RTPersistenceMirroringPolicy)initWithQualityOfService:(int64_t)service
{
  if (service == 3)
  {
    v9 = [objc_alloc(MEMORY[0x277D01358]) initWithFillRate:INFINITY capacity:INFINITY];
  }

  else
  {
    if (service == 2)
    {
      v5 = objc_alloc(MEMORY[0x277D01358]);
      v6 = 0.0166666667;
      v7 = 1.0;
      v8 = 1.0;
    }

    else
    {
      if (service != 1)
      {
        v10 = 0;
        goto LABEL_10;
      }

      v5 = objc_alloc(MEMORY[0x277D01358]);
      v6 = 155520000.0;
      v7 = 2.0;
      v8 = 0.0;
    }

    v9 = [v5 initWithFillRate:v6 capacity:v7 initialAllocation:v8];
  }

  v10 = v9;
LABEL_10:
  v11 = [(RTPersistenceMirroringPolicy *)self initWithQualityOfService:service tokenBucket:v10];

  return v11;
}

- (RTPersistenceMirroringPolicy)initWithQualityOfService:(int64_t)service tokenBucket:(id)bucket
{
  bucketCopy = bucket;
  v12.receiver = self;
  v12.super_class = RTPersistenceMirroringPolicy;
  v7 = [(RTPersistenceMirroringPolicy *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_qualityOfService = service;
    if (bucketCopy)
    {
      v9 = bucketCopy;
    }

    else
    {
      v9 = [objc_alloc(MEMORY[0x277D01358]) initWithFillRate:INFINITY capacity:INFINITY];
    }

    tokenBucket = v8->_tokenBucket;
    v8->_tokenBucket = v9;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  qualityOfService = [(RTPersistenceMirroringPolicy *)self qualityOfService];
  tokenBucket = [(RTPersistenceMirroringPolicy *)self tokenBucket];
  v7 = [v4 initWithQualityOfService:qualityOfService tokenBucket:tokenBucket];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(RTPersistenceMirroringPolicy *)self qualityOfServiceToString:self->_qualityOfService];
  [(RTPersistenceMirroringPolicy *)self timeIntervalUntilOperationAllowed];
  v6 = v5;
  allowsMirroringViaCellular = [(RTPersistenceMirroringPolicy *)self allowsMirroringViaCellular];
  v8 = @"NO";
  if (allowsMirroringViaCellular)
  {
    v8 = @"YES";
  }

  v9 = [v3 stringWithFormat:@"QoS, %@, time until operation allowed, %f, cellular, %@", v4, v6, v8];

  return v9;
}

- (id)qualityOfServiceToString:(int64_t)string
{
  if (string > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_2788D0290[string];
  }
}

@end