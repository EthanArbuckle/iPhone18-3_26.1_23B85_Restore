@interface RTPersistenceMirroringPolicy
- (RTPersistenceMirroringPolicy)initWithQualityOfService:(int64_t)a3;
- (RTPersistenceMirroringPolicy)initWithQualityOfService:(int64_t)a3 tokenBucket:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)qualityOfServiceToString:(int64_t)a3;
@end

@implementation RTPersistenceMirroringPolicy

- (RTPersistenceMirroringPolicy)initWithQualityOfService:(int64_t)a3
{
  if (a3 == 3)
  {
    v9 = [objc_alloc(MEMORY[0x277D01358]) initWithFillRate:INFINITY capacity:INFINITY];
  }

  else
  {
    if (a3 == 2)
    {
      v5 = objc_alloc(MEMORY[0x277D01358]);
      v6 = 0.0166666667;
      v7 = 1.0;
      v8 = 1.0;
    }

    else
    {
      if (a3 != 1)
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
  v11 = [(RTPersistenceMirroringPolicy *)self initWithQualityOfService:a3 tokenBucket:v10];

  return v11;
}

- (RTPersistenceMirroringPolicy)initWithQualityOfService:(int64_t)a3 tokenBucket:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = RTPersistenceMirroringPolicy;
  v7 = [(RTPersistenceMirroringPolicy *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_qualityOfService = a3;
    if (v6)
    {
      v9 = v6;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(RTPersistenceMirroringPolicy *)self qualityOfService];
  v6 = [(RTPersistenceMirroringPolicy *)self tokenBucket];
  v7 = [v4 initWithQualityOfService:v5 tokenBucket:v6];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(RTPersistenceMirroringPolicy *)self qualityOfServiceToString:self->_qualityOfService];
  [(RTPersistenceMirroringPolicy *)self timeIntervalUntilOperationAllowed];
  v6 = v5;
  v7 = [(RTPersistenceMirroringPolicy *)self allowsMirroringViaCellular];
  v8 = @"NO";
  if (v7)
  {
    v8 = @"YES";
  }

  v9 = [v3 stringWithFormat:@"QoS, %@, time until operation allowed, %f, cellular, %@", v4, v6, v8];

  return v9;
}

- (id)qualityOfServiceToString:(int64_t)a3
{
  if (a3 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_2788D0290[a3];
  }
}

@end