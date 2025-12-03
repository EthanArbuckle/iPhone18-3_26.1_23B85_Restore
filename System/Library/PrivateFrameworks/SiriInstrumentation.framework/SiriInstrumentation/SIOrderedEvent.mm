@interface SIOrderedEvent
+ (id)deserializeFromData:(id)data;
- (SIOrderedEvent)initWithData:(id)data;
- (SIOrderedEvent)initWithInternalType:(id)type;
- (SIOrderedEvent)initWithTimestamp:(id)timestamp messageUUID:(id)d topLevelUnionType:(id)type;
@end

@implementation SIOrderedEvent

- (SIOrderedEvent)initWithData:(id)data
{
  dataCopy = data;
  v5 = [[SIOrderedEventInternal alloc] initWithData:dataCopy];

  if (v5)
  {
    self = [(SIOrderedEvent *)self initWithInternalType:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (SIOrderedEvent)initWithInternalType:(id)type
{
  typeCopy = type;
  v13.receiver = self;
  v13.super_class = SIOrderedEvent;
  v6 = [(SIOrderedEvent *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlying, type);
    v8 = [SILogicalTimestamp alloc];
    logicalTimestamp = [(SIOrderedEventInternal *)v7->_underlying logicalTimestamp];
    v10 = [(SILogicalTimestamp *)v8 initWithInternalType:logicalTimestamp];
    underlyingTimestamp = v7->_underlyingTimestamp;
    v7->_underlyingTimestamp = v10;
  }

  return v7;
}

- (SIOrderedEvent)initWithTimestamp:(id)timestamp messageUUID:(id)d topLevelUnionType:(id)type
{
  timestampCopy = timestamp;
  dCopy = d;
  typeCopy = type;
  v20.receiver = self;
  v20.super_class = SIOrderedEvent;
  v12 = [(SIOrderedEvent *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_underlyingTimestamp, timestamp);
    v14 = [SILogicalTimestampInternal alloc];
    clockIdentifier = [timestampCopy clockIdentifier];
    v16 = -[SILogicalTimestampInternal initWithClockIdentifier:nanosecondsSinceBoot:](v14, "initWithClockIdentifier:nanosecondsSinceBoot:", clockIdentifier, [timestampCopy nanoSecondsSinceBoot]);

    v17 = [[SIOrderedEventInternal alloc] initWithLogicalTimestamp:v16 messageUUID:dCopy tluEvent:typeCopy];
    underlying = v13->_underlying;
    v13->_underlying = v17;
  }

  return v13;
}

+ (id)deserializeFromData:(id)data
{
  v3 = [SIOrderedEventInternal deserializeFrom:data];
  if (v3)
  {
    v4 = [[SIOrderedEvent alloc] initWithInternalType:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end