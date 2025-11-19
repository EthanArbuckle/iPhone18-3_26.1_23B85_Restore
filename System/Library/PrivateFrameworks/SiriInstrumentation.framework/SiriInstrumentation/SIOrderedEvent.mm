@interface SIOrderedEvent
+ (id)deserializeFromData:(id)a3;
- (SIOrderedEvent)initWithData:(id)a3;
- (SIOrderedEvent)initWithInternalType:(id)a3;
- (SIOrderedEvent)initWithTimestamp:(id)a3 messageUUID:(id)a4 topLevelUnionType:(id)a5;
@end

@implementation SIOrderedEvent

- (SIOrderedEvent)initWithData:(id)a3
{
  v4 = a3;
  v5 = [[SIOrderedEventInternal alloc] initWithData:v4];

  if (v5)
  {
    self = [(SIOrderedEvent *)self initWithInternalType:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (SIOrderedEvent)initWithInternalType:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = SIOrderedEvent;
  v6 = [(SIOrderedEvent *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlying, a3);
    v8 = [SILogicalTimestamp alloc];
    v9 = [(SIOrderedEventInternal *)v7->_underlying logicalTimestamp];
    v10 = [(SILogicalTimestamp *)v8 initWithInternalType:v9];
    underlyingTimestamp = v7->_underlyingTimestamp;
    v7->_underlyingTimestamp = v10;
  }

  return v7;
}

- (SIOrderedEvent)initWithTimestamp:(id)a3 messageUUID:(id)a4 topLevelUnionType:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v20.receiver = self;
  v20.super_class = SIOrderedEvent;
  v12 = [(SIOrderedEvent *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_underlyingTimestamp, a3);
    v14 = [SILogicalTimestampInternal alloc];
    v15 = [v9 clockIdentifier];
    v16 = -[SILogicalTimestampInternal initWithClockIdentifier:nanosecondsSinceBoot:](v14, "initWithClockIdentifier:nanosecondsSinceBoot:", v15, [v9 nanoSecondsSinceBoot]);

    v17 = [[SIOrderedEventInternal alloc] initWithLogicalTimestamp:v16 messageUUID:v10 tluEvent:v11];
    underlying = v13->_underlying;
    v13->_underlying = v17;
  }

  return v13;
}

+ (id)deserializeFromData:(id)a3
{
  v3 = [SIOrderedEventInternal deserializeFrom:a3];
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