@interface STSTransactionStartEvent
- (STSTransactionStartEvent)initWithCredential:(id)credential andDigitalCarKeyStartEvent:(id)event;
- (STSTransactionStartEvent)initWithCredential:(id)credential andNearFieldStartEvent:(id)event;
@end

@implementation STSTransactionStartEvent

- (STSTransactionStartEvent)initWithCredential:(id)credential andNearFieldStartEvent:(id)event
{
  credentialCopy = credential;
  eventCopy = event;
  v11.receiver = self;
  v11.super_class = STSTransactionStartEvent;
  v8 = [(STSTransactionStartEvent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(STSTransactionStartEvent *)v8 setCredential:credentialCopy];
    -[STSTransactionStartEvent setBackground:](v9, "setBackground:", [eventCopy background]);
  }

  return v9;
}

- (STSTransactionStartEvent)initWithCredential:(id)credential andDigitalCarKeyStartEvent:(id)event
{
  credentialCopy = credential;
  eventCopy = event;
  v12.receiver = self;
  v12.super_class = STSTransactionStartEvent;
  v8 = [(STSTransactionStartEvent *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(STSTransactionStartEvent *)v8 setCredential:credentialCopy];
    [(STSTransactionStartEvent *)v9 setBackground:0];
    [(STSTransactionStartEvent *)v9 setTransactionMode:0];
    spIdentifier = [eventCopy spIdentifier];
    [(STSTransactionStartEvent *)v9 setSpIdentifier:spIdentifier];
  }

  return v9;
}

@end