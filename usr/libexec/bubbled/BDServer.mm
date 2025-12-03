@interface BDServer
+ (id)sharedBubbleXPCInterface;
+ (id)sharedServer;
+ (id)sharedXPCInterface;
- (BDServer)init;
- (void)addBubbleClient:(id)client;
- (void)addClient:(id)client;
- (void)removeBubbleClient:(id)client;
- (void)removeClient:(id)client;
@end

@implementation BDServer

+ (id)sharedServer
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002F5C;
  block[3] = &unk_10000C458;
  block[4] = self;
  if (qword_1000119A0 != -1)
  {
    dispatch_once(&qword_1000119A0, block);
  }

  v2 = qword_100011998;

  return v2;
}

+ (id)sharedXPCInterface
{
  if (qword_1000119B0 != -1)
  {
    sub_1000058E0();
  }

  v3 = qword_1000119A8;

  return v3;
}

+ (id)sharedBubbleXPCInterface
{
  if (qword_1000119C0 != -1)
  {
    sub_1000058F4();
  }

  v3 = qword_1000119B8;

  return v3;
}

- (BDServer)init
{
  v6.receiver = self;
  v6.super_class = BDServer;
  v2 = [(BDServer *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    pidsToClients = v2->_pidsToClients;
    v2->_pidsToClients = v3;
  }

  return v2;
}

- (void)addClient:(id)client
{
  clientCopy = client;
  v4 = [clientCopy pid];
  v5 = [NSNumber numberWithInt:v4];
  pidsToClients = [(BDServer *)self pidsToClients];
  v7 = [pidsToClients objectForKeyedSubscript:v5];

  if (v7)
  {
    NSLog(@"We already have a client for pid: %d", v4);
  }

  else
  {
    pidsToClients2 = [(BDServer *)self pidsToClients];
    [pidsToClients2 setObject:clientCopy forKeyedSubscript:v5];
  }
}

- (void)removeClient:(id)client
{
  v4 = [client pid];
  v5 = [(BDServer *)self _clientForPID:v4];

  if (v5)
  {
    pidsToClients = [(BDServer *)self pidsToClients];
    v6 = [NSNumber numberWithInt:v4];
    [pidsToClients setObject:0 forKeyedSubscript:v6];
  }
}

- (void)addBubbleClient:(id)client
{
  clientCopy = client;
  v4 = [clientCopy pid];
  v5 = [NSNumber numberWithInt:v4];
  pidsToClients = [(BDServer *)self pidsToClients];
  v7 = [pidsToClients objectForKeyedSubscript:v5];

  if (v7)
  {
    NSLog(@"We already have a client for pid: %d", v4);
  }

  else
  {
    pidsToClients2 = [(BDServer *)self pidsToClients];
    [pidsToClients2 setObject:clientCopy forKeyedSubscript:v5];
  }
}

- (void)removeBubbleClient:(id)client
{
  v4 = [client pid];
  v5 = [(BDServer *)self _clientForPID:v4];

  if (v5)
  {
    pidsToClients = [(BDServer *)self pidsToClients];
    v6 = [NSNumber numberWithInt:v4];
    [pidsToClients setObject:0 forKeyedSubscript:v6];
  }
}

@end