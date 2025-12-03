@interface SiriAnalyticsXPCOrderedMessageEnvelope
- (SiriAnalyticsXPCOrderedMessageEnvelope)initWithCoder:(id)coder;
- (SiriAnalyticsXPCOrderedMessageEnvelope)initWithTimestamp:(unint64_t)timestamp streamUUID:(id)d messageType:(int64_t)type messageUUID:(id)iD messageBody:(id)body;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SiriAnalyticsXPCOrderedMessageEnvelope

- (SiriAnalyticsXPCOrderedMessageEnvelope)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = SiriAnalyticsXPCOrderedMessageEnvelope;
  v5 = [(SiriAnalyticsXPCOrderedMessageEnvelope *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    v5->_timestamp = [v6 unsignedLongLongValue];

    v7 = [coderCopy decodeObjectForKey:@"streamUUID"];
    streamUUID = v5->_streamUUID;
    v5->_streamUUID = v7;

    v5->_messageType = [coderCopy decodeIntegerForKey:@"messageType"];
    v9 = [coderCopy decodeObjectForKey:@"messageUUID"];
    messageUUID = v5->_messageUUID;
    v5->_messageUUID = v9;

    v11 = [coderCopy decodeObjectForKey:@"messageBody"];
    messageBody = v5->_messageBody;
    v5->_messageBody = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  timestamp = self->_timestamp;
  coderCopy = coder;
  v6 = [v4 numberWithUnsignedLongLong:timestamp];
  [coderCopy encodeObject:v6 forKey:@"timestamp"];

  [coderCopy encodeObject:self->_streamUUID forKey:@"streamUUID"];
  [coderCopy encodeInteger:self->_messageType forKey:@"messageType"];
  [coderCopy encodeObject:self->_messageUUID forKey:@"messageUUID"];
  [coderCopy encodeObject:self->_messageBody forKey:@"messageBody"];
}

- (SiriAnalyticsXPCOrderedMessageEnvelope)initWithTimestamp:(unint64_t)timestamp streamUUID:(id)d messageType:(int64_t)type messageUUID:(id)iD messageBody:(id)body
{
  dCopy = d;
  iDCopy = iD;
  bodyCopy = body;
  v24.receiver = self;
  v24.super_class = SiriAnalyticsXPCOrderedMessageEnvelope;
  v15 = [(SiriAnalyticsXPCOrderedMessageEnvelope *)&v24 init];
  v16 = v15;
  if (v15)
  {
    v15->_timestamp = timestamp;
    v17 = [dCopy copy];
    streamUUID = v16->_streamUUID;
    v16->_streamUUID = v17;

    v19 = [iDCopy copy];
    messageUUID = v16->_messageUUID;
    v16->_messageUUID = v19;

    v16->_messageType = type;
    v21 = [bodyCopy copy];
    messageBody = v16->_messageBody;
    v16->_messageBody = v21;
  }

  return v16;
}

@end