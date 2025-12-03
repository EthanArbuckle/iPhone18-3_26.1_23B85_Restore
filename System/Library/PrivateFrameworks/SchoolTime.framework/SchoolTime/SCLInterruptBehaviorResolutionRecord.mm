@interface SCLInterruptBehaviorResolutionRecord
+ (id)resolutionRecordForDate:(id)date eventBehavior:(id)behavior clientIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (id)_initWithUUID:(id)d date:(id)date eventBehavior:(id)behavior clientIdentifier:(id)identifier;
- (id)description;
- (unint64_t)hash;
@end

@implementation SCLInterruptBehaviorResolutionRecord

+ (id)resolutionRecordForDate:(id)date eventBehavior:(id)behavior clientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  behaviorCopy = behavior;
  dateCopy = date;
  v11 = [self alloc];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v13 = [v11 _initWithUUID:uUID date:dateCopy eventBehavior:behaviorCopy clientIdentifier:identifierCopy];

  return v13;
}

- (id)_initWithUUID:(id)d date:(id)date eventBehavior:(id)behavior clientIdentifier:(id)identifier
{
  dCopy = d;
  dateCopy = date;
  behaviorCopy = behavior;
  identifierCopy = identifier;
  v24.receiver = self;
  v24.super_class = SCLInterruptBehaviorResolutionRecord;
  v14 = [(SCLInterruptBehaviorResolutionRecord *)&v24 init];
  if (v14)
  {
    v15 = [dCopy copy];
    UUID = v14->_UUID;
    v14->_UUID = v15;

    v17 = [dateCopy copy];
    date = v14->_date;
    v14->_date = v17;

    v19 = [behaviorCopy copy];
    eventBehavior = v14->_eventBehavior;
    v14->_eventBehavior = v19;

    v21 = [identifierCopy copy];
    clientIdentifier = v14->_clientIdentifier;
    v14->_clientIdentifier = v21;
  }

  return v14;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  clientIdentifier = [(SCLInterruptBehaviorResolutionRecord *)self clientIdentifier];
  [v3 appendString:clientIdentifier withName:@"clientIdentifier"];

  uUID = [(SCLInterruptBehaviorResolutionRecord *)self UUID];
  v6 = [v3 appendObject:uUID withName:@"UUID" skipIfNil:1];

  date = [(SCLInterruptBehaviorResolutionRecord *)self date];
  v8 = [v3 appendObject:date withName:@"date" skipIfNil:1];

  eventBehavior = [(SCLInterruptBehaviorResolutionRecord *)self eventBehavior];
  v10 = [v3 appendObject:eventBehavior withName:@"eventBehavior" skipIfNil:1];

  build = [v3 build];

  return build;
}

- (unint64_t)hash
{
  uUID = [(SCLInterruptBehaviorResolutionRecord *)self UUID];
  v4 = [uUID hash];
  date = [(SCLInterruptBehaviorResolutionRecord *)self date];
  v6 = [date hash] ^ v4;
  eventBehavior = [(SCLInterruptBehaviorResolutionRecord *)self eventBehavior];
  v8 = [eventBehavior hash];
  clientIdentifier = [(SCLInterruptBehaviorResolutionRecord *)self clientIdentifier];
  v10 = v8 ^ [clientIdentifier hash];

  return v6 ^ v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      uUID = [(SCLInterruptBehaviorResolutionRecord *)self UUID];
      uUID2 = [(SCLInterruptBehaviorResolutionRecord *)v5 UUID];
      if ([uUID isEqual:uUID2])
      {
        date = [(SCLInterruptBehaviorResolutionRecord *)self date];
        date2 = [(SCLInterruptBehaviorResolutionRecord *)v5 date];
        if ([date isEqual:date2])
        {
          eventBehavior = [(SCLInterruptBehaviorResolutionRecord *)self eventBehavior];
          eventBehavior2 = [(SCLInterruptBehaviorResolutionRecord *)v5 eventBehavior];
          if ([eventBehavior isEqual:eventBehavior2])
          {
            clientIdentifier = [(SCLInterruptBehaviorResolutionRecord *)self clientIdentifier];
            clientIdentifier2 = [(SCLInterruptBehaviorResolutionRecord *)v5 clientIdentifier];
            v13 = [clientIdentifier isEqualToString:clientIdentifier2];
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