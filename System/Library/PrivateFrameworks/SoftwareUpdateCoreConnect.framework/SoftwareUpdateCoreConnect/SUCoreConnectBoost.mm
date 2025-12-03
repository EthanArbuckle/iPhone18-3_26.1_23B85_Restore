@interface SUCoreConnectBoost
- (SUCoreConnectBoost)initWithMessage:(id)message;
- (id)description;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SUCoreConnectBoost

- (SUCoreConnectBoost)initWithMessage:(id)message
{
  messageCopy = message;
  v19.receiver = self;
  v19.super_class = SUCoreConnectBoost;
  v5 = [(SUCoreConnectBoost *)&v19 init];
  if (v5)
  {
    v6 = MEMORY[0x277CCACA8];
    clientID = [messageCopy clientID];
    messageName = [messageCopy messageName];
    v9 = [v6 stringWithFormat:@"Boost(ClientID: %@, MessageName: %@)", clientID, messageName];

    processInfo = [MEMORY[0x277CCAC38] processInfo];
    v11 = [processInfo beginActivityWithOptions:0x80000000000 reason:v9];

    if (!v11)
    {
      mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
      [mEMORY[0x277D64428] trackAnomaly:@"SUCoreConnectBoost" forReason:@"SUCoreConnectBoost received nil for an _NSActivityXPCBoost" withResult:8116 withError:0];

      v16 = 0;
      goto LABEL_6;
    }

    messageName2 = [messageCopy messageName];
    messageName = v5->_messageName;
    v5->_messageName = messageName2;

    clientID2 = [messageCopy clientID];
    messageClientID = v5->_messageClientID;
    v5->_messageClientID = clientID2;
  }

  v16 = v5;
LABEL_6:

  return v16;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  messageClientID = [(SUCoreConnectBoost *)self messageClientID];
  messageName = [(SUCoreConnectBoost *)self messageName];
  v8 = [v3 stringWithFormat:@"[%@: %p]: ClientID: %@ -- MessageName: %@", v5, self, messageClientID, messageName];

  return v8;
}

- (void)dealloc
{
  [(SUCoreConnectBoost *)self invalidate];
  v3.receiver = self;
  v3.super_class = SUCoreConnectBoost;
  [(SUCoreConnectBoost *)&v3 dealloc];
}

- (void)invalidate
{
  obj = [(SUCoreConnectBoost *)self xpcActivityBoost];
  objc_sync_enter(obj);
  xpcActivityBoost = [(SUCoreConnectBoost *)self xpcActivityBoost];
  if (xpcActivityBoost)
  {
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    [processInfo endActivity:xpcActivityBoost];

    [(SUCoreConnectBoost *)self setXpcActivityBoost:0];
  }

  objc_sync_exit(obj);
}

@end