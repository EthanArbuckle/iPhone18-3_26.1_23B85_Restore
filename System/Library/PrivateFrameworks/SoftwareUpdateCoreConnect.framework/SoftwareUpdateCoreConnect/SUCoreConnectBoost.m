@interface SUCoreConnectBoost
- (SUCoreConnectBoost)initWithMessage:(id)a3;
- (id)description;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SUCoreConnectBoost

- (SUCoreConnectBoost)initWithMessage:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = SUCoreConnectBoost;
  v5 = [(SUCoreConnectBoost *)&v19 init];
  if (v5)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [v4 clientID];
    v8 = [v4 messageName];
    v9 = [v6 stringWithFormat:@"Boost(ClientID: %@, MessageName: %@)", v7, v8];

    v10 = [MEMORY[0x277CCAC38] processInfo];
    v11 = [v10 beginActivityWithOptions:0x80000000000 reason:v9];

    if (!v11)
    {
      v17 = [MEMORY[0x277D64428] sharedDiag];
      [v17 trackAnomaly:@"SUCoreConnectBoost" forReason:@"SUCoreConnectBoost received nil for an _NSActivityXPCBoost" withResult:8116 withError:0];

      v16 = 0;
      goto LABEL_6;
    }

    v12 = [v4 messageName];
    messageName = v5->_messageName;
    v5->_messageName = v12;

    v14 = [v4 clientID];
    messageClientID = v5->_messageClientID;
    v5->_messageClientID = v14;
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
  v6 = [(SUCoreConnectBoost *)self messageClientID];
  v7 = [(SUCoreConnectBoost *)self messageName];
  v8 = [v3 stringWithFormat:@"[%@: %p]: ClientID: %@ -- MessageName: %@", v5, self, v6, v7];

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
  v3 = [(SUCoreConnectBoost *)self xpcActivityBoost];
  if (v3)
  {
    v4 = [MEMORY[0x277CCAC38] processInfo];
    [v4 endActivity:v3];

    [(SUCoreConnectBoost *)self setXpcActivityBoost:0];
  }

  objc_sync_exit(obj);
}

@end