@interface SiriAnalyticsMessage
- (SiriAnalyticsMessage)initWithMessageUUID:(id)a3 logicalTimestamp:(id)a4 underlying:(id)a5;
- (id)storageRepresentation;
@end

@implementation SiriAnalyticsMessage

- (id)storageRepresentation
{
  v3 = [(SiriAnalyticsMessage *)self underlyingMessage];
  v4 = [v3 wrapAsAnyEvent];

  v5 = [(SiriAnalyticsMessage *)self logicalTimestamp];

  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69CF5C0]);
    v7 = objc_alloc_init(MEMORY[0x1E69CF598]);
    [v6 setMetadata:v7];

    v8 = [v6 metadata];
    v9 = [(SiriAnalyticsMessage *)self logicalTimestamp];
    v10 = [v9 loggingRepresentation];
    [v8 setTimestamp:v10];

    v11 = [v6 metadata];
    v12 = objc_alloc(MEMORY[0x1E69CF640]);
    v13 = [(SiriAnalyticsMessage *)self messageUUID];
    v14 = [v12 initWithNSUUID:v13];
    [v11 setEventId:v14];

    [v6 setEvent:v4];
    v15 = [v6 wrapAsAnyEvent];
  }

  else
  {
    v15 = v4;
  }

  return v15;
}

- (SiriAnalyticsMessage)initWithMessageUUID:(id)a3 logicalTimestamp:(id)a4 underlying:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SiriAnalyticsMessage;
  v12 = [(SiriAnalyticsMessage *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_messageUUID, a3);
    objc_storeStrong(&v13->_logicalTimestamp, a4);
    objc_storeStrong(&v13->_underlyingMessage, a5);
  }

  return v13;
}

@end