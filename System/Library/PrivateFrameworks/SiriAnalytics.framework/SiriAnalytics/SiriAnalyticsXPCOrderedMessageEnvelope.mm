@interface SiriAnalyticsXPCOrderedMessageEnvelope
- (SiriAnalyticsXPCOrderedMessageEnvelope)initWithCoder:(id)a3;
- (SiriAnalyticsXPCOrderedMessageEnvelope)initWithTimestamp:(unint64_t)a3 streamUUID:(id)a4 messageType:(int64_t)a5 messageUUID:(id)a6 messageBody:(id)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SiriAnalyticsXPCOrderedMessageEnvelope

- (SiriAnalyticsXPCOrderedMessageEnvelope)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SiriAnalyticsXPCOrderedMessageEnvelope;
  v5 = [(SiriAnalyticsXPCOrderedMessageEnvelope *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    v5->_timestamp = [v6 unsignedLongLongValue];

    v7 = [v4 decodeObjectForKey:@"streamUUID"];
    streamUUID = v5->_streamUUID;
    v5->_streamUUID = v7;

    v5->_messageType = [v4 decodeIntegerForKey:@"messageType"];
    v9 = [v4 decodeObjectForKey:@"messageUUID"];
    messageUUID = v5->_messageUUID;
    v5->_messageUUID = v9;

    v11 = [v4 decodeObjectForKey:@"messageBody"];
    messageBody = v5->_messageBody;
    v5->_messageBody = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  timestamp = self->_timestamp;
  v7 = a3;
  v6 = [v4 numberWithUnsignedLongLong:timestamp];
  [v7 encodeObject:v6 forKey:@"timestamp"];

  [v7 encodeObject:self->_streamUUID forKey:@"streamUUID"];
  [v7 encodeInteger:self->_messageType forKey:@"messageType"];
  [v7 encodeObject:self->_messageUUID forKey:@"messageUUID"];
  [v7 encodeObject:self->_messageBody forKey:@"messageBody"];
}

- (SiriAnalyticsXPCOrderedMessageEnvelope)initWithTimestamp:(unint64_t)a3 streamUUID:(id)a4 messageType:(int64_t)a5 messageUUID:(id)a6 messageBody:(id)a7
{
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v24.receiver = self;
  v24.super_class = SiriAnalyticsXPCOrderedMessageEnvelope;
  v15 = [(SiriAnalyticsXPCOrderedMessageEnvelope *)&v24 init];
  v16 = v15;
  if (v15)
  {
    v15->_timestamp = a3;
    v17 = [v12 copy];
    streamUUID = v16->_streamUUID;
    v16->_streamUUID = v17;

    v19 = [v13 copy];
    messageUUID = v16->_messageUUID;
    v16->_messageUUID = v19;

    v16->_messageType = a5;
    v21 = [v14 copy];
    messageBody = v16->_messageBody;
    v16->_messageBody = v21;
  }

  return v16;
}

@end