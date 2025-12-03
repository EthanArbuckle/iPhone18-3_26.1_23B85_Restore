@interface SiriAnalyticsMessage
- (SiriAnalyticsMessage)initWithMessageUUID:(id)d logicalTimestamp:(id)timestamp underlying:(id)underlying;
- (id)storageRepresentation;
@end

@implementation SiriAnalyticsMessage

- (id)storageRepresentation
{
  underlyingMessage = [(SiriAnalyticsMessage *)self underlyingMessage];
  wrapAsAnyEvent = [underlyingMessage wrapAsAnyEvent];

  logicalTimestamp = [(SiriAnalyticsMessage *)self logicalTimestamp];

  if (logicalTimestamp)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69CF5C0]);
    v7 = objc_alloc_init(MEMORY[0x1E69CF598]);
    [v6 setMetadata:v7];

    metadata = [v6 metadata];
    logicalTimestamp2 = [(SiriAnalyticsMessage *)self logicalTimestamp];
    loggingRepresentation = [logicalTimestamp2 loggingRepresentation];
    [metadata setTimestamp:loggingRepresentation];

    metadata2 = [v6 metadata];
    v12 = objc_alloc(MEMORY[0x1E69CF640]);
    messageUUID = [(SiriAnalyticsMessage *)self messageUUID];
    v14 = [v12 initWithNSUUID:messageUUID];
    [metadata2 setEventId:v14];

    [v6 setEvent:wrapAsAnyEvent];
    wrapAsAnyEvent2 = [v6 wrapAsAnyEvent];
  }

  else
  {
    wrapAsAnyEvent2 = wrapAsAnyEvent;
  }

  return wrapAsAnyEvent2;
}

- (SiriAnalyticsMessage)initWithMessageUUID:(id)d logicalTimestamp:(id)timestamp underlying:(id)underlying
{
  dCopy = d;
  timestampCopy = timestamp;
  underlyingCopy = underlying;
  v15.receiver = self;
  v15.super_class = SiriAnalyticsMessage;
  v12 = [(SiriAnalyticsMessage *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_messageUUID, d);
    objc_storeStrong(&v13->_logicalTimestamp, timestamp);
    objc_storeStrong(&v13->_underlyingMessage, underlying);
  }

  return v13;
}

@end