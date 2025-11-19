@interface STSTransactionStartEvent
- (STSTransactionStartEvent)initWithCredential:(id)a3 andDigitalCarKeyStartEvent:(id)a4;
- (STSTransactionStartEvent)initWithCredential:(id)a3 andNearFieldStartEvent:(id)a4;
@end

@implementation STSTransactionStartEvent

- (STSTransactionStartEvent)initWithCredential:(id)a3 andNearFieldStartEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = STSTransactionStartEvent;
  v8 = [(STSTransactionStartEvent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(STSTransactionStartEvent *)v8 setCredential:v6];
    -[STSTransactionStartEvent setBackground:](v9, "setBackground:", [v7 background]);
  }

  return v9;
}

- (STSTransactionStartEvent)initWithCredential:(id)a3 andDigitalCarKeyStartEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = STSTransactionStartEvent;
  v8 = [(STSTransactionStartEvent *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(STSTransactionStartEvent *)v8 setCredential:v6];
    [(STSTransactionStartEvent *)v9 setBackground:0];
    [(STSTransactionStartEvent *)v9 setTransactionMode:0];
    v10 = [v7 spIdentifier];
    [(STSTransactionStartEvent *)v9 setSpIdentifier:v10];
  }

  return v9;
}

@end