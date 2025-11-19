@interface SCLInterruptBehaviorResolutionRecord
+ (id)resolutionRecordForDate:(id)a3 eventBehavior:(id)a4 clientIdentifier:(id)a5;
- (BOOL)isEqual:(id)a3;
- (id)_initWithUUID:(id)a3 date:(id)a4 eventBehavior:(id)a5 clientIdentifier:(id)a6;
- (id)description;
- (unint64_t)hash;
@end

@implementation SCLInterruptBehaviorResolutionRecord

+ (id)resolutionRecordForDate:(id)a3 eventBehavior:(id)a4 clientIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [a1 alloc];
  v12 = [MEMORY[0x277CCAD78] UUID];
  v13 = [v11 _initWithUUID:v12 date:v10 eventBehavior:v9 clientIdentifier:v8];

  return v13;
}

- (id)_initWithUUID:(id)a3 date:(id)a4 eventBehavior:(id)a5 clientIdentifier:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = SCLInterruptBehaviorResolutionRecord;
  v14 = [(SCLInterruptBehaviorResolutionRecord *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    UUID = v14->_UUID;
    v14->_UUID = v15;

    v17 = [v11 copy];
    date = v14->_date;
    v14->_date = v17;

    v19 = [v12 copy];
    eventBehavior = v14->_eventBehavior;
    v14->_eventBehavior = v19;

    v21 = [v13 copy];
    clientIdentifier = v14->_clientIdentifier;
    v14->_clientIdentifier = v21;
  }

  return v14;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(SCLInterruptBehaviorResolutionRecord *)self clientIdentifier];
  [v3 appendString:v4 withName:@"clientIdentifier"];

  v5 = [(SCLInterruptBehaviorResolutionRecord *)self UUID];
  v6 = [v3 appendObject:v5 withName:@"UUID" skipIfNil:1];

  v7 = [(SCLInterruptBehaviorResolutionRecord *)self date];
  v8 = [v3 appendObject:v7 withName:@"date" skipIfNil:1];

  v9 = [(SCLInterruptBehaviorResolutionRecord *)self eventBehavior];
  v10 = [v3 appendObject:v9 withName:@"eventBehavior" skipIfNil:1];

  v11 = [v3 build];

  return v11;
}

- (unint64_t)hash
{
  v3 = [(SCLInterruptBehaviorResolutionRecord *)self UUID];
  v4 = [v3 hash];
  v5 = [(SCLInterruptBehaviorResolutionRecord *)self date];
  v6 = [v5 hash] ^ v4;
  v7 = [(SCLInterruptBehaviorResolutionRecord *)self eventBehavior];
  v8 = [v7 hash];
  v9 = [(SCLInterruptBehaviorResolutionRecord *)self clientIdentifier];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SCLInterruptBehaviorResolutionRecord *)self UUID];
      v7 = [(SCLInterruptBehaviorResolutionRecord *)v5 UUID];
      if ([v6 isEqual:v7])
      {
        v8 = [(SCLInterruptBehaviorResolutionRecord *)self date];
        v9 = [(SCLInterruptBehaviorResolutionRecord *)v5 date];
        if ([v8 isEqual:v9])
        {
          v10 = [(SCLInterruptBehaviorResolutionRecord *)self eventBehavior];
          v11 = [(SCLInterruptBehaviorResolutionRecord *)v5 eventBehavior];
          if ([v10 isEqual:v11])
          {
            v15 = [(SCLInterruptBehaviorResolutionRecord *)self clientIdentifier];
            v12 = [(SCLInterruptBehaviorResolutionRecord *)v5 clientIdentifier];
            v13 = [v15 isEqualToString:v12];
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

@end